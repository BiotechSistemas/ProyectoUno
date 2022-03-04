<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="RegMovimientos.aspx.cs" Inherits="biotech.facturacion.RegMovimientos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            width: 182px;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            width: 60%;
        }
        .auto-style5 {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Registrar Operación:</div>
					<div class="chart">
                        <div align ="center">
                            <br />
                            <asp:Panel ID="Panel1" runat="server">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">INGRESAR FACT/LETRA</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="64px"></asp:TextBox>
                                            -<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button1" runat="server" Text="CARGAR FACTURA" Width="200px" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="CARGAR LETRA" Width="200px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <asp:Panel ID="PanelLetra" runat="server">
                                    <br />
                                </asp:Panel>
                                <br />
                                <asp:Panel ID="Panelfactura" runat="server">
                                </asp:Panel>
                                <asp:Panel ID="Panel2" runat="server">
                                    <table class="auto-style4">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:Panel>
                            <br />
       </div>
                    </div>
				</div>

			</div>
		</div>
    </div>

</asp:Content>
