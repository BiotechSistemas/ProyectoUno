<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Retenciones.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.Retenciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
    th
    {
        text-align:center;
    }
          .auto-style1 {
              font-weight: bold;
          }
          .auto-style2 {
              width: 600px;
          }
          .auto-style3 {
              height: 15px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />

    
      <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i>RETENCIONES FACTURADAS:<asp:Label ID="lblidGuia" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
        
                            <small>
                        FECHA:
                            <asp:Label ID="lblFecha" runat="server" CssClass="auto-style1"></asp:Label>
&nbsp; TIPO DE CAMBIO VENTA:
                            <asp:Label ID="lblVenta" runat="server" CssClass="auto-style1">0.00</asp:Label>
                        </h3></small>
</div>
                    <br />
                    <asp:ImageButton ID="ImageButtonActualizar" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/btactualizar.png" OnClick="ImageButtonActualizar_Click" Width="30px" />
                    <asp:TextBox ID="txtValor" placeholder="Cliente - n° factura" runat="server" AutoPostBack="True" OnTextChanged="txtValor_TextChanged" Width="200px"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="BUSCAR" />
     DESDE:
                    <asp:TextBox ID="txtf1" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;AL
                    <asp:TextBox ID="txtf2" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Button ID="btnFecha" runat="server" OnClick="btnFecha_Click" Text="FECHA" />
&nbsp;<asp:Button ID="btncobradas" runat="server" ForeColor="#CC3300" OnClick="btncobradas_Click" Text="COBRADAS" />
                    <asp:Button ID="btnAdjuntan" runat="server" OnClick="btnAdjuntan_Click" Text="ADJUNTA RETENCIÓN" />
                    <asp:Button ID="btnnoAdjuntaRetencion" runat="server" ForeColor="#CC3300" OnClick="btnnoAdjuntaRetencion_Click" Text="NO ADJUNTAN RETENCIÓN" />
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
         id retencion :
                        <asp:Label ID="lblidretencion" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp; opcion:
                        <asp:Label ID="lblopcion" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp; valorbuscar:
                        <asp:Label ID="lblvalorabuscar" runat="server"></asp:Label>
         &nbsp;fecha:
                        <asp:Label ID="lblfecha1" runat="server"></asp:Label>
         &nbsp;al
                        <asp:Label ID="lblfecha2" runat="server"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="panelRegdoccumento" runat="server">
                        <h2>REGISTRAR RETENCIÓN:&nbsp; &nbsp;</h2>
                        <table class="auto-style2">
                            <tr>
                                <td><b>FACTURA N°</b></td>
                                <td>
                                    <asp:Label ID="lblidFactura" runat="server" Visible="False"></asp:Label>
                                    &nbsp;<asp:Label ID="lblfactura" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><b>MONEDA:</b></td>
                                <td>
                                    <asp:Label ID="lblmoneda1" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblmonedasimbolo1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><b>IMP. TOTAL COMPROBANTE:</b></td>
                                <td>
                                    <asp:Label ID="lblimportett1" runat="server" style="font-weight: 700"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="lblimporteRet1" runat="server" Visible="False"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td><b>FECHA EMISIÓN DOC. RETENCIÓN:</b></td>
                                <td>
                                    <asp:TextBox ID="txtFechaEmisionRetencion" runat="server" TextMode="Date" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CANCELAR" ForeColor="#990000" />
                                    <asp:Button ID="btntipocambio" runat="server" OnClick="btntipocambio_Click" Text="CALCULAR  SOLES - SEGÚN TIPO DE CAMBIO " Width="80%" />
                                    <asp:Panel ID="PanelSUBCAMBIO" runat="server">
                                        <table class="auto-style2">
                                            <tr>
                                                <td><b>TIPO DE CAMBIO: </b></td>
                                                <td class="text-right">
                                                    <asp:Label ID="lblidtpcambio" runat="server"></asp:Label>
                                                    <asp:Label ID="lbltipocambio" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>IMPORTE RETENIDO : </b></td>
                                                <td class="text-right">
                                                    <asp:Label ID="lblimportesolesret10" runat="server" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblimporteRetsoles" runat="server"></asp:Label>
                                                    &nbsp;SOLES</td>
                                            </tr>
                                            <tr>
                                                <td><b>iMPORTE NETO PAGADO :</b></td>
                                                <td class="text-right">
                                                    <asp:Label ID="lblImporteNetoPagado" runat="server"></asp:Label>
                                                    &nbsp;SOLES</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblmensaje" runat="server" ForeColor="#CC3300"></asp:Label>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>N° comprobante de retención</td>
                                                <td>
                                                    <asp:TextBox ID="txtdocretencion" Style="text-transform: uppercase"  runat="server" Width="100%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Adjuntar documento:</td>
                                                <td>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#CC3300"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lbldocRetencion" runat="server" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Button ID="btnRegistrarRetencion" runat="server" OnClick="btnRegistrarRetencion_Click" Text="REGISTRAR" Width="100%" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            </table>

                           


                    </asp:Panel>
                    <hr />*
     <asp:Label ID="lblcantidad" runat="server"></asp:Label>
                    . Documentos encontrados.
                    <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/RET1.png" Width="20px" />
&nbsp;Adjunta documento de retención.&nbsp;
              
             
         <asp:ImageButton ID="lbtnExportarExcel" runat="server" Height="20px" OnClick="lbtnExportarExcel_Click" Width="20px" ImageAlign="Top" ImageUrl="~/images/excel.png" />
              
             
                   &nbsp;Exportar.<asp:GridView ID="gvRetenciones" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion,FACTURA" DataSourceID="SqlDataSourceRetencion" Width="100%" OnRowDataBound="gvRetenciones_RowDataBound" OnSelectedIndexChanged="gvRetenciones_SelectedIndexChanged" OnRowCommand="gvRetenciones_RowCommand">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCIMIENTO" SortExpression="FVENCIMIENTO" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="codvendedor" HeaderText="COD. ASESOR" SortExpression="codvendedor" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="importeNeto" DataFormatString="{0:0,0.00}" HeaderText="TOTAL COMPROBANTE" SortExpression="importeNeto">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="montoretenido" DataFormatString="{0:0,0.00}" HeaderText="IMP. RETENIDO" SortExpression="montoretenido">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="montodisponible" DataFormatString="{0:0,0.00}" HeaderText="IMP. POR COBRAR" SortExpression="montodisponible">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RETENSIONSOLES" DataFormatString="{0:0,0.00}" HeaderText="RET. COBRADA EN SOLES" ReadOnly="True" SortExpression="RETENSIONSOLES">
                            <HeaderStyle Font-Size="XX-Small" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ADJUNTADOC" HeaderText="DOC. RETENCIÓN" ReadOnly="True" SortExpression="ADJUNTADOC" Visible="False">
                            <HeaderStyle Font-Size="XX-Small" />
                            </asp:BoundField>
                             <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="E.L.">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
                            <asp:ImageField DataImageUrlField="ADJUNTADOC" DataImageUrlFormatString="~/images/RET{0}.png" HeaderText="DOC. RET.">
                                <ControlStyle Height="20px" Width="18px" />
                                <HeaderStyle HorizontalAlign="Center" Width="20px" Font-Size="XX-Small" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                            <asp:ButtonField CommandName="BAJAR" HeaderText="" ShowHeader="True" Text="Ver" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >
                            <ControlStyle Height="20px" Width="18px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                        </Columns>
                        <EmptyDataTemplate>
             No registra documento...
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceRetencion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="retencion_facturas" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblvalorabuscar" Name="dato" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblfecha1" DbType="Date" Name="f1" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblfecha2" DbType="Date" Name="f2" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
         </div>
</asp:Content>
