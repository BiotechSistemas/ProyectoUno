<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="GuiaRemision.aspx.cs" Inherits="biotech._1logistica.GuiaRemision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />


    <style type="text/css">


       
        .auto-style15 {
            font-size: x-small;
            color: #808080;
        }
        .auto-style24 {
            width: 400px;
        }
        .auto-style30 {
            height: 30px;
        }
        .auto-style36 {
        height: 30px;
    }
        .auto-style39 {
            width: 700px;
        }
        .auto-style41 {            text-align: left;
        }
        .auto-style44 {
            height: 30px;
            width: 219px;
        }
        .auto-style45 {
    }
        .auto-style54 {
            width: 191px;
        }
        .auto-style55 {
        }
        .auto-style60 {
            width: 4px;
            font-weight: bold;
        }
        .auto-style61 {
            width: 180px;
            font-weight: bold;
        }

         .auto-style1010 {
        width: 100%;
        background : #e5e3e3;
    }
        .auto-style1011 {
            font-size: x-large;
        }
        .auto-style1012 {
            width: 700px;
        }
        .auto-style1013 {
            height: 46px;
            width: 170px;
            text-align: left;
        }
        .auto-style1015 {
            width: 219px;
            height: 46px;
        }
        .auto-style1016 {
            width: 219px;
        }
        .auto-style1021 {
           
            width: 100px;
            text-align: right;
        }
        .auto-style1022 {
            width: 80px;
            font-size: x-small;
        }
        .auto-style1023 {
            width: 272px;
        }
        .auto-style1024 {
            width: 750px;
        }
        </style>

    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearchProducto]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/1logistica/GuiaRemision.aspx/GetCustomers2") %>',
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

     <script type="text/javascript">
         $(function () {
             $("[id$=txtSearch]").autocomplete({
                 source: function (request, response) {
                     $.ajax({
                         url: '<%=ResolveUrl("~/1logistica/GuiaRemision.aspx/GetCustomers") %>',
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
    <h1>
        <table width="100%">
            <tr>
                <td class="auto-style1011"><strong>GUIA DE REMISIÓN</strong></td>
                <td style="text-align: right">
                    <asp:Panel ID="PanelVerGuias" runat="server">
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/brecepcion.png" Width="220px" OnClick="ImageButton4_Click" />
                        <asp:ImageButton ID="ibProveedor" runat="server" ImageUrl="~/images/bproveedor.png" OnClick="ibProveedor_Click" Width="220px" />
                        <asp:ImageButton ID="ibTraslado" runat="server" ImageUrl="~/images/btraslado.png" OnClick="ibTraslado_Click" Width="220px" />
                        <asp:ImageButton ID="ibHome" runat="server" ImageUrl="~/images/bhome.png" OnClick="ibHome_Click" Width="80px" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </h1>
    <asp:Panel ID="pmotivo" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style54"><strong>MOTIVO:</strong></td>
                <td class="auto-style55">
                    <asp:RadioButtonList ID="RBLmotivo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idtraslado" OnSelectedIndexChanged="RBLmotivo_SelectedIndexChanged" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10" Font-Size="Medium" Width="100%">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_traslado]  order by orden"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEmpresa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged" Width="200px" DataSourceID="SqlDataSourceGRUPO" DataTextField="empresa" DataValueField="GrupoGuia" Visible="False">
                        <asp:ListItem Selected="True" Value="T001">Biotech</asp:ListItem>
                        <asp:ListItem Value="003">EMPRESA 2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceGRUPO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [estadoGuia], [GrupoGuia], [empresa] FROM [tb_empresas] WHERE ([estadoGuia] = @estadoGuia)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estadoGuia" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblidGrupoEmpresa" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
           
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelDatosGuia" runat="server">
       
        <fieldset>
            <legend>
                <h4><strong>GUIA REMISION</strong> N°<asp:Label ID="lblidguiarem" runat="server" Visible="False"></asp:Label>
                    <asp:TextBox ID="lblguiaremgrupo" runat="server" Width="70px"></asp:TextBox>
                    -<asp:TextBox ID="lblguiaremserie" runat="server" Width="100px"></asp:TextBox>
                    <asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
                    <asp:Label ID="lblmotivo" runat="server" style="font-weight: 700"></asp:Label>
                </h4>
            </legend>

             <table class="auto-style1">
            <tr>
                <td class="auto-style1024">

                    <table class="auto-style39">
                <tr>
                    <td class="auto-style1013">Fecha Emisión:</td>
                    <td class="auto-style24" colspan="2">
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
                    </td>
                    <td class="auto-style1021">Solicitante:&nbsp;<asp:Label ID="lblidRTC" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style1015">
                        <asp:DropDownList ID="ddlVendedor" runat="server" DataSourceID="SqlDataSourceRTC" DataTextField="ASESOR" DataValueField="CODTRAB" Width="300px" OnSelectedIndexChanged="ddlVendedor_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceRTC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:HiddenField ID="hfCustomerProducto" runat="server" />
                        <br />
                    </td>
                </tr>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>

                      
                <tr>
                    <td class="auto-style1013">Alm. origen:</td>
                    <td class="auto-style24" colspan="4">
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [almacen] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="lbldescripOrigen" runat="server"></asp:Label>
                        <asp:RadioButtonList ID="rbAlmacen" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idalmacen" OnSelectedIndexChanged="rbAlmacen_SelectedIndexChanged" Width="100%" RepeatDirection="Horizontal">
                        </asp:RadioButtonList>
                        <asp:Label ID="lblidAlmOrigen" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>

                        <tr>
                            <td class="auto-style1013">
                                <asp:Label ID="lblFinal" runat="server" Text="Alm. Destino:"></asp:Label>
                            </td>
                            <td class="auto-style24" colspan="4">
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [almacen] WHERE ([estado] = @estado) ">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="estado" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="lbldescripFinal" runat="server"></asp:Label>
                                <asp:RadioButtonList ID="rbAlmacenFinal" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="descripcion" DataValueField="idalmacen" OnSelectedIndexChanged="rbAlmacenFinal_SelectedIndexChanged" RepeatDirection="Horizontal" Visible="False" Width="100%">
                                </asp:RadioButtonList>
                                <asp:Label ID="lblidAlmFinal" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style41">&nbsp;Razón Social:</td>
                    <td colspan="2" class="auto-style24">
                        <asp:TextBox ID="txtSearch" runat="server" Height="30px" Width="200px" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/buscarr.png" Width="30px" OnClick="ImageButton2_Click" Height="30px" ImageAlign="AbsMiddle" ToolTip="Consultar cliente" />
                    </td>
                    <td class="auto-style1021">Transporte:</td>
                    <td class="auto-style1016">
                        <asp:TextBox ID="txttransporte" runat="server" Width="100%" placeholder="N° Placa" Height="30px" MaxLength="12"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36" colspan="3">
                        <asp:Label ID="lblruc" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="lblcliente" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style1021">Conductor:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="txtconductor" runat="server" Width="100%" placeholder="N° Documento" Height="30px" MaxLength="12"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36" colspan="5">
                        <asp:Panel ID="pEstadoDetalleCliente" runat="server">
                            <table cellspacing="1" class="auto-style1010">
                                <tr>
                                    <td class="auto-style61">Estado Cliente</td>
                                    <td class="auto-style60">:</td>
                                    <td>
                                        <asp:Label ID="lblEstado" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblDescripEstado" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style61">Condicion Crédito</td>
                                    <td class="auto-style60">:</td>
                                    <td>
                                        <asp:Label ID="lblmontoJefatura" runat="server"></asp:Label>
                                        &nbsp;<asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                        &nbsp;<asp:Label ID="lblcondicion" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style61">Observación</td>
                                    <td class="auto-style60">:</td>
                                    <td>
                                        <asp:Label ID="lblobservacion" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">P.Partida:</td>
                    <td class="auto-style8" colspan="4">
                        <asp:TextBox ID="txtpuntopartida" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">P.Llegada:</td>
                    <td class="auto-style8" colspan="4">
                        <asp:TextBox ID="txtpuntoLlegada" runat="server" Height="30px" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="2">&nbsp;</td>
                    <td class="auto-style1022">&nbsp;</td>
                    <td class="auto-style1023">&nbsp;</td>
                    <td class="auto-style1016">
                        <asp:HiddenField ID="hfCustomerId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="2"><strong>Detalle de pedidos ingresados:</strong></td>
                    <td class="auto-style1022">&nbsp;</td>
                    <td class="auto-style1023">
                        <asp:Label ID="lblcodigoped" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblIdAlmacenDetalle" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style1016">
                        <asp:Label ID="lblidproducto" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblExistenciaProducto" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Producto:<br /> </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtSearchProducto" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        <br />
                        <span class="auto-style15">producto - presentación</span></td>
                    <td class="auto-style1022">
                        <span class="auto-style15">
                        <br />
                        :</span></td>
                    <td class="auto-style1023">
                        <asp:TextBox ID="txtcantidad" runat="server" Height="30px" type="number" Width="80px"></asp:TextBox>
                        <br />
                        <span class="auto-style15">Cantidad</span></td>
                    <td class="auto-style1016">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="AGREGAR" Height="40px" Width="100%" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="4">
                        <asp:GridView ID="gvDetalleGuia" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDDETALLE,idguia,CODPRO" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvDetalleGuia_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                <ControlStyle Height="20px" Width="20px" />
                                <HeaderStyle Width="20px" />
                                </asp:CommandField>
                                <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                <asp:BoundField DataField="CODPRO" HeaderText="COD.PRO" SortExpression="CODPRO">
                                <HeaderStyle Width="60px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="WhiteSmoke" />
                            <SelectedRowStyle Font-Bold="False" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_ListarProductos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidguiarem" Name="idguia" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style1016">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar Nueva Guia" Width="300px" Height="50px" />
                    </td>
                    <td class="auto-style45" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>


                </td>
                <td valign=top>EXISTENCIA ALMACEN:<asp:Label ID="lblamacenExistencia" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblAlmacenG2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblopG2" runat="server" Text="1" Visible="False"></asp:Label>
                    <br />
                    <div class="table-responsive">
                        <asp:GridView ID="gvConsultaAlmacen" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table table-condensed  table-hover table-sm thead-light" DataKeyNames="idDetalleAlmacen,ALMACEN,idProducto,PRODUCTO,STOCK" DataSourceID="SqlDataSourceGRUPO2" OnSelectedIndexChanged="gvConsultaAlmacen_SelectedIndexChanged" PageSize="27" style="font-size: x-small" Width="300px" BorderStyle="None" GridLines="Horizontal">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:CommandField>
                                <asp:TemplateField HeaderText="COD" ShowHeader="False" Visible="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("idProducto") %>'></asp:LinkButton>
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
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style1024">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

            
            <asp:Label ID="lblmensaje10" runat="server"></asp:Label>
            <asp:Label ID="lblmensaje1" runat="server" style="color: #990000; font-size: x-small"></asp:Label>
            <br />
        </fieldset></asp:Panel>
     <asp:Panel ID="Panel2" runat="server" class="grupo__descripcion">
         <fieldset>
      
      
             Detalle guia remisión:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia,idcliente,ESTADO" DataSourceID="SqlDataSource2" Width="100%" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: xx-small" OnRowCommand="GridView1_RowCommand" GridLines="Horizontal" PageSize="20">
                 <Columns>
                     <asp:ButtonField CommandName="print" HeaderText="PRINT" ShowHeader="True" Text="print" ButtonType="Image" ImageUrl="~/images/buscarr.png" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                     <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                     <asp:BoundField DataField="GUIAREM" HeaderText="GUIA REM." SortExpression="GUIAREM" ReadOnly="True" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MTRASLADO" HeaderText="MOTIVO" SortExpression="MTRASLADO" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                     <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" />
                     <asp:BoundField DataField="TRANSPORTE" HeaderText="TRANSPORTE" SortExpression="TRANSPORTE" />
                     <asp:BoundField DataField="CONDUCTOR" HeaderText="CONDUCTOR" SortExpression="CONDUCTOR" />
                     <asp:BoundField DataField="PLLEGADA" HeaderText="P. LLEGADA" SortExpression="PLLEGADA" />
                     <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                     <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                     <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="21px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#666666" ForeColor="White" />
                 <RowStyle BackColor="WhiteSmoke" />
                 <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_listarRegistros" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblidGrupoEmpresa" Name="GRUPO"  Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <asp:Panel ID="PDETguia" runat="server">
                 <table class="auto-style1012">
                     <tr>
                         <td>Detalle&nbsp;&nbsp;<asp:Label ID="lblguiadet" runat="server"></asp:Label>
                         </td>
                         <td style="text-align: right">
                             <asp:Button ID="btanularGuia" runat="server" ForeColor="#990000" Text="ANULAR GUIA" Width="200px" OnClick="btanularGuia_Click" OnClientClick="confirm('ANULAR GUIA, favor de confirmar nuevamente?');" />
                         </td>
                     </tr>
                 </table>
                 <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia,CODPRODUCTO" DataSourceID="SqlDataSource6" GridLines="Horizontal" style="font-size: x-small" Width="700px" Visible="False">
                     <Columns>
                         <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                         <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                         <asp:BoundField DataField="CODPRODUCTO" HeaderText="COD" SortExpression="CODPRODUCTO" />
                         <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                         <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                         <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                     </Columns>
                     <HeaderStyle BackColor="#666666" ForeColor="White" />
                     <RowStyle BackColor="WhiteSmoke" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_detalle" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="GridView1" Name="IDGUIA" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </asp:Panel>
             &nbsp;</fieldset>
     </asp:Panel>
    <br />
    <br />
    </asp:Content>
