using System;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace timkiem_tuyendung
{
    public partial class vieclam : Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string hoTen = txtHoTen.Text;
            string gioiTinh = rblGioiTinh.SelectedValue;
            string ngaySinh = calendarNgaySinh.SelectedDate.ToString("yyyy-MM-dd");

            // Duyệt qua từng item trong CheckBoxList
            string kyNang = string.Empty;
            foreach (ListItem item in cblKyNang.Items)
            {
                if (item.Selected)
                {
                    if (!string.IsNullOrEmpty(kyNang))
                    {
                        kyNang += ", "; // Thêm dấu phẩy ngăn cách giữa các kỹ năng
                    }
                    kyNang += item.Text; // Thêm kỹ năng vào chuỗi
                }
            }

            // Chuỗi kết nối
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "INSERT INTO CVs (HoTen, GioiTinh, NgaySinh, KyNang) VALUES (?, ?, ?, ?)";
                    using (OleDbCommand command = new OleDbCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("?", hoTen);
                        command.Parameters.AddWithValue("?", gioiTinh);
                        command.Parameters.AddWithValue("?", ngaySinh);
                        command.Parameters.AddWithValue("?", kyNang);

                        int result = command.ExecuteNonQuery();
                        if (result > 0)
                        {
                            // Lưu tệp nếu có
                            if (FileUpload1.HasFile)
                            {
                                string fileName = Path.GetFileName(FileUpload1.FileName);
                                string filePath = Server.MapPath("~/Uploads/") + fileName;
                                FileUpload1.SaveAs(filePath); // Lưu tệp vào thư mục Uploads

                                Response.Write("CV đã được gửi thành công! Tệp đã được lưu: " + fileName);
                            }
                            else
                            {
                                Response.Write("CV đã được gửi thành công! Nhưng không có tệp nào được tải lên.");
                            }
                        }
                        else
                        {
                            Response.Write("Không thể gửi CV.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Có lỗi xảy ra: " + ex.Message);
                }
            }
        }

    }
}
