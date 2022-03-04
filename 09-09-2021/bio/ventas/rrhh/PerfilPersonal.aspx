<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerfilPersonal.aspx.cs" Inherits="biotech.bio.ventas.rrhh.PerfilPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FICHA DEL PERSONAL</title>
    <style type="text/css">
        .auto-style3 {
            width: 400px;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <table align="center" class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" Width="150px" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 380px" ><strong>Nombres</strong>:<br />
                    <asp:Label ID="lblNombre" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td WIDTH="190" ><strong>Cargo</strong>:<br />
                    <asp:Label ID="lblCargo" runat="server"></asp:Label>
                    <br />
                </td>
                <td WIDTH="20" >&nbsp;</td>
                <td WIDTH="190" ><strong>Zona</strong>:<br />
                    <asp:Label ID="lblzona" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Unidad asignada:</strong><asp:Label ID="lblidUnidad" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:LinkButton ID="lbtnUnidad" runat="server" OnClick="lbtnUnidad_Click"></asp:LinkButton>
                </td>
                <td WIDTH="20">&nbsp;</td>
                <td><strong>F.Nacimiento:</strong><br />
                    <asp:Label ID="lblFechaNac" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3"><strong>Teléfono:</strong><br />
                    <asp:Label ID="lblteléfono" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3"><strong>Correo:</strong><br />
                    <asp:Label ID="lblcorreo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3"><strong>Dirección:</strong><br />
                    <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table class="auto-style4">
                        <tr>
                            <td><strong>Departamento:</strong><br />
                                <asp:Label ID="lblDepartamento" runat="server"></asp:Label>
                            </td>
                            <td><strong>Provincia:</strong><br />
                                <asp:Label ID="lblProvincia" runat="server"></asp:Label>
                            </td>
                            <td><strong>Distrito:</strong><br />
                                <asp:Label ID="lblDistrito" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td><strong>NÚMERO DE CUENTA:</strong></td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblbanco" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Nª cuenta:</strong><br />
                    <asp:Label ID="lblncuenta" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>Nº cuenta CCI:</strong><br />
                    <asp:Label ID="lblnCtaFree" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Nº cuenta CTS:</td>
                <td>&nbsp;</td>
                <td>Nº cuenta CTS:</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblmensaje" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
        </table>
    

    </div>
    </form>
</body>
</html>
