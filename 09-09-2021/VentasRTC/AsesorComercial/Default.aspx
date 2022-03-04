<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel id="p_musuario" runat="server">
            <li class="menu__item"><a class="menu__link select" href="Default.aspx"><span class="icon-home"></span> inicio</a></li>
    </asp:Panel>
            
            <li class="menu__item"><a class="menu__link" href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link" href="menuVentas.aspx">GESTION DE VENTAS</a></li>
    <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>

    <li class="menu__item"><a class="menu__link" href="RendicionGastos.aspx">REND. GASTOS</a></li>

    <asp:Panel id="p_jefatura" runat="server">
           <li class="menu__item"><a class="menu__link" href="menuVentas.aspx">GESTION DE CLIENTES</a></li>
        
           <%--<li class="menu__item"><a class="menu__link" href="menuVentas.aspx">GESTION DEL PERSONAL</a></li>--%>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
    <h2 class="grupo__titulo">Bienvenido</h2>
		  
          
              <asp:Panel runat="server" class="contenedor-formulario">
              
              <label for="txtnombre">Nombre</label>
              <asp:TextBox runat="server" ID="txtnombre" ReadOnly="True" Width="100%"></asp:TextBox>
              
              <label for="txtcargo">Cargo</label>
              <asp:TextBox runat="server" ID="txtcargo" ReadOnly="True" Width="100%"></asp:TextBox>

              <label for="txtcorreo">E-mail</label>
              <asp:TextBox runat="server" ID="txtcorreo" ReadOnly="True" Width="100%"></asp:TextBox>
              
              <label for="txttelefono">Telefono</label>
              <asp:TextBox runat="server" ID="txttelefono" ReadOnly="True" Width="100%"></asp:TextBox>

              <label for="txtvehiculo">Vehículo</label>
              <asp:TextBox runat="server" ID="txtvehiculo" ReadOnly="True" Width="100%"></asp:TextBox>

                  <br />
                  Usuario,
                  <asp:Label ID="lblusuario" runat="server"></asp:Label>
                  &nbsp;
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Salir</asp:LinkButton>

                  &nbsp;<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>

              </asp:Panel>
    <asp:Panel ID="IDPANELIZQUIEDA" class="mapa" runat="server">
        <asp:Image  ID ="Imagen1" runat="server" ImageUrl="~/images/personal/GALIN.jpg" Width="300px"></asp:Image>

    </asp:Panel>
            
</asp:Content>
