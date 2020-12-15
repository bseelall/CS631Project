<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Businesses.aspx.cs" Inherits="CS631Project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            List of Businesses<br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Warehouse.aspx" Text="Warehouses" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Items.aspx" Text="Items" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="BID" HeaderText="BID" InsertVisible="False" ReadOnly="True" SortExpression="BID" />
                    <asp:BoundField DataField="BusinessName" HeaderText="BusinessName" SortExpression="BusinessName" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="BEID" HeaderText="BEID" SortExpression="BEID" />
                    <asp:BoundField DataField="Commission" HeaderText="Commission" SortExpression="Commission" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT business.* FROM business"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back to Home" />
        </div>
    </form>
</body>
</html>
