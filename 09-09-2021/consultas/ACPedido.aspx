<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACPedido.aspx.cs" Inherits="biotech.consultas.ACPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 38px;
        }
        .auto-style4 {
            width: 600px;
        }
        .auto-style6 {
        }
        .auto-style9 {
            width: 153px;
            height: 23px;
        }
        .auto-style10 {
            width: 4px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
            width: 450px;
        }
        .auto-style12 {
        }
        .auto-style17 {
            width: 4px;
        }
        .auto-style18 {
            width: 450px;
            text-align: left;
        }
        .auto-style20 {
            width: 232px;
        }
        .auto-style21 {
            color: #999999;
        }
        .auto-style22 {
            font-size: small;
            text-align: center;
        }
        .auto-style25 {
            font-size: small;
            font-weight: bold;
            text-align: right;
            width: 285px;
        }
        .auto-style26 {
            text-align: right;
        }
        .auto-style27 {
            font-size: small;
            font-weight: bold;
            text-align: right;
            width: 285px;
            color: #800000;
        }
        .auto-style28 {
            height: 22px;
            text-align: left;
        }
        .auto-style29 {
            color: #999999;
            font-size: small;
            text-align: left;
            margin-bottom: 0px;
        }
        .auto-style31 {
            color: #999999;
            font-size: xx-small;
            text-align: left;
        }
        .auto-style32 {
            font-size: xx-small;
            text-align: center;
        }
    *,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style34 {
            font-size: small;
            height: 23px;
        }
        .auto-style35 {
            width: 450px;
            text-align: right;
        }
        .auto-style36 {
            width: 450px;
            text-align: left;
            height: 23px;
        }
    </style>

    <link href="../bio/css/sweetalert.css" rel="stylesheet" />
    <script src="../bio/js/sweetalert.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    
        <asp:Panel ID="Panel1" runat="server" Height="50px">
            <table class="auto-style4">
                <tr valign=top >
                    <td valign=top>
                        <asp:Label ID="lblidValidacion" runat="server" Visible="False"></asp:Label>
                        <asp:TextBox ID="txtCodValidacion" type="number" runat="server" Height="55px" placeholder="Codigo" ToolTip="Ingresar codigo" Width="400px" Font-Size="X-Large" MaxLength="5"></asp:TextBox>
                        <br />
                    </td>
                    <td valign="top">
                        <asp:ImageButton ID="ibtnAprobado" runat="server" Height="55px" ImageUrl="~/images/novaFalse.png" ToolTip="Aprobar pedido" Width="70px" OnClick="ibtnAprobado_Click1" />
                    </td>
                    <td valign="top">
                        <asp:ImageButton ID="ibtnobservado" runat="server" Height="55px" ImageUrl="~/images/novaTrue.png" ToolTip="Observar pedido" Width="70px" OnClick="ibtnobservado_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            <br />
        </asp:Panel>
    
       
    
          
    
    
       
    
          
    
        <br />
    
        <table class="auto-style4">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="27px" ImageUrl="~/images/logoicono.png" Width="38px" />
                </td>
                <td>
                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NOTA PEDIDO N°<asp:Label ID="lblpedido" runat="server"></asp:Label>
                        <asp:Label ID="lblidepedido" runat="server" Visible="False"></asp:Label>
                    </h2>
                </td>
                <td>
                    <asp:Button ID="btnValidar" runat="server" BackColor="#D1F4CC" Height="40px" Text="VALIDAR" Width="100px" OnClick="btnValidar_Click1" />
                </td>
            </tr>
        </table>
        <br />
  
    <div>
    
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">F. EMISIÓN</td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="lblfechaemision" runat="server"></asp:Label>
                            </td>
                            <td><strong><span >ESTADO:</span></strong></td>
                            <td>
                                <asp:Label ID="lblestadoPedido" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong><span style="font-size:11.0pt;font-family:
&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:ES-PE;mso-fareast-language:ES-PE;mso-bidi-language:
AR-SA">FECHA DE ATENCIÓN</span></strong></td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblfechadeatencion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">CLIENTE</span></strong></span></td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblrazonsocial" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">RUC</span></strong></span></td>
                <td class="auto-style10">:</td>
                <td class="auto-style11">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="lblruc" runat="server"></asp:Label>
                            </td>
                            <td><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">MONEDA:</span></strong></span></td>
                            <td>
                                <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">CONDICION DE PAGO</span></strong></span></td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblcondicionpago" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">RESPONSABLE</span></strong></span></td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblnombreasesor" runat="server" AccessKey=" "></asp:Label>
