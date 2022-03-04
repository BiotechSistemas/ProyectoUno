<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LetraRenovar.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.LetraRenovar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

         .auto-style17 {
             width: 250px;
        }

        .auto-style33 {
            font-weight: 700;
        }
        .auto-style26 {
            font-weight: 700;
        }
        .auto-style24 {
             width: 100%;
        }
        .auto-style35 {
            text-align: center;
        }
        .auto-style36 {
            text-align: center;
            height: 23px;
            background-color: #F3F3F3;
        }
        .auto-style37 {
            width: 100%;
            border: 1px solid #FFFFFF;
        }
        .auto-style38 {
            text-align: center;
            background-color: #F3F3F3;
        }
        .auto-style23 {
            width: 250px;
        }
        .auto-style41 {
            width: 1390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="PanelAmortizar" runat="server" Class="row">
            <h2><strong>RENOVAR LETRA : </strong> <asp:Label ID="lblletra1" runat="server" CssClass="auto-style890"></asp:Label></h2>
            <hr />
                    <table class="auto-style24">
                        <tr>
                            <td class="auto-style23">Cliente:</td>
                            <td class="auto-style41">
                               
                                <asp:Label ID="lblruc" runat="server"></asp:Label>
                                &nbsp;-
                                <asp:Label ID="lblcliente" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <asp:Label ID="lbldiass" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style41">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17" colspan="2">
                                <table align="center" class="auto-style37">
                                    <tr>
                                        <td class="auto-style36" colspan="2">LETRA ORIGINAL</td>
                                        <td class="auto-style36" colspan="2">NUEVA FECHA POR RENOVACIÓN</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style38">F. Emisión:</td>
                                        <td class="auto-style38">F. Vencimiento:</td>
                                        <td class="auto-style38">F.Emisión</td>
                                        <td class="auto-style38">F. Vencimiento</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">
                                            <asp:Label ID="lblfemision" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td class="auto-style35">
                                            <asp:Label ID="lblfechavencto" runat="server" style="font-weight: 700; color: #990000;"></asp:Label>
                                        </td>
                                        <td class="auto-style35">
                                            <asp:Label ID="lblNuevaFERenov" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td class="auto-style35">
                                            <asp:Label ID="lblNuevaFVRenov" runat="server" style="font-weight: 700; color: #990000;"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">Importe:</td>
                                        <td>
                                            <asp:Label ID="lblmoneda1" runat="server"></asp:Label>
                                            <asp:Label ID="lblmonto2" runat="server" CssClass="auto-style33" Visible="False"></asp:Label>
                                            <asp:Label ID="lblmonto1" runat="server" CssClass="auto-style33"></asp:Label>
                                        </td>
                                        <td style="text-align: right">Nuevo Importe:</td>
                                        <td>
                                            <asp:Label ID="lblmoneda11" runat="server"></asp:Label>
                                            <asp:Label ID="lblnuevoimporte" runat="server" CssClass="auto-style26"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style41">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">por procentaje:</td>
                            <td class="auto-style41">
                                <asp:TextBox ID="txtporcentajerenov" runat="server" type="number" Width="80px"></asp:TextBox>
                                <asp:Button ID="btporcent" runat="server" OnClick="btporcent_Click1" Text="%" Width="40px" />
                                ,&nbsp; Importe a renovar:&nbsp;<asp:Label ID="lblimporteseria" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">por monto:</td>
                            <td class="auto-style41">
                                <asp:TextBox ID="txtimporterenov" runat="server" step="0.01" type="number" Width="80px"></asp:TextBox>
                                <asp:Button ID="btimporte" runat="server" OnClick="btimporte_Click" Text="US$" Width="40px" />
                                , Porcentualmente a:
                                <asp:Label ID="lblporcetajeseria" runat="server"></asp:Label>
                                &nbsp;%</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Detalle de R.:<br /> </td>
                            <td class="auto-style41">
                                <asp:TextBox ID="txtconcepto1" runat="server" Width="100%" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Cerrar</asp:LinkButton>
                            </td>
                            <td class="auto-style41">
                                <asp:Button ID="btRegistrar" runat="server" Height="40px" OnClick="btRegistrar_Click" Text="CONFIRMAR RENOVACION" Width="100%" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <asp:Label ID="lblIdLetra" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style41">
                                <asp:Label ID="lblmensaje5" runat="server" CssClass="auto-style15" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
