<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="ProductosMovimientos.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.ProductosMovimientos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <li class="menu__item"><a class="menu__link " href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link select" href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link " href="menuVentas.aspx">GESTION DE VENTAS</a></li>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
             <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">

        <h2 class="grupo__titulo">MOVIMIENTOS DE PRODUCTOS</h2>
		<p class="grupo__descripcion">Productos mas vendidos</p>

</asp:Content>
