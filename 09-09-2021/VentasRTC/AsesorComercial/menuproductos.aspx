<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="menuproductos.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.menuproductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <li class="menu__item"><a class="menu__link" href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link  select" href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link " href="menuVentas.aspx">GESTION DE VENTAS</a></li>
     <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
    <li class="menu__item"><a class="menu__link" href="RendicionGastos.aspx">REND. GASTOS</a></li>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">

    <h2 class="grupo__titulo">productos</h2>
          
          <%--<p class="grupo__descripcion">Trabajos realizados por nosotros</p>--%>
    <asp:Panel ID="Panel1" runat="server" class="columna">
            
            <h3 class="columna__titulo"><a class="columna__link" href="ProductosAc.aspx" target="_blank">ALMACEN</a></h3><a class="fancybox" href="ProductosAc.aspx" rel="group"><img class="columna__imagen" src="../../images/almacen.jpg" alt="Kinegeriatrics"></a>        
    </asp:Panel>
          
    <asp:Panel ID="Panel2" runat="server" class="columna">
            
            <h3 class="columna__titulo"><a class="columna__link" href="#" target="_blank">MOVIMIENTOS</a></h3><a class="fancybox" href="img/img-kine.jpg" rel="group"><img class="columna__imagen" src="img/img-kine-small.jpg" alt="Kinegeriatrics"></a>
         
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" class="columna">
           
            <h3 class="columna__titulo"><a class="columna__link" href="ProductosAdmin.aspx" target="_blank">ADMINISTRAR</a></h3><a class="fancybox" href="ProductosAdmin.aspx" rel="group"><img class="columna__imagen" src="../../images/adminpro.jpg" alt="Hibachi Catering"></a>
         
    </asp:Panel>

         
          

    <br />
    <asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
    <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>

         
          

</asp:Content>
