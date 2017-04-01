<%@ Page Title="Suppliers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"CodeFile="Suppliers.aspx.vb" Inherits="Suppliers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
<div id="Suppliers">
    <h2><%: Title %></h2>
    <p></p>
    <p>
        List of Suppliers Page.
        <asp:GridView ID="SuppliersGridView" runat="server" CssClass="SuppliersGridView" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None"
            HeaderStyle-CssClass="headerSuppliers" RowStyle-CssClass="rowsSuppliers" AlternatingRowStyle-CssClass ="rowsAlternatingSuppliers">
            <Columns>
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                <asp:BoundField DataField="HomePage" HeaderText="HomePage" SortExpression="HomePage" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
            SelectCommand="SELECT [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Phone], [Country], [Fax], [HomePage] 
            FROM [Suppliers] 
            ORDER BY [CompanyName]">
        </asp:SqlDataSource>
    </p>
    <p></p>
</div>    
</asp:Content>
