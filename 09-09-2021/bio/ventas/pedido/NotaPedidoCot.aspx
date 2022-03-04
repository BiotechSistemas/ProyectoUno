<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotaPedidoCot.aspx.cs" Inherits="biotech.bio.ventas.pedido.NotaPedidoCot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PEDIDOS</title>

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
        .auto-style5 {
            width: 100%;
        }
        .auto-style15 {
            width: 201px;
        }
        .auto-style16 {
            width: 150px;
        }
          .auto-style17 {
              width: 600px;
              background-color: #DFF4EA;
          }
        </style>


        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 style="text-align: center">PEDIDO POR COTIZACIÓN<asp:Label ID="lblidAsesor" runat="server" Visible="False"></asp:Label>

        </h1>
        <hr />
        <asp:Panel ID="pConCotizacion" runat="server">
            <center>
            Indicar cotización:<asp:TextBox ID="txtclientecotizar" runat="server" OnTextChanged="txtclientecotizar_TextChanged"></asp:TextBox>
            <asp:Button ID="btnBuscarcot" runat="server" Height="30px" OnClick="btnBuscarcot_Click" Text="Buscar" />
                <asp:Button ID="btnCerrar" runat="server" BackColor="#CC0000" ForeColor="White" Height="30px" OnClick="btnCerrar_Click" Text="Cerrar" />
            <asp:Label ID="lblclientebuscarcot" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblidCotSelec" runat="server" Visible="False"></asp:Label>
            <asp:GridView ID="gcCotizacion" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idcot,RUC,CLIENTE,idcondicion,DIAS,CONDICION" DataSourceID="SqlDataSourceCotizacion" ForeColor="Black" GridLines="Horizontal" OnRowCommand="gcCotizacion_RowCommand" AllowPaging="True" OnSelectedIndexChanged="gcCotizacion_SelectedIndexChanged" PageSize="5" Font-Size="Small">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="idcot" HeaderText="idcot" SortExpression="idcot" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION" />
                    <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ENTREGA" SortExpression="FENTREGA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="idcondicion" HeaderText="idcondicion" SortExpression="idcondicion" Visible="False" />
                    <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                    <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" />
                    <asp:ButtonField CommandName="ver" HeaderText="Ver" ShowHeader="True" Text="Ver" >
        <ItemStyle ForeColor="#339933" />
        </asp:ButtonField>
                </Columns>
                <EmptyDataTemplate>
                    No registra cotización...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#EFEFEF" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#D8F1E4" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceCotizacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_LisdoAsesor" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidAsesor" Name="idasesor" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblclientebuscarcot" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                *Seleccionar cotización a realizar nota de pedido.</center>
        </asp:Panel>

        <asp:Panel ID="pEvaluacion" runat="server" style="text-align: center">
            <table align="center" class="auto-style17">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lblmensajeValidado" runat="server" style="font-size: x-large"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblmensajeEvaluacion" runat="server" ForeColor="#CC0000"></asp:Label>
                        <br />
                        <strong>COND. CRÉDITO:</strong>
                        <asp:Label ID="lblidcondicionEval" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblconEvaluacion" runat="server"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lbldiasEval" runat="server"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblmonedaEval" runat="server"></asp:Label>
                        <br />
                        <strong>CLIENTE EVALUADO:</strong>
                        <asp:Label ID="lblAsesorEval" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="lbtnRetornar" runat="server" OnClick="lbtnRetornar_Click">Retornar</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="lbtnCerrar2" runat="server" OnClick="lbtnCerrar2_Click">Cerrar</asp:LinkButton>
        </asp:Panel>

        <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                fechaemision&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedidos_condpago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </asp:Panel>
         
            <br />
        <table  align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/logoicono.png" Width="38px" />
                </td>
                <td><span class="auto-style3"><strong>NOTA DE PEDIDO:</strong><asp:Label ID="lblnpedido2" runat="server"></asp:Label>
                    <asp:Label ID="lblEstado" runat="server" Text="0" Visible="False"></asp:Label>
                    </span></td>
                <td>
                    <asp:Label ID="lblidpedido" runat="server"></asp:Label>
                </td>
                <td>Cotización:</td>
                <td>
                    <asp:Label ID="lblncotizacionSelec" runat="server" Visible="False"></asp:Label>
                    <asp:LinkButton ID="lbtnCot" runat="server" OnClick="lbtnCot_Click"></asp:LinkButton>
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/bbuscar.png" OnClick="ImageButton1_Click" Width="20px" />
                    <br />
                    </td>
            </tr>
            <tr>
                 <td>Cliente:</td>
                <td WIDTH="400"  colspan="2">
                    &nbsp;<asp:Label ID="lblidruc" runat="server"></asp:Label>
                    <asp:Label ID="lblrazonSocial" runat="server"></asp:Label>
                    <br />
                 </td>
                <td>F. Emisión:</td>
                <td>
                    <asp:Label ID="lblfemision" runat="server"></asp:Label>
                    <br />
                    </td>
            </tr>
            <tr>
                <td>
                    Condición de pago:</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlCondipago" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idcondPago" OnSelectedIndexChanged="ddlCondipago_SelectedIndexChanged" Width="200px">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtdiascondpago" runat="server" Width="50px" required></asp:TextBox>
                    &nbsp;días</td>
                <td>Moneda:</td>
                <td>
                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Lugar de entega:<br />
                </td>
                <td colspan="4">
                    <asp:TextBox ID="txtlugarEntrega" Style="text-transform: uppercase" runat="server" required Width="100%"></asp:TextBox>
                    <br />
                    <asp:ListBox ID="lblugaresEntrega" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceLugaresCliente" DataTextField="puntoLlegada" DataValueField="puntoLlegada" OnSelectedIndexChanged="lblugaresEntrega_SelectedIndexChanged" Rows="5" Width="100%"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSourceLugaresCliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct puntoLlegada from tb_guiaRem where idcliente = @idcliente">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidruc" Name="idcliente" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:LinkButton ID="lbtnVerclugarentregas" runat="server" OnClick="lbtnVerclugarentregas_Click">Ver lugares de entrega</asp:LinkButton>
                    <br />
                </td>
            </tr>
           
            <tr>
                <td colspan="5"><strong>Detalle de productos:</strong><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET,CODPRO,PVENTA,CANT,ESTADOATENCION" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small" Width="100%" OnRowDataBound="GridView1_RowDataBound">
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
                            <ControlStyle Height="15px" Width="15px" />
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
                    <asp:ImageButton ID="ibtnAgregarpro" runat="server" ImageUrl="~/images/agre.png" OnClick="ibtnAgregarpro_Click" Width="30px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sub. total :
                    <asp:Label ID="lblsubTotal" runat="server">0.00</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; IGV(18%):
                    <asp:Label ID="lbligv" runat="server" ForeColor="#CC0000">0.00</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; Total:
                    <asp:Label ID="lblTotalpagar" runat="server">0.00</asp:Label>
                    <br />
                    <asp:Label ID="lblmensajeproduct" runat="server" ForeColor="#CC0000"></asp:Label>
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <asp:Label ID="lblidcondpago" runat="server"></asp:Label>
                        &nbsp;idmoneda:<asp:Label ID="lblidmoneda" runat="server"></asp:Label>
                        <br />
                        <br />
                        idmaxdetalleped:<asp:Label ID="lblidmaxDetalle" runat="server"></asp:Label>
                        &nbsp;pedidocotizar:<asp:Label ID="lblpedidDetallar" runat="server"></asp:Label>
                        &nbsp;exonerado:
                        <asp:Label ID="lblExonerado" runat="server"></asp:Label>
                        &nbsp;precilistas:
                        <asp:Label ID="lblpreciolista" runat="server"></asp:Label>
                        idproducto:&nbsp;&nbsp; cantidad
                        <asp:Label ID="lblcantDet" runat="server"></asp:Label>
                        &nbsp; precio:
                        <asp:Label ID="lblpreciodet" runat="server"></asp:Label>
                        &nbsp; igv:<asp:Label ID="lbligvdet" runat="server"></asp:Label>
                        <br />
                        descuentodet:
                        <asp:Label ID="lbldescuentoDet" runat="server"></asp:Label>
                        &nbsp; aprueba:<asp:Label ID="lblaprueba" runat="server"></asp:Label>
                        &nbsp;cc:<asp:Label ID="lblcc" runat="server"></asp:Label>
                        &nbsp;&nbsp; gg:&nbsp;<asp:Label ID="lblgg" runat="server"></asp:Label>
                        <br />
                        &nbsp;<asp:Label ID="lblEstadoAtencion" runat="server"></asp:Label>
                        &nbsp; valdolar:<asp:Label ID="lblvalDolar" runat="server" Text="3.25"></asp:Label>
                        &nbsp;opmodif
                        <asp:Label ID="lblop" runat="server" Text="REGISTRA"></asp:Label>
                        &nbsp; idproductoSelec
                        <asp:Label ID="lblidProductoSelec" runat="server"></asp:Label>
                        <asp:Label ID="lblidDetalle" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style2" colspan="5">
                    <asp:Panel ID="PanelAgregarPedido" runat="server">
                        <table class="auto-style1">
                            <tr>
                               
                                <td>
                                    <asp:DropDownList ID="ddlProductos" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcecotpedido" DataTextField="producto" DataValueField="idProducto" Height="25px" OnSelectedIndexChanged="ddlProductos_SelectedIndexChanged" Width="100%">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourcecotpedido" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_ListaraPedido" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidCotSelec" Name="idcotv" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <span class="auto-style5">producto: </span></td>
                                <td>&nbsp;</td>
                                 <td>
                                    <asp:TextBox ID="txtprecioVenta" runat="server" step="0.0001" type="number" Enabled="False"></asp:TextBox>
                                    <br />
                                    <span class="auto-style5">P. Unitario</span></td>
                                <td>
                                    <asp:TextBox ID="txtCantidad" runat="server" type="number"></asp:TextBox>
                                    <br />
                                    C<span class="auto-style5">antidad</span></td>
                               
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
                    Detalle de entrega:<br />
                    <asp:TextBox ID="txtDetalledeentrega" Style="text-transform: uppercase" runat="server" Rows="3" TextMode="MultiLine" Width="100%"></asp:TextBox>
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
                <td class="auto-style2">Orden de compra:</td>
                <td class="auto-style2" colspan="4">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                    <asp:Label ID="lblmensajecliente" runat="server" ForeColor="#CC0000" Text="Orden de compra por adjuntar"></asp:Label>
                </td>
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
                <td class="auto-style2" colspan="5">
                    <asp:Button ID="Button2" runat="server" Height="40px" Text="GENERAR NOTA DE PEDIDO" Width="100%" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="5">
                    <asp:LinkButton ID="lbtnCerrar3" runat="server" OnClick="lbtnCerrar2_Click">Cerrar</asp:LinkButton>
                </td>
            </tr>
        </table></asp:Panel>

    </div>
    </form>
</body>
</html>
