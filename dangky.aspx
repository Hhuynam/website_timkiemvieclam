<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="timkiem_tuyendung.dangky" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .panel {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        h3 {
            color: #333;
        }
        input[type="text"], input[type="email"], input[type="date"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="radio"] {
            margin: 0 5px;
        }
        .message {
            color: red;
            margin-bottom: 10px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <!-- View cho chọn vai trò -->
                <asp:View ID="ViewRole" runat="server">
                    <div class="panel">
                        <h3>Chọn vai trò của bạn</h3>
                        <asp:RadioButton ID="radioUngVien" runat="server" GroupName="role" Text="Ứng viên" OnCheckedChanged="CheckedChanged_UngVien" AutoPostBack="true" />
                        <asp:RadioButton ID="radioNhaTuyenDung" runat="server" GroupName="role" Text="Nhà tuyển dụng" OnCheckedChanged="CheckedChanged_NhaTuyenDung" AutoPostBack="true" />
                    </div>
                </asp:View>

                <!-- View cho ứng viên -->
                <asp:View ID="ViewUngVien" runat="server">
                    <div class="panel">
                        <h3>Đăng ký Ứng viên</h3>
                        <asp:Label ID="lblMessage_UV" runat="server" CssClass="message"></asp:Label>
                        <asp:TextBox ID="Nhap_Ten_UV" runat="server" Placeholder="Tên ứng viên" />
                        <asp:TextBox ID="Nhap_Ten_DN_UV" runat="server" Placeholder="Tên đăng nhập" />
                        <asp:TextBox ID="Nhap_MatKhau_UV" runat="server" TextMode="Password" Placeholder="Mật khẩu" />
                        <asp:RadioButton ID="nam_uv" runat="server" Text="Nam" GroupName="gioiTinh" />
                        <asp:RadioButton ID="nu_uv" runat="server" Text="Nữ" GroupName="gioiTinh" />
                        <asp:TextBox ID="Nhap_NgaySinh_UV" runat="server" Placeholder="Ngày sinh (dd/MM/yyyy)" />
                        <asp:TextBox ID="Nhap_Email_UV" runat="server" Placeholder="Email" />
                        <asp:TextBox ID="Nhap_DiaChi_UV" runat="server" Placeholder="Địa chỉ" />
                        <asp:TextBox ID="Nhap_SDT_UV" runat="server" Placeholder="Số điện thoại" />
                        <asp:Button ID="DangKyUngVien" runat="server" Text="Đăng ký" OnClick="DangKyUngVien_Click" />
                    </div>
                </asp:View>

                <!-- View cho nhà tuyển dụng -->
                <asp:View ID="ViewNhaTuyenDung" runat="server">
                    <div class="panel">
                        <h3>Đăng ký Nhà tuyển dụng</h3>
                        <asp:Label ID="lblMessage_NTD" runat="server" CssClass="message"></asp:Label>
                        <asp:TextBox ID="Nhap_Ten_NTD" runat="server" Placeholder="Tên nhà tuyển dụng" />
                        <asp:TextBox ID="Nhap_Ten_DN_NTD" runat="server" Placeholder="Tên đăng nhập" />
                        <asp:TextBox ID="Nhap_MatKhau_NTD" runat="server" TextMode="Password" Placeholder="Mật khẩu" />
                        <asp:RadioButton ID="nam_ntd" runat="server" Text="Nam" GroupName="gioiTinhNTD" />
                        <asp:RadioButton ID="nu_ntd" runat="server" Text="Nữ" GroupName="gioiTinhNTD" />
                        <asp:TextBox ID="Nhap_NgaySinh_NTD" runat="server" Placeholder="Ngày sinh (dd/MM/yyyy)" />
                        <asp:TextBox ID="Nhap_Email_NTD" runat="server" Placeholder="Email" />
                        <asp:TextBox ID="Diachi_NTD" runat="server" Placeholder="Địa chỉ" />
                        <asp:TextBox ID="Nhap_SDT_NTD" runat="server" Placeholder="Số điện thoại" />
                        <asp:Button ID="DangKyNhaTuyenDung" runat="server" Text="Đăng ký" OnClick="DangKyNhaTuyenDung_Click" />
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
