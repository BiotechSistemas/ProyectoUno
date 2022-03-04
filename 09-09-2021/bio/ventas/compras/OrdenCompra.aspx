<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdenCompra.aspx.cs" Inherits="biotech.bio.ventas.compras.OrdenCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
      

        .auto-style1 {
            width: 98%;
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

        body {
  	/*font-family: Verdana;*/
    width:98%;font-family:Verdana;font-size:9px;
}
        .auto-style29 {
            height: 16px;
        }
        .auto-style30 {
            width: 85px;
            height: 16px;
        }
        .auto-style31 {
            width: 44%;
            height: 16px;
        }
        .auto-style32 {
            width: 1275px;
        }
        .auto-style4 {
            width: 600px;
        }
        *{box-sizing:border-box}
    *{text-shadow:none!important;box-shadow:none!important}
        .auto-style33 {
            width: 70px;
        }
    </style>


        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    


    <script type="text/javascript">




        function imprime() {
            //desaparece el boton
            document.getElementById("btnImprimir").style.display = 'none'
            document.getElementById("btnValidar").style.display = 'none'
            //se imprime la pagina
            window.print()
            //reaparece el boton
            document.getElementById("btnImprimir").style.display = 'inline'
            document.getElementById("btnValidar").style.display = 'inline'
        }

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                    <asp:Button ID="btnValidar" runat="server" BackColor="#D1F4CC" Height="40px" Text="AUTORIZAR" Width="100px" OnClick="btnValidar_Click1" />
        <input name="btnImprimir" id="btnImprimir" type="button" class="button" value="IMPRIMIR" onClick="imprime()"><asp:Label ID="lblusuarioautoriza" runat="server" Visible="False"></asp:Label>
                    <asp:Panel ID="Panel1" runat="server" Height="50px" Visible="False">
            <table class="auto-style4">
                <tr valign=top >
                    <td valign=top>
                        <asp:Label ID="lblidValidacion" runat="server" Visible="False"></asp:Label>
                        <asp:TextBox ID="txtCodValidacion" type="number" runat="server" Height="55px" placeholder="Codigo" ToolTip="Ingresar codigo" Width="400px" Font-Size="X-Large" MaxLength="5" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td valign="top">
                        <asp:ImageButton ID="ibtnAprobado" runat="server" Height="55px" ImageUrl="~/images/novaFalse.png" ToolTip="Aprobar pedido" Width="70px" OnClick="ibtnAprobado_Click1" />
                    </td>
                    <td valign="top" class="auto-style33">
                        <asp:ImageButton ID="ibtnobservado" runat="server" Height="55px" ImageUrl="~/images/novaTrue.png" ToolTip="Observar pedido" Width="70px" OnClick="ibtnobservado_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
            </table>
            <br /><br />
            
            <br />
            <br />
            
            <br />
        </asp:Panel>
    
       
    
          
    
    
       
    
          
    
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;<asp:Image ID="Imagebiotech" alt="" runat="server" Height="61px" Width="119px" />
                
                </td>
                <td style="text-align: right" class="auto-style32">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <strong style="text-align: center">
        <hr />
        <div>
            <u><h1><strong style="text-align: center">ORDEN DE COMPRA/SERVICIO:
                <asp:Label ID="lblordencompra" runat="server"></asp:Label>
                <asp:Label ID="lblidoc" runat="server" Visible="False"></asp:Label>
            </h1>
            </strong></u>
        </div>
        </strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">PROVEEDOR:</td>
                <td class="auto-style7" colspan="3">
                    <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                    <asp:Label ID="lblidproveedor" runat="server"></asp:Label>
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
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblbanco" runat="server" Visible="False"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lblnumcuenta" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style10">Moneda:</td>
                <td class="auto-style9">
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
                            <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" />
                            <asp:BoundField DataField="iddetalleoc" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleoc" Visible="False" />
                            <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                            <asp:BoundField DataField="unidmed" HeaderText="U. Med." SortExpression="unidmed">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
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
                        <HeaderStyle BackColor="WhiteSmoke" />
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
                    <asp:Label ID="lblempresa" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <asp:Panel ID="pplaca" runat="server">
            <tr>

                <td class="auto-style12">UNIDAD:</td>
                <td class="auto-style14">
                     <asp:Label ID="lblplaca" runat="server"></asp:Label>
                    <asp:Label ID="lblidunidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
                </asp:Panel>
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
                <td class="auto-style29" colspan="2"><strong>CONDICIÓN DE COMPRA</strong></td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Forma de pago:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblformapago" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">Cotización:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblnCotizacion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tipo de compra:</td>
                <td class="auto-style14">
                    <asp:Label ID="lbltpoc" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">ADELATO:</td>
                <td class="auto-style18">
                    <asp:Label ID="lbladeltantoOC" runat="server"></asp:Label>
&nbsp; <asp:Label ID="lblm" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Tipo de entrega:</td>
                <td class="auto-style29">
                    <asp:Label ID="lbltipoentrega" runat="server"></asp:Label>
&nbsp;&nbsp;
                </td>
                <td class="auto-style30">F. entrega:</td>
                <td class="auto-style31">
                    <asp:Label ID="lblfechaentrega" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Lugar de entrega:</td>
                <td class="auto-style14" colspan="3">
                    <asp:Label ID="lbllugarentrega" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Referencia:</td>
                <td class="auto-style14" colspan="3">
                    Presentarse con orden de compra y documentos</td>
            </tr>
            <tr>
                <td class="auto-style12">Detalle pago:<br />
                </td>
                <td class="auto-style14" colspan="3">
                    <asp:Label ID="lblreferencia" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                    <asp:GridView ID="gvEntrega" runat="server" AutoGenerateColumns="False" DataKeyNames="identrega" DataSourceID="SqlDataSource2Entrega" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="identrega" HeaderText="identrega" InsertVisible="False" ReadOnly="True" SortExpression="identrega" Visible="False" />
                            <asp:BoundField DataField="idOc" HeaderText="idOc" SortExpression="idOc" Visible="False" />
                            <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA ENTREGA" SortExpression="fecha">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="entrega" HeaderText="DETALLE ENTREGAS" SortExpression="entrega" />
                        </Columns>
                        <EmptyDataTemplate>
                            Tipo de entrega: TOTAL
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2Entrega" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompra_Entrega] WHERE ([idOc] = @idOc)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidoc" Name="idOc" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                    <asp:GridView ID="gvctaBancos" runat="server" AutoGenerateColumns="False" DataKeyNames="idProveedor,idbanco" DataSourceID="SqlDataSourcecuentas" Width="700px">
                                  <Columns>
                                      <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" ReadOnly="True" SortExpression="idProveedor" Visible="False" />
                                      <asp:BoundField DataField="idbanco" HeaderText="idbanco" ReadOnly="True" SortExpression="idbanco" Visible="False" />
                                      <asp:BoundField DataField="banco" HeaderText="CUENTAS BANCARIAS" SortExpression="banco" />
                                      <asp:BoundField DataField="NcuentasDolares" HeaderText="CTA. DÓLARES" SortExpression="NcuentasDolares" />
                                      <asp:BoundField DataField="cciDolares" HeaderText="CCI DÓLARES" SortExpression="cciDolares" />
                                      <asp:BoundField DataField="NcuentaSoles" HeaderText="CTA. SOLES" SortExpression="NcuentaSoles" />
                                      <asp:BoundField DataField="cciSoles" HeaderText="CCI SOLES" SortExpression="cciSoles" />
                                  </Columns>
                                  <EmptyDataTemplate>
                                      No registra cuentas bancarias....
                                  </EmptyDataTemplate>
            </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSourcecuentas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proveedor_Listadocuentas" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblidproveedor" Name="idproveedor" PropertyName="Text" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>


                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Image ID="Image3" runat="server" alt="" Height="100px" Width="190px" />
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    <asp:Image ID="Image2" runat="server" alt="" Height="100px" Width="190px" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">...............................................................<br />
                    Elaborado por:<asp:Label ID="lblelaboradopor" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblelaboraXDescrip" runat="server"></asp:Label>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style25">...............................................................<br />
                    Aprobado por:<asp:Label ID="lblatorizacionn" runat="server"></asp:Label>
                    <asp:Label ID="lblautorizacion" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblaprobado" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    </div>
        </td>

        &nbsp;<asp:Label ID="lblmensaje" runat="server"></asp:Label>
        <asp:Panel ID="payuda" runat="server" Visible="False">
            idsolcita:<asp:Label ID="lblNombreSolicita" runat="server"></asp:Label>
            &nbsp; mail solicita:
            <asp:Label ID="lblcorreoSolicita" runat="server"></asp:Label>
            &nbsp;&nbsp; correso encargados :
            <asp:Label ID="lblcorreos" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
