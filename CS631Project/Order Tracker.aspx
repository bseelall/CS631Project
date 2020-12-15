<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order Tracker.aspx.cs" Inherits="CS631Project.WebForm2" %>

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
            <span class="auto-style1">Order Tracker<br />
            </span><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ShipID" DataSourceID="SqlDataSource1" Height="380px" Width="464px">
                <Columns>
                    <asp:BoundField DataField="ShipID" HeaderText="ShipID" InsertVisible="False" ReadOnly="True" SortExpression="ShipID" />
                    <asp:BoundField DataField="OID" HeaderText="OID" SortExpression="OID" />
                    <asp:BoundField DataField="Tracking" HeaderText="Tracking" SortExpression="Tracking" />
                    <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                    <asp:BoundField DataField="ShipPrice" HeaderText="ShipPrice" SortExpression="ShipPrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT shipping.* FROM shipping"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back to Home" />
            <br />
        </div>
    </form>
</body>
</html>
