<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="GuiaRem_Facturar.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.GuiaRem_Facturar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            height: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <table class="nav-justified">
            <tr>
                <td> <h2>ANEXAR GUIAS DE REMISIÓN: </h2></td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="600px">
                        <asp:ListItem Selected="True" Value="0">POR ANEXAR</asp:ListItem>
                        <asp:ListItem Value="1">ANEXADOS</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
   
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        FECHA GUIAREM:
        <asp:Label ID="lblFechaEmiteGuia" runat="server"></asp:Label>
        &nbsp; idguiarem:
        <asp:Label ID="lblIdGuiarem" runat="server"></asp:Label>
        &nbsp;&nbsp; numero guia:
        <asp:Label ID="lbl1Numguialecc" runat="server"></asp:Label>
        &nbsp;idcliente:&nbsp;&nbsp;&nbsp; IDGRUPO:<asp:Label ID="lblIdGrupo" runat="server">10</asp:Label>
        &nbsp; IDFACTURA:
        <asp:Label ID="lblIdFactura" runat="server" Text="0"></asp:Label>
        </asp:Panel>
    <asp:Panel ID="PanelFact" runat="server">
        <strong>GUIA DE REMISIÓN:</strong>
        <asp:Label ID="lblGuiaRem" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;/&nbsp;
        <asp:Label ID="lblIdcliente" runat="server"></asp:Label>
        -<asp:Label ID="lblCliente" runat="server"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceProductosguia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_detalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblIdGuiarem" Name="idguia" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <strong>DATOS DEL(LOS) BIEN(ES) A TRANSPORTAR: </strong>
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridViewGuiaProductos" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSourceProductosguia" OnSelectedIndexChanged="GridViewGuiaProductos_SelectedIndexChanged" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                            <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                            <asp:BoundField DataField="CODPRODUCTO" HeaderText="CODPRODUCTO" SortExpression="CODPRODUCTO" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANT" SortExpression="CANTIDAD">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="UNDMED" HeaderText="UNDMED" SortExpression="UNDMED" Visible="False" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>FACTURA</td>
                <td>PRODUCTOS FACTURADOS
                    <asp:Label ID="lblidFactSeleccionada" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td valign=top>
                    <asp:ListBox ID="lbFacturas" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="FACTURA" DataValueField="idfacturacion" Width="200px"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="GuiasRemision_FactAprox" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbl1Numguialecc" Name="idGuia" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td valign=top>
                    <asp:GridView ID="GridViewProductosFact" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDETALLE,CODPRO" DataSourceID="SqlDataSource3pRUDCTOS" Width="300px">
                        <Columns>
                            <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                            <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" ReadOnly="True" SortExpression="CODPRO" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="cantidad" HeaderText="CANT." SortExpression="cantidad">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUBTT" SortExpression="SUBTT" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IDPEDIDO" HeaderText="IDPEDIDO" SortExpression="IDPEDIDO" Visible="False" />
                            <asp:BoundField DataField="DESCUENTO" HeaderText="DESCUENTO" SortExpression="DESCUENTO" Visible="False" />
                            <asp:BoundField DataField="PL" HeaderText="PL" SortExpression="PL" Visible="False" />
                            <asp:BoundField DataField="ESTADODESCTO" HeaderText="ESTADODESCTO" SortExpression="ESTADODESCTO" Visible="False" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3pRUDCTOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_FacturaDetallePEdido" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbFacturas" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2" valign="top">
                    <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Button ID="Button1" runat="server" Text="POR FACTURAR" Width="100%" OnClick="Button1_Click" />
                </td>
                <td valign="top">
                    <asp:Button ID="btnFacturar" runat="server" Text="ANEXAR FACTURA" Width="100%" OnClick="btnFacturar_Click" />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <asp:GridView ID="gvGuiasRem" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia,RUC,FEMISION,CLIENTE,SERIE,NUMERO,idfactura" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvGuiasRem_SelectedIndexChanged" Font-Size="X-Small">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
            <asp:BoundField DataField="SERIE" HeaderText="SERIE" SortExpression="SERIE" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" ReadOnly="True" SortExpression="NUMERO" />
            <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
            <asp:BoundField DataField="TRANSPORTE" HeaderText="TRANSPORTE" SortExpression="TRANSPORTE" />
            <asp:BoundField DataField="CONDUCTOR" HeaderText="CONDUCTOR" SortExpression="CONDUCTOR" />
            <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
            
            <asp:BoundField DataField="IdordenVenta" HeaderText="IdordenVenta" SortExpression="IdordenVenta" Visible="False" />
             <asp:BoundField DataField="PEDIDO" HeaderText="PEDIDO" SortExpression="PEDIDO" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
             <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="21px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
              <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" SortExpression="FACTURA" >
            
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            
             <asp:ImageField DataImageUrlField="estadofactura" DataImageUrlFormatString="~/images/FACT{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="21px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>

            <asp:BoundField DataField="CODASESOR" HeaderText="CODASESOR" SortExpression="CODASESOR" />
            <asp:BoundField DataField="grupoingreso" HeaderText="grupoingreso" SortExpression="grupoingreso" Visible="False" />
        </Columns>
        <EmptyDataTemplate>
            No registrar guias...
        </EmptyDataTemplate>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#D1EBBA" Font-Bold="True" ForeColor="Black" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="GuiasRemision_Facturadas" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblIdFactura" Name="EstadoFacturas" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="lblIdGrupo" Name="grupo" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
