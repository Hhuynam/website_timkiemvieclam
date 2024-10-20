using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;

namespace timkiem_tuyendung
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Login1_LoggingIn(object sender, System.Web.UI.WebControls.LoginCancelEventArgs e)
        {
            // Kiểm tra thông tin đăng nhập
            if (Login1.UserName == "admin" && Login1.Password == "123")
            {
                FormsAuthentication.SetAuthCookie(Login1.UserName, Login1.RememberMeSet);
                Response.Redirect("trangchu.aspx");
            }
            else
            {
                Login1.FailureText = "Tên đăng nhập hoặc mật khẩu không đúng.";
                e.Cancel = true; // Ngăn không cho tiếp tục quá trình đăng nhập
            }
        }
    }
}
