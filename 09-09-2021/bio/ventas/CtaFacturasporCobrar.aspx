<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="CtaFacturasporCobrar.aspx.cs" Inherits="biotech.bio.ventas.CtaFacturasporCobrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            font-size: small;
            text-align: right;
        }
        .auto-style8 {
            color: #808080;
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
        </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style10 {
            text-align: center;
            font-size: small;
        }
        .auto-style11 {
            font-size: small;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> Facturas por cobrar</h2>
                            
                           <ol class="breadcrumb">
  <li>
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Principal</asp:LinkButton>
                               </li>
<li>
      <asp:LinkButton ID="lbfacturas" runat="server" OnClick="lbfacturas_Click" >Reporte de Facturas</asp:LinkButton>
                               </li>
<%--<li>
      <asp:LinkButton ID="lbFacturasCanceladas" runat="server" OnClick="lbFacturasCanceladas_Click" >Cobradas</asp:LinkButton>
                               </li>--%>
  <li >
              
             
         &nbsp;&nbsp;
              
             
         <asp:ImageButton ID="lbtnExportarExcel" runat="server" Height="20px" OnClick="lbtnExportarExcel_Click" Width="18px" ImageAlign="Top" ImageUrl="~/images/excel.png" />
              
             
                               </li>
  
</ol> 
                       </div></div>

     <div class="row">
            <asp:Panel ID="Panel4" runat="server">
                <div class="table-responsive">
                <asp:GridView ID="GridView1" DataKeyNames="COD" class="table table-condensed table-sm table-hover table-striped"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" OnRowCommand="GridView1_RowCommand" GridLines="Horizontal" AllowSorting="True">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="edita" HeaderText="Reg. Pago"  ShowHeader="True" Text="Mofidicar"  Visible="False" />
                        <asp:TemplateField HeaderText="FACTURA" ShowHeader="False" Visible="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" style="color: #006600; font-weight: 700;" Text='<%# Bind("FACTURA") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA">
                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" >
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" >
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VEND" HeaderText="VEND." SortExpression="VEND" >
                        <ItemStyle Font-Size="XX-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE">
                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CONDICION" HeaderText="COND." ReadOnly="True" SortExpression="CONDICION" >
                        <ItemStyle Font-Size="XX-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M">
                        <HeaderStyle Width="25px" />
                        <ItemStyle HorizontalAlign="Right" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMP.NETO" SortExpression="IMPORTE" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RET" HeaderText="" SortExpression="RET" Visible="False"/>
                         <asp:ImageField DataImageUrlField="RET" DataImageUrlFormatString="~/images/{0}.png">
                            <ControlStyle Height="5px" Width="5px" />
                            <HeaderStyle Width="8px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                        <asp:BoundField DataField="RETND" DataFormatString="{0:0,0.00}" HeaderText="IMP. RET" SortExpression="RETND">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="TOTAL A COBRAR" SortExpression="XCOBRAR">
                        <HeaderStyle Font-Size="Small" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" Font-Size="Small" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="NOTACREDITO" DataImageUrlFormatString="~/images/foco{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="elimina" ShowHeader="True" Text="REGISTRAR PAGO" ButtonType="Button" ImageUrl="~/images/guadar.png" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="XX-Small" />
                        </asp:ButtonField>
                        
                       
                        
                        <asp:CommandField ButtonType="Image" HeaderText="VER FACT." SelectImageUrl="~/images/lupa.png" ShowSelectButton="True">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Font-Size="XX-Small" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                        
                     <asp:ButtonField CommandName="estadocuenta"  HeaderText="RELACIÓN DOC." ShowHeader="True" Text="print" ImageUrl="~/images/cuentasestado.png" ButtonType="Image" >
                     <ControlStyle Height="26px" Width="24px" />
                     <HeaderStyle Width="40px" Font-Size="XX-Small" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                        
                        <asp:BoundField DataField="RETPAGSOLES" DataFormatString="{0:0,0.00}" HeaderText="RET PAG. SOLES" SortExpression="RETPAGSOLES" >
                        <HeaderStyle Width="80px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:BoundField>
                           <asp:ButtonField CommandName="BAJARRETENCION" HeaderText="RET" ShowHeader="True" Text="Ver" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >
                            <ControlStyle Height="20px" Width="18px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP_RET" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

        


                </div>
                <div class="auto-style9">
                    <asp:Image ID="Image5" runat="server" CssClass="auto-style8" ImageUrl="~/images/3.png" Width="5px" />
                    &nbsp;Descuento por retención 3% (&gt;700 Soles),
                    <asp:Image ID="Image2" runat="server" CssClass="auto-style8" ImageUrl="~/images/foco1.png" Width="20px" />
                    <span class="auto-style8">= Adelanto / Nota de crédito, </span>
                    <asp:Image ID="Image3" runat="server" CssClass="auto-style8" ImageUrl="~/images/foco10.png" Width="20px" />
                    <span class="auto-style8">&nbsp;= Compromiso de pago,
                    <asp:Image ID="Image4" runat="server" CssClass="auto-style8" ImageUrl="~/images/foco55.png" Width="20px" />
                    Seguimiento de cobranza</span></div>
                <asp:Label ID="lblmensaje" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                <br />
            </asp:Panel>    
        </div>
 
         

     <div class="row">

         <div class="table-responsive">
             <STRONG>FACTURAS POR ANEXAR:           </STRONG>  <asp:Label ID="lbltotalFacxAnexar" runat="server" Text="Label"></asp:Label> &nbsp;Dólares
             <asp:GridView ID="gvFacturasxAnexar" runat="server" class="table table-condensed table-sm table-hover table-striped" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourcefactAnexar" GridLines="None" BorderWidth="1px" OnSelectedIndexChanged="gvFacturasxAnexar_SelectedIndexChanged" AllowSorting="True">
                 <Columns>
                     
                    
                        <asp:TemplateField HeaderText="FACTURA" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" style="color: #006600; font-weight: 700;" Text='<%# Bind("FACTURA") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" Visible="False">
                        <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" >
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" >
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VEND" HeaderText="VEND." SortExpression="VEND" >
                        <ItemStyle Font-Size="XX-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE">
                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CONDICION" HeaderText="COND." ReadOnly="True" SortExpression="CONDICION" >
                        <ItemStyle Font-Size="XX-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M">
                        <HeaderStyle Width="25px" />
                        <ItemStyle HorizontalAlign="Right" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMP.NETO" SortExpression="IMPORTE" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RET" HeaderText="" SortExpression="RET" Visible="False"/>
                         <asp:ImageField DataImageUrlField="RET" DataImageUrlFormatString="~/images/{0}.png">
                            <ControlStyle Height="5px" Width="5px" />
                            <HeaderStyle Width="8px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                        <asp:BoundField DataField="RETND" DataFormatString="{0:0,0.00}" HeaderText="IMP. RET" SortExpression="RETND">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="TOTAL A COBRAR" SortExpression="XCOBRAR">
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="NOTACREDITO" DataImageUrlFormatString="~/images/foco{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                       


                 </Columns>
                 <EmptyDataTemplate>
                     No hay facturas por anexar...!
                 </EmptyDataTemplate>
                 <PagerTemplate>
                     No hay facturas por anexar...!
                 </PagerTemplate>
             </asp:GridView>

             <asp:SqlDataSource ID="SqlDataSourcefactAnexar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP_RET_ANEXTAR" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


         </div>
         
         </div>


      <div class="row">
                <asp:Panel ID="Panel3" runat="server" class="form-group row">
                    <div class="col-md-6">
                      
                            <table class="table table-striped table-bordered table-hover">
                                <tr>
                                    <td WIDTH="130" colspan="2"><strong>RESUMEN FACTURAS</td>
                                    <td WIDTH="150" class="auto-style10"><strong>TOTAL IMPORTE NETO</strong></td>
                                    <td WIDTH="150" class="text-center"><strong><span class="auto-style11">TOTAL IMPORTE RETENIDO</span></strong><span class="auto-style11"></span></td>
                                    <td WIDTH="150" class="text-center"></span><strong><span class="auto-style11">TOTAL A COBRAR DOLARES</span></strong></td>
                                </tr>
                                <tr>
                                    <td rowspan="2">FACTURAS</td>
                                    <td>Dólares</td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttimporteD" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttretD" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttdisponibleD" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Soles</td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttimporteS" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttretS" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttdisponibleS" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>FACT. POR ANEXAR</td>
                                    <td>Dólares</td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttimporteDanexar" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttretDanexar" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblttdisponibleDanexar" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4"><strong>TOTAL GENERAL EN DOLARES</strong></td>
                                    <td>
                                        <asp:Label ID="lblttDolares" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                          
                        <asp:GridView ID="GridView2" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" CaptionAlign="Right" DataSourceID="SqlDataSource2" GridLines="None" style="font-size: x-small" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="M" HeaderText="TOTAL EN:" ReadOnly="True" SortExpression="M" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE TOTAL" ReadOnly="True" SortExpression="IMPORTE" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                                <asp:BoundField DataField="RET / DET" DataFormatString="{0:0,0.00}" HeaderText="RET./DET." ReadOnly="True" SortExpression="RET / DET" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                                <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="TOTAL COBRAR" ReadOnly="True" SortExpression="XCOBRAR" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="c_facturatt" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    
                        </div>
                        
                </asp:Panel>
       </div>


     <div class="row">
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style6">
            <strong>
            REGISTRAR CANCELACIÓN</strong></div>
        <div style="text-align: left">
            <strong>Cliente:</strong>
            <asp:Label ID="lblcliente" runat="server"></asp:Label>
            <br />
            <strong>Factura: </strong>
            <asp:Label ID="txtfactura" runat="server"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="lblcodfactura" runat="server"></asp:Label>
            &nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Moneda:</strong><asp:Label ID="lblsimbolo" runat="server"></asp:Label>
            <strong>
            <br />
            Importe:</strong>
            <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <strong>Importe por Cobrar:</strong>
            <asp:Label ID="lblimporxcobrar" runat="server" style="font-weight: 700"></asp:Label>
            &nbsp; <strong>&nbsp;Imp. Retenido:</strong>
            <asp:Label ID="lblimporretenido" runat="server"></asp:Label>
            <br />
            Adelanto/ Nota Credito:
            <asp:Label ID="lblnotacredito" runat="server"></asp:Label>
            <br />
            <strong>Observación:</strong><br />
            <asp:Label ID="lblobservacion" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="PanelRenegociacion" runat="server">
                <strong>Compromiso de pago:</strong><br />
                <asp:Label ID="lblcompromisodepago" runat="server"></asp:Label>
            </asp:Panel>
            <br />
            Detalle pago:<br />
            <asp:TextBox ID="txtdetallepago" runat="server" Height="61px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" Height="40px" OnClick="Button4_Click" Text="REGISTRAR PAGO" Width="400px" />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
        </div>
    </asp:Panel>
           
			<br />
         <asp:Panel ID="payuda" runat="server">
             <asp:Label ID="lbl10IdCliente" runat="server"></asp:Label>
             <asp:GridView ID="gvFacturas" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceFactuRElacion">
                 <Columns>
                     <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                     <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                     <asp:BoundField DataField="FEMISION" HeaderText="F. EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FVENCTO" HeaderText="F. VENCTO" ReadOnly="True" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                     <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                     <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" Visible="False" />
                     <asp:BoundField DataField="RETND" HeaderText="RETND" SortExpression="RETND" Visible="False" />
                     <asp:BoundField DataField="XCOBRAR" HeaderText="POR COBRAR" ReadOnly="True" SortExpression="XCOBRAR" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" Visible="False" />
                     <asp:BoundField DataField="NOTACREDITO" HeaderText="NOTACREDITO" SortExpression="NOTACREDITO" Visible="False" />
                     <asp:BoundField DataField="RET" HeaderText="RET" ReadOnly="True" SortExpression="RET" Visible="False" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourceFactuRElacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Facturas_RelacionCliente" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                     <asp:ControlParameter ControlID="lbl10IdCliente" DefaultValue="" Name="idCliente" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </asp:Panel>
           
			</div>



    <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


     </strong>


</asp:Content>
