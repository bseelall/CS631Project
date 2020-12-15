<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CS631Project.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <span class="auto-style1">Newark Fufillment Center Main Page</span><br />
            <br />
            <br />
            <br />
            Which type of user are you?<br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Transaction.aspx" Text="Customer" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" PostBackUrl="~/Businesses.aspx" Text="Business" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="~/Employees.aspx" Text="Employee" />
        </div>
    </form>
</body>
</html>
