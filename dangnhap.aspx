<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="timkiem_tuyendung.dangnhap" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }
        .formdangnhap {
            border-radius: 5px;
            cursor: move; 
            position: absolute; 
            margin: 10px;
            padding: 20px;
            background-color: #CCCCCC;
            top: 17px;
            left: 408px;
            z-index: 1;
        }
        .labelquenmatkhau {
            border-radius: 5px;
            cursor: move; 
            position: absolute; 
            margin: 10px;
            padding: 10px; 
            top: 423px;
            left: 421px;
            width: 125px;
            z-index: 2;
            font-size: small;
        }
    
        .draggable-HyperLink1 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 159px;
            left: 280px;
            height: -7px;
        }

        </style>
    <script>
        $(document).ready(function () {
            $(".formdangnhap, .labelquenmatkhau").draggable({
                containment: "window"
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server"> 
        <asp:Panel ID="Panel1" runat="server" BackColor="#FF9933" CssClass="auto-style1" Height="366px">
            <asp:Login ID="Login1" runat="server" CssClass="formdangnhap" Height="200px" LoginButtonText="Đăng nhập" PasswordLabelText="Mật khẩu:" RememberMeText="Nhớ mật khẩu" TitleText="Đăng nhập" UserNameLabelText="Tên đăng nhập:" Width="300px" DestinationPageUrl="~/trangchu.aspx" OnLoggingIn="Login1_LoggingIn">
            </asp:Login>
        </asp:Panel>
    </form>
</body>
</html>
