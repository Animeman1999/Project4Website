<%@ Page Title="Products" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Products.aspx.vb" Inherits="About" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div  ID="ProductContent">
        <h2><%: Title %></h2>
        <p>Product Inventory Page.
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView1" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AlternatingRowStyle-CssClass ="rowsAlternating">
                <Columns>
                    <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName"  />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
                SelectCommand="SELECT [CategoryName], [ProductName], [QuantityPerUnit], [UnitsInStock] FROM [Products by Category] 
                               WHERE ([Discontinued] = @Discontinued) ORDER BY [CategoryName], [ProductName]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="false" Name="Discontinued" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p>
    </div>
</asp:Content>
