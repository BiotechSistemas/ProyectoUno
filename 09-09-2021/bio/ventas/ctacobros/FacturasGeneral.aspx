<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="FacturasGeneral.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.FacturasGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            color: #C0C0C0;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />


    <h2>REPORTE DE FACTURAS:
        <asp:Label ID="Label1" runat="server">MES ACTUAL</asp:Label>
    </h2>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        idusuario:<asp:Label ID="lblidusuario" runat="server"></asp:Label>
        &nbsp; nivel:
        <asp:Label ID="lblnivel10" runat="server"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="row">
                <asp:Label ID="lblcliente" runat="server"></asp:Label>
                <asp:Label ID="lblfdesde" runat="server"></asp:Label>
                <asp:Label ID="lblfhasta" runat="server"></asp:Label>
                <asp:Label ID="lblop" runat="server"></asp:Label>
                &nbsp;factura:
                <asp:Label ID="lblidFactura" runat="server"></asp:Label>
            </div>
        </asp:Panel>
    </asp:Panel>
&nbsp;<div class="row">
        
        <div class="col-xs-12 col-md-12">

               <div class="form-inline">
         <asp:ImageButton ID="ImageButtonActualizar" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/btactualizar.png" OnClick="ImageButtonActualizar_Click" Width="30px" />
              <div class="form-group">
                <label class="sr-only" for="txtbuscardato">Cliente ó factura</label>
                <asp:TextBox ID="txtbuscardato" class="form-control" placeholder="Cliente / Factura"  runat="server" AutoPostBack="True" OnTextChanged="txtbuscardato_TextChanged"></asp:TextBox>
                  
              </div>
                    <asp:Button ID="BTNbuscarCliente" class="btn btn-default" runat="server" Text="N°FACT/CLIENTE" OnClick="BTNbuscarCliente_Click" />
              <div class="form-group">
               <label class="sr-only" for="txtfdesde">Fecha</label>
                <asp:TextBox ID="txtfdesde" class="form-control"  runat="server" TextMode="Date"></asp:TextBox> HASTA 
               <asp:TextBox ID="txtfhasta" class="form-control"  runat="server" TextMode="Date"></asp:TextBox>
               
              </div>
                   <asp:Button ID="btBuscar" class="btn btn-default" runat="server" Text="F.EMISIÓN" OnClick="btBuscar_Click" />
              
             
         <asp:ImageButton ID="lbtnExportarExcel" runat="server" Height="25px" OnClick="lbtnExportarExcel_Click" Width="25px" ImageAlign="Top" ImageUrl="~/images/excel.png" />
              
             
                   <br />
                   <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="MUESTRAS" />
                   <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="CONTADO" />
                   <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="CREDITO" />
                   <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="POR COBRAR" BackColor="#DEF5D8" />
                   <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="POR COBRAR - COND. FACTURAS" BackColor="#DEF5D8" />
                   <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="POR COBRAR - COND. LETRAS" BackColor="#DEF5D8" />
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="COBRADAS" ForeColor="#006600" />
              
             
                   <asp:Button ID="btnAnulado" runat="server" ForeColor="#990000" Height="30px" OnClick="btnAnulado_Click" Text="ANULADAS" />
              
             
              </div>    
            <asp:Panel ID="PCOBRADAS" runat="server">FECHA DE COBRO : <asp:TextBox ID="txtFCobro1" runat="server" TextMode="Date"></asp:TextBox> AL <asp:TextBox ID="txtFCobro2" runat="server" TextMode="Date"></asp:TextBox> <asp:Button ID="bntGenerar" runat="server" Text="FILTRAR" OnClick="bntGenerar_Click" /></asp:Panel>
            </div> 
             
            </div>
    <asp:Panel class="row" ID="PanelDescarga" runat="server">
        <div class="well well-sm">
       
        <table class="nav-justified">
            <tr>
                <td><span class="auto-style1">Factura:<asp:Label ID="lbl2IdFacturaSelec" runat="server" Visible="False"></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/images/FACT1.png" OnClick="ImageButton1_Click" Width="20px" />
                    <asp:LinkButton ID="lbl2DescargaFactura" runat="server" OnClick="lbl2DescargaFactura_Click"></asp:LinkButton>
                   </span> 
                    <br />
                    <asp:Label ID="lblDescargaGuia" runat="server"></asp:Label>
                    <asp:Label ID="lbl2Ruc" runat="server"></asp:Label>
                    -<asp:Label ID="lbl2razonsocialcliente" runat="server"></asp:Label>
                    <asp:Label ID="lblrutatt" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                    <br />
                    <strong>GUIA DE REMISIÓN:</strong><asp:Label ID="lblglosaGuias" runat="server"></asp:Label>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDGUIA,OC,DOCGUIA" DataSourceID="SqlDataSourceguias" GridLines="None" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" Width="600px">
                        <Columns>
                            <asp:TemplateField HeaderText="GUIA REMISIÓN" ShowHeader="False" Visible="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("GUIAREM") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="150px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="IDGUIA" HeaderText="IDGUIA" ReadOnly="True" Visible="False" SortExpression="IDGUIA" />
                           
                              <asp:ButtonField CommandName="bajarguia" HeaderText="" ShowHeader="True" Text="GUIA REM" ButtonType="Image" ImageUrl="~/images/GUIA1.png" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                     <ControlStyle  Height="20px" Width="20px"/>
                  
                    </asp:ButtonField>

                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIA REMISIÓN" ReadOnly="True" SortExpression="GUIAREM" />

                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="IDPEDIDO" HeaderText="IDPEDIDO"  SortExpression="IDPEDIDO" Visible="False"  />
                             <asp:BoundField DataField="PEDIDO" HeaderText="N° PEDIDO"  SortExpression="PEDIDO" Visible="False"  />
                             <asp:ButtonField ButtonType="Image" CommandName="ordencompra" HeaderText="OC" ShowHeader="True" Text="OC" ImageUrl="~/images/OC1.png">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            <ControlStyle Height="20px" Width="20px" />
                            <ItemStyle VerticalAlign="Middle" />
                            </asp:ButtonField>
                             <asp:BoundField DataField="OC" HeaderText="NOTA DE PEDIDO"  SortExpression="OC"  />
                            
                            <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                                <ControlStyle Height="14px" Width="14px" />
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>

                        </Columns>
                        <EmptyDataTemplate>
                            <span class="auto-style3">Falta anexar Guia de Remisión.</span>
                        </EmptyDataTemplate>
                        <PagerTemplate>
                            Falta anexar Guia de Remisión.
                        </PagerTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceguias" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Factura_guiasREm" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbl2IdFacturaSelec" Name="idfactura" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Panel ID="pAdminanexos" runat="server">
                    <table class="auto-style2">
                        <tr>
                            <td align="right">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td WIDTH="150" align="right">
                                <asp:LinkButton ID="lbtnFactura" CssClass="btn btn-info"  runat="server" OnClick="lbtnFactura_Click" Width="140px">ADJUNTAR FACT.</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td align="right">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:TextBox ID="txtSerieGuia" Style="text-transform: uppercase" runat="server" placeholder="T001" Width="60px">T001</asp:TextBox>
                                -<asp:TextBox ID="txtGuiaRem" runat="server" placeholder="00001" Width="80px"></asp:TextBox>
                            </td>
                            <td align="right">
                                <asp:LinkButton ID="lbtnGuias" runat="server" CssClass="btn btn-info" OnClick="lbtnGuias_Click" Width="140px">ANEXAR GUIA</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:LinkButton ID="lbtnQuitaranexo" runat="server" OnClick="lbtnQuitaranexo_Click">QUITAR ANEXO</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                    </table>
                        </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" class="table" DataKeyNames="Id" DataSourceID="SqlDataSource2" Font-Size="XX-Small" GridLines="Horizontal" ShowHeader="False" Width="700px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                            <asp:BoundField DataField="IdFactura" HeaderText="IdFactura" ReadOnly="True" SortExpression="IdFactura" Visible="False" />
                            <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" ReadOnly="True" SortExpression="fecha">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="comentario" HeaderText="CONCEPTO" SortExpression="comentario">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="importe" HeaderText="IMP.PAGADO" ReadOnly="True" SortExpression="importe">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="fechasistema" HeaderText="fechasistema" SortExpression="fechasistema" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from Facturacion_comentario where IdFactura = @idfactura order by id desc" UpdateCommand="update Facturacion_comentario set comentario = @comentario where id= @Id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbl2IdFacturaSelec" Name="idfactura" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="comentario" />
                            <asp:Parameter Name="Id" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:LinkButton ID="lbtnguia" runat="server"></asp:LinkButton>
        
        <asp:Panel ID="PanelEnviarMail" runat="server" Visible="False">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="enviar mail" Width="102px" />
            &nbsp;dESCARGARDOCUMENTO:
            <asp:Label ID="lbl2DocAdjuntada" runat="server"></asp:Label>
        </asp:Panel>
            </div>
    </asp:Panel>
     <div class="row">
        <div class="table-responsive">
            <asp:Label ID="lblmensajeAdjuntarFact" runat="server" ForeColor="#990000"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idfacturacion,FACTURA,BoletaFactura,tipoVenta" DataSourceID="SqlDataSource1" Font-Size="X-Small" PageSize="15" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <%-- <asp:ButtonField CommandName="anular" HeaderText="" ShowHeader="True" Text="Anular" />
                <asp:ButtonField CommandName="edita" HeaderText="" ShowHeader="True" Text="Mofidicar" Visible="False" />--%>
            
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                <asp:BoundField DataField="tipoVenta" HeaderText="VENTA" SortExpression="tipoVenta" />
                <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="fechareg">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fechaven" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechaven">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="codvendedor" HeaderText="ASESOR" SortExpression="codvendedor" />
                <asp:BoundField DataField="idclienteRUC" HeaderText="RUC" SortExpression="idclienteRUC" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="razonsocial" HeaderText="RAZON SOCIAL" SortExpression="razonsocial" />
                <asp:BoundField DataField="idcondpago" HeaderText="COND PAG." SortExpression="idcondpago" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" />
                <asp:BoundField DataField="tpmoneda" SortExpression="tpmoneda" />
                <asp:BoundField DataField="importebruto" HeaderText="I.BRUTO" SortExpression="importebruto" DataFormatString="{0:0,0.00}" Visible="False" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                </asp:BoundField>
                <asp:BoundField DataField="tpimporteretenido" HeaderText="tpimporteretenido" SortExpression="tpimporteretenido" Visible="False" />
                <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" DataFormatString="{0:0,0.00}" Visible="False" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="importeNeto" HeaderText="IMP. NETO" SortExpression="importeNeto" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montoretenido" HeaderText="IMP. RET" SortExpression="montoretenido" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montodisponible" HeaderText="TT. POR COBRAR" SortExpression="montodisponible" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                </asp:BoundField>
                <asp:BoundField DataField="RET" SortExpression="RET" HeaderText="R*" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 <asp:BoundField DataField="IMPORTE_PAG_RETENCION" HeaderText="RET PAGADA SOLES" SortExpression="IMPORTE_PAG_RETENCION" DataFormatString="{0:0,0.00}"  >
                <HeaderStyle Width="70px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                </asp:BoundField>

                 <asp:ButtonField CommandName="BAJARRETENCION" HeaderText="RET." ShowHeader="True" Text="VerRETENCION" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>

                <asp:BoundField DataField="montodisponibleAdelanto" HeaderText="CANCELADO" SortExpression="montodisponibleAdelanto" Visible="False" />
                <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" Visible="False" />
                <asp:BoundField DataField="periodo" HeaderText="periodo" SortExpression="periodo" Visible="False" />
                <asp:BoundField DataField="IDLETRA" HeaderText="IDLETRA" SortExpression="IDLETRA" Visible="False" />
                <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" />
                <asp:BoundField DataField="ESTADOLETRA" HeaderText="E.L." SortExpression="ESTADOLETRA" >
                <HeaderStyle Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="estadoCancel" HeaderText="L.E.C." SortExpression="estadoCancel" Visible="False" />
                <asp:BoundField DataField="estado" HeaderText="**" SortExpression="estado" Visible="False" />
                  <asp:ImageField DataImageUrlField="ESTADOFACTURA" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="E.F.">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>

                 <asp:ImageField DataImageUrlField="ESTADOCANCEL" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="E.L.C.">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
                 <asp:ImageField DataImageUrlField="DOC" DataImageUrlFormatString="~/images/FACT{0}.png" HeaderText="F.">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
             <%-- <asp:ButtonField CommandName="ADJUNTAR" HeaderText="" ShowHeader="True" Text="Adjuntar" ButtonType="Image" ImageUrl="~/images/SUBIR.png" >           
                     <ControlStyle Height="20px" Width="18px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ButtonField>--%>

                      <asp:ButtonField CommandName="BAJARFACT" HeaderText="FACT." ShowHeader="True" Text="Bajar" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >                     
                        <ControlStyle Height="16px" Width="16px" />
                        <HeaderStyle Width="15px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
            </asp:ButtonField>
                <asp:BoundField DataField="GlosaGuias" HeaderText="GLOSA GUIA" SortExpression="GlosaGuias" Visible="False" />
                <asp:BoundField DataField="BoletaFactura" HeaderText="BoletaFactura" SortExpression="BoletaFactura" Visible="False" />

            
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_facturacion" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblcliente" Name="cliente" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblfdesde" DbType="Date" Name="f1" PropertyName="Text" />
                <asp:ControlParameter ControlID="lblfhasta" DbType="Date" Name="f2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource></div>

         <small>
              &nbsp;ADJUNTA DOCUMENTO:<asp:Image ID="Image11" runat="server" Height="15px" ImageUrl="~/images/FACT1.png" Width="15px" />
         &nbsp;= FACTURA&nbsp; |&nbsp; <asp:Image ID="Image10" runat="server" Height="15px" ImageUrl="~/images/GUIA1.png" Width="15px" />
         &nbsp; = REMISIÓN | 

         <small>
         <asp:Image ID="Image13" runat="server" Height="16px" ImageUrl="~/images/OC1.png" Width="15px" />
    &nbsp;=
    </small>NOTA PEDIDO&nbsp; |

         <small>
         <asp:Image ID="Image12" runat="server" Height="16px" ImageUrl="~/images/BAJAR.png" Width="15px" />
     &nbsp;DESCARGAR FACTURA</small><br />
         E.F.&nbsp;&nbsp;&nbsp; = ESTADO DE FACTURA: 
     &nbsp;<asp:Image ID="Image8" runat="server" Height="15px" ImageUrl="~/images/Z1.png" Width="15px" />
         &nbsp;PENDIENTE |&nbsp; <asp:Image ID="Image1" runat="server" Height="15px" ImageUrl="~/images/Z0.png" Width="15px" />
     &nbsp;COBRADO&nbsp; | <asp:Image ID="Image7" runat="server" Height="15px" ImageUrl="~/images/Z4.png" Width="15px" />
     &nbsp;ANULADO<br />
         D.L.*&nbsp;&nbsp; = ESTADO DE LETRA<br />
         E.L.C. = ESTADO DE LETRA EN COBRANZA: <small>
              <asp:Image ID="Image14" runat="server" Height="15px" ImageUrl="~/images/Z1.png" Width="15px" />
         &nbsp;PENDIENTE |&nbsp; <asp:Image ID="Image15" runat="server" Height="15px" ImageUrl="~/images/Z0.png" Width="15px" />
     &nbsp;COBRADO&nbsp; | <asp:Image ID="Image16" runat="server" Height="15px" ImageUrl="~/images/Z4.png" Width="15px" />
     &nbsp;ANULADO</small><br />
         </div>
    </small>
</div>
         </div>
</asp:Content>
