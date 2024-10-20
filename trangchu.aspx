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

        .draggable-HyperLink1 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 30px;
            left: 29px;
            height: -7px;
        }

        .draggable-HyperLink2 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 32px;
            left: 182px;
        }

        .draggable-HyperLink3 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 30px;
            left: 322px;
        }

        .draggable-HyperLink4 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 34px;
            left: 418px;
        }

        .draggable-Button1 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 22px;
            left: 698px;
            height: 46px;
        }

        .draggable-Button2 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 21px;
            left: 825px;
        }

        .draggable-Button3 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 21px;
            left: 933px;
        }

        .draggable-Button4 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 118px;
            left: 522px;
            height: 43px;
            width: 82px;
        }

        .draggable-TextBox1 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 120px;
            left: 27px;
            width: 202px;
        }

        .draggable-DropDownList1 {
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 120px;
            left: 341px;
            height: 5px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".draggable-HyperLink1").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-HyperLink2").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-HyperLink3").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-HyperLink4").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-Button1").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-Button2").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-Button3").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-Button4").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-TextBox1").draggable({ containment: "window" });
        });
        $(document).ready(function () {
            $(".draggable-DropDownList1").draggable({ containment: "window" });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="100px" Width="1200px" BackColor="#CCCCCC">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="draggable-HyperLink1" OnClick="HyperLink1_Click" NavigateUrl="~/vieclam.aspx">Việc làm</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="draggable-HyperLink2" OnClick="HyperLink2_Click" NavigateUrl="~/hoso_cv.aspx">Hồ sơ &amp; CV</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="draggable-HyperLink3" OnClick="HyperLink3_Click" NavigateUrl="~/congcu.aspx">Công cụ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="draggable-HyperLink4" OnClick="HyperLink4_Click" NavigateUrl="~/camnangnghenghiep.aspx">Cẩm nang nghề nghiệp</asp:HyperLink>
            <asp:Button ID="Button1" runat="server" CssClass="draggable-Button1" Text="Đăng nhập" OnClick="Button1_Click" NavigateUrl="~/dangnhap.aspx"/>
            <asp:Button ID="Button2" runat="server" CssClass="draggable-Button2" Text="Đăng ký" OnClick="Button2_Click" NavigateUrl="~/dangky.aspx"/>
            <asp:Button ID="Button3" runat="server" CssClass="draggable-Button3" Text="Đăng tuyển &amp; tìm hồ sơ" OnClick="Button3_Click" NavigateUrl="~/dangtuyen&timhoso.aspx" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" Height="500px" Width="1200px" BackColor="#339966">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="draggable-TextBox1"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="draggable-DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Ha Noi</asp:ListItem>
                <asp:ListItem>Thai Nguyen</asp:ListItem>
                <asp:ListItem>Bac Giang</asp:ListItem>
                <asp:ListItem>Hai Phong</asp:ListItem>
                <asp:ListItem>Tp HCM</asp:ListItem>
                <asp:ListItem>Binh Duong</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button4" runat="server" CssClass="draggable-Button4" OnClientClick="Button4_Click" Text="Tìm kiếm" OnClick="Button4_Click"/>
        </asp:Panel>
    </form>
</body>
</html>
