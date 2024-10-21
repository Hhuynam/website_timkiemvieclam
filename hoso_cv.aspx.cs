using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace timkiem_tuyendung
{
    public partial class hoso_cv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadHoSo();
            }
        }

        private void LoadHoSo()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                    conn.Open();
                    string query = "SELECT Id, HoTen, GioiTinh, NgaySinh, KyNang FROM CVs"; // Kiểm tra tên bảng và các trường
                    using (OleDbCommand cmd = new OleDbCommand(query, conn))
                    {
                        OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
            }
        }
    }
}
