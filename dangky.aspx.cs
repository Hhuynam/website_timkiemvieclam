using System;
using System.Configuration;
using System.Data.OleDb;
using System.Web.UI;

namespace timkiem_tuyendung
{
    public partial class dangky : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0; // Hiển thị view chọn vai trò đầu tiên
            }
        }

        protected void CheckedChanged_UngVien(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1; // Chuyển sang view đăng ký ứng viên
        }

        protected void CheckedChanged_NhaTuyenDung(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2; // Chuyển sang view đăng ký nhà tuyển dụng
        }

        protected void DangKyUngVien_Click(object sender, EventArgs e)
        {
            string tenUngVien = Nhap_Ten_UV.Text;
            string tenDangNhap = Nhap_Ten_DN_UV.Text;
            string matKhau = Nhap_MatKhau_UV.Text;
            string gioiTinh = nam_uv.Checked ? "Nam" : "Nữ";
            string ngaySinh = Nhap_NgaySinh_UV.Text;
            string email = Nhap_Email_UV.Text;
            string diaChi = Nhap_DiaChi_UV.Text;
            string soDienThoai = Nhap_SDT_UV.Text;

            // Kết nối đến SQL Server bằng OleDb
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "INSERT INTO DangKy (LuaChon_UngVien_NhaTuyenDung, Nhap_Ten, TenDangNhap, MatKhau, LuaChon_GioiTinh, Nhap_NgaySinh, Nhap_Email, Nhap_DiaChi, Nhap_SoDienThoai) " +
                               "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@LuaChon", "Ứng viên");
                    command.Parameters.AddWithValue("@TenUngVien", tenUngVien);
                    command.Parameters.AddWithValue("@TenDangNhap", tenDangNhap);
                    command.Parameters.AddWithValue("@MatKhau", matKhau); // Mã hóa mật khẩu nếu cần
                    command.Parameters.AddWithValue("@GioiTinh", gioiTinh);
                    command.Parameters.AddWithValue("@NgaySinh", DateTime.Parse(ngaySinh));
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@DiaChi", diaChi);
                    command.Parameters.AddWithValue("@SoDienThoai", soDienThoai);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        lblMessage_UV.Text = "Đăng ký ứng viên thành công!";
                    }
                    catch (Exception ex)
                    {
                        lblMessage_UV.Text = "Có lỗi xảy ra: " + ex.Message;
                    }
                }
            }
        }

        protected void DangKyNhaTuyenDung_Click(object sender, EventArgs e)
        {
            string tenNhaTuyenDung = Nhap_Ten_NTD.Text;
            string tenDangNhap = Nhap_Ten_DN_NTD.Text;
            string matKhau = Nhap_MatKhau_NTD.Text;
            string gioiTinh = nam_ntd.Checked ? "Nam" : "Nữ";
            string ngaySinhNhaTuyenDung = Nhap_NgaySinh_NTD.Text;
            string emailNhaTuyenDung = Nhap_Email_NTD.Text;
            string diaChiNhaTuyenDung = Diachi_NTD.Text;
            string soDienThoaiNhaTuyenDung = Nhap_SDT_NTD.Text;

            // Kết nối đến SQL Server bằng OleDb
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "INSERT INTO DangKy (LuaChon_UngVien_NhaTuyenDung, Nhap_Ten, TenDangNhap, MatKhau, LuaChon_GioiTinh, Nhap_NgaySinh, Nhap_Email, Nhap_DiaChi, Nhap_SoDienThoai) " +
                               "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@LuaChon", "Nhà tuyển dụng");
                    command.Parameters.AddWithValue("@TenNhaTuyenDung", tenNhaTuyenDung);
                    command.Parameters.AddWithValue("@TenDangNhap", tenDangNhap);
                    command.Parameters.AddWithValue("@MatKhau", matKhau); // Mã hóa mật khẩu nếu cần
                    command.Parameters.AddWithValue("@GioiTinh", gioiTinh);
                    command.Parameters.AddWithValue("@NgaySinh", DateTime.Parse(ngaySinhNhaTuyenDung));
                    command.Parameters.AddWithValue("@Email", emailNhaTuyenDung);
                    command.Parameters.AddWithValue("@DiaChi", diaChiNhaTuyenDung);
                    command.Parameters.AddWithValue("@SoDienThoai", soDienThoaiNhaTuyenDung);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        lblMessage_NTD.Text = "Đăng ký nhà tuyển dụng thành công!";
                    }
                    catch (Exception ex)
                    {
                        lblMessage_NTD.Text = "Có lỗi xảy ra: " + ex.Message;
                    }
                }
            }
        }
    }
}
