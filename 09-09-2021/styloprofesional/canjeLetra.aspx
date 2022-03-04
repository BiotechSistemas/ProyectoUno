<%@ Page Title="" Language="C#" MasterPageFile="~/styloprofesional/Site1.Master" AutoEventWireup="true" CodeBehind="canjeLetra.aspx.cs" Inherits="biotech.styloprofesional.canjeLetra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">CANJE DE LETRAS</div>
					<div class="chart">
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:Button ID="Button1" runat="server" Text="GENERAR LETRA" OnClick="Button1_Click" />
                            <br />
                            <asp:Panel ID="Panel3" runat="server">
                            </asp:Panel>
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                            <br />
                        </asp:Panel>
                        <br />
                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    </div>
				</div>
				
				<div class="widget">
					<div class="title">Detalle pedido: Nº <asp:Label ID="lblorden" runat="server" Text="Label"></asp:Label>
                                
                        &nbsp;&nbsp;&nbsp;&nbsp;
                                 </div>
					<div class="chart">                     
                        <asp:Panel ID="Panel1" runat="server">
                            <ul>
                                <li><strong>Fecha:  </strong><asp:Label ID="lblfecha" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li><strong>Vendedor:   </strong><asp:Label ID="lblvendedor" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li><strong>Cliente:    </strong><asp:Label ID="lblcliente" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li><strong>Condición pago: </strong><asp:Label ID="lblcondpago" runat="server" Text="Label"></asp:Label>
                                </li>
                            </ul>
                        </asp:Panel>

                       </div>
				</div>
			</div>
		</div>

</asp:Content>