&nbsp;
                    <asp:Label ID="lblresponsable" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">
                    <br />
                    DETALLE DE PEDIDOS REALIZADOS:</span></strong></span>
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET" DataSourceID="SqlDataSource1" style="font-size: small" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                            <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" >
                            <HeaderStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA" SortExpression="PVENTA">
                            <HeaderStyle Width="50px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                            <HeaderStyle Width="30px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUBTT">
                            <HeaderStyle Width="65px" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                             <asp:BoundField DataField="DESCTO" HeaderText="DSCTO %" SortExpression="DESCTO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                                <ControlStyle Height="20px" Width="20px" />
                                <HeaderStyle Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                            <asp:BoundField DataField="APROBACION" HeaderText="APROB." SortExpression="APROBACION" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADOATENCION" HeaderText="*" SortExpression="ESTADOATENCION" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                             <asp:ImageField DataImageUrlField="ECOMERCIAL" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="AC">
                                <ControlStyle Height="15px" Width="15px" />
                                <HeaderStyle Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                            <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="AG">
                                <ControlStyle Height="15px" Width="15px" />
                                <HeaderStyle Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                            <asp:ImageField DataImageUrlField="ESTADOATENCION" DataImageUrlFormatString="~/images/aten{0}.png" HeaderText="*">
                                <ControlStyle Height="15px" Width="15px" />
                                <HeaderStyle Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_bkpedidoDet" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidepedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style25">
                                SUB. TOTAL </td>
                            <td class="auto-style26">
                                <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style27">IGV(18%):</td>
                            <td class="auto-style26">
                                <asp:Label ID="lblIGV" runat="server" style="color: #800000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style25">IMPORTE TOTAL</td>
                            <td class="auto-style26">
                                <asp:Label ID="lblimporteTotal" runat="server" style="font-size: large; font-weight: 700"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">LUGAR DE ENTREGA</span></strong></span></td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    <span style="font-family:&quot;Calibri&quot;,sans-serif">
                    <asp:Label ID="lblLugarEntrega" runat="server"></asp:Label>
                         </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><span style="font-family:&quot;Calibri&quot;,sans-serif"><strong>TIPO DE ENTREGA<br />
                        </strong>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceFechasEntrega" DataTextField="CANTIDADFECHA" DataValueField="FECHA" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="100%">
                    </asp:RadioButtonList>
                    <strong>
                                        <asp:SqlDataSource ID="SqlDataSourceFechasEntrega" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="st_pedido_orderFecha" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblidepedido" Name="idpedido" PropertyName="Text" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                    </strong>
                    </span></span></td>
                <td class="auto-style17" VALIGN=top>:</td>
                <td class="auto-style18" VALIGN=top>
                    <span style="font-family:&quot;Calibri&quot;,sans-serif">
                                            <asp:Label ID="lbltpEntrega" runat="server"></asp:Label>
                                            
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                                <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
                    <br />
                    </span>
                                            <asp:GridView ID="gvLugarEntrega" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines="Horizontal" PageSize="4" Width="300px" style="font-size: x-small">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                                    <asp:BoundField DataField="CANTIDAD" HeaderText="LITROS" SortExpression="CANTIDAD">
                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" Visible="False" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_entrega" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label1" DbType="Date" Name="fecha" PropertyName="Text" />
                                                    <asp:ControlParameter ControlID="lblidepedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">DETALLE</span></strong></span></td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <span style="font-family:&quot;Calibri&quot;,sans-serif">
                    <asp:Label ID="lblDetalle" runat="server"></asp:Label> </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: ES-PE; mso-bidi-language: AR-SA"><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">ORDEN DE COMPRA</span></strong></span></td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <span style="font-family:&quot;Calibri&quot;,sans-serif">
                    <asp:Label ID="lbloc" runat="server" Visible="False"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver Orden de Compra</asp:LinkButton>
                        </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">COTIZACIÓN:</td>
                <td class="auto-style10">:</td>
                <td class="auto-style36" ALIGN=right>
                            <asp:LinkButton ID="lblncotizacion" runat="server" OnClick="lblncotizacion_Click"></asp:LinkButton>
                            <asp:Label ID="lblidcot2" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <asp:Panel ID="PanelObservacionDescripcion" runat="server">
            <tr>
                <td  colspan="3"><span class="auto-style34"><strong>OBSERVACIÓN:</strong> </span>
                    <asp:Label ID="lblobservacionDescripcion" runat="server" CssClass="auto-style34" ForeColor="#993300"></asp:Label>
                </td>
            </tr>
                </asp:Panel>
            <tr>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style35">
                            <a href="Javascript:window.close()" style="text-align: right">Cerrar</a></td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="3">
                    <span style="font-family:&quot;Calibri&quot;,sans-serif">
                    <asp:Label ID="LBLMENSAJEOC" runat="server"></asp:Label>
                        </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" colspan="3"> 
	<!-- Default-JavaScript --> <script type="text/javascript" src="../VentasRTC/pedidos/js/jquery-2.1.4.min.js"></script>

<!-- Calendar -->
<script src="../VentasRTC/pedidos/js/jquery-ui.js"></script>
	<script>
	    $(function () {
	        $("#datepicker,#datepicker1").datepicker();
	    });
	</script>
<!-- //Calendar -->

                    <div class="auto-style29">
                        <span class="auto-style21"><span class="auto-style32">&nbsp;</span></span><asp:Panel ID="pcolor" runat="server" BackColor="#FFFFCC">
                            <span class="auto-style21"><span class="auto-style22">
                            <asp:Image ID="Image6" runat="server" CssClass="auto-style31" ImageAlign="AbsMiddle" ImageUrl="~/images/apro1.png" Width="15px" />
                            </span><span class="auto-style32">&nbsp;APROBADO - <span class="auto-style22">
                            <asp:Image ID="Image9" runat="server" CssClass="auto-style31" ImageAlign="AbsMiddle" ImageUrl="~/images/apro55.png" Width="15px" />
                            </span>&nbsp;OBSERVADA)</span></span>
                            <br />
                            POR VALIDACIÓN:&nbsp;
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/GCOMERCIAL.png" Width="15px" CssClass="auto-style31" />
                            &nbsp;Coordinación comercial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/images/GGENERAL.png" Width="15px" CssClass="auto-style31" />
                            &nbsp;Coordinador comercial y G.G.<br /> PROBACIÓN:<strong> AC</strong>: Aprobación Coordinador comercial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>AG</strong>: Aprobación G.G.</asp:Panel>
    </div>  
                </td>
            </tr>
            </table>
      
    </f
                        <br />
                        </div>  
                </form>
                </td>
            </tr>
            </table>
      
    </form>
    </div>
    </body>
</html>
