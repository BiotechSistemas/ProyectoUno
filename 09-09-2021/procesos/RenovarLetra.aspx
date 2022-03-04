<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="RenovarLetra.aspx.cs" Inherits="biotech.procesos.RenovarLetra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
        .auto-style3 {            text-align: left;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            width: 94px;
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
            text-align: left;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 20px;
            text-align: left;
        }
        .auto-style9 {
            height: 20px;
            text-align: left;
        }
        .auto-style10 {
            font-size: x-large;
            font-weight: 700;
        }
        .auto-style11 {
            height: 18px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">RENOVACION DE LETRA</div>
					<div class="chart">
                        <div align ="center">
                               
                            <asp:Panel ID="Panel1" runat="server">
                                <br />
                                <asp:Panel ID="Panel2" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style3">Ingresar letra:</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" Width="70px"></asp:TextBox>
                                                <span class="auto-style4">-</span><asp:TextBox ID="TextBox2" runat="server" Width="70px"></asp:TextBox>
                                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="height: 26px" Text="Buscar" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="idletra" runat="server" Visible="False"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:Label ID="lblfechaemision" runat="server"></asp:Label>
                                                -<asp:Label ID="lblfechavencto" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="lblletra" runat="server"></asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:Label ID="lblcliente" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3"><strong>Letra</strong></td>
                                            <td class="auto-style3"><strong>Cliente</strong></td>
                                        </tr>
                                       
                                         <tr>
                                            <td class="auto-style3">
                                                <strong>Banco:</strong></td>
                                            <td style="text-align: left">
                                                <asp:Label ID="lblbanco" runat="server"></asp:Label>
                                                &nbsp;-
                                                <asp:Label ID="lblnumunico" runat="server"></asp:Label>
                                                </td>
                                        </tr>
                                         <tr>
                                            <td class="auto-style11"><strong>Estado:</strong></td>
                                            <td class="auto-style11">
                                                <asp:Label ID="lblestadoletra" runat="server"></asp:Label>
                                                <asp:Label ID="lblm" runat="server"></asp:Label>
                                             </td>
                                        </tr>
                                         <tr>
                                            <td class="auto-style3">
                                                <strong><span>Importe:</span></strong></td>
                                            <td style="text-align: left">
                                                <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                                <asp:Label ID="lblimporte" runat="server" CssClass="auto-style10"></asp:Label>
                                            </td>
                                        </tr>
                                          <tr>
                                            <td class="auto-style9"><strong>Porcentaje:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="txtporcentaje" runat="server"></asp:TextBox>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="%" />
                                              </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style9"><strong>Importe:</strong></td>
                                            <td class="auto-style8"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3" colspan="2">
                                                <table class="auto-style7">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtrenovado" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtamortizado" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Importe Renovado</td>
                                                        <td>Importe Amortizado</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" Text="REGISTRAR RENOVACION" OnClick="Button2_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="NUEVA LETRA" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                                                <asp:Label ID="lblgrupoletra" runat="server" style="font-weight: 700"></asp:Label>
                                                -<asp:Label ID="lblserieletra" runat="server" style="font-weight: 700"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                </asp:Panel>
                                <br />
                                <asp:Panel ID="Panel3" runat="server">
                                    </asp:Panel>
                            </asp:Panel>
                               
                            </div>
                    </div>
				</div>

			</div>
		</div>

</asp:Content>
