<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="menuVentas.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.menuVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <li class="menu__item"><a class="menu__link " href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link " href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link select" href="menuVentas.aspx">GESTION DE VENTAS</a></li>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
            <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
    <li class="menu__item"><a class="menu__link" href="RendicionGastos.aspx">REND. GASTOS</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">

    <h2 class="grupo__titulo">VENTAS</h2>
		  <p class="grupo__descripcion">Registro de ventas realizadas</p>

     <asp:Panel ID="Panel1" runat="server" class="columna">
            
            <h3 class="columna__titulo"><a class="columna__link" target="_blank">MES ACTUAL</a></h3><a class="fancybox" href="VentasAc.aspx" rel="group"><img class="columna__imagen" src="../../images/ventas1.jpg" alt="Hibachi Catering"></a>
         
    </asp:Panel>
          
    <asp:Panel ID="Panel2" runat="server" class="columna">
            
            <h3 class="columna__titulo"><a class="columna__link" href="#" target="_blank">RESUMEN GENERAL</a></h3><a class="fancybox" href="#" rel="group"><img class="columna__imagen" src="../../images/ventastt2.jpg" alt="Kinegeriatrics"></a>
         
    </asp:Panel>

    <asp:Panel ID="Panelcliente" runat="server" class="columna">
            
            <h3 class="columna__titulo"><a class="columna__link" href="CarteraCliente.aspx" target="_blank">CARTERA CLIENTES</a></h3><a class="fancybox" href="CarteraCliente.aspx" rel="group"><img class="columna__imagen" src="../../images/clientes.jpg" alt="Kinegeriatrics"></a>
         
    </asp:Panel>

</asp:Content>
