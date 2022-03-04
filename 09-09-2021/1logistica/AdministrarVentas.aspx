<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrarVentas.aspx.cs" Inherits="biotech._1logistica.AdministrarVentas" %>

<!DOCTYPE html>

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrar Ventas</title>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />


    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style3 {
            width: 52px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-size: x-small;
            color: #999999;
        }
        .auto-style6 {
            width: 700px;
        }
        .auto-style7 {
        }
        .auto-style9 {
            width: 135px;
            height: 23px;
        }
        .auto-style10 {
            width: 547px;
            height: 23px;
        }
        .auto-style12 {
            width: 4px;
        }
        .auto-style13 {
            width: 547px;
        }
        .auto-style14 {
            width: 4px;
            height: 23px;
        }
        .auto-style15 {
            width: 201px;
        }
    </style>


    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearchProducto]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/1logistica/AdministrarVentas.aspx/GetCustomers2") %>',
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
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/images/logobiotech.jpg" Width="120px" />
        <br />
        <table class="auto-style4">
            <tr>
                <td>
                    <h2>Administración de Ventas:</h2>
                </td>
                <td style="text-align: right">
                    Usuario:<asp:Label ID="lblusuario" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="RETORNAR PRINCIPAL" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource1" PageSize="20" style="font-size: small" Width="100%" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" HeaderText="ADMIN" ShowDeleteButton="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#006600" />
                </asp:CommandField>
                <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" SortExpression="serie" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="numero" HeaderText="NUMERO" SortExpression="numero" ReadOnly="True" >
                
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                
                <asp:TemplateField HeaderText="TP. VENTA" SortExpression="tipoVenta">
                    <EditItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("tipoVenta") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("tipoVenta") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="fechareg">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fechaven" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechaven">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="ASESOR" SortExpression="codvendedor">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("codvendedor") %>' Width="70px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("codvendedor") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                </asp:TemplateField>
                <asp:BoundField DataField="idclienteRUC" HeaderText="idclienteRUC" SortExpression="idclienteRUC" Visible="False" />
                <asp:BoundField DataField="razonsocial" HeaderText="RAZON SOCIAL" SortExpression="razonsocial" ReadOnly="True">
                <ItemStyle Font-Size="XX-Small" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="COND. PAGO" SortExpression="idcondpago">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("idcondpago") %>' Width="70px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("idcondpago") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="dias" HeaderText="Dias" SortExpression="dias" />
                <asp:TemplateField HeaderText="IMP. BRUTO" SortExpression="importebruto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("importebruto") %>' Width="90px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("importebruto", "{0:0,0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="70px" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="tpimporteretenido" HeaderText="tpimporteretenido" SortExpression="tpimporteretenido" Visible="False" />
                <asp:TemplateField HeaderText="IGV" SortExpression="igv">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("igv") %>' Width="80px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("igv", "{0:0,0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="70px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IMP. NETO" SortExpression="importeNeto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("importeNeto") %>' Width="90px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("importeNeto", "{0:0,0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="70px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IMP. RETENIDO" SortExpression="montoretenido">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("montoretenido") %>' Width="90px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("montoretenido", "{0:0,0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="70px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IMP. DISPONIBLE" SortExpression="montodisponible">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("montodisponible") %>' Width="90px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("montodisponible", "{0:0,0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Font-Bold="True" Width="70px" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ADELANTO / DESCUENTO" SortExpression="montodisponibleAdelanto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox77" runat="server" Text='<%# Bind("montodisponibleAdelanto") %>' Width="90px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label100" runat="server" Text='<%# Bind("montodisponibleAdelanto", "{0:0,0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Font-Bold="True" Width="70px" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="MONEDA" SortExpression="tpmoneda">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("tpmoneda") %>'>
                            <asp:ListItem Value="S">SOLES</asp:ListItem>
                            <asp:ListItem Value="D">DOLARES</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("tpmoneda") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="AÑO" SortExpression="ano">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ano") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ano") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField DataField="periodo" HeaderText="PRDO" SortExpression="periodo" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="COMPROB" SortExpression="BoletaFactura">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Comprobante" DataValueField="idComprobante" SelectedValue='<%# Bind("BoletaFactura") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_TipoComprobante]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Comprobante" DataValueField="idComprobante" Enabled="False" SelectedValue='<%# Bind("BoletaFactura") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_TipoComprobante]"></asp:SqlDataSource>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="GlosaGuias" HeaderText="GUIA REM." SortExpression="GlosaGuias" />
            </Columns>
            <HeaderStyle BackColor="#666666" ForeColor="White" />
            <RowStyle BackColor="WhiteSmoke" />
            <SelectedRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE FROM [Facturacion] WHERE [idfacturacion] = @idfacturacion" InsertCommand="INSERT INTO [Facturacion] ([idfacturacion], [serie], [numero], [estado], [tipoVenta], [fechareg], [fechaven], [codvendedor], [idclienteRUC], [razonsocial], [idcondpago], [dias], [GlosaGuias], [importebruto], [tpimporteretenido], [igv], [importeNeto], [montoretenido], [montodisponible], [tpmoneda], [ano], [periodo], [BoletaFactura]) VALUES (@idfacturacion, @serie, @numero, @estado, @tipoVenta, @fechareg, @fechaven, @codvendedor, @idclienteRUC, @razonsocial, @idcondpago, @dias, @GlosaGuias, @importebruto, @tpimporteretenido, @igv, @importeNeto, @montoretenido, @montodisponible, @tpmoneda, @ano, @periodo, @BoletaFactura)" SelectCommand="SELECT [idfacturacion], [serie], [numero], [estado], [tipoVenta], [fechareg], [fechaven], [codvendedor], [idclienteRUC], [razonsocial], [idcondpago], [dias], [GlosaGuias], [importebruto], [tpimporteretenido], [igv], [importeNeto], [montoretenido], [montodisponible],montodisponibleAdelanto, [tpmoneda], [ano], [periodo], [BoletaFactura] FROM [Facturacion] ORDER BY [idfacturacion] DESC" UpdateCommand="UPDATE [Facturacion] SET [tipoVenta] = @tipoVenta, [fechareg] = @fechareg, [fechaven] = @fechaven, [codvendedor] = @codvendedor, [idcondpago] = @idcondpago, [dias] = @dias, [GlosaGuias] = @GlosaGuias, [importebruto] = @importebruto, [tpimporteretenido] = @tpimporteretenido, [igv] = @igv, [importeNeto] = @importeNeto, [montoretenido] = @montoretenido, [montodisponible] = @montodisponible,montodisponibleAdelanto=@montodisponibleAdelanto, [tpmoneda] = @tpmoneda, [ano] = @ano, [periodo] = @periodo, [BoletaFactura] = @BoletaFactura WHERE [idfacturacion] = @idfacturacion">
            <DeleteParameters>
                <asp:Parameter Name="idfacturacion" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idfacturacion" Type="Int32" />
                <asp:Parameter Name="serie" Type="String" />
                <asp:Parameter Name="numero" Type="String" />
                
                <asp:Parameter Name="estado" />
                
                <asp:Parameter Name="tipoVenta" Type="String" />
                <asp:Parameter DbType="Date" Name="fechareg" />
                <asp:Parameter DbType="Date" Name="fechaven" />
                <asp:Parameter Name="codvendedor" Type="String" />
                <asp:Parameter Name="idclienteRUC" Type="String" />
                <asp:Parameter Name="razonsocial" Type="String" />
                <asp:Parameter Name="idcondpago" Type="String" />
                <asp:Parameter Name="dias" Type="Int32" />
                <asp:Parameter Name="GlosaGuias" Type="String" />
                <asp:Parameter Name="importebruto" Type="Decimal" />
                <asp:Parameter Name="tpimporteretenido" Type="String" />
                <asp:Parameter Name="igv" Type="Decimal" />
                <asp:Parameter Name="importeNeto" Type="Decimal" />
                <asp:Parameter Name="montoretenido" Type="Decimal" />
                <asp:Parameter Name="montodisponible" Type="Decimal" />
                <asp:Parameter Name="tpmoneda" Type="String" />
                <asp:Parameter Name="ano" Type="Int32" />
                <asp:Parameter Name="periodo" Type="Int32" />
                <asp:Parameter Name="BoletaFactura" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tipoVenta" Type="String" />
                <asp:Parameter DbType="Date" Name="fechareg" />
                <asp:Parameter DbType="Date" Name="fechaven" />
                <asp:Parameter Name="codvendedor" Type="String" />
               
                <asp:Parameter Name="idcondpago" Type="String" />
                <asp:Parameter Name="dias" Type="Int32" />
                <asp:Parameter Name="GlosaGuias" Type="String" />
                <asp:Parameter Name="importebruto" Type="Decimal" />
                <asp:Parameter Name="tpimporteretenido" Type="String" />
                <asp:Parameter Name="igv" Type="Decimal" />
                <asp:Parameter Name="importeNeto" Type="Decimal" />
                <asp:Parameter Name="montoretenido" Type="Decimal" />
                <asp:Parameter Name="montodisponible" Type="Decimal" />
                <asp:Parameter Name="montodisponibleAdelanto" Type="Decimal" />

                <asp:Parameter Name="tpmoneda" Type="String" />
                <asp:Parameter Name="ano" Type="Int32" />
                <asp:Parameter Name="periodo" Type="Int32" />
                <asp:Parameter Name="BoletaFactura" Type="Int32" />
                <asp:Parameter Name="idfacturacion" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
                <asp:Label ID="lblmensaje" runat="server" style="color: #990000; font-size: small"></asp:Label>
        <asp:Panel ID="PanelPedidos" runat="server">
            <table class="auto-style6">
                <tr>
                    <td><strong>Detalle pedidos de documentos:&nbsp;</strong><asp:Label ID="lblidFactura" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbldocFact" runat="server"></asp:Label>
                        <asp:Label ID="lblmaxDetalle" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td style="text-align: right">
                        <asp:Button ID="btanular" runat="server" ForeColor="#990000" OnClick="btanular_Click" Text="ANULAR FACTURA" Visible="False" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDETALLE,CODPRO" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True" Width="700px">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                    <asp:BoundField DataField="CODPRO" HeaderText="COD.PRO" ReadOnly="True" SortExpression="CODPRO" >
                    <HeaderStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PV" HeaderText="PREC. VENTA" SortExpression="PV" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDPEDIDO" HeaderText="IDPEDIDO" SortExpression="IDPEDIDO" Visible="False" />
                    <asp:BoundField DataField="DESCUENTO" HeaderText="DESCUENTO" SortExpression="DESCUENTO" Visible="False" />
                    <asp:BoundField DataField="PL" HeaderText="PL" SortExpression="PL" Visible="False" />
                    <asp:BoundField DataField="ESTADODESCTO" HeaderText="ESTADODESCTO" SortExpression="ESTADODESCTO" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    No se encontro pedido registrado...!
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_FacturaDetallePEdido" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="PanelAgregarPedido" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Ingresar
                            <br />
                            pedido:</td>
                        <td>
                            <asp:TextBox ID="txtSearchProducto" runat="server"></asp:TextBox>
                            <br />
                            <span class="auto-style5">producto</span></td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtCantidad" runat="server" type="number"></asp:TextBox>
                            <br />
                            <span class="auto-style5">cantidad</span></td>
                        <td>
                            <asp:TextBox ID="txtprecioVenta" runat="server" step="0.0001" type="number"></asp:TextBox>
                            <br />
                           <span class="auto-style5"> precio venta</span></td>
                        <td class="auto-style15">
                            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="REGISTRAR" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                        <td class="auto-style15">
                            <asp:Label ID="lblpreciolista" runat="server" Visible="False"></asp:Label>
                            <asp:HiddenField ID="hfCustomerProducto" runat="server" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="pAnular" runat="server">
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7" colspan="3"><strong>ANULAR FACTURA</strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">Factura a anular</td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style13">
                        <asp:Label ID="lbldocFact0" runat="server"></asp:Label>
                        <asp:Label ID="lblCodFact0" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Asunto</td>
                    <td class="auto-style14">:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtAsunto" required runat="server" Height="50px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="btAnularFactura" runat="server" OnClick="btAnularFactura_Click" OnClientClick="return confirm('Favor de confirmar la anulación de la FACTURA ?');" style="color: #990000" Text="ANULAR FACTURA" Width="300px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
