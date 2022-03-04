<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.porpagar.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: xx-large;
        font-weight: bold;
    }
        .auto-style6 {
            color: #006600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style6" style="text-align: center">
        INFORMES DE CUENTAS</h2>
<hr />
<asp:Panel ID="Panel1" runat="server" Width="100%">
    <div>
        <div style="text-align: center">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/ctaxcobrar.png" Width="400px" OnClick="ImageButton2_Click" PostBackUrl="~/venta_almacen/Default.aspx" />
           
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/porpagar.png" OnClick="ImageButton1_Click" Width="400px" />
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/proyeccion.png" OnClick="ImageButton5_Click" Width="400px" />
             </div>
    </div>
</asp:Panel>
<br />
<p style="text-align: center">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: large">Cerrar sesión</asp:LinkButton>
</p>

</asp:Content>
