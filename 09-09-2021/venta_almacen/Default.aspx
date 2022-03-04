<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.venta_almacen.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    

    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Procesos Administrativos</div>
					<div class="chart">
                        Bienvenido,
                        <asp:Label ID="lblusuario" runat="server" style="font-size: x-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: large">Cerrar Sesión</asp:LinkButton>
                        <asp:Label ID="lblestadon" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000"></asp:Label>
                        <br />
                    </div>
				</div>
				
				</asp:Content>
