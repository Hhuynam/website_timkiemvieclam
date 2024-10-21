using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace timkiem_tuyendung
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Chỉ nạp dữ liệu khi lần đầu tiên tải trang
            {
                LoadLocations();
            }
        }

        private void LoadLocations()
        {
            // Nạp các địa điểm cứng vào DropDownList
            DropDownList1.Items.Add(new ListItem("Hà Nội"));
            DropDownList1.Items.Add(new ListItem("Hồ Chí Minh"));
            DropDownList1.Items.Add(new ListItem("Đà Nẵng"));
            DropDownList1.Items.Add(new ListItem("ThaiNguyen"));
            DropDownList1.Items.Add(new ListItem("Nha Trang"));
            // Thêm các địa điểm khác nếu cần
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string selectedLocation = DropDownList1.SelectedItem.Text; // Lấy địa chỉ đã chọn từ DropDownList
            LoadJobs(selectedLocation); // Gọi hàm để tải công việc theo địa chỉ
        }

        private void LoadJobs(string location)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "SELECT * FROM BaiDangTuyenDung WHERE DiaChi_CV = ?"; // Sử dụng ? để thay thế tham số
                    using (OleDbCommand cmd = new OleDbCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("?", location); // Thêm tham số cho truy vấn
                        OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        // Hiển thị kết quả tìm kiếm trong GridView
                        if (dt.Rows.Count > 0)
                        {
                            GridViewJobs.DataSource = dt; // Gán dữ liệu cho GridView
                            GridViewJobs.DataBind(); // Hiển thị dữ liệu trong GridView
                            LabelError.Text = ""; // Xóa thông báo lỗi
                        }
                        else
                        {
                            LabelError.Text = "Không tìm thấy công việc nào cho địa chỉ đã chọn.";
                            GridViewJobs.DataSource = null; // Xóa dữ liệu trong GridView nếu không có kết quả
                            GridViewJobs.DataBind();
                        }
                    }
                }
                catch (Exception ex)
                {
                    LabelError.Text = "Có lỗi xảy ra: " + ex.Message; // Hiển thị thông báo lỗi
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Có thể xử lý nếu cần thiết khi lựa chọn thay đổi
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangnhap.aspx"); // Điều hướng đến trang đăng nhập
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangky.aspx"); // Điều hướng đến trang đăng nhập
        }
    }
}
