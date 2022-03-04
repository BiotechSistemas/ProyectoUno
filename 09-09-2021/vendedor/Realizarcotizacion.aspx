<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2/paginapresentable.Master" AutoEventWireup="true" CodeBehind="Realizarcotizacion.aspx.cs" Inherits="biotech.vendedor.Realizarcotizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 54%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
            width: 611px;
        }
        .auto-style5 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            height: 21px;
        }
        .auto-style8 {
            width: 229px;
        }
        .auto-style9 {
            height: 21px;
            width: 827px;
        }
        .auto-style10 {
            width: 827px;
        }
        .auto-style11 {
            height: 25px;
            width: 611px;
        }
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            width: 229px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Orden de Venta</h1>
    <center>
    
                    <asp:Button ID="btnuevaorden" runat="server" Height="40px" OnClick="Button5_Click" Text="NUEVA ORDEN" Width="60%" />
                  
    <asp:Panel ID="Panelingres" runat="server">
        <table class="auto-style1" style="vertical-align: 60%">
            <tr>
                <td class="auto-style2" colspan="2">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Cod:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:Label ID="lblorden" runat="server"></asp:Label>
                    <asp:Label ID="lblvendedor" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Cliente:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="clienteid" Height="40px" OnSelectedIndexChanged="ddlCliente_SelectedIndexChanged" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cliente" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblvendedor" Name="venddor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblcp" runat="server"></asp:Label>
                    <asp:Label ID="lblconpago" runat="server"></asp:Label>
                    <asp:Label ID="lbldiascondpago" runat="server"></asp:Label>
                    <asp:Label ID="lblcodcliente" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">Condicion:</td>
                <td class="auto-style11" style="text-align: left">
                    <asp:Label ID="lblcondpago" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">F.Entrega:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:TextBox ID="txtfechaentrega" runat="server" Height="30px" Width="100%" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">LEntrega:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:DropDownList ID="ddllugarentrega" runat="server" DataSourceID="SqlDataSource7" DataTextField="descripcion" DataValueField="idanexocliente" Height="40px" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_clienteAnexo] WHERE ([idcliente] = @idcliente)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlCliente" Name="idcliente" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Motivo:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:DropDownList ID="ddlmotivo" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="idtraslado" Height="40px" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_traslado]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Producto:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:DropDownList ID="ddlproducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="producto" DataValueField="producto" Width="60%" Height="40px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:DropDownList ID="ddlpresentacion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="presentacion" DataValueField="idProducto" OnSelectedIndexChanged="ddlpresentacion_SelectedIndexChanged" Width="30%" Height="40px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlproducto" Name="pro" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblcodpro" runat="server"></asp:Label>
                    <asp:Label ID="lblexonerado" runat="server" ForeColor="Red" style="color: #FF0000"></asp:Label>
                    <asp:Label ID="lbldescuentopermitido" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblexoneradoo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">P. L:</td>
                <td class="auto-style4" style="text-align: left">
                    &nbsp;<asp:Label ID="lblplista" runat="server"></asp:Label>
                    U$$</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Dsto: </td>
                <td class="auto-style4" style="text-align: left">
                    <asp:TextBox ID="txtvalahallar" runat="server" Width="60%" OnTextChanged="txtvalahallar_TextChanged" Height="40px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="%" Width="15%" Height="40px" />
                    <asp:Button ID="btmonto" runat="server" OnClick="btmonto_Click" Text="$" Width="15%" Height="40px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">P.V.:</td>
                <td class="auto-style4" style="text-align: left">
                    &nbsp;<asp:Label ID="lblcadena" runat="server"></asp:Label>
                    <asp:Label ID="lblprecioventa" runat="server"></asp:Label>
&nbsp;
                    <asp:Label ID="lblporsentual" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Cantidad:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:TextBox ID="txtcantidad" runat="server" BackColor="#FFFF99" Height="40px"></asp:TextBox>
                    <asp:Label ID="lblcontador" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>

                 <td class="auto-style3" style="text-align: right">
                   <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="FINALIZAR" Width="100%" Height="40px" />
                </td>
                <td class="auto-style4" style="text-align: left">
                     <asp:Button ID="btregpedido" runat="server" Height="40px" OnClick="btregpedido_Click" Text="REGISTRAR PEDIDO" Width="100%" />
               
                </td>

                
                    
            </tr>
            <tr>
                <td class="auto-style3" colspan="2" style="text-align: right">
                    <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                </td>
            </tr>
        </table>
        &nbsp;</asp:Panel>
        </center>
    <center>
    <asp:Panel ID="PanelPIDIENDO" runat="server">
        Detalle Orden Ganerada:<br />
        <asp:GridView ID="gvdetallepedido" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetallecotizacion" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:BoundField DataField="iddetallecotizacion" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" />
                <asp:BoundField DataField="idOrdenVenta" HeaderText="Orden" SortExpression="idOrdenVenta" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="idproducto" HeaderText="COD PRODUC" SortExpression="idproducto" />
                <asp:BoundField DataField="despro" HeaderText="Product" ReadOnly="True" SortExpression="despro" Visible="False" />
                <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" Visible="False" />
                <asp:BoundField DataField="pv" HeaderText="PV $" SortExpression="pv" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="subtotal" HeaderText="SUBTT" SortExpression="subtotal" />
                <asp:BoundField DataField="desct" HeaderText="desct" SortExpression="desct" Visible="False" />
                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVenta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblorden" Name="idorden" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        Eliminar Pedido:<asp:TextBox ID="txtnumpedido" runat="server"></asp:TextBox>
        <asp:Button ID="bteliminar" runat="server" OnClick="bteliminar_Click" Text="Eliminar" />
        <br />
    </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <table align="center" class="auto-style5 ">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style8">N° Orden:</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblordenfinal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Cliente:</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblcliente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Condición:</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">F.Entraga:</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblfechaentrega" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">L.Entrega:</td>
                    <td class="auto-style10">
                        Anexo #.<asp:Label ID="lbllugarentrega" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Autorizado:</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblautorizado" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetallecotizacion" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="iddetallecotizacion" HeaderText="iddetallecotizacion" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" Visible="False" />
                                <asp:BoundField DataField="idOrdenVenta" HeaderText="idOrdenVenta" SortExpression="idOrdenVenta" Visible="False" />
                                <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                <asp:BoundField DataField="despro" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="despro" />
                                <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" Visible="False" />
                                <asp:BoundField DataField="pv" HeaderText="PV$" SortExpression="pv" />
                                <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                <asp:BoundField DataField="subtotal" HeaderText="SUBTT" SortExpression="subtotal" />
                                <asp:BoundField DataField="desct" HeaderText="%" SortExpression="desct" />
                                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False" />
                                <asp:BoundField DataField="exonerado" HeaderText="EXO" SortExpression="exonerado" />
                                <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVenta" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblorden" Name="idorden" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9" style="text-align: right">
                        SUB-TT:<asp:Label ID="lbltotal" runat="server"></asp:Label>
                        <br />
                        <span class="auto-style12">IGV(18%):</span><asp:Label ID="lbligv" runat="server"></asp:Label>
                        <br />
                        TOTAL:<asp:Label ID="lbltotalapagar" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/informe/prinorden.aspx" Target="_blank">IMPRIMIR</asp:HyperLink>
        </asp:Panel>
    <p>
    </p>
    </asp:Content>
