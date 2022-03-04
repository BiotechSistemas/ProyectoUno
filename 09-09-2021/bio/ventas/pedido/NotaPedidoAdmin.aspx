<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotaPedidoAdmin.aspx.cs" Inherits="biotech.bio.ventas.pedido.NotaPedidoAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ADM. NOTA DE PEDIDO</title>
        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            height: 23px;
        }
    *{box-sizing:border-box}
    *{text-shadow:none!important;box-shadow:none!important}
    th
    {
        text-align:center;
    }
        .auto-style3 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style4 {
            width: 800px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style15 {
            width: 201px;
        }
        .auto-style16 {
            width: 150px;
        }
        </style>

       <script type="text/javascript">
           $(function () {
               $("[id$=txtSearchProducto]").autocomplete({
                   source: function (request, response) {
                       $.ajax({
                           
                           url: '<%=ResolveUrl("~/bio/ventas/pedido/NotaPedidoAdmin.aspx/GetCustomers2") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0] + '-' + item.split('-')[1],
                                    val: item.split('-')[2]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    $("[id$=hfCustomerProducto]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>

</head>
<body>
      <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    

    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/logoicono.png" Width="38px" />
                    <asp:Label ID="lblidpedido" runat="server" Visible="False"></asp:Label>
                    </td>
                <td colspan="4"><span class="auto-style3">ADMINISTRAR NOTA DE PEDIDO:
                    </span>
                    <asp:Label ID="lblnPedido" runat="server" CssClass="auto-style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtfechaemision" runat="server" Enabled="False" Width="130px"></asp:TextBox>
                    <br />
                    Fecha de emisión:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtestadoPedido" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                    <br />
                    Estado:</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtruc" runat="server" Enabled="False" Width="130px"></asp:TextBox>
                    <br />
                    RUC:</td>
                <td colspan="4">
                    <asp:TextBox ID="txtrazonsocial" runat="server" Enabled="False" Width="100%"></asp:TextBox>
                    <br />
                    Razón social:<br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtFechaatencion" runat="server" TextMode="Date" Width="130px"></asp:TextBox>
                    <br />
                    Fecha de solicita:</td>
                <td>
					 
                        <asp:DropDownList ID="ddlCondipago" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idcondPago" Width="200px" OnSelectedIndexChanged="ddlCondipago_SelectedIndexChanged"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedidos_condpago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>                                           
                    <br />
                    Condición de pago: <asp:Label ID="lblidcondpago" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdiascondpago" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    Dias:</td>
                <td colspan="2">
                    <asp:RadioButtonList ID="rbtnMoneda" runat="server" RepeatDirection="Horizontal" style="height: 27px">
                        <asp:ListItem Value="D">DÓLARES</asp:ListItem>
                        <asp:ListItem Value="S">SOLES</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lblidmoneda" runat="server" Visible="False"></asp:Label>
                    </td>
            </tr>
           
            <tr>
                <td colspan="5">Detalle de productos:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET,CODPRO,PVENTA,CANT,ESTADOATENCION" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small" Width="100%">
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar.png" ShowSelectButton="True">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                        <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO">
                        <HeaderStyle Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                        <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA" SortExpression="PVENTA">
                        <HeaderStyle Width="70px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                        <HeaderStyle Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT">
                        <HeaderStyle Width="70px" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                        <asp:BoundField DataField="DESCTO" HeaderText="DSCTO %" SortExpression="DESCTO">
                        <HeaderStyle Width="20px" />
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
                        <HeaderStyle Width="0px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="0px" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" Visible="False">
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
                            <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblmensajeproduct" runat="server"></asp:Label>
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        idmaxdetalleped:<asp:Label ID="lblidDetalle" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblidmaxDetalle" runat="server"></asp:Label>
                        &nbsp; op:<asp:Label ID="lblop" runat="server"></asp:Label>
                        &nbsp; exonerado:
                        <asp:Label ID="lblExonerado" runat="server"></asp:Label>
                        &nbsp;precilistas:
                        <asp:Label ID="lblpreciolista" runat="server"></asp:Label>
                        &nbsp;sumatencion:<asp:Label ID="lblsumAtencion" runat="server"></asp:Label>
                        &nbsp;idproducto:<asp:Label ID="lblidProductoSelec" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="lblEstadoAtencion" runat="server"></asp:Label>
                        &nbsp; valdolar:<asp:Label ID="lblvalDolar" runat="server" Text="3.25"></asp:Label>
                        &nbsp;&nbsp; mailencargados:<asp:Label ID="lblmailencargados" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:ImageButton ID="ibtnRegistrar1" runat="server" Height="30px" ImageUrl="~/images/agre.png" OnClick="ibtnRegistrar1_Click" ToolTip="Nuevo producto" Width="30px" />
                </td>
                <td>&nbsp;</td>
                <td style="text-align: right">Imp. total: </td>
                <td colspan="2" style="text-align: left">
                    <asp:Label ID="lblImpTotal" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style2" colspan="5">
                    <asp:Panel ID="PanelAgregarPedido" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <br />
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlProductos" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="producto" DataValueField="idProducto" Height="25px" OnSelectedIndexChanged="ddlProductos_SelectedIndexChanged" Width="100%">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productosListarVenta" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <span class="auto-style5">producto: </span></td>
                                <td>&nbsp;</td>
                                 <td>
                                    <asp:TextBox ID="txtprecioVenta" runat="server" step="0.0001" type="number"></asp:TextBox>
                                    <br />
                                    <span class="auto-style5">precio venta</span></td>
                                <td>
                                    <asp:TextBox ID="txtCantidad" runat="server" type="number"></asp:TextBox>
                                    <br />
                                    <span class="auto-style5">cantidad</span></td>
                               
                                <td class="auto-style15">
                                    <asp:ImageButton ID="ibtnRegistrar0" runat="server" Enabled="False" ImageUrl="~/images/guadar.png" OnClick="ibtnRegistrar0_Click" ToolTip="Registrar producto" Width="30px" />
                                    <asp:ImageButton ID="ibtneliminar" runat="server" ImageUrl="~/images/eliminarr.png" Width="30px" Enabled="False" OnClick="ibtneliminar_Click" ToolTip="Eliminar producto" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    Lugar de entrega:<br />
                    <asp:TextBox ID="txtLugardeentrega" runat="server" Rows="2" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    <br />
                    <asp:ListBox ID="lblugaresEntrega" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceLugaresCliente" DataTextField="puntoLlegada" DataValueField="puntoLlegada" OnSelectedIndexChanged="lblugaresEntrega_SelectedIndexChanged" Rows="5" Width="100%"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSourceLugaresCliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct puntoLlegada from tb_guiaRem where idcliente = @idcliente">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtruc" Name="idcliente" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:LinkButton ID="lbtnVerclugarentregas" runat="server" OnClick="lbtnVerclugarentregas_Click">Ver lugares de entrega</asp:LinkButton>
                    </td>
            </tr>
            <tr>
                <td colspan="5">
                    Detalle de entrega:<br />
                    <asp:TextBox ID="txtDetalledeentrega" runat="server" Rows="3" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    <br />
                    </td>
            </tr>
           

            
            
               
        
           
            <tr>
                <td class="auto-style2">Tipo de entraga:</td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                             <asp:ListItem Selected="True" Value="TOTAL">TOTAL</asp:ListItem>
                             <asp:ListItem>PARCIAL</asp:ListItem>
                         </asp:RadioButtonList>

                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <asp:Panel ID="PanelTOTAL" runat="server" class="row">
                <tr>
                <td class="auto-style2">Fecha entrega:</td>
                <td class="auto-style2"> <asp:TextBox ID="txtfechaTotal"  class="form-control" runat="server" TextMode="Date" ></asp:TextBox></td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
				            </asp:Panel>
           
            <tr>
                <td class="auto-style2" colspan="5">
                    <table class="auto-style5">
                        <tr>
                            <td colspan="5">
                                            <asp:Label ID="lblmensajeEntrega" runat="server"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_entrega" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label1" DbType="Date" Name="fecha" PropertyName="Text" />
                                                    <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                          

                                  
                  

                                 <asp:Panel ID="PanelPARCIAL" runat="server">
                                  
              <label for="txtfechaentrega" class="col-md-1 control-label">&nbsp;</label><asp:Panel ID="pEntregas" runat="server" class="form-group row">
                       
                                        <label for="txtLugarEntrega" class="col-md-1 control-label">
                                        
                                        </label>
                    
                    <div class="col-md-3">
                        <table class="auto-style5">
                            <tr>
                                <td valign=top class="auto-style16" >
                                    <asp:ListBox ID="lbEntregaFechas" runat="server" AutoPostBack="True" class="form-control" DataSourceID="SqlDataSourceFechasEntrega" DataTextField="CANTIDADFECHA" DataValueField="FECHA" OnSelectedIndexChanged="lbEntregaFechas_SelectedIndexChanged" Width="150px"></asp:ListBox>
                                </td>
                                <td valign=top colspan="4">
                                    <asp:GridView ID="gvLugarEntrega" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id,CANTIDAD,idproducto" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="gvLugarEntrega_SelectedIndexChanged1" PageSize="4" ShowHeader="False" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                                            <HeaderStyle Width="120px" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" Visible="False" />
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            <HeaderStyle Width="25px" />
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:CommandField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            Indicar distribución...
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">
                                    <label class="col-md-1 control-label" for="txtfechaentrega">
                                    <asp:Label ID="lblCantEntrega" runat="server" Visible="False">0</asp:Label>
                                    &nbsp;Registrar entrega parcial:<br /> </label></td>
                                <td>
                                    <asp:TextBox ID="txtfechaentrega" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                    <br />
                                    Fecha de entrega:</td>
                                <td>
                                    <asp:DropDownList ID="ddlbProductoEntrega" runat="server" class="form-control" DataSourceID="SqlDataSourceProEntregar" DataTextField="DESATENDER" DataValueField="IDPRODUCTO" Width="200px">
                                    </asp:DropDownList>
                                    <br />
                                    Producto:<asp:SqlDataSource ID="SqlDataSourceProEntregar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select pdet.idDetalle IDDET,pdet.idProducto IDPRODUCTO,CONCAT((pdet.cantidad - pdet.entregado),'L	-', pro.producto) DESATENDER,pdet.entregado , (pdet.cantidad - pdet.entregado) XENTREGAR
from tb_Pedido ped join tb_PedidoDetalle pdet on ped.idPedido = pdet.idPedido join tb_producto pro on pdet.idProducto = pro.idProducto where ped.idPedido = @idproducto and  pdet.entregado &lt; pdet.cantidad">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidpedido" Name="idproducto" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcantidadentrega" runat="server" class="form-control" step="0" type="number"></asp:TextBox>
                                     <br />
                                    Cantidad:
                                </td>

                               
                               
                                  <td>
                                        <asp:ImageButton ID="ibtLugarEntrega" runat="server" Height="30px" ImageAlign="Middle" ImageUrl="~/images/agre.png" OnClick="ibtLugarEntrega_Click" ToolTip="Más lugares" Width="30px" />
                                    </td>
                          
                            </tr>
                        </table>
                                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                        <asp:SqlDataSource ID="SqlDataSourceFechasEntrega" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="st_pedido_orderFecha" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                    </div>
                    
                </asp:Panel>
               


                            </td>
                        </tr>
                        <tr>
                            <td>
                                <td>
                                    <td></td>
                                    <td></td>
                                </td>
                            </td>
                        </tr>

                         </asp:Panel>


                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style2"></td>
                            <td class="auto-style2"></td>
                            <td class="auto-style2"></td>
                            <td class="auto-style2"></td>
                        </tr>
                    </table>
                </td>
            </tr>
             <tr>
                <td colspan="5">
                    Observación:
                    <asp:Label ID="lblObservacion" runat="server" ForeColor="#993300"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">Orden de compra:</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="4">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Label ID="lblrutatt" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Adjuntar orden de compra" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="lblmensajecliente" runat="server" ForeColor="#993300"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    &nbsp;</td>
            </tr>
        </table></asp:Panel>
        <table align="center" class="auto-style4">
            <tr>
                <td>
                    <asp:Button ID="btnactualzar" runat="server" OnClick="btnactualzar_Click" Text="ACTUALIZAR" Width="350px" />
                </td>
                <td>
                    <asp:Button ID="btnregistrar" runat="server" OnClick="btnregistrar_Click" Text="REGISTRAR ACTUALIZACION" Width="350px" Enabled="False" />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">SALIR</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Panel ID="pAviso" runat="server" BackColor="#FFFFCC" style="text-align: left">
                        **
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/GCOMERCIAL.png" Width="20px" />
                        = Por validar COODINADOR COMERCIAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/GGENERAL.png" Width="20px" />
                        = Por validar CORDINADOR COMERCIAL y G.G.<br /> <strong>NOTA:</strong> Seguido de la validación correspondiente, el pedido recien pasa a condición por ATENDER.</asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Panel ID="payuda" runat="server" Visible="False">
                        <asp:Label ID="lblUrlDinamico" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="lblcorreoTrabajador" runat="server"></asp:Label>
                        <asp:Label ID="lblidAsesorPedido" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            </table>
        <br />
    </center>
    </div>
    </form>
</body>
</html>
