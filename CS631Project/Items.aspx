<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="CS631Project.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Items</span><br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="SellByDate" HeaderText="SellByDate" SortExpression="SellByDate" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="BID" HeaderText="BID" SortExpression="BID" />
                    <asp:BoundField DataField="StoredWay" HeaderText="StoredWay" SortExpression="StoredWay" />
                    <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
                    <asp:BoundField DataField="AmountSold" HeaderText="AmountSold" SortExpression="AmountSold" />
                    <asp:BoundField DataField="SizeOfItem" HeaderText="SizeOfItem" SortExpression="SizeOfItem" />
                    <asp:BoundField DataField="SHID" HeaderText="SHID" SortExpression="SHID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT item.* FROM item"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back to Home" />
        </div>
    </form>
</body>
</html>
