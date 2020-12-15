<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Warehouse.aspx.cs" Inherits="CS631Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Warehouses and Sister Facilities Locations<br />
            <br />
            </span>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Employees.aspx" Text="Employees" />
            <br class="auto-style1" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="WID" DataSourceID="SqlDataSource1" Height="256px" Width="418px">
                <Columns>
                    <asp:BoundField DataField="WID" HeaderText="WID" InsertVisible="False" ReadOnly="True" SortExpression="WID" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="NumberEmployee" HeaderText="NumberEmployee" SortExpression="NumberEmployee" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT WID, City, State, NumberEmployee FROM warehouse"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back to Home" />
        </div>
    </form>
</body>
</html>
