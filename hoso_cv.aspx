<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hoso_cv.aspx.cs" Inherits="timkiem_tuyendung.hoso_cv" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông Tin Hồ Sơ Ứng Viên</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Thông Tin Hồ Sơ Ứng Viên</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="ID" Visible="False" /> 
        <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" />
        <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" />
        <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" />
        <asp:BoundField DataField="KyNang" HeaderText="Kỹ Năng" />
    </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
