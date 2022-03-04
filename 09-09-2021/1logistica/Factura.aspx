<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="biotech._1logistica.Factura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />
     <style type="text/css">
         .redondeado { 
                border: 1px solid #006600;
                height: auto;
                width: 100%;
                border-radius: 5px;
         }
         .redondeado2 { 
                border: 1px solid #006600;
               
                width: 100%;
                border-radius: 0 ;
                text-align: center;
         }

         .redondeadoprincipal {
              border: 1px solid #006600;
              height: auto;
              width: 90%;
              border-radius: 5px;

         }

         .ver {
          color: #FF0000;
         }


        .auto-style21{
            width:800px;
        }
        .auto-style3 {
        }
      
        .auto-style6 {
            width: 100%;
        }
         .auto-style9 {
             font-size: x-large;
             text-align: center;
         }
         .auto-style13 {
             color: #006600;
             text-decoration: underline;
         }
         .auto-style16 {
             width: 144px;
             text-align: left;
         }
         .auto-style18 {
             width: 330px;
         }
         .auto-style22 {
             font-size: xx-small;
             color: #FF0000;
         }
         .auto-style24 {
         }
         .auto-style25 {
             width: 168px;
             height: 24px;
         }
         .auto-style26 {
             width: 764px;
             height: 24px;
         }
         .auto-style27 {
             height: 24px;
         }
        
         .auto-style29 {
             height: 69px;
         }
        
         .auto-style30 {
             height: 69px;
             width: 330px;
         }
        
         .auto-style31 {
             text-align: center;
             color: #FFFFFF;
             
             background-color: #808080;
         }
        
         .auto-style32 {
             height: 157px;
         }
        
         .auto-style33 {
             height: 69px;
             width: 321px;
         }
         .auto-style34 {
             width: 321px;
         }
        
         .auto-style35 {
             font-size: x-small;
         }
         .auto-style37 {
             font-size: x-small;
             color: #FF0000;
         }
        
         .auto-style40 {
             font-size: x-small;
             color: #FF0000;
         }
         .auto-style41 {
             width: 681px;
             height: 24px;
         }
         .auto-style42 {
             text-align: center;
         }
        
         .auto-style43 {
             height: 24px;
             width: 125px;
         }
         .auto-style45 {
         }
         .auto-style46 {
             width: 168px;
             text-align: left;
         }
        
         .auto-style47 {
             width: 850px;
         }
                 
         .auto-style49 {
             height: 157px;
             width: 18px;
         }
         .auto-style50 {
             height: 69px;
             width: 18px;
         }
         .auto-style51 {
             width: 18px;
         }
        
         .auto-style52 {
             width: 328px;
         }
        
         .auto-style655 {
             text-align: right;
         }
         .auto-style656 {
             width: 199px;
         }
         .auto-style657 {
             width: 275px;
         }
        
         .auto-style658 {
             color: #999999;
         }
        
    </style>

     <script type="text/javascript">
         $(function () {
             $("[id$=txtSearchProducto]").autocomplete({
                 source: function (request, response) {
                     $.ajax({
                         url: '<%=ResolveUrl("~/1logistica/Factura.aspx/GetCustomers2") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0] + ' - ' + item.split('-')[1],
                                    val: item.split('-')[2],
                                    val1: item.split('-')[0],
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
                    $("[id$=hfCustomerProductoNombre]").val(i.item.val1);
                },
                minLength: 1
            });
        });
</script>
 

    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearch]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/1logistica/Factura.aspx/GetCustomers") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0],
                                    val: item.split('-')[1]
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
                    $("[id$=hfCustomerId]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelAtender" runat="server" Width="100%">
        <p>
            <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style22"></asp:Label>
        </p>
        <center>
            <%--</asp:Panel>--%>
            <table class="auto-style47">
                <tr>
                    <td class="auto-style656">Tipo venta:<br />
                        <asp:Label ID="lblEstadoReg" runat="server" Text="False"></asp:Label>
                    </td>
                    <td class="auto-style657">
                        <asp:DropDownList ID="ddlConventa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlConventa_SelectedIndexChanged" Width="100%">
                            <asp:ListItem Value="CONTA">VENTA CONTADO</asp:ListItem>
                            <asp:ListItem Value="CREDI">VENTA CREDITO</asp:ListItem>
                            <asp:ListItem Value="MUEST">MUESTRA</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lbltpventa" runat="server" Text="VENTA" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style52">
                        <asp:RadioButtonList ID="rb_Comprobantepago" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Comprobante" DataValueField="idComprobante" OnSelectedIndexChanged="rb_Comprobantepago_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 0" TextAlign="Left" Width="250px" Font-Size="Large">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_TipoComprobante] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style655">
                        <asp:LinkButton ID="LinkButtonAdministrar" runat="server" OnClick="LinkButtonAdministrar_Click" Visible="False">Administrar</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <asp:Panel ID="PanelPrincipal" runat="server">
                <table class="auto-style21">
                    <%--</asp:Panel>--%>
                    <tr>
                        <td class="auto-style50">&nbsp;</td>
                        <td class="auto-style33">Fecha:<br />
                            <asp:TextBox ID="txtfechareg" runat="server" TextMode="Date"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style29">
                            <asp:Label ID="lblidmaxFactura" runat="server" Visible="False"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style30" >
                            <div class="auto-style31">
                                <asp:Label ID="lbltpComprobante" runat="server" style="font-weight: 700; font-size: large;"></asp:Label>
                            </div>
                            <div class="redondeado2">
                                &nbsp;<asp:Label ID="lblfacturaserie" runat="server" CssClass="auto-style9"></asp:Label>
                                -<asp:Label ID="lblfacturanumero" runat="server" CssClass="auto-style9"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style3" colspan="2">Cliente / Ruc:<br />
                            <asp:TextBox ID="txtSearch" runat="server" Height="30px" Width="300px" placeholder="Ingresar cliente"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/buscarr.png" Width="40px" OnClick="ImageButton1_Click" />
                            &nbsp;</td>
                        <td>Moneda:<asp:RadioButtonList ID="rbmoneda" runat="server" RepeatDirection="Horizontal" CellSpacing="5">
                            <asp:ListItem Selected="True" Value="Dolares">Dolares</asp:ListItem>
                            <asp:ListItem Value="Soles">Soles</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <%--</asp:Panel>--%>
                        <td class="auto-style51">&nbsp;</td>
                        <asp:Panel ID="PaneldETALLECLIENTE" runat="server">
                            <td colspan="2"><span class="auto-style13"><strong>Datos de la empresa:</strong></span><br /> <strong>RUC</strong>:&nbsp;&nbsp; <asp:Label ID="lblruc" runat="server" CssClass="auto-style12"></asp:Label>
                                &nbsp;
                                <br />
                                <strong>Razón Social:</strong><br />&nbsp;
                                <asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style14"></asp:Label>
                                
                               
                                Retenedor:&nbsp;
                                <asp:Label ID="lblopretenedor" runat="server" CssClass="auto-style39"></asp:Label>
                                <asp:Label ID="lblretenedor" runat="server" CssClass="auto-style21" Visible="False"></asp:Label>
                                <br /><br />
                                <strong>RTC:</strong> 
                                <asp:Label ID="lblrtc" runat="server" CssClass="auto-style15" Visible="False"></asp:Label>
                                <asp:Label ID="lblnomAsesor" runat="server"></asp:Label>
&nbsp;
                                <br />
                                &nbsp;&nbsp;
                                <asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lblcodfactura" runat="server"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblmensajeopcion" runat="server" CssClass="auto-style38" ForeColor="#006600"></asp:Label>
                            </td>
                            <td class="auto-style18"><span class="auto-style13"><strong>Linea Biotech:</strong></span><br /> Letra:
                                <asp:Label ID="lblmontoLetra" runat="server" CssClass="auto-style10"></asp:Label>
                                &nbsp;a
                                <asp:Label ID="lblDiaLetra" runat="server"></asp:Label>
                                &nbsp;dias<br /> Factura:<asp:Label ID="lblmontofactura" runat="server" CssClass="auto-style11"></asp:Label>
                                &nbsp;a
                                <asp:Label ID="lbldiafactura" runat="server"></asp:Label>
                                &nbsp;dias<br /> Monto Deuda:
                                <asp:Label ID="lblmontoacumulado" runat="server" CssClass="auto-style20"></asp:Label>
                                <br />
                                Moneda:
                                <asp:Label ID="lblmoneda" runat="server" CssClass="auto-style19"></asp:Label>

                                <br />
                                <br />
                            </td>
                        </asp:Panel>
                    </tr>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style34">N° Guia :
                            <asp:TextBox ID="txtguias" runat="server" Width="240px"></asp:TextBox>
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style18">Condición:<asp:DropDownList ID="ddlbCondVenta" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlbCondVenta_SelectedIndexChanged">
                            <asp:ListItem Selected="True">LETRA</asp:ListItem>
                            <asp:ListItem Value="FACTR">FACTURA</asp:ListItem>
                            <asp:ListItem Value="BOLET">BOLETA</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtcondDias" runat="server" Width="50px" type="number" requerid ></asp:TextBox>
                            dias</td>
                    </tr>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style34">
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style18">
                            <asp:Label ID="lbltipodescto" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style34"><strong>Productos registrados:</strong><asp:Label ID="lblnombrepro" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblplistaxlitro" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="LBLUNDMED" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="lbloprentable" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:Label ID="lblidproducto" runat="server" Visible="False"></asp:Label>
                            &nbsp;cantidad:<asp:Label ID="lblcantidad" runat="server"></asp:Label>
                            &nbsp;exo:<asp:Label ID="lblexonerado" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style49">&nbsp;</td>
                        <td colspan="3" class="auto-style32">
                            <div class="">
                                Ingresar:&nbsp;
                                <asp:TextBox ID="txtSearchProducto" runat="server" Width="250px" placeholder="Producto"></asp:TextBox>
                                <asp:TextBox ID="txtcantidad" runat="server" type="number" Width="70px" placeholder="cant"></asp:TextBox>
                                <asp:TextBox ID="txtprecioVenta" runat="server" type="number" step="0.0001" Width="100px" placeholder="precio"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                                &nbsp;&nbsp;
                                <asp:Label ID="lbldescuentovendido" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lbldescvend" runat="server" Visible="False"></asp:Label>
                            </div>
                            <asp:Panel ID="Panel1" runat="server">
                                <span class="auto-style35">Precio lista: </span>
                                <asp:Label ID="lblplista" runat="server" CssClass="auto-style35"></asp:Label>
                                <span class="auto-style35">&nbsp;Precio Máx. con Dsto:
                                <asp:Label ID="lblpreciomaximo" runat="server" CssClass="auto-style35"></asp:Label>
                                ,&nbsp;
                                <asp:Label ID="lblmensajeproducto" runat="server" CssClass="auto-style37"></asp:Label>
                                </span>
                            </asp:Panel>
                            <br />
                            <div class="redondeado">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="100%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" >
                                    <Columns>
                                        <asp:BoundField DataField="ITEM" ReadOnly="True" SortExpression="ITEM" ></asp:BoundField>
                                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" Visible="False" />
                                        <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" ></asp:BoundField>
                                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" ReadOnly="True" />
                                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PV" HeaderText="P. VENTA" SortExpression="PV" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DSCTO" HeaderText="DSCTO" SortExpression="DSCTO" DataFormatString="{0:0,0.00}" Visible="False" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" Visible="False" />
                                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" ShowDeleteButton="True">
                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:CommandField>
                                    </Columns>
                                    <HeaderStyle BackColor="#CCCCCC" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_FacturaListarPedidos" DeleteCommand="DELETE FROM [FacturacionDetalle] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO [FacturacionDetalle] ([idDetalle], [idfactura], [idproducto], [precioVenta], [cantidad], [subtotal], [idPedido], [dsto]) VALUES (@idDetalle, @idfactura, @idproducto, @precioVenta, @cantidad, @subtotal, @idPedido, @dsto)" UpdateCommand="UPDATE [FacturacionDetalle] SET [idfactura] = @idfactura, [idproducto] = @idproducto, [precioVenta] = @precioVenta, [cantidad] = @cantidad, [subtotal] = @subtotal, [idPedido] = @idPedido, [dsto] = @dsto WHERE [idDetalle] = @idDetalle" SelectCommandType="StoredProcedure">
                                    <DeleteParameters>
                                        <asp:Parameter Name="idDetalle" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="idDetalle" Type="Int32" />
                                        <asp:Parameter Name="idfactura" Type="Int32" />
                                        <asp:Parameter Name="idproducto" Type="String" />
                                        <asp:Parameter Name="precioVenta" Type="Decimal" />
                                        <asp:Parameter Name="cantidad" Type="Int32" />
                                        <asp:Parameter Name="subtotal" Type="Decimal" />
                                        <asp:Parameter Name="idPedido" Type="Int32" />
                                        <asp:Parameter Name="dsto" Type="Decimal" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidmaxFactura" Name="idfact" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="idfactura" Type="Int32" />
                                        <asp:Parameter Name="idproducto" Type="String" />
                                        <asp:Parameter Name="precioVenta" Type="Decimal" />
                                        <asp:Parameter Name="cantidad" Type="Int32" />
                                        <asp:Parameter Name="subtotal" Type="Decimal" />
                                        <asp:Parameter Name="idPedido" Type="Int32" />
                                        <asp:Parameter Name="dsto" Type="Decimal" />
                                        <asp:Parameter Name="idDetalle" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style41"><span class="auto-style35">* Items </span>
                                            <asp:Label ID="lblitems" runat="server" CssClass="auto-style35"></asp:Label>
                                            <br />
                                            <asp:Label class="auto-style37" ID="lblmensajeExonerado" runat="server" CssClass="auto-style40"></asp:Label>
                                        </td>
                                        <td class="auto-style26"></td>
                                        <td class="auto-style25">SUB-TOTAL:<br /> <asp:TextBox ID="txtsubTotal" runat="server" Width="100px" Enabled="False" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="auto-style43">IGV(18%):<asp:TextBox CssClass="ver" ID="txtigv" runat="server" Width="100px" Enabled="False" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="auto-style27">Imp. Neto:<asp:TextBox ID="txttotal" runat="server" Width="100px" Enabled="False" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style42" colspan="2">
                                            <asp:TextBox ID="txtglosa" runat="server" TextMode="MultiLine" Width="100%" placeholder="Observación"></asp:TextBox>
                                        </td>
                                        <td class="auto-style46">
                                            <br />
                                            <span class="auto-style658">:</span><br />
                                        </td>
                                        <td class="auto-style45" colspan="2">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style42">
                                            <asp:HiddenField ID="hfCustomerId" runat="server" />
                                            <asp:HiddenField ID="hfCustomerProductoNombre" runat="server" />
                                        </td>
                                        <td class="auto-style24">
                                            <asp:HiddenField ID="hfCustomerProducto" runat="server" />
                                        </td>
                                        <td class="auto-style46">
                                            <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblidZona" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style45">
                                            <asp:Label ID="lblmontoaretener" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblnetocobrar" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <%--</asp:Panel>--%>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="" colspan="3">
                            ASESOR:<asp:SqlDataSource ID="SqlDataSourceRTC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <asp:DropDownList ID="ddlVendedor" runat="server" AutoPostBack="True" BackColor="#FEFFF0" DataSourceID="SqlDataSourceRTC" DataTextField="ASESOR" DataValueField="CODTRAB" Height="30px" OnSelectedIndexChanged="ddlVendedor_SelectedIndexChanged" Width="100%">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="" colspan="2">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="" colspan="2">
                            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="FINALIZAR FACTURA" />
                        </td>
                        <td class="auto-style18">
                            <asp:Button ID="ButtonNUEVO" runat="server" Height="40px" OnClick="ButtonNUEVO_Click" Text="NUEVO REGISTRO" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <%--</div>--%>
        </center>
        &nbsp;<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
    <br />
        </asp:Content>
