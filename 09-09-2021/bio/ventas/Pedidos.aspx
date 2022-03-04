<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="biotech.bio.ventas.Pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-user"></i> Pedidos<asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivelPrincipal" runat="server" Visible="False"></asp:Label>
                        <asp:Panel ID="paviso1" runat="server" BackColor="#E8FFE8">
                    &nbsp;* PEDIDO N°
                    <asp:Label ID="lblnpedido2" runat="server"></asp:Label>
                    &nbsp;, FUE APROBADO ...!<br />
                </asp:Panel>
                <asp:Panel ID="Paviso2" runat="server" BackColor="#FFE8DF">
                    * PEDIDO N °
                    <asp:Label ID="lblnpedido3" runat="server"></asp:Label>
                    , FUE OBSERVADO...!</asp:Panel>
               
                    <asp:Panel ID="pprincipal" runat="server">
                        <h2>PEDIDOS POR APROBAR:</h2>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPedido,idCliente,lugarentrega,descripcion,idvendedor" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  style="font-size: small" Width="100%">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                                <asp:BoundField DataField="PEDIDO" HeaderText="PEDIDO" ReadOnly="True" SortExpression="PEDIDO" />
                                <asp:BoundField DataField="FREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRO" SortExpression="FREG">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idCliente" HeaderText="idCliente" SortExpression="idCliente" Visible="False" />
                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" />
                                <asp:BoundField DataField="lugarentrega" HeaderText="lugarentrega" SortExpression="lugarentrega" Visible="False" />
                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" Visible="False" />
                                <asp:BoundField DataField="idvendedor" HeaderText="ASESOR C" SortExpression="idvendedor">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                            </Columns>
                            <EmptyDataTemplate>
                                <em>Ningun pedido por aprobar...</em>
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#CCCCCC" Font-Bold="False" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="WhiteSmoke" />
                            <SelectedRowStyle Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_poraprobargerencia" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:Label ID="lblidepedido" runat="server" Visible="False"></asp:Label>
                    </asp:Panel>

                    <asp:Panel ID="PanelDescripcion" runat="server">
                        <table align="LEFT">
                            <tr>
                                <td class="auto-style37"><b>N° PEDIDO</b></td>
                                <td class="auto-style40"><b>:</b></td>
                                <td>
                                    <asp:Label ID="lblnpedido" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td class="auto-style43"><b>F. REGISTRO</b></td>
                                <td class="auto-style40"><b>:</b></td>
                                <td>
                                    <asp:Label ID="lblfregistro" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">ASESOR C.</td>
                                <td class="auto-style39">:</td>
                                <td class="auto-style33">
                                    <asp:Label ID="lblasesorcomercial" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style33">&nbsp;</td>
                                <td class="auto-style42">F. SOLICITA</td>
                                <td class="auto-style39">:</td>
                                <td class="auto-style33">
                                    <asp:Label ID="lblfsolicitada" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><b>CLIENTE</b></td>
                                <td class="auto-style40"><b>:</b></td>
                                <td colspan="5">
                                    <asp:Label ID="lblruc" runat="server"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lblcliente" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><b>COND. PAGO</b></td>
                                <td class="auto-style40"><b>:</b></td>
                                <td>
                                    <asp:Label ID="lblcondpago" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td class="auto-style43"><b>MONEDA</b></td>
                                <td class="auto-style40"><b>:</b></td>
                                <td>
                                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>OBSERV. AC</strong></td>
                                <td class="auto-style40">:</td>
                                <td>
                                    <asp:Label ID="lbldescripcion" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td class="auto-style43">&nbsp;</td>
                                <td class="auto-style40">&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblcorreortc" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>LUGAR ENTREGA</strong></td>
                                <td class="auto-style40">&nbsp;</td>
                                <td>
                                    <asp:Label ID="lbllugarentrega" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td class="auto-style43">
                                    <asp:Label ID="lbldescripGerencia" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style40">&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
                        <br />
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET" DataSourceID="SqlDataSource2" GridLines="Horizontal" style="font-size: small" Width="600px">
                                        <Columns>
                                            <asp:TemplateField HeaderText="COD" ShowHeader="False" Visible="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" style="color: #006600" Text='<%# Bind("CODPRO") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                                            <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO">
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
                                            <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT">
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
                                            <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png">
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
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_bkpedidoDet" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidepedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="APROBAR PEDIDO" Width="250px" />
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td class="auto-style44">Total :</td>
                                            <td>
                                                <asp:Label ID="lbltotal" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" ForeColor="#990000" Text="OBSERVAR PEDIDO" Width="250px" OnClick="Button2_Click" />
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td class="auto-style44">IGV(18%) :</td>
                                            <td>
                                                <asp:Label ID="lbligv" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td class="auto-style44">Neto a pagar :</td>
                                            <td>
                                                <asp:Label ID="lblnetopagar" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <div class="auto-style31">
                            <span class="auto-style31">** = APROBACIÓN ; &nbsp;</span><span class="auto-style23"><asp:Image ID="Image4" runat="server" CssClass="auto-style31" ImageUrl="~/images/GCOMERCIAL.png" Width="15px" />
                            </span><span class="auto-style31">Gerencia Comercial, </span>
                            <asp:Image ID="Image5" runat="server" CssClass="auto-style31" ImageUrl="~/images/GGENERAL.png" Width="15px" />
                            <span class="auto-style21"><span class="auto-style32">&nbsp;Gerencia general</form> ( </span><span class="auto-style22">
                            <asp:Image ID="Image6" runat="server" CssClass="auto-style31" ImageAlign="AbsMiddle" ImageUrl="~/images/apro1.png" Width="15px" />
                            </span><span class="auto-style32">&nbsp;APROBADO -&nbsp; <span class="auto-style22">
                            <asp:Image ID="Image9" runat="server" CssClass="auto-style31" ImageAlign="AbsMiddle" ImageUrl="~/images/apro55.png" Width="15px" />
                            &nbsp;</span>OBSERVADO)</span></span>
                            <br />
                            * = ESTADO DE ATENCIÓN: <span class="auto-style23">
                            <asp:Image ID="Image7" runat="server" CssClass="auto-style31" ImageUrl="~/images/aten10.png" Width="15px" />
                            Guia de remisión,
                            <asp:Image ID="Image8" runat="server" CssClass="auto-style31" ImageUrl="~/images/aten20.png" Width="15px" />
                            &nbsp;Atendido</span></div>
                    </asp:Panel>

     
    
            <asp:Panel ID="Panel2" runat="server">
                <h2>PEDIDOS REGISTRADOS:</h2>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idPedido,RUC" DataSourceID="SqlDataSource4" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" style="font-size: small" Width="100%">
                    <Columns>
                        <asp:CommandField SelectImageUrl="~/images/openfolder.jpg" ShowSelectButton="True">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" ForeColor="#006600" />
                        </asp:CommandField>
                        <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                        <asp:BoundField DataField="NPEDIDO" HeaderText="PEDIDO" ReadOnly="True" SortExpression="NPEDIDO" />
                        <asp:BoundField DataField="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRADA" SortExpression="FREGISTRADA">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITADA" SortExpression="FSOLICITADA">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                        <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" Visible="False" />
                        <asp:BoundField DataField="CONDICIONPAGO" HeaderText="COND. PAGO" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                        <asp:BoundField DataField="M" HeaderText="MONEDA" SortExpression="M">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RTC" HeaderText="ASESOR C" SortExpression="RTC">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        <em>No se registra ningún pedido por atender...</em>
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#CCCCCC" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_porAtender" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:Label ID="lblidpedidoApro" runat="server" Visible="False"></asp:Label>
                <asp:Panel ID="pAprobadoDetalle" runat="server">
                    Detalle de pedido:
                    <asp:Label ID="lblpedidoreg" runat="server"></asp:Label>
                    <asp:GridView ID="gvAproDetPed" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET" DataSourceID="SqlDataSource5" GridLines="Horizontal" style="font-size: small" Width="600px">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False" Visible="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Select" style="color: #006600" Text='<%# Bind("CODPRO") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                            <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO">
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
                            <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT">
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
                            <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png">
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
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_bkpedidoDet" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidpedidoApro" Name="idpedido" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Retornar</asp:LinkButton>
                </asp:Panel>
            </asp:Panel>

     
    
                        </h3>
                      </div>   
                 </div>
</asp:Content>
