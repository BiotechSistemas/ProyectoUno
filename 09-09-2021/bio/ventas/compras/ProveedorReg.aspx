<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProveedorReg.aspx.cs" Inherits="biotech.bio.ventas.compras.ProveedorReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    *,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
    </style>

    
        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr valign=top>
                <td  colspan="2"><strong>REGISTRO DE PROVEEDOR:</strong><asp:Label ID="lblidproveedor" runat="server" Visible="False"></asp:Label>
                </td>
                <td colspan="2" style="text-align: right">
                    <asp:Label ID="lblidEstadoProveedor" runat="server" Text="0" Visible="False"></asp:Label>
                    <asp:TextBox ID="txtruc" runat="server" Width="180px" Height="20px"></asp:TextBox>
                    <asp:ImageButton ID="btnBuscar" runat="server" ImageUrl="~/images/buscarr.png" Width="30px" Height="25px" ImageAlign="Middle" OnClick="btnBuscar_Click" />
                </td>
            </tr>
            <tr valign=top>
                <td  colspan="4"><hr /></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtruc2" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    RUC:</td>
                <td colspan="3">
                    <asp:TextBox ID="txtrazonsocial" runat="server" Width="470px"></asp:TextBox>
                    <br />
                    Razón social:</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txttelefono" runat="server" Width="150px"></asp:TextBox>
                    Teléfono:</td>
                <td>
                    <asp:TextBox ID="txtmail" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    E-mail:</td>
                <td>
                    <asp:TextBox ID="txtVendedor" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    Vendedor:</td>
                <td>
                                <asp:DropDownList ID="ddlListaDetraccion" class="form-control" runat="server" DataSourceID="SqlDataSource7" DataTextField="detalle" DataValueField="idDetraccion" Width="100%">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM PAGOS.Detracciones where estado = 1
"></asp:SqlDataSource>
                    Detracción
                    <asp:Label ID="lblidDetraccion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="txtdireccion" runat="server" Width="470px"></asp:TextBox>
                    <br />
                    Dirección:</td>
                <td>
                    <asp:TextBox ID="txtDetraccion" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    Cta. Detracción</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:DropDownList ID="ddlzona" runat="server" Width="150px" DataSourceID="SqlDataSourceZona" DataTextField="descripcion" DataValueField="idZona">
                    </asp:DropDownList>
                    <br />
                    Zona:</td>
                <td>
                  <asp:SqlDataSource ID="SqlDataSourceZona" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idZona], [descripcion] FROM [tb_Zona]"></asp:SqlDataSource>
              
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right">
                    <asp:Label ID="lblmensajeproveedor" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
              <asp:Button ID="btn10nuevoproveedor" runat="server" OnClick="btn10nuevoproveedor_Click" Text="NUEVO" Width="300px" />
              <asp:Button ID="btn10editar" runat="server" OnClick="btn10editar_Click" Text="EDITAR" Width="300px" />
                </td>
                <td colspan="2">
              <asp:Button ID="btn10registrar" runat="server" Text="REGISTRAR" OnClick="btn10registrar_Click" Width="300px" />
              <asp:Button ID="btn_registrarActualizacion" runat="server" Text="REGISTRAR ACTUALIZACIÓN" OnClick="btn_registrarActualizacion_Click" Width="300px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblIDusuario" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblbanco" runat="server"></asp:Label>
                </td>
                <td colspan="2" style="text-align: right">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">CERRAR</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
