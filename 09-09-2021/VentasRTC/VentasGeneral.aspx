<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="VentasGeneral.aspx.cs" Inherits="biotech.VentasRTC.VentasGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }


    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    RESUMEN VENTAS 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ol class="breadcrumb">
        <asp:LinkButton ID="lbPrincipal" runat="server" OnClick="lbPrincipal_Click">Principal (Zonal) </asp:LinkButton>
        <asp:LinkButton ID="lbPresupuesto" runat="server" OnClick="lbPresupuesto_Click">/  Presupuestal</asp:LinkButton>
        <asp:LinkButton ID="lbVentPersonales" runat="server" OnClick="lbVentPersonales_Click">/  Independiente</asp:LinkButton>
        
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
</ol>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <span class="title_section_offer">RESUMEN VENTAS REALIZADAS</span><asp:Label ID="lblIdVendedor" runat="server" Visible="False"></asp:Label>
&nbsp;<div class="title_section_offer_fake"></div>

    
        
        <div class="row table-responsive" >
            VENTAS REALIZADAS (DOLARES)<asp:GridView ID="gvVentasRealizadasDolares" runat="server" AutoGenerateColumns="False" DataKeyNames="anio" DataSourceID="SqlDataSourceventasDolares" Width="100%" OnSelectedIndexChanged="gvVentasRealizadasDolares_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" >
                <HeaderStyle Width="55px" />
                </asp:CommandField>
                <asp:BoundField DataField="anio" HeaderText="AÑO" ReadOnly="True" SortExpression="anio" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Ene" HeaderText="Ene" ReadOnly="True" SortExpression="Ene" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Feb" HeaderText="Feb" ReadOnly="True" SortExpression="Feb" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Mar" HeaderText="Mar" ReadOnly="True" SortExpression="Mar" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Abr" HeaderText="Abr" ReadOnly="True" SortExpression="Abr" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="May" HeaderText="May" ReadOnly="True" SortExpression="May" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Jun" HeaderText="Jun" ReadOnly="True" SortExpression="Jun" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Jul" HeaderText="Jul" ReadOnly="True" SortExpression="Jul" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Ago" HeaderText="Ago" ReadOnly="True" SortExpression="Ago" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Sep" HeaderText="Sep" ReadOnly="True" SortExpression="Sep" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Oct" HeaderText="Oct" ReadOnly="True" SortExpression="Oct" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Nov" HeaderText="Nov" ReadOnly="True" SortExpression="Nov" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Dic" HeaderText="Dic" ReadOnly="True" SortExpression="Dic" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                No hay registros en dolares...
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceventasDolares" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ResumenVentasPersonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="op" Type="Int32" />
                <asp:Parameter DefaultValue="D" Name="moneda" Type="String" />
                <asp:ControlParameter ControlID="lblIdVendedor" DefaultValue="" Name="idvendedor" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
        <div class="row table-responsive" >
        <asp:GridView ID="gvVentasRealizadassoles" runat="server" AutoGenerateColumns="False" DataKeyNames="anio" DataSourceID="SqlDataSourceVENTASsoles" Width="100%" OnSelectedIndexChanged="gvVentasRealizadassoles_SelectedIndexChanged" Visible="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="anio" HeaderText="anio" ReadOnly="True" SortExpression="anio" />
                <asp:BoundField DataField="Ene" HeaderText="Ene" ReadOnly="True" SortExpression="Ene" />
                <asp:BoundField DataField="Feb" HeaderText="Feb" ReadOnly="True" SortExpression="Feb" />
                <asp:BoundField DataField="Mar" HeaderText="Mar" ReadOnly="True" SortExpression="Mar" />
                <asp:BoundField DataField="Abr" HeaderText="Abr" ReadOnly="True" SortExpression="Abr" />
                <asp:BoundField DataField="May" HeaderText="May" ReadOnly="True" SortExpression="May" />
                <asp:BoundField DataField="Jun" HeaderText="Jun" ReadOnly="True" SortExpression="Jun" />
                <asp:BoundField DataField="Jul" HeaderText="Jul" ReadOnly="True" SortExpression="Jul" />
                <asp:BoundField DataField="Ago" HeaderText="Ago" ReadOnly="True" SortExpression="Ago" />
                <asp:BoundField DataField="Sep" HeaderText="Sep" ReadOnly="True" SortExpression="Sep" />
                <asp:BoundField DataField="Oct" HeaderText="Oct" ReadOnly="True" SortExpression="Oct" />
                <asp:BoundField DataField="Nov" HeaderText="Nov" ReadOnly="True" SortExpression="Nov" />
                <asp:BoundField DataField="Dic" HeaderText="Dic" ReadOnly="True" SortExpression="Dic" />
            </Columns>
            <EmptyDataTemplate>
                No hay registros en soles...
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceVENTASsoles" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ResumenVentasPersonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="op" Type="Int32" />
                <asp:Parameter DefaultValue="S" Name="moneda" Type="String" />
                <asp:ControlParameter ControlID="lblIdVendedor" DefaultValue="" Name="idvendedor" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</div>


        <br />
    <asp:Panel ID="Panel1" runat="server" class="form-horizontal">
