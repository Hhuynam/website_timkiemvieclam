using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace timkiem_tuyendung
{
    public partial class dang_tuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDangTuyen();
            }
        }

        private void LoadDangTuyen()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
               
                    conn.Open();
                    string query = "SELECT MoTa, Ten_NhaTuyenDung, KyNang, TrinhDo FROM BaiDangTuyenDung";
                    using (OleDbCommand cmd = new OleDbCommand(query, conn))
                    {
                        OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);
                        gvTimHoSo.DataSource = dt; // Đảm bảo tên này đúng
                        gvTimHoSo.DataBind();
                    }
            }
        }

        protected void btnDangTuyen_Click(object sender, EventArgs e)
        {
            // Logic để xử lý việc đăng tuyển
            // Có thể thêm mã để lưu thông tin từ txtTieuDe vào cơ sở dữ liệu
        }
    }
}
