<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="CS631Project.Transcript" %>

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
            &nbsp;<span class="auto-style1">Transactions Made in Newark Fufillment Center<br />
            <br />
            </span>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Order Tracker.aspx" Text="Order Tracker" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" PostBackUrl="~/Items.aspx" Text="Items" />
            <br />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Height="298px" Width="368px">
            <Columns>
                <asp:BoundField DataField="OID" HeaderText="OID" InsertVisible="False" ReadOnly="True" SortExpression="OID" />
                <asp:BoundField DataField="IID" HeaderText="IID" SortExpression="IID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT OID, IID, `Date`, CID FROM orders"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button4" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back to Home" />
    </form>
</body>
</html>
