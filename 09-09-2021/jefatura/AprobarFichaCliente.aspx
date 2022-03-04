<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AprobarFichaCliente.aspx.cs" Inherits="biotech.jefatura.AprobarFichaCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="icon" type="image/png" href="http://www.biotechcorp.com.pe/webapp/logoicono.png" />
     <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />

    <meta http-equiv="refresh" content="20"/>

    <style type="text/css">


       
        .auto-style1 {
           background: linear-gradient(white, #EFEFEF); /* Standard syntax */
             width: 100%;
        }
       
        .auto-style114 {
            width: 58px;
            height: 58px;
        }





        .auto-style115 {
            font-size: small;
            color: #808080;
        }





        .auto-style116 {
           
            height: 58px;
        }





        .auto-style117 {
            color: #990000;
        }
        .auto-style118 {
            color: #006600;
        }
        .auto-style119 {
            font-size: x-small;
            color: #990000;
        }





        .auto-style120 {
            height: 58px;
            width: 700px;
        }





    </style>

    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearchProducto]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/jefatura/AprobarFichaCliente.aspx/GetCustomers") %>',
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
                     $("[id$=hfCustomerProducto]").val(i.item.val);
                 },
                 minLength: 1
             });
         });
</script>

     <script type="text/javascript">
         $(function () {
             $("[id$=txtSearchProducto20]").autocomplete({
                 source: function (request, response) {
                     $.ajax({
                         url: '<%=ResolveUrl("~/jefatura/AprobarFichaCliente.aspx/GetCustomers20") %>',
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
                    $("[id$=hfCustomerProducto20]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>




</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style114">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logoicono.png" Width="64px" Height="54px" />
                </td>
                <td style="text-align: center" class="auto-style120">
                    <h2 style="text-align: left">&nbsp;APROB. CLIENTES</h2>
                </td>
                <td style="text-align: right" class="auto-style116">
                    <asp:LinkButton ID="LBPedidos" runat="server" OnClick="LBPedidos_Click" style="color: #006600">PEDIDOS</asp:LinkButton>
&nbsp;&nbsp;|&nbsp;
                    <asp:LinkButton ID="LBventas" runat="server" OnClick="LBventas_Click" style="color: #006600">VENTAS</asp:LinkButton>
&nbsp;|
                    <asp:LinkButton ID="lbClientes" runat="server" style="color: #006600" OnClick="lbClientes_Click">CLIENTES</asp:LinkButton>
&nbsp;|
                    <asp:LinkButton ID="lbGastos" runat="server" style="color: #006600" OnClick="lbGastos_Click">RD. GASTOS</asp:LinkButton>
&nbsp;|&nbsp;
                    <asp:LinkButton ID="lbPrincipal" runat="server" style="color: #006600" OnClick="lbPrincipal_Click">PRINCIPAL</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageAlign="Middle" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton3_Click" />
            <asp:Button ID="Button5" runat="server" ForeColor="#990000" Height="40px" OnClick="Button5_Click" Text="CLIENTES OBSERVADOS" Width="300px" />
            <asp:Button ID="Button2" runat="server" Text="FILTROS CREDITOS Y COBRANZAS" Height="40px" OnClick="Button2_Click" Width="300px" ForeColor="#006600" />
            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="CLIENTES APROBADOS" Width="300px" />
        </asp:Panel>
        <br />
        <asp:Panel ID="pObservados" runat="server">
            <h2><span class="auto-style117">CLIENTES OBSERVADOS</span></h2>
            <asp:TextBox ID="txtSearchProducto30" runat="server" placeholder="Cliente" Width="400px"></asp:TextBox>
            <asp:ImageButton ID="iboBSERVADOS" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/buscarr.png" OnClick="ibcreditoscobranzas_Click" Width="30px" />
            <asp:Button ID="btTodosObservados" runat="server" OnClick="btTodosObservados_Click" Text="VER TODOS" />
            <asp:Label ID="lblidcliente30" runat="server"></asp:Label>
            <asp:Label ID="lblop30" runat="server" Text="10" Visible="False"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="idRuc" DataSourceID="SqlDataSourceOBS" OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" style="font-size: small" Width="100%">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="25px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idRuc" HeaderText="RUC" ReadOnly="True" SortExpression="idRuc">
                    <HeaderStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                    <asp:BoundField DataField="ASESORC" HeaderText="ASESORC" SortExpression="ASESORC" />
                    <asp:BoundField DataField="OBS_ASESOR" HeaderText="OBS_ASESOR" SortExpression="OBS_ASESOR" Visible="False" />
                    <asp:BoundField DataField="OBS_CREDITOS" HeaderText="OBS_CREDITOS" SortExpression="OBS_CREDITOS" />
                    <asp:BoundField DataField="ESTCREDITO" HeaderText="ESTCREDITO" SortExpression="ESTCREDITO" Visible="False" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceOBS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_CreditoObservados" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidcliente30" Name="cliente" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblop30" Name="op" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <span class="auto-style119">* </span>
            <asp:Label ID="lblitem1" runat="server" CssClass="auto-style119"></asp:Label>
            <span class="auto-style119">&nbsp;registros.</span></asp:Panel>
        <asp:Panel ID="PanelCREDITOS" runat="server">
            <h2 class="auto-style118">CLIENTES FILTRADOS POR CREDITOS Y COBRANZAS </h2>
            <p>
                <asp:TextBox ID="txtSearchProducto" placeholder="Cliente" runat="server" Width="400px"></asp:TextBox>
                <asp:ImageButton ID="ibcreditoscobranzas" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/buscarr.png" Width="30px" OnClick="ibcreditoscobranzas_Click" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VER TODOS" />
                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                <asp:HiddenField ID="hfCustomerProducto" runat="server" />
            </p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idRuc" DataSourceID="SqlDataSource1" style="font-size: x-small" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="25px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idRuc" HeaderText="RUC" ReadOnly="True" SortExpression="idRuc" >
                    <HeaderStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                    <asp:BoundField DataField="ASESORC" HeaderText="ASESORC" SortExpression="ASESORC" />
                    <asp:BoundField DataField="OBS_ASESOR" HeaderText="OBS_ASESOR" SortExpression="OBS_ASESOR" Visible="False" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:BoundField DataField="OBS_CREDITOS" HeaderText="OBS_CREDITOS" SortExpression="OBS_CREDITOS" />
                    <asp:BoundField DataField="ESTCREDITO" HeaderText="ESTCREDITO" SortExpression="ESTCREDITO" Visible="False" />
                </Columns>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#E8E8E8" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_CreditoFaltaGerencia" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label3" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <span class="auto-style119">* </span>
            <asp:Label ID="lblitem2" runat="server" CssClass="auto-style119"></asp:Label>
            <span class="auto-style119">&nbsp;registros.</span></asp:Panel>
        <asp:Panel ID="PanelGERENCIA" runat="server">
            <h2>CLIENTES APROBADOS CREDITOS Y COBRANZAS / GERENCIA</h2>
            <p>
                <asp:TextBox ID="txtSearchProducto20" runat="server" placeholder="Cliente" Width="400px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/buscarr.png" Width="30px" OnClick="ImageButton2_Click" />
                <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="VER TODOS" />
                &nbsp;
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:HiddenField ID="hfCustomerProducto20" runat="server" />
            </p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idRuc" DataSourceID="SqlDataSource2" style="font-size: x-small" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDataBound="GridView2_RowDataBound" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="25px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idRuc" HeaderText="RUC" ReadOnly="True" SortExpression="idRuc" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="ASESORC" HeaderText="ASESOR C." SortExpression="ASESORC" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OBS_ASESOR" HeaderText="OBS_ASESOR" SortExpression="OBS_ASESOR" Visible="False" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:BoundField DataField="OBS_CREDITOS" HeaderText="OBS_CREDITOS" SortExpression="OBS_CREDITOS" Visible="False" />
                    <asp:BoundField DataField="ESTCREDITO" HeaderText="ESTCREDITO" SortExpression="ESTCREDITO" Visible="False" />
                    <asp:BoundField DataField="MONTO" DataFormatString="{0:0,0.00}" HeaderText="MONTO" ReadOnly="True" SortExpression="MONTO">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                    <asp:BoundField DataField="CONDICIONPAGO" HeaderText="CONDICIONPAGO" SortExpression="CONDICIONPAGO" ReadOnly="True" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="GERENCIA">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="25px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTCREDITO" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="CREDITOS">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="25px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_CreditoGerencia" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label4" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <span class="auto-style119">* </span>
            <asp:Label ID="lblitem3" runat="server" CssClass="auto-style119"></asp:Label>
            <span class="auto-style119">&nbsp;registros.</span></asp:Panel>
        <br />
        <div class="auto-style115">
            ESTADO: 0 = por aprobar , 2= por completar datos, 55 = observados, 1 = aprobados. </div>
        <br />
    
    </div>
    </form>
</body>
</html>
