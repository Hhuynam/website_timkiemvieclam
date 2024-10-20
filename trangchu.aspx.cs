using System;
using System.Web.UI;

namespace timkiem_tuyendung
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangnhap.aspx"); // Điều hướng đến trang đăng nhập
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangky.aspx"); // Điều hướng đến trang đăng ký
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangtuyen&timhoso.aspx"); // Điều hướng đến trang đăng tuyển và tìm hồ sơ
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // Bạn có thể thêm mã xử lý cho Button4 ở đây, nếu cần
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Xử lý khi lựa chọn một mục trong DropDownList
        }
    }
}
