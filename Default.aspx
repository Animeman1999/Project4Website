<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div ID="Home">    
    <div>
        <p>
            <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/Images/Northwind.jpg" Width="298px" />
        </p> 
        <h1>Northwind Information Lists.</h1>
        <p></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Customers</h2>
            <p> The list of our customers and their contact infromation.</p>
        </div>
        <div class="col-md-4">
            <h2>Products</h2>
            <p>The list of active products and their inventory.</p>
        </div>
        <div class="col-md-4">
            <h2>Suppliers</h2>
           <p>The list of our suppliers and their contact information.</p>
        </div>
    </div>
</div>
</asp:Content>
