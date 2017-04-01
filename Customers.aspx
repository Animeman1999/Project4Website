<%@ Page Title="Customers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Customers.aspx.vb" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div id="Customers">


    <h2><%: Title %></h2>

    <p>
        List of Customers Page.
        <asp:GridView ID="CustomerGridView" runat="server" CssClass="Customers" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            HeaderStyle-CssClass="headerCustomers" RowStyle-CssClass="rowsCustomers" AlternatingRowStyle-CssClass ="rowsAlternatingCustomers">
            <Columns>
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
            SelectCommand="SELECT [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], 
                           [Phone] FROM [Customers] ORDER BY [CompanyName]"></asp:SqlDataSource>

    </p>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@northwind.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@northwind.com">Marketing@example.com</a>
    </address>
</div>
</asp:Content>
