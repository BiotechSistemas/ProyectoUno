<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Facturacion_ped.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.Facturacion_ped" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>


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
              width: 100%;
              border-radius: 5px;

         }
        .auto-style57 {
            height: 24px;
        }
        .auto-style62 {
        }
        .auto-style63 {
            width: 1%;
        }
         .auto-style111 {
            width: 600px;
        }
        .auto-style66 {
        }
        .auto-style68 {
            text-align: right;
        }
        .auto-style69 {
        }
        .auto-style70 {            text-align: right;
        }
        .auto-style72 {
            width: 21%;
        }
        .auto-style73 {
        }
        .auto-style74 {
        }
        .auto-style75 {
            font-weight: bold;
        }
        .auto-style76 {
            width: 8%;
            font-weight: bold;
            height: 24px;
        }
        .auto-style79 {
            width: 21%;
            }
        .auto-style734 {
            height: 46px;
            width: 371px;
        }
        .auto-style735 {
            font-size: medium;
        }
        .auto-style737 {
            width: 100%;
        }
        .auto-style738 {
            color: #C0C0C0;
            font-size: x-small;
        }
        .auto-style739 {
            color: #999999;
            font-size: x-small;
        }
        .auto-style742 {
            width: 371px;
        }
       </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> FACTURACIÓN - LETRAS<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                        </h2>

                          <%-- <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Principal</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbletrasdescuento" runat="server" OnClick="lbletrasdescuento_Click"  >Descuento</asp:LinkButton>
      </li>
                               <li>
      <asp:LinkButton ID="lbDocTransicion" runat="server" OnClick="lbDocTransicion_Click" PostBackUrl="~/bio/ventas/CtaDocTransicion.aspx">Transición</asp:LinkButton>
                               </li>
      <li>
      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Fact. pagadas</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Letras pagadas</asp:LinkButton>
      </li>
   
  <li>Dolares: <asp:Label ID="lblttdolares" runat="server" style="font-weight: 700"></asp:Label> Soles:<asp:Label ID="lblsoles" runat="server" style="font-weight: 700"></asp:Label></li>
</ol> --%>
                       </div></div>


     <div class="row">

<ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbPedido" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaPedido.aspx" >Nota de pedido</asp:LinkButton>
      </li>

      <li>
      <asp:LinkButton ID="lbGuias" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/GuiaRemision.aspx" >Guia Remisión</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="lbFacturas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/Factura_Det.aspx">Facturación</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbLetras" runat="server" ForeColor="#006600"  PostBackUrl="~/bio/ventas/FactLetra/Letras.aspx"  >Letras</asp:LinkButton>
      </li>

    <li>
      <asp:LinkButton ID="lbncredito" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaCredito.aspx" >Nota de Crédito</asp:LinkButton>
      </li>
</ol>    

             </div>

     <div class="row">
            
    <div class="col-md-12">
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idPedido,RUC,ZONA,RTC,NPEDIDO" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="4" style="font-size: small" Width="100%" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField HeaderText="N° PEDIDO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("NPEDIDO") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="30px" Width="70px" />
                        <HeaderStyle Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                    <asp:BoundField DataField="NPEDIDO" HeaderText="NPEDIDO" ReadOnly="True" SortExpression="NPEDIDO" Visible="False" />
                    <asp:BoundField DataField="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRADA" SortExpression="FREGISTRADA" Visible="False" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITADA" SortExpression="FSOLICITADA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" Visible="False" />
                    <asp:BoundField DataField="CONDICIONPAGO" HeaderText="COND. PAGO" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                    <asp:BoundField DataField="M" HeaderText="MONEDA" SortExpression="M" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RTC" HeaderText="ASESOR" SortExpression="RTC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    <em>No se registra ningún pedido por atender...</em>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="Silver" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_porAtender" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>

        </div>

    <div class="row">           
    <div class="col-md-6">

        <strong>GUIAS A FACTURAR:</strong><asp:Label ID="lblidpedido" runat="server"></asp:Label>
       
&nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceGuias1" DataTextField="GUIAREM" DataValueField="idguia" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Visible="False">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSourceGuias1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idguia, CONCAT(grupo,'-',guiarem)  GUIAREM from tb_guiaRem where IdordenVenta = @idpedido and estado=1">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:GridView ID="gvGuiaxFact" class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="IDGUIA,GUIA" DataSourceID="SqlDataSourcexfact" OnSelectedIndexChanged="gvGuiaxFact_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="COD" SortExpression="idfacturacion">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IDGUIA") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <span>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                        &nbsp;&nbsp; </span>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IDGUIA") %>' Visible="False"></asp:Label>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("GUIA") %>' Visible="False"></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderText="GUIA">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("GUIA") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="130px" />
                </asp:TemplateField>
                <asp:BoundField DataField="IDGUIA" HeaderText="IDGUIA" ReadOnly="True" SortExpression="IDGUIA" Visible="False" />
                <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" Visible="False" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="130px" />
                </asp:BoundField>
                <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/aten{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>


                
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcexfact" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiaRem_xPedido1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="estado" Type="Int32" />
                <asp:ControlParameter ControlID="GridView2" DefaultValue="" Name="idpedido" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:Label ID="LBLGUIASELEC" runat="server"></asp:Label>


        <br />
                        <asp:GridView ID="gv_GiasaFact" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDDETALLE,idguia,CODPRO,PRODUCTO,CANT" DataSourceID="SqlDataSourceguiapedido" ForeColor="Black" GridLines="Horizontal" Width="400px">
                            <Columns>
                                <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                <asp:BoundField DataField="CODPRO" HeaderText="PRO" SortExpression="CODPRO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO">
                                <HeaderStyle Width="200px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" />
                                <asp:BoundField DataField="CODPEDIDO" HeaderText="CODPEDIDO" SortExpression="CODPEDIDO" Visible="False" />
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


                        <asp:SqlDataSource ID="SqlDataSourceguiapedido" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_ListarProductos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="CheckBoxList1" Name="idguia" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>


    </div>
    <div class="col-md-6">

        <strong>GUIAS FACTURADAS:</strong><asp:GridView ID="gvGuiasFact" class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="IDGUIA" DataSourceID="SqlDataSourceGuiasPed" OnSelectedIndexChanged="gvGuiasFact_SelectedIndexChanged" Width="100%">
            <Columns>
                 
                <asp:TemplateField HeaderText="GUIA REM" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("GUIA") %>' ForeColor="#006600"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#006600" />
                </asp:TemplateField>
                <asp:BoundField DataField="IDGUIA" HeaderText="IDGUIA" ReadOnly="True" SortExpression="IDGUIA" Visible="False" />
                <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" Visible="False" />
                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/aten{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

            </Columns>
            <EmptyDataTemplate>
                No existen guias facturadas del pedido...
            </EmptyDataTemplate>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSourceGuiasPed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiaRem_xPedido1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="20" Name="estado" Type="Int32" />
                <asp:ControlParameter ControlID="GridView2" Name="idpedido" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>


    </div>

    </div>


    <asp:Panel ID="Panel1" CssClass="row" runat="server">
        <asp:Panel ID="Panel6" runat="server" Visible="False">
            asesor:
            <asp:Label ID="lblasesorid" runat="server"></asp:Label>
            &nbsp;isalmacen =
            <asp:Label ID="lblidalmacen" runat="server"></asp:Label>
        </asp:Panel>


    </asp:Panel>


    <br />
    <asp:Panel ID="PanelFacturaBoleta" runat="server">


        <fieldset style="min-height:100px; width:100%;"><legend ><strong>REGISTAR COMPROBANTE PAGO:</strong></legend>
            <table class="auto-style111">
                <tr>
                    <td class="auto-style74">
                        <asp:Image ID="Image2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/logobiotech.png" Width="100px" />
                    </td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">
                        <asp:Panel ID="Panel5" runat="server" Visible="False">
                            <asp:Label ID="lbltpComprobante" runat="server"></asp:Label>
                            <asp:Label ID="lblcomproTipoNum" runat="server"></asp:Label>
                            <asp:Label ID="lblfEmision" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblTpComprobante2" runat="server"></asp:Label>
                        </asp:Panel>
                    </td>
                    <td class="auto-style73" colspan="3">
                        <table class="auto-style734">
                            <tr>
                                <td style="text-align: center; background-color: #666666" class="auto-style734">
                                    <asp:Label ID="lblcomprobante" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White">FACTURA</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center" class="auto-style742"><span class="auto-style735">
                                    N° </span>
                                    <asp:Label ID="lblfacturaserie" runat="server" CssClass="auto-style9" style="font-size: medium"></asp:Label>
                                    -<asp:Label ID="lblfacturanumero" runat="server" CssClass="auto-style9" style="font-size: medium"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74">
                        &nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">
                        <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style73"><span class="auto-style735">
                        <asp:Label ID="lblidmaxFactura" runat="server" Visible="False"></asp:Label>
                        </span></td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style75"><strong>RUC</strong> </td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69">
                        <asp:Label ID="lblruc2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style75"><strong>F. EMISIÓN</strong></td>
                    <td class="auto-style68">:</td>
                    <td class="auto-style72">
                        <asp:TextBox ID="txtfechareg" runat="server" BackColor="#FFFFEA" ReadOnly="True" Width="150px" required ></asp:TextBox>
                        <asp:ImageButton ID="ImageButton6" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/caledario.png" OnClick="ImageButton6_Click" Width="20px" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="143px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="171px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style72">
                        <asp:Label ID="lblProductoFacturar" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblCodProPedidoPResent1" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbldatosselecchec" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblmensajeselecguia" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style75"><strong>CLIENTE</strong></td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69" colspan="3">
                        <asp:Label ID="lblrazonsocial2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblcodigosguia" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style75"><strong>COND. PAGO</strong></td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69">
                        <asp:Label ID="lblconpago" runat="server"></asp:Label>
                        &nbsp;a&nbsp;
                        <asp:Label ID="lbldias" runat="server">0</asp:Label>
                        &nbsp;días</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style75"><strong>F.VENCIMIENTO</strong></td>
                    <td class="auto-style68">:</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblfechacenvimiento" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style76" VALIGN="TOP"><strong>ASESOR C.<br /> MONEDA<br /> RETENEDOR</strong></td>
                    <td class="auto-style63">:<br /> :<br /> :</td>
                    <td class="auto-style57" colspan="2">
                        <asp:Label ID="lblrtc" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblmoneda" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblmoneda1" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblretenedor" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbldetalleretenedor" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style75" VALIGN="TOP">
                        GUIA REM.</td>
                    <td class="auto-style68" VALIGN="TOP">:</td>
                    <td class="auto-style79" VALIGN="TOP">
                        <asp:TextBox ID="txtGuiaRemision" PLACEHOLDER="Anexar guia(s)" runat="server" Enabled="False" Width="250px"></asp:TextBox>
                        <asp:Button ID="Button9" runat="server" Text="..." OnClick="Button9_Click" />
                        <br />
                        <asp:Label ID="lblmensajeanexo" runat="server" ForeColor="#990000"></asp:Label>
                    </td>
                    <td class="auto-style72" rowspan="5" VALIGN="TOP">
                        <asp:Panel ID="pprducafacturar" runat="server">
                        
                        <strong>Productos a Facturar:</strong><asp:GridView ID="gvGuiasFacturadas" runat="server" AutoGenerateColumns="False" DataKeyNames="CODPRODUCTO,PRODUCTO,CANTIDADES" DataSourceID="SqlDataSourceGuiasFacturadas" OnSelectedIndexChanged="gvGuiasFacturadas_SelectedIndexChanged" style="font-size: x-small">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="CODPRODUCTO" HeaderText="CODPRODUCTO" SortExpression="CODPRODUCTO" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENTACION" SortExpression="PRESENTACION" />
                            <asp:BoundField DataField="CANTIDADES" HeaderText="CANTIDADES" ReadOnly="True" SortExpression="CANTIDADES">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            <em>No existen guias anexadas</em>
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceGuiasFacturadas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_GUIASselecaFact" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidmaxFactura" Name="idfactura" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                            </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style63"></td>
                    <td class="auto-style69">
                        <br />
                    </td>
                    <td class="auto-style70">
                        <asp:Label ID="Label1" runat="server" Text="lblidDEtPedido20" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="30px" ImageUrl="~/images/agregarproducto.png" OnClick="btAgregarProductos" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td  colspan="3" class="auto-style75"><strong>DETALLE PRODUCTOS A VENDER</strong></td>
                    <td class="auto-style70">
                        <asp:Label ID="lblprecioVentaxLitroPedido" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblunidadesPresentacion" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblexonerado" runat="server"></asp:Label>
                        <asp:Label ID="lbltipodescto" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td class="auto-style70" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="7">
                        <asp:Panel ID="pProductos" runat="server" Visible="False">
                            <table class="auto-style737">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblidproductoFacturado" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblproductofacturado" runat="server"></asp:Label>
                                        <br />
                                        <span class="auto-style739">PRODUCTO</span></td>
                                    <td>
                                        <asp:TextBox ID="txtcantidadFacturado" runat="server"  step="0" type="number" Width="80px"></asp:TextBox>
                                        <br /> <span class="auto-style739">CANT</span><span class="auto-style738">.</span>
                                        </td>
                                    <td>
                                        <asp:TextBox ID="txtprecioFacturado" runat="server"  step="0.01" type="number" Width="100px"></asp:TextBox>
                                        <br />
                                       <span class="auto-style739">PRECIO .VENTA.</span> </td>
                                    <td>
                                        <asp:ImageButton ID="ibtAgregafacturado" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/agre.png" OnClick="ibtAgregafacturado_Click" Width="30px" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="7">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD,IDDETPEDIDO" DataSourceID="SqlDataSource2" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="ITEM" ReadOnly="True" SortExpression="ITEM" />
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PV">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUBTT" SortExpression="SUBTT">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DSCTO" DataFormatString="{0:0,0.00}" HeaderText="DSCTO" SortExpression="DSCTO" Visible="False">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" Visible="False" />
                                <asp:BoundField DataField="IDDETPEDIDO" HeaderText="IDDETPEDIDO" SortExpression="IDDETPEDIDO" Visible="False" />
                                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" ShowDeleteButton="True">
                                <ControlStyle Height="20px" Width="20px" />
                                </asp:CommandField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE FROM [FacturacionDetalle] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO [FacturacionDetalle] ([idDetalle], [idfactura], [idproducto], [precioVenta], [cantidad], [subtotal], [idPedido], [dsto]) VALUES (@idDetalle, @idfactura, @idproducto, @precioVenta, @cantidad, @subtotal, @idPedido, @dsto)" SelectCommand="st_FacturaListarPedidos" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [FacturacionDetalle] SET [idfactura] = @idfactura, [idproducto] = @idproducto, [precioVenta] = @precioVenta, [cantidad] = @cantidad, [subtotal] = @subtotal, [idPedido] = @idPedido, [dsto] = @dsto WHERE [idDetalle] = @idDetalle">
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
                        *<asp:Label ID="lblitems" runat="server" ForeColor="#999999"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblMensajeFact" runat="server" ForeColor="#990000"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="4">
                        <asp:TextBox ID="txtglosa" runat="server" placeholder="Observación" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                    <td class="auto-style62" colspan="3">
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: right">SUB.TOTAL:<br />
                                    <asp:TextBox ID="txtsubTotal" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                </td>
                                <td style="text-align: right">IGV(18%):<br />
                                    <asp:TextBox ID="txtigv" runat="server" CssClass="ver" Width="100px" Enabled="False"></asp:TextBox>
                                </td>
                                <td style="text-align: right">IMP. NETO:<br />
                                    <asp:TextBox ID="txttotal" runat="server" Width="100px" Font-Bold="True" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74" colspan="7">
                        <br />
                        <asp:Button ID="Button8" runat="server" class="btn btn-success" OnClick="btFinalizarFactura" Text="FINALIZAR FACTURA" Width="100%" />
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74">&nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style73">
                        <asp:Label ID="lblmontoaretener" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblnetocobrar" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74" colspan="4">
                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
            </table>
        </fieldset>
        
    </asp:Panel>

    <%--<asp:Panel ID="PanelFactura" runat="server">
    <div class="row">

    </div>
    </asp:Panel>--%>

    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
            
</asp:Content>
