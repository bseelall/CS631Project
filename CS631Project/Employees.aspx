<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="CS631Project.WebForm5" %>

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
            <span class="auto-style1">Employees</span><br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Quota.aspx" Text="Quota" />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EID" DataSourceID="SqlDataSource1" Height="295px" Width="434px">
            <Columns>
                <asp:BoundField DataField="EID" HeaderText="EID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nfcConnectionString %>" ProviderName="<%$ ConnectionStrings:nfcConnectionString.ProviderName %>" SelectCommand="SELECT employees.* FROM employees"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/MainPage.aspx" Text="Back To Home" />
    </form>
</body>
</html>
