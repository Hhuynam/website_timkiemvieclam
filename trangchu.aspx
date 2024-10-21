<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="timkiem_tuyendung.trangchu" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <style>
        #form1 {
            height: 100%;
            width: 100%;
        }

        .draggable-HyperLink1, .draggable-HyperLink2, .draggable-HyperLink3, .draggable-HyperLink4,
        .draggable-Button1, .draggable-Button2, .draggable-Button3, .draggable-Button4,
        .draggable-TextBox1, .draggable-DropDownList1 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
        }

        .draggable-HyperLink1 { top: 30px; left: 29px; }
        .draggable-HyperLink2 { top: 32px; left: 182px; }
        .draggable-HyperLink3 { top: 30px; left: 322px; }
        .draggable-HyperLink4 { top: 34px; left: 418px; }
        .draggable-Button1 { top: 22px; left: 698px; height: 46px; }
        .draggable-Button2 { top: 21px; left: 825px; }
        .draggable-Button3 { top: 318px; 
left: 203px;}
        .draggable-Button4 { top: 118px; left: 522px; height: 43px; width: 82px; }
        .draggable-TextBox1 { top: 120px; left: 27px; width: 202px; }
        .draggable-DropDownList1 { top: 120px; left: 341px; height: 5px; }

        .gridview-style {
            width: 100%;
            margin-top: 20px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".draggable-HyperLink1, .draggable-HyperLink2, .draggable-HyperLink3, .draggable-HyperLink4, .draggable-Button1, .draggable-Button2, .draggable-Button4, .draggable-TextBox1, .draggable-DropDownList1").draggable({ containment: "window" });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="100px" Width="1200px" BackColor="#CCCCCC">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="draggable-HyperLink1" OnClick="HyperLink1_Click" NavigateUrl="~/vieclam.aspx">Việc làm</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="draggable-HyperLink2" OnClick="HyperLink2_Click" NavigateUrl="~/hoso_cv.aspx">Hồ sơ &amp; CV</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="draggable-HyperLink4" OnClick="HyperLink4_Click" NavigateUrl="~/camnangnghenghiep.aspx">Cẩm nang nghề nghiệp</asp:HyperLink>
            <asp:Button ID="Button1" runat="server" CssClass="draggable-Button1" Text="Đăng nhập" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="draggable-Button2" Text="Đăng ký" OnClick="Button2_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" Height="500px" Width="1200px" BackColor="#339966">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="draggable-DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Ha Noi</asp:ListItem>
                <asp:ListItem>Thai Nguyen</asp:ListItem>
                <asp:ListItem>Bac Giang</asp:ListItem>
                <asp:ListItem>Hai Phong</asp:ListItem>
                <asp:ListItem>Tp HCM</asp:ListItem>
                <asp:ListItem>Binh Duong</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button4" runat="server" CssClass="draggable-Button4" Text="Tìm kiếm" OnClick="Button4_Click" />
            <asp:Label ID="LabelError" runat="server" ForeColor="Red" Style="margin-top: 10px;"></asp:Label>
            <asp:GridView ID="GridViewJobs" runat="server" AutoGenerateColumns="False" CssClass="draggable-Button3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:BoundField DataField="ID_NhaTuyenDung" HeaderText="ID_NhaTuyenDung" SortExpression="ID_NhaTuyenDung" />
                    <asp:BoundField DataField="Ten_NhaTuyenDung" HeaderText="Ten_NhaTuyenDung" SortExpression="Ten_NhaTuyenDung" />
                    <asp:BoundField DataField="ID_BaiDang" HeaderText="ID_BaiDang" SortExpression="ID_BaiDang" />
                    <asp:BoundField DataField="KyNang" HeaderText="KyNang" SortExpression="KyNang" />
                    <asp:BoundField DataField="TrinhDo" HeaderText="TrinhDo" SortExpression="TrinhDo" />
                    <asp:BoundField DataField="DiaChi_CV" HeaderText="DiaChi_CV" SortExpression="DiaChi_CV" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=SQLOLEDB;Data Source=HANAM-PC\SQLEXPRESS;Integrated Security=SSPI;Initial Catalog=demo_timkiemviec" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [BaiDangTuyenDung]"></asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>
