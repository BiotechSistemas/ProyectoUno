<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/A_contabilidad/contabilidad.Master" AutoEventWireup="true" CodeBehind="ComprasFact.aspx.cs" Inherits="biotech.bio.ventas.A_contabilidad.ComprasFact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width:1000px;
        }
        .auto-style2 {
            width: 128px;
        }
         .auto-style3 {
             font-size: large;
         }
    </style>

     <%-- <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />--%>
    <link href="../../css/sweetalert.css" rel="stylesheet" />
    <script src="../../js/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>RENDICIÓN DE GASTOS - FACTURACIONES</h2>
    <asp:Panel ID="Panelprincipal" runat="server">
         <table class="auto-style1">
        <tr>
            <td>DESDE:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtf1" placeholder ="dd-mm-yyyy" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>-</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtf2" placeholder ="dd-mm-yyy" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnGenerar" runat="server" OnClick="btnGenerar_Click" Text="GENERAR" />
            </td>
            <td>
                <asp:ImageButton ID="ibtnEportar" runat="server" Height="25px" ImageUrl="~/images/excel.png" OnClick="ibtnEportar_Click" Width="25px" />
            </td>
        </tr>
        </table>
         <asp:Panel ID="payuda" runat="server" Visible="False">
             idCentroDetalle
             <asp:Label ID="lblidCuentaGasto" runat="server"></asp:Label>
             &nbsp;&nbsp; idCosto:
             <asp:Label ID="lblidCentrocosto" runat="server"></asp:Label>
             &nbsp;tpdoc:
             <asp:Label ID="lblIdtpDocumento" runat="server"></asp:Label>
             &nbsp;idFacturaGasto:
             <asp:Label ID="lblIdFacturaGasto" runat="server"></asp:Label>
             &nbsp;<asp:Label ID="lbldoc" runat="server"></asp:Label>
             &nbsp; IDPAGO
             <asp:Label ID="lblidPago" runat="server"></asp:Label>
         </asp:Panel>
         <asp:Panel ID="pcuentasFacturas" runat="server">
             <strong>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="CONCAR_CTAGASTOSDESCRIPCION" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
             </strong>
             <asp:SqlDataSource ID="SqlDataSourceidcentocosto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idCentroCosto,Descripcion from gastos.CentroCosto

