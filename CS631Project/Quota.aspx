<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="CS631Project.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style2">Quota<br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="QID" DataSourceID="SqlDataSource1" style="font-size: x-large">
            <Columns>
                <asp:BoundField DataField="QID" HeaderText="QID" InsertVisible="False" ReadOnly="True" SortExpression="QID" />
                <asp:BoundField DataField="IID" HeaderText="IID" SortExpression="IID" />
                <asp:BoundField DataField="EID" HeaderText="EID" SortExpression="EID" />
                <asp:BoundField DataField="StartingPlace" HeaderText="StartingPlace" SortExpression="StartingPlace" />
                <asp:BoundField DataField="EndPlace" HeaderText="EndPlace" SortExpression="EndPlace" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT quota.* FROM quota"></asp:SqlDataSource>
            <br />
            </span>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back to Home" />
        </div>
        <br />
        <br />
    </form>
</body>
</html>
