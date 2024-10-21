<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangtuyen&timhoso.aspx.cs" Inherits="timkiem_tuyendung.dang_tuyen" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Tuyển & Tìm Hồ Sơ</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 20px;">
            <h2>Đăng Tuyển</h2>
            <asp:TextBox ID="txtTieuDe" runat="server" Placeholder="Nhập tiêu đề công việc" Width="300px"></asp:TextBox>
            <asp:Button ID="btnDangTuyen" runat="server" Text="Đăng Tuyển" OnClick="btnDangTuyen_Click" />
            <br /><br />
            <h3>Tìm Hồ Sơ</h3>
            <asp:GridView ID="gvTimHoSo" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" Width="100%">
                <Columns>
                    <asp:BoundField DataField="MoTa" HeaderText="Mô Tả" />
                    <asp:BoundField DataField="Ten_NhaTuyenDung" HeaderText="Tên Nhà Tuyển Dụng" />
                    <asp:BoundField DataField="KyNang" HeaderText="Kỹ Năng" />
                    <asp:BoundField DataField="TrinhDo" HeaderText="Trình Độ" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
