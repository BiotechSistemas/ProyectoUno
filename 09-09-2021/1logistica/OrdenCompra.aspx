<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdenCompra.aspx.cs" Inherits="biotech._1logistica.OrdenCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 119px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            width: 8%;
            height: 23px;
            font-weight: bold;
        }
        .auto-style9 {
            height: 23px;
            width: 44%;
        }
        .auto-style10 {
            height: 23px;
            width: 85px;
            font-weight: bold;
        }
        .auto-style12 {
        }
        .auto-style13 {
            height: 23px;
            width: 40%;
        }
        .auto-style14 {
        }
        .auto-style17 {
            width: 85px;
        }
        .auto-style18 {
            width: 44%;
        }
        .auto-style19 {
            font-weight: bold;
        }
        .auto-style20 {
            width: 85px;
            font-weight: bold;
        }
        .auto-style21 {
            width: 44%;
            text-align: right;
        }
        .auto-style22 {
            height: 41px;
        }
        .auto-style23 {
            width: 40%;
            height: 41px;
        }
        .auto-style24 {
            width: 85px;
            height: 41px;
        }
        .auto-style25 {
            width: 44%;
            height: 41px;
        }
        .auto-style26 {
            height: 23px;
        }
        .auto-style27 {
            width: 85px;
            height: 23px;
        }
        .auto-style28 {
            font-weight: bold;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Imagebiotech" runat="server" Height="61px" ImageUrl="~/images/logobiotech.jpg" Width="119px" />
                    <asp:Image ID="Imageeirl" runat="server" Height="61px" ImageUrl="~/images/eirl.jpg" Width="119px" />
                    <asp:Image ID="Imagesac" runat="server" Height="61px" ImageUrl="~/images/sac.jpg" Width="119px" />
                
                </td>
                <td style="text-align: right">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <strong style="text-align: center">
        <hr />
        <div>
            <h1><strong style="text-align: center">Orden de Compra / Servicio:
                <asp:Label ID="lblordencompra" runat="server"></asp:Label>
                <asp:Label ID="lblidoc" runat="server" Visible="False"></asp:Label>
            </h1>
            </strong>
        </div>
        </strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">PROVEEDOR:</td>
                <td class="auto-style7" colspan="3">
                    <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">RUC/DNI:</td>
                <td class="auto-style7" colspan="3">
                    <asp:Label ID="lblruc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">DIRECCIÓN:</td>
                <td class="auto-style7" colspan="3">
                    <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">CONTACTO:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblcontacto" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">TELEFONO:</td>
                <td class="auto-style9">
                    <asp:Label ID="lbltelefono" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">N°CUENTA:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblnumcuenta" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">BANCO:</td>
                <td class="auto-style9">
                    <asp:Label ID="lblbanco" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style20">MONEDA:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                    <br />
                    Por la presente pedimos que entreguen las siguientes mercancias según nuestras condiciones de entrega:</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleoc" DataSourceID="SqlDataSource1" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="iddetalleoc" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleoc" />
                            <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                            <asp:BoundField DataField="unidmed" HeaderText="U. Med." SortExpression="unidmed">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
                            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="precio" DataFormatString="{0:0,0.00}" HeaderText="P.Unitario" SortExpression="precio">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="subtotal" DataFormatString="{0:0,0.00}" HeaderText="Imp. Total" SortExpression="subtotal">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompraDetalle] WHERE ([idoc] = @idoc)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidoc" Name="idoc" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"># de registros:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblnumregistros" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21" rowspan="3">Valor de venta:&nbsp;
                    <asp:Label ID="lblsubtotal" runat="server"></asp:Label>
                    <br />
                    Impuesto 18% :
                    <asp:Label ID="lbligv" runat="server"></asp:Label>
                    <br />
                    Total:&nbsp;
                    <asp:Label ID="lbltotal" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Asunto:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblasunto" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="lblempresa" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>IMPORTANTE:</strong></td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Facturar a:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblfacturara" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">R.U.C.:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblructitular" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Dirección:</td>
                <td class="auto-style14" colspan="3">
                    <asp:Label ID="lbldirecciontitular" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Almacén:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblalmacen" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style13"></td>
                <td class="auto-style27"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2"><strong>CONDICIÓN DE COMPRA</strong></td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Forma de pago:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblformapago" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Fecha de Entrega:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblfechaentrega" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Lugar de entrega:</td>
                <td class="auto-style14" colspan="3">
                    <asp:Label ID="lbllugarentrega" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Referencia:<br />
                    <br />
                </td>
                <td class="auto-style14" colspan="3">
                    <asp:Label ID="lblreferencia" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Image ID="Image3" runat="server" Height="127px" ImageUrl="~/images/ACHAC.jpg" Width="248px" />
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    <asp:Image ID="Image2" runat="server" Height="127px" ImageUrl="~/images/JFAT.jpg" Width="248px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">...............................................................<br />
                    Elaborado por:<br />
                    <strong>CESAR ANTONIO CHACALIAZA T.</strong><asp:Label ID="lblelaboradopor" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style25">...............................................................<br />
                    Aprobado por:<br />
                    <asp:Label ID="lblatorizacionn" runat="server" style="font-weight: 700"></asp:Label>
                    <asp:Label ID="lblaprobado" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    </form>
</body>
</html>
