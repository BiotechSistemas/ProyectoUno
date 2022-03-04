<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="GuiaremInterna.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.GuiaremInterna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

          <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"


    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>

     <script type="text/javascript">
         $(function () {
             $("[id$=txtSearchProducto]").autocomplete({
                 source: function (request, response) {
                     $.ajax({
                         url: '<%=ResolveUrl("~/bio/ventas/FactLetra/GuiaremInterna.aspx/GetCustomers2") %>',
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



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> GUIA REMISIÓN<asp:LinkButton ID="LinkButton1" runat="server" Visible="False"></asp:LinkButton>
                        </h2>



                        <%--<p class="help-block">Departamento</p>--%>
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


        <table class="nav-justified">
            <tr>
                <td valign=top>

                    <table class="auto-style1">
            <tr>
                <td>Motivo</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idtraslado" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idtraslado,descripcion FROM [tb_traslado] where orden not in (2,3) order by orden"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td valign=top>Alm. Origen<br />
                    <asp:Label ID="lblidAlmOrigen" runat="server"></asp:Label>
                </td>
                <td valign=top>:</td>
                <td>
                    <asp:RadioButtonList ID="rbOrigen" runat="server" DataSourceID="SqlDataSourceorigen" DataTextField="descripcion" DataValueField="idalmacen" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="rbOrigen_SelectedIndexChanged">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSourceorigen" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idalmacen,descripcion from almacen where estado =1"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td valign=top>Alm. Destino<br />
                                <asp:Label ID="lblidAlmFinal" runat="server" Visible="False"></asp:Label>
                            </td>
                <td valign=top>:</td>
                <td>
                    <asp:RadioButtonList ID="rb_destino" runat="server" DataSourceID="SqlDataSourceDestino" DataTextField="descripcion" DataValueField="idalmacen" Width="200px" OnSelectedIndexChanged="rb_destino_SelectedIndexChanged">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSourceDestino" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idalmacen,descripcion from almacen where estado =1"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Cliente</td>
                <td>:</td>
                <td>
                        <asp:TextBox ID="txtbuscarcliente" runat="server" AutoPostBack="True" OnTextChanged="txtbuscarcliente_TextChanged" Width="200px"></asp:TextBox>
                        <asp:Button ID="btbuscar" runat="server" Text="..." />
                        </td>
                <td>&nbsp;</td>
                <td>
                        <asp:Label ID="lblruc" runat="server"></asp:Label>
                        </td>
                <td>&nbsp;</td>
                <td>
                        <asp:Label ID="lblcliente" runat="server"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td valign=top>F. Emisión</td>
                <td>:</td>
                <td>
                        <asp:TextBox ID="txtfechaemision" runat="server" Width="170px" ReadOnly="True"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/caledario.png" OnClick="ImageButton3_Click" Width="25px" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="134px" OnSelectionChanged="Calendar1_SelectionChanged" style="font-size: xx-small" Visible="False" Width="198px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [almacen] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </td>
                <td>&nbsp;</td>
                <td valign=top>solicitante:<br />
                    <asp:Label ID="lblidRTC" runat="server"></asp:Label>
                    </td>
                <td>&nbsp;</td>
                <td>
                        <asp:DropDownList ID="ddlVendedor" runat="server" DataSourceID="SqlDataSourceRTC" DataTextField="ASESOR" DataValueField="CODTRAB" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceRTC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </td>
            </tr>
            <tr>
                <td colspan="3"><strong __designer:mapid="161b">Detalle de pedidos ingresados:</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblidproducto" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Producto</td>
                <td class="auto-style3">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtproducto" runat="server" Width="200px" AutoPostBack="True" OnTextChanged="txtproducto_TextChanged"></asp:TextBox>
                      


                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3">Cantidad</td>
                <td class="auto-style3">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="+ AGREGAR" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                        <asp:TextBox ID="txtSearchProducto" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/buscarr.png" Width="30px" OnClick="ImageButton2_Click" Height="30px" ImageAlign="AbsMiddle" ToolTip="Consultar cliente" />
                    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                        <asp:HiddenField ID="hfCustomerProducto" runat="server" />
                        </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


                </td>
                <td>&nbsp;</td>
                <td>EXISTENCIA ALMACEN:<asp:Label ID="lblamacenExistencia" runat="server"></asp:Label>
                    <asp:Label ID="lblAlmacenG2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblopG2" runat="server" Text="1" Visible="False"></asp:Label>
                        <asp:GridView ID="gvConsultaAlmacen" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table table-condensed  table-hover table-sm thead-light" DataKeyNames="idDetalleAlmacen,ALMACEN,idProducto,PRODUCTO,STOCK" DataSourceID="SqlDataSourceGRUPO2" OnSelectedIndexChanged="gvConsultaAlmacen_SelectedIndexChanged" PageSize="27" style="font-size: x-small" Width="300px" BorderStyle="None" GridLines="Horizontal">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:CommandField>
                                <asp:TemplateField HeaderText="COD" ShowHeader="False" Visible="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("idProducto") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="65px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="idDetalleAlmacen" HeaderText="idDetalleAlmacen" ReadOnly="True" SortExpression="idDetalleAlmacen" Visible="False" />
                                <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" ReadOnly="True" SortExpression="ALMACEN" Visible="False" />
                                <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" Visible="False">
                                <HeaderStyle Width="70px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MINIMO" HeaderText="*" ReadOnly="True" SortExpression="MINIMO" Visible="False">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                Almacen sin productos...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceGRUPO2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_consultaAlmacen" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblAlmacenG2" Name="idalmacen" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblopG2" Name="op" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
            </tr>
        </table>


        


    </div>

</asp:Content>