<div class="form-group row">
    



        
            <asp:Panel ID="PanelTitulomes" runat="server">
                <strong>DETALLE DE VENTAS:<asp:Label ID="lblano" runat="server"></asp:Label>
                </strong>
                <asp:SqlDataSource ID="SqlDataSourcemeses" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_mesesAno" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" class="form-check-label" DataSourceID="SqlDataSourcemeses" DataTextField="MES" DataValueField="idmes" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                </asp:RadioButtonList>
            </asp:Panel>
            <br />
    


            <asp:Panel ID="pGrupo" runat="server" style="text-align: left">
                <asp:Button ID="Button1" runat="server" Text="SEGUN FACTURAS"   Height="30px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="AGRUPADO POR CLIENTES" Height="30px"  OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="COMPARATIVO" Height="30px" OnClick="Button3_Click" />
                
            </asp:Panel>
            <asp:Panel ID="Panelfacturas" runat="server">
                <h4>Facturas registradas:
                    <asp:Label ID="lblmesdefacturas" runat="server"></asp:Label>
                </h4>
                <table align="right" class="auto-style1">
                    <tr>
                        <td>VENTAS REALIZADAS</td>
                        <td style="text-align: right">POR PRODUCTOS</td>
                    </tr>
                    <tr>
                        <td VALIGN="TOP">
                            <asp:GridView ID="gvVentasPeriodo" runat="server" AutoGenerateColumns="False" DataKeyNames="CODFACT,FACTURA" DataSourceID="SqlDataSourcePerido" OnRowDataBound="gvVentasPeriodo_RowDataBound" OnSelectedIndexChanged="gvVentasPeriodo_SelectedIndexChanged" ShowFooter="True" Width="100%">
                                <Columns>
                                    <asp:TemplateField HeaderText="FACTURA" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("FACTURA") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="CODFACT" HeaderText="CODFACT" ReadOnly="True" SortExpression="CODFACT" Visible="False" />
                                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" Visible="False" />
                                    <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMPBRUTO" SortExpression="IMPBRUTO">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NPEDIDOS" HeaderText="NPEDIDOS" ReadOnly="True" SortExpression="NPEDIDOS">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                                <RowStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                        </td>
                        <td VALIGN="TOP">
                            <div align="right" > <asp:GridView ID="gvlitros" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcelITROS" OnRowDataBound="gvlitros_RowDataBound" ShowFooter="True">
                                <Columns>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SUBTOTAL" HeaderText="SUB.TOTAL" ReadOnly="True" SortExpression="SUBTOTAL" DataFormatString="{0:0,0.00}">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourcelITROS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="RadioButtonList1" Name="idperidodo" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblidclienteRUC" Name="idClienteRuc" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </div>
                            <br />
                           
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSourcePerido" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="RadioButtonList1" Name="idperidodo" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div>
                    Detalle de pedidos factura:
                    <asp:Label ID="lblidfactura" runat="server"></asp:Label>
                    <asp:Label ID="lblfactura" runat="server"></asp:Label>
                </div>
                <asp:GridView ID="GridViewFacturasDetalle" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnRowDataBound="GridViewFacturasDetalle_RowDataBound" ShowFooter="True" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto">
                        <HeaderStyle Width="70px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PRODUCTO" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="PRODUCTO" />
                        <asp:BoundField DataField="CANT" HeaderText="CANT." SortExpression="CANT">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA" SortExpression="PV">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB.TOTAL" SortExpression="SUBTOTAL">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCTO" DataFormatString="{0:0,0.00}" HeaderText="DSCTO" ReadOnly="True" SortExpression="DESCTO">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PL" DataFormatString="{0:0,0.00}" HeaderText="PL" SortExpression="PL">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_VentasFacturasDetalladas" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvVentasPeriodo" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
    </div>

            <asp:Panel ID="PanelClientesproductos" runat="server">
                <div class="form-group row">
                
                <h4>AGRUPADO POR CLIENTES:
                    <asp:Label ID="lblclientesmes" runat="server"></asp:Label>
                    &nbsp;DOLARES</h4>
                <table class="auto-style1">
                    <tr>
                        <td style="text-align: left">AGRUPADO POR CLIENTES</td>
                        <td style="text-align: right">POR PRODUCTOS:
                            <asp:Label ID="lblCliente30" runat="server"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td VALIGN="TOP">
                            <asp:GridView ID="gvgrupClientes" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVentasSegPeriodoGrupCliente" GridLines="Horizontal" OnRowDataBound="gvgrupClientes_RowDataBound" OnSelectedIndexChanged="gvgrupClientes_SelectedIndexChanged" ShowFooter="True" Width="100%">
                                <Columns>
                                    <asp:CommandField SelectText="Ver productos" ShowSelectButton="True" />
                                    <asp:BoundField DataField="IDCLIENTE" HeaderText="CODIGO" SortExpression="IDCLIENTE" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMP. BRUTO" ReadOnly="True" SortExpression="IMPBRUTO">
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                                <RowStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceVentasSegPeriodoGrupCliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodoAgrupadoCliente" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="RadioButtonList1" Name="idperidodo" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:Parameter DefaultValue="D" Name="tpmoneda" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td VALIGN="TOP">
                            <div align="right" >
                                <asp:GridView ID="gvlitros2" runat="server" DataSourceID="SqlDataSourcelITROS" AutoGenerateColumns="False" OnRowDataBound="gvlitros2_RowDataBound" ShowFooter="True">
                                    <Columns>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" >
                                        <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL" DataFormatString="{0:0,0.00}">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:GridView>
                            </div>


                        </td>
                    </tr>
                </table></div>
               
               
                <div class="form-group row"><strong>Detalle pedidos cliente:
                    <asp:Label ID="lblidclienteRUC" runat="server"></asp:Label>
                    </strong>&nbsp;<strong><asp:Label ID="lblcliente20" runat="server"></asp:Label>
                    </strong>
                    <asp:Label ID="lblop10" runat="server" Text="10" Visible="False"></asp:Label>
                    <div class="table-responsive">
                <asp:GridView ID="gvgrupoProducto" Class="table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,idfactura" DataSourceID="SqlDataSourceVentasSerProducto" OnRowDataBound="gvgrupoProducto_RowDataBound" ShowFooter="True" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                        <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                        <asp:BoundField DataField="FREGISTRO" HeaderText="F.REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" >
                        </asp:BoundField>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True">
                        </asp:BoundField>
                        <asp:BoundField DataField="PVENTA" HeaderText="P.VENTA" SortExpression="PVENTA" DataFormatString="{0:0,0.00}">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" SortExpression="SUBTOTAL" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="dsto" HeaderText="DSCTO " SortExpression="dsto">
                        </asp:BoundField>
                        <asp:BoundField DataField="pl" HeaderText="P.LISTA" SortExpression="pl" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceVentasSerProducto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductos" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblop10" Name="op" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="RadioButtonList1" Name="idperidodo" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblidclienteRUC" Name="idClienteRuc" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        </div>
                    </div>
            </asp:Panel>
            <asp:Panel ID="Pcompativo" runat="server">



                <table class="nav-justified">
                    <tr>
                        <td>
                            <h4>CUADRO COMPARATIVO</h4>
                        </td>
                        <td>
                            <asp:Label ID="lbldesde" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblhasta" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="nav-justified">
                    
                    <tr>
                        <td><asp:DropDownList ID="ddlano1" runat="server" Visible="False">
                            <asp:ListItem Selected="True">2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lblano1" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td><asp:DropDownList ID="ddlano2" runat="server" Visible="False">
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem Selected="True">2018</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lblano2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">INDICAR PERIDODO:
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcemes" DataTextField="mes" DataValueField="idmes" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcemes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
                            &nbsp;HASTA
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourcemes" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:Button ID="btgenerarcomparativo" runat="server" Height="30px" OnClick="btgenerarcomparativo_Click" Text="GENERAR" />
                        </td>
                    </tr>
                    <tr>
                        <td width="50%" VALIGN="TOP">
                            VENTA 2017<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecomparativo1" Width="100%" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" DataKeyNames="IDCLIENTE,CLIENTE" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="CODIGO" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDCLIENTE") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="IMPBRUTO" HeaderText="IMP.BRUTO" ReadOnly="True" SortExpression="IMPBRUTO" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                                <RowStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourcecomparativo1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodoAgrupadoClienteCOMPARATIVO" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlano1" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td VALIGN="TOP">
                            VENTA 2018<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecomparativo2" Width="100%" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True" DataKeyNames="IDCLIENTE,CLIENTE" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="CODIGO" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDCLIENTE") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="IMPBRUTO" HeaderText="IMP.BRUTO" ReadOnly="True" SortExpression="IMPBRUTO" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                                <RowStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourcecomparativo2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodoAgrupadoClienteCOMPARATIVO" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlano2" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td valign="TOP">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td valign="TOP">&nbsp;</td>
                    </tr>
                    <tr>
                        <td VALIGN="TOP">
                            <strong>PRODUCTOS:</strong>
                            <asp:Label ID="lblidclienteG1" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblclienteg1" runat="server"></asp:Label>
                            &nbsp;<asp:GridView ID="gvLitrosG1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG1" OnRowDataBound="gvLitrosG1_RowDataBound" ShowFooter="True" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceLITROSG1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_GRUPO" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="periodo1" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="periodo2" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlano1" Name="ano" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblidclienteG1" Name="idClienteRuc" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="auto-style2"></td>
                        <td VALIGN="TOP">
                            <strong>PRODUCTOS:</strong>
                            <asp:Label ID="lblidclienteG2" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblclienteG2" runat="server"></asp:Label>
                            <asp:GridView ID="gvLitrosG2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG2" OnRowDataBound="gvLitrosG2_RowDataBound" ShowFooter="True" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceLITROSG2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_GRUPO" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="periodo1" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="periodo2" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlano2" Name="ano" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="lblIdVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblidclienteG2" Name="idClienteRuc" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>



        </asp:Panel>
    </asp:Panel>


</asp:Content>