"></asp:SqlDataSource>
             <asp:Panel ID="PanelAdmin" runat="server">
                 <HR/>
                 <table class="auto-style1">
                     <tr>
                         <td colspan="6"><span class="auto-style3">Detalle Factura</span><strong><span class="auto-style3">: </span></strong>&nbsp;<asp:LinkButton ID="lbtnPago" runat="server" OnClick="lbtnPago_Click"></asp:LinkButton>
                             &nbsp;&nbsp;
                             <asp:Label ID="lblMensajeFact" runat="server" ForeColor="#CC0000"></asp:Label>
                             <br />
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>
                             <asp:ImageButton ID="ibtnAdjuntarFactura" runat="server" ImageUrl="~/images/BAJAR.png" OnClick="ibtnAdjuntarFactura_Click" ToolTip="Descargar factura" Width="40px" Height="40px" />
                         </td>
                         <td>
                             <asp:DropDownList ID="ddlCtaGasto" runat="server" DataSourceID="SqlDataSource2" DataTextField="CODGASTOSDESCRIPCION" DataValueField="idCentroDetalle" Height="28px">
                             </asp:DropDownList>
                             <br />
                             Cuenta gasto:</td>
                         <td>
                             <asp:DropDownList ID="ddlTpdocumento" runat="server" DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION" DataValueField="ID" Height="28px" Width="300px">
                             </asp:DropDownList>
                             <br />
                             Tipo de documento:</td>
                         <td>
                             <asp:TextBox ID="txtSeriedocumento" runat="server" Width="100px"></asp:TextBox>
                             <br />
                             Fact. serie:</td>
                         <td>
                             <asp:TextBox ID="txtnumdocumento" runat="server" Width="100px"></asp:TextBox>
                             <br />
                             Fact. número:</td>
                         <td>
                             <asp:TextBox ID="txtimportebase"  type="number" step="0.0001" runat="server"></asp:TextBox>
                             <br />
                             imp. base:</td>
                         <td>
                             <asp:TextBox ID="txtigv" runat="server"  type="number" step="0.0001" ForeColor="#CC0000" Width="80px"></asp:TextBox>
                             <br />
                             IGV:</td>
                         <td>
                             <asp:TextBox ID="txtffechaemision" runat="server"></asp:TextBox>
                             <br />
                             Fecha emisión:</td>
                         <td>
                             <asp:RadioButtonList ID="rbMoneda" runat="server" RepeatDirection="Horizontal" Width="200px">
                                 <asp:ListItem Value="S">SOLES</asp:ListItem>
                                 <asp:ListItem Value="D">DÓLARES</asp:ListItem>
                             </asp:RadioButtonList>
                             Moneda:</td>
                         <td>
                             <asp:Button ID="btnActualizar" runat="server" Height="50px" OnClick="btnActualizar_Click" Text="ACTUALIZAR" />
                         </td>
                         <td>
                             <asp:Button ID="btnretornar" runat="server" ForeColor="#990000" Height="50px" OnClick="btnretornar_Click" Text="RETORNAR" />
                         </td>
                     </tr>
                 </table>
                 <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000" style="font-size: small"></asp:Label>
                 <hr />
             </asp:Panel>
             Registro contable detallado: (Cuentas facturadas)<br />
             <asp:GridView ID="gvctafacturas" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"  Font-Size="X-Small"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="COD_CTAFACT" OnSelectedIndexChanged="gvctafacturas_SelectedIndexChanged">
                 <Columns>
                     <%--<asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" />
                     <asp:BoundField DataField="ASIENTO" HeaderText="ASIENTO" ReadOnly="True" SortExpression="ASIENTO" />
                     <asp:BoundField DataField="COMPROB" HeaderText="COMPROB" ReadOnly="True" SortExpression="COMPROB" />
                     <asp:BoundField DataField="FECHA_ASIENTO" HeaderText="FECHA_ASIENTO" ReadOnly="True" SortExpression="FECHA_ASIENTO" />
                     <asp:BoundField DataField="FECHA_DOC" HeaderText="FECHA_DOC" ReadOnly="True" SortExpression="FECHA_DOC" />
                     <asp:BoundField DataField="FECHA_VCTO" HeaderText="FECHA_VCTO" ReadOnly="True" SortExpression="FECHA_VCTO" />
                     <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                     <asp:BoundField DataField="RUC_DNI" HeaderText="RUC_DNI" SortExpression="RUC_DNI" />
                     <asp:BoundField DataField="CENTRO_COSTO" HeaderText="CENTRO_COSTO" ReadOnly="True" SortExpression="CENTRO_COSTO" />
                     <asp:BoundField DataField="TD" HeaderText="TD" SortExpression="TD" />
                     <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE" />
                     <asp:BoundField DataField="DOC" HeaderText="DOC" ReadOnly="True" SortExpression="DOC" />
                     <asp:BoundField DataField="BASE" HeaderText="BASE" SortExpression="BASE" />
                     <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" />
                     <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" />
                     <asp:BoundField DataField="CTA_GASTO" HeaderText="CTA_GASTO" ReadOnly="True" SortExpression="CTA_GASTO" />
                     <asp:BoundField DataField="MON" HeaderText="MON" ReadOnly="True" SortExpression="MON" />
                     <asp:BoundField DataField="NUMERO_DOC" HeaderText="NUMERO_DOC" ReadOnly="True" SortExpression="NUMERO_DOC" />
                     <asp:BoundField DataField="TIPO_CONVER" HeaderText="TIPO_CONVER" ReadOnly="True" SortExpression="TIPO_CONVER" />
                     <asp:BoundField DataField="FECHA_CONVER" HeaderText="FECHA_CONVER" ReadOnly="True" SortExpression="FECHA_CONVER" />--%>
                     <asp:CommandField ShowSelectButton="True" />
                     <asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" />
                     <asp:BoundField DataField="ASIENTO" HeaderText="ASIENTO" ReadOnly="True" SortExpression="ASIENTO" />
                     <asp:BoundField DataField="COMPROB" HeaderText="COMPROB" ReadOnly="True" SortExpression="COMPROB" />
                     <asp:BoundField DataField="FECHA_ASIENTO" HeaderText="FECHA ASIENTO" ReadOnly="True" SortExpression="FECHA_ASIENTO">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FECHA_DOC" HeaderText="FECHA DOC" ReadOnly="True" SortExpression="FECHA_DOC">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FECHA_VCTO" HeaderText="FECHA VCTO" ReadOnly="True" SortExpression="FECHA_VCTO">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" ReadOnly="True" SortExpression="GLOSA" />
                     <asp:BoundField DataField="RUC_DNI" HeaderText="RUC_DNI" SortExpression="RUC_DNI" />
                     <asp:BoundField DataField="CENTRO_COSTO" HeaderText="CENTRO COSTO" SortExpression="CENTRO_COSTO">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TD" HeaderText="TD" SortExpression="TD" />
                     <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DOC" HeaderText="DOC" ReadOnly="True" SortExpression="DOC">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="BASE" DataFormatString="{0:0,0.00}" HeaderText="BASE" SortExpression="BASE">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" SortExpression="IGV">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Bottom" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
                     <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="CTA_GASTO" HeaderText="CTA GASTO" SortExpression="CTA_GASTO">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MON" HeaderText="MON" ReadOnly="True" SortExpression="MON">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="NUMERO_DOC" HeaderText="NUMERO DOC" ReadOnly="True" SortExpression="NUMERO_DOC">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TIPO_CONVER" HeaderText="TIPO CONVER" ReadOnly="True" SortExpression="TIPO_CONVER">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FECHA_CONVER" HeaderText="FECHA CONVER" ReadOnly="True" SortExpression="FECHA_CONVER">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" >
                        
                        <ItemStyle BackColor="#E8F4F4" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                     <asp:BoundField DataField="COD_CTAFACT" HeaderText="COD_CTAFACT" SortExpression="COD_CTAFACT" >
                        
                        <ItemStyle BackColor="#E8F4F4" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                 </Columns>
                 <EmptyDataTemplate>
                Información por generar....
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                 <RowStyle ForeColor="#000066" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_concar_compras_fact" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="txtf1" DbType="Date" Name="f1" PropertyName="Text" />
                     <asp:ControlParameter ControlID="txtf2" DbType="Date" Name="f2" PropertyName="Text" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </asp:Panel>
    </asp:Panel>
</asp:Content>
