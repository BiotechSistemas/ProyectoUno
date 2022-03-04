<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/newporpagar.Master" AutoEventWireup="true" CodeBehind="Pagos_ctaporpagar.aspx.cs" Inherits="biotech.porpagar.Pagos_ctaporpagar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            width: 800px;
            background:#FAFAFA;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            height: 48px;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearch]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/porpagar/Pagos_ctaporpagar.aspx/GetCustomers") %>',
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


       <script src="../bio/js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../bio/css/sweetalert.css" rel="stylesheet" type="text/css" />


     <div class="container">
      
        <h2><span class="glyphicon glyphicon-check"></span> CUENTA POR PAGAR<asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
         </h2>
        <div class="form-horizontal ">
            <div class="form-group row">
            <asp:Button ID="btbiotechperu" class="col-xs-3 col-md-2" runat="server" Text="DANNY" OnClick="btbiotechperu_Click" Height="40px" />
                <asp:Button ID="btbio" class="col-xs-3 col-md-2" runat="server" Text="BIOTECH" OnClick="btbio_Click" Height="40px" ToolTip="Cuentas por pagar" />
                <asp:Button ID="btinsu" class="col-xs-3 col-md-2" runat="server" Text="INSUAGRO" OnClick="btinsu_Click" Height="40px" Visible="False" />
                <asp:Button ID="btImpmark" class="col-xs-3 col-md-2" runat="server" Text="IMPMARK"  Height="40px" OnClick="btImpmark_Click" />
                <asp:Button ID="btChemical" class="col-xs-3 col-md-2" runat="server" Text="CHEMICAL"  Height="40px" OnClick="btChemical_Click" />
                <asp:Button ID="btnDepositosInternos" class="col-xs-3 col-md-2" runat="server" Text="DEPOSITOS INTERNOS" Height="40px" OnClick="btnDepositosInternos_Click1" />
                <asp:Label ID="lbltpCambio" runat="server" Text="3.5" Visible="False"></asp:Label>
             <div class="col-xs-6 col-md-2"> 
                 
                 <div class="input-group input-group-sm">
                <asp:TextBox ID="txtbkfecha" class="form-control"  runat="server" TextMode="Date" ></asp:TextBox>
                <span class="input-group-btn input-group-sm">
                
                         <asp:ImageButton ID="ibt_buscarfecha"  runat="server" Height="25px" ImageUrl="~/images/caledario.png" OnClick="ibt_buscarfecha_Click" Width="25px" />
                    </span>
                 </div>                               
            </div>
            <div class="col-xs-6 col-md-3"> 
                 
                 <div class="input-group input-group-sm">
                <asp:TextBox ID="txtSearch" class="form-control" runat="server"></asp:TextBox>
                <span class="input-group-btn input-group-sm">
                    <asp:Button ID="Button1" runat="server" Text="Buscar" class="btn btn-default" OnClick="Button1_Click" />    
                    </span>
                 </div>
                   
                   
            </div>
                <asp:ImageButton ID="ibtnPagosrealizados" runat="server" ImageUrl="~/images/paggar.png" PostBackUrl="~/porpagar/Pagos_historial.aspx" ToolTip="Ver pagos realizados" Width="40px" />

                <asp:HiddenField ID="hfCustomerId" runat="server" />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <asp:Label ID="lblop" runat="server"></asp:Label>
                <asp:Label ID="lblidempresa" runat="server"></asp:Label>
                <asp:Label ID="lblidproveedor" runat="server"></asp:Label>
                <asp:Label ID="lblhasta" runat="server"></asp:Label>
            </asp:Panel>
                </div>
        </div>
              
         
          <asp:Panel ID="PanelPagar" runat="server" >
            
            <div class="row">  
                <h3><asp:Label ID="lblcuenta2" runat="server"></asp:Label> <br /><small>            
                  
                      &nbsp; PAGO N°:<asp:Label ID="lblcuota2" runat="server"></asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMPORTE:
                      <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                      <asp:Label ID="lblpagarImporte" runat="server" style="font-weight: 700"></asp:Label>
                      &nbsp;, Detracción:
                      <asp:Label ID="lblpagarDetraccion" runat="server"></asp:Label>
                    &nbsp; F.VENCIMIENTO:
                    <asp:Label ID="lblfechavencimiento" runat="server"></asp:Label>
                    <asp:Label ID="lblmontodetaccion2" runat="server" Visible="False"></asp:Label>
                    &nbsp;&nbsp;
                  </small></h3> 
                <hr />
                <asp:Panel ID="Panelayuda" runat="server" Visible="False">
                    <small>IDPAGO<asp:Label ID="lblidpago2" runat="server"></asp:Label>
                    &nbsp;<small>IDDETALLE<asp:Label ID="lbliddetallePagar2" runat="server"></asp:Label>
                    &nbsp;/
                    <asp:Label ID="lblrutatt" runat="server" Text=""></asp:Label>
                    &nbsp;&nbsp; monedaDEtallePago:
                    </small>
                    <asp:Label ID="lblidmonedaDEtallePAgpo" runat="server"></asp:Label>
                    &nbsp; idmonedaPAgo: </small>
                    <asp:Label ID="lblidMonedaPago10" runat="server"></asp:Label>
                    &nbsp;&nbsp; FechaFActuracion :
                    <asp:Label ID="lblFechaFActuracionDEt20" runat="server"></asp:Label>
                </asp:Panel>
            </div>

              

              <asp:Panel ID="pPagonormal" runat="server">
                  <table class="auto-style1">
                      <tr>
                          <td WIDTH="200" >
                              <strong>Detalle de pago:</strong></td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >&nbsp;</td>
                      </tr>
                      <tr>
                          <td width="200">
                              <asp:SqlDataSource ID="SqlDataSourceMedioPago" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pago_mediopago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                              <asp:DropDownList ID="ddlbMedioPago1" runat="server" class="form-control" DataSourceID="SqlDataSourceMedioPago" DataTextField="medioPago" DataValueField="idmediopago" Width="300px">
                              </asp:DropDownList>
                          </td>
                          <td width="200">
                              <asp:DropDownList ID="ddlBanco1" runat="server" class="form-control" DataSourceID="SqlDataSourceBANCO" DataTextField="banco" DataValueField="ID" Width="200px">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSourceBANCO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pagos_bancos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                          </td>
                          <td width="200">
                              <asp:TextBox ID="txtnoperacion1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                          </td>
                          <td width="200">
                              <asp:TextBox ID="txtfecha1" runat="server" class="form-control" TextMode="Date" Width="200px"></asp:TextBox>
                          </td>
                          <td width="200">
                              <asp:TextBox ID="txtimportepagado1" runat="server" class="form-control" Width="200px" type="number" step="0.0001"></asp:TextBox>
                          </td>
                          <td width="200">&nbsp;</td>
                      </tr>
                      <tr>
                          <td>MEDIO DE PAGO:</td>
                          <td>BANCO:</td>
                          <td>NºOPERACIÓN:</td>
                          <td>FECHA DE PAGO:</td>
                          <td>IMPORT. PAGADO:</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td><strong>Detalle factura:</strong></td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>
                              <asp:DropDownList ID="ddltpComprobante" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION" DataValueField="ID" Height="30px" Width="300px">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource3"  runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                          </td>
                          <td>
                              <asp:TextBox ID="txtcomprobanteSerie1" class="form-control" runat="server" Width="200px"></asp:TextBox>
                          </td>
                          <td>
                              <asp:TextBox ID="txtcomprobanteNum1" class="form-control" runat="server" Width="200px"></asp:TextBox>
                          </td>
                          <td>
                              <asp:TextBox ID="txtcomprobanteFecha1" class="form-control" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                          </td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>TP. COMPROBANTE</td>
                          <td>COMPROBANTE SERIE:</td>
                          <td>COMPROBANTE NÚMERO:</td>
                          <td>COMPROBANTE FECHA</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="4">
                              <asp:FileUpload ID="FileUpload1" runat="server" />
                          </td>
                          <td>
                              &nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Button ID="btResgistrarpago" runat="server" class="btn btn-success" OnClick="btResgistrarpago_Click" Text="REGISTRAR CON COMPROBANTE" Width="300px" />
                          </td>
                          <td colspan="2">
                              <asp:Button ID="btResgistrarpagosinComprobante" runat="server" class="btn btn-success" OnClick="btResgistrarpagosinComprobante_Click" Text="REGISTRAR SIN COMPROBANTE" Width="300px" />
                          </td>
                          <td>&nbsp;</td>
                          <td>
                              <asp:Button ID="btRegistrarAdelanto" runat="server" class="btn btn-default" OnClick="btRegistrarAdelanto_Click" Text="Pago parcial" Visible="False" />
                              <small>
                              <asp:LinkButton ID="lbCancelar0" runat="server" class="btn btn-group-sm btn-default" OnClick="lbCancelar_Click" Width="200px">Salir</asp:LinkButton>
                              </small>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblmensaje" runat="server" ForeColor="#CC3300"></asp:Label>
                          </td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                  </table>

  
              <hr />
                  </asp:Panel>





                   <asp:Panel ID="PanelpagoDetraccion" runat="server" class="form-inline" role="form" >
                    

                        <table class="auto-style1">
                      <tr>
                          <td WIDTH="200" >
                              <strong>Detalle de pago detracción: </strong></td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >
                              &nbsp;</td>
                          <td WIDTH="200" >
                              <small>
                              <asp:Label ID="lblmoneda0" runat="server"></asp:Label>
                              &nbsp; </small>
                              <asp:Label ID="lblimporteorigen20" runat="server" Font-Bold="True"></asp:Label>
                              <br />
                              IMPORTE DETRACCIÓN:</td>
                          <td WIDTH="200" >&nbsp;</td>
                      </tr>
                            <tr>
                                <td width="200">
                                    <asp:DropDownList ID="ddlbMedioPago20" runat="server" class="form-control" DataSourceID="SqlDataSourceMedioPago" DataTextField="medioPago" DataValueField="idmediopago" Width="300px">
                                    </asp:DropDownList>
                                </td>
                                <td width="200">
                                    <asp:DropDownList ID="ddlBanco20" runat="server" class="form-control" DataSourceID="SqlDataSourceBANCO" DataTextField="banco" DataValueField="ID" Width="200px">
                                    </asp:DropDownList>
                                </td>
                                <td width="200">
                                    <asp:TextBox ID="txtnoperacion20" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                </td>
                                <td width="200">
                                    <asp:TextBox ID="txtconstancia20" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                </td>
                                <td width="200">
                                    <asp:TextBox ID="txtimportepagado20" runat="server" class="form-control" Width="200px" type="number" step="0.0001"></asp:TextBox>
                                </td>
                                <td width="200">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="200">MEDIO DE PAGO:</td>
                                <td width="200">BANCO:</td>
                                <td width="200">N°OPERACIÓN:</td>
                                <td width="200">CONSTANCIA:</td>
                                <td width="200">DETRACCIÓN PAGO SOLES:</td>
                                <td width="200">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="200" colspan="4">
                                    <asp:FileUpload ID="FileUploadDetraccion" runat="server" />
                                    &nbsp;</td>
                                <td width="200">
                                    <asp:TextBox ID="txtfecha20" runat="server" class="form-control" TextMode="Date" Width="200px"></asp:TextBox>
                                </td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">
                                    <asp:Label ID="lblrutattDetraccion" runat="server"></asp:Label>
                                </td>
                                <td width="200">FECHA DE PAGO:</td>
                                <td width="200">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="200">
                                    <asp:LinkButton ID="lb_pagoDetraccion0" runat="server" class="btn btn-info" OnClick="lb_pagoDetraccion_Click" Width="300px">REGISTRAR PAGO DETRACCION</asp:LinkButton>
                                </td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200"><small>
                                    <asp:LinkButton ID="lbCancelar1" runat="server" class="btn btn-group-sm btn-default" OnClick="lbCancelar1_Click" Width="200px">Salir</asp:LinkButton>
                                    </small></td>
                                <td width="200">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                                <td width="200">&nbsp;</td>
                            </tr>
                            </table>



                   

                      
                  </asp:Panel>
             
               
              <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#990000"></asp:Label>
			</asp:Panel> 	        
        </div>
               <div class="container-fluid">
         
                  <asp:Panel ID="PanelCuadro" runat="server"  class="row">
     
    <div class="col-md-12">
        <div class="table-responsive">  
              <asp:Panel ID="pOrdendepago" class="alert alert-success" runat="server" style="text-align: center">
                  <strong>IMPORTE(S) A ORDEN DE PAGO:</strong> DOLARES(<asp:Label ID="lblimporteDolares" runat="server" style="font-weight: 700">0.00</asp:Label>
                  )+ SOLES(<asp:Label ID="lblimportesoles" runat="server" style="font-weight: 700">0.00</asp:Label>
                  )=<asp:Label ID="lblmontoaPagarTOTAL" runat="server" style="font-weight: 700">0.00</asp:Label>
                  &nbsp;DOLARES<br />
                  <strong>DETRACCIÓN A PAGAR:</strong> <asp:Label ID="lblttsolesdetraccion" runat="server" Text="0.00" Font-Bold="True"></asp:Label>  &nbsp; SOLES&nbsp;&nbsp;<br /> <strong>DEPOSITOS VALIDADOS:&nbsp;</strong>&nbsp;<asp:Label ID="lbltotalDepositos3" runat="server"></asp:Label>
                  &nbsp; SOLES<br /> &nbsp;( en
                  <asp:Label ID="lblitem" runat="server" style="font-weight: 700">0</asp:Label>
                  &nbsp;ctas, por pagar y
                  <asp:Label ID="lblnDepositosValidados20" runat="server" style="font-weight: 700">0</asp:Label>
                  &nbsp;&nbsp;depòsitos por realizar)<br /> <asp:LinkButton ID="lbtnVerregistrosSelec" runat="server" OnClick="lbtnVerregistrosSelec_Click">registros seleccionados</asp:LinkButton>
                  <asp:Panel ID="PanelpagosSeleccionados" runat="server">
                      <span class="auto-style2">PAGOS PROGRAMADOS A PAGOS:</span><br />
                      <asp:GridView ID="gvPagosSeleecionados" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,idpagos" DataSourceID="SqlDataSourceselecc" Font-Size="Small" OnSelectedIndexChanged="gvPagosSeleecionados_SelectedIndexChanged" Width="100%">
                          <Columns>
                              <asp:TemplateField HeaderText="Nª CUENTA" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PAGO") %>'></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="idDetalle" HeaderText="COD" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                              <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                              <asp:BoundField DataField="PAGO" HeaderText="Nº CTA" ReadOnly="True" SortExpression="PAGO" Visible="False" >
                              <HeaderStyle Width="80px" />
                              <ItemStyle Font-Bold="True" Width="80px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" ReadOnly="True" SortExpression="CUOTA" />
                              <asp:BoundField DataField="MONEDAP" ReadOnly="True" SortExpression="MONEDAP" >
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPORTEDIRECTOFACT" DataFormatString="{0:0,0.00}" HeaderText="IMP. DIRECTO" ReadOnly="True" SortExpression="IMPORTEDIRECTOFACT">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DETRACC" DataFormatString="{0:0,0.00}" HeaderText="IMP. DETRACCIÓN" ReadOnly="True" SortExpression="DETRACC">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DETRACCSOLES" DataFormatString="{0:0,0.00}" HeaderText="DETRACCIÓN SOLES" ReadOnly="True" SortExpression="DETRACCSOLES">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="FVENCIMIENTOFAT" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" SortExpression="FVENCIMIENTOFAT">
                              <HeaderStyle Width="80px" />
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDPROVEEDOR" HeaderText="IDPROVEEDOR" SortExpression="IDPROVEEDOR" Visible="False" />
                              <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" ReadOnly="True" SortExpression="PROVEEDOR" >
                              <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                              <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="400px" />
                              </asp:BoundField>
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourceselecc" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_selecionados" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblidempresa" Name="idempresa" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <br />
                      <span class="auto-style2">DEPOSITOS PROGRAMADOS A REALIZAR</span>: TOTAL: s/
                      <asp:Label ID="lbltotalDepositos2" runat="server" Font-Bold="True"></asp:Label>
                      <asp:GridView ID="gvDepositosValidadosGG" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2Validadodep" OnSelectedIndexChanged="gvDepositosValidadosGG_SelectedIndexChanged" Width="100%">
                          <Columns>
                              <asp:TemplateField HeaderText="SOLICITUD" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("SOLICITUD") %>'></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                              <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" Visible="False" />
                              <asp:BoundField DataField="idUsuario" HeaderText="COD. PERSONAL" SortExpression="idUsuario" />
                              <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="fecha" />
                              <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                              <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLIC." SortExpression="descripcion" />
                              <asp:BoundField DataField="tpmoneda" ReadOnly="True" SortExpression="tpmoneda" />
                              <asp:BoundField DataField="importe" HeaderText="IMPORTE" SortExpression="importe" />
                              <asp:BoundField DataField="AsesorEstado" HeaderText="AsesorEstado" ReadOnly="True" SortExpression="AsesorEstado" Visible="False" />
                              <asp:BoundField DataField="GDHEstado" HeaderText="GDHEstado" ReadOnly="True" SortExpression="GDHEstado" Visible="False" />
                              <asp:BoundField DataField="EstadoDescuento" HeaderText="EstadoDescuento" ReadOnly="True" SortExpression="EstadoDescuento" Visible="False" />
                              <asp:BoundField DataField="sistemaFecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRA" SortExpression="sistemaFecha" />
                              <asp:BoundField DataField="EstadoDeposito" HeaderText="EstadoDeposito" SortExpression="EstadoDeposito" Visible="False" />
                              <asp:BoundField DataField="EstadoCobrado" HeaderText="EstadoCobrado" SortExpression="EstadoCobrado" Visible="False" />
                              <asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" Visible="False" />
                          </Columns>
                          <EmptyDataTemplate>
                              No registra deposito interno a realizar...
                          </EmptyDataTemplate>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource2Validadodep" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_ResumenSolicitudesPrestamosValidados" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                  </asp:Panel>
              </asp:Panel>


            <asp:Panel ID="PDepositos" runat="server">
                  <h4>DEPOSITOS INTERNOS POR REALIZAR:</h4>

                  <asp:Panel ID="pDeposito1" runat="server">
                      <asp:Panel ID="pDepositos2pagos" runat="server" Visible="False">
                      <table class="auto-style3" bgcolor="#FAFAFA">
                          <tr>
                              <td>&nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td>&nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td colspan="4"><strong>DETALLE DEPOSITO INTERNO:<asp:Label ID="lblIDDeposito" runat="server" Visible="False"></asp:Label>
                                  &nbsp;
                                  <asp:Label ID="lblCodSolic" runat="server"></asp:Label>
                                  </strong></td>
                          </tr>
                          <tr>
                              <td class="auto-style4"><strong>TIPO SOLICITUD:</strong></td>
                              <td colspan="3" class="auto-style4">
                                  <asp:Label ID="lblTipoSolicitud" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>SOLICITA: </td>
                              <td colspan="3">
                                  <asp:Label ID="lblIDSolicita" runat="server" Visible="False"></asp:Label>
                                  &nbsp;<asp:Label ID="lblnombreSolicita" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td colspan="3">&nbsp;</td>
                          </tr>
                          <tr>
                              <td><strong>IMPORTE</strong>:</td>
                              <td>
                                  <asp:Label ID="lblmonedaDeposito" runat="server"></asp:Label>
                                  &nbsp;<asp:Label ID="lblmonedaMonto" runat="server"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                              <td>
                                  <asp:LinkButton ID="lblVermasdetalles" runat="server" OnClick="lblVermasdetalles_Click">Ver mas ...</asp:LinkButton>
                              </td>
                          </tr>
                          <tr>
                              <td><strong>F. REGISTRA:</strong></td>
                              <td>
                                  <asp:Label ID="lblfechaRegistra" runat="server"></asp:Label>
                              </td>
                              <td><strong>F. SOLICITA:</strong></td>
                              <td>
                                  <asp:Label ID="lblfechaSolicita" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style4">MEDIO PAGO:</td>
                              <td class="auto-style4">
                                  <asp:DropDownList ID="ddlbMedioPago21" runat="server" class="form-control" DataSourceID="SqlDataSourceMedioPago" DataTextField="medioPago" DataValueField="idmediopago" Width="250px">
                                  </asp:DropDownList>
                              </td>
                              <td class="auto-style4">BANCO:</td>
                              <td class="auto-style4">
                                  <asp:DropDownList ID="ddlBanco21" runat="server" class="form-control" DataSourceID="SqlDataSourceBANCO" DataTextField="banco" DataValueField="ID" Width="200px">
                                  </asp:DropDownList>
                              </td>
                          </tr>
                          <tr>
                              <td>Nº OPERACIÓN:</td>
                              <td>
                                  <asp:TextBox ID="txtnoperacion21" runat="server" class="form-control" Width="250px"></asp:TextBox>
                              </td>
                              <td>FECHA PAGO:</td>
                              <td>
                                  <asp:TextBox ID="txtfecha21" runat="server" class="form-control" TextMode="Date" Width="200px"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style5">IMPORTE PAGADO:</td>
                              <td class="auto-style5">
                                  <asp:TextBox ID="txtimportepagado21" runat="server" class="form-control"  Width="200px" Enabled="False"></asp:TextBox>
                              </td>
                              <td class="auto-style5"></td>
                              <td class="auto-style5"></td>
                          </tr>
                          <tr>
                              <td colspan="4">
                                  <asp:Label ID="lblmensajeDeposito" runat="server" ForeColor="#CC0000"></asp:Label>
                                  <asp:Label ID="lblcorreos" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td colspan="3">
                                  <asp:Button ID="Button2" runat="server" Text="CONFIRMAR DEPOSITO" Width="100%" OnClick="Button2_Click" />
                              </td>
                              <td>
                                  <asp:Button ID="btnCerrarDeposito" runat="server" OnClick="btnCerrarDeposito_Click" Text="CERRAR" Width="100%" BackColor="#FFF0F0" />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                      </table>
                      <br />
                  </asp:Panel>

                      <asp:RadioButtonList ID="rbtEstadoDeposito" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtEstadoDeposito_SelectedIndexChanged" RepeatDirection="Horizontal" Visible="False">
                          <asp:ListItem Selected="True" Value="4">PRESTAMOS APROBADOS</asp:ListItem>
                          <asp:ListItem Value="1">DEPOSITOS REALIZADOS</asp:ListItem>
                          <asp:ListItem Value="0">DEPOSITOS OBSERVADOS</asp:ListItem>
                      </asp:RadioButtonList>
                      <asp:Label ID="lblestadoPrestamo" runat="server" Visible="False">4</asp:Label>
                      <asp:GridView ID="gvResumensolicitudes" runat="server" AllowPaging="True" AutoGenerateColumns="False" Class="table table-hover table-condensed "  GridLines="Horizontal" DataKeyNames="COD,SOLICITUD,descripcion,tpmoneda,importe,sistemaFecha,fecha,idUsuario" DataSourceID="SqlDataSourceDeposito" OnRowCommand="gvResumensolicitudes_RowCommand" OnSelectedIndexChanged="gvResumensolicitudes_SelectedIndexChanged" PageSize="15" Width="100%" Font-Size="Small">
                          <Columns>
                              <%--<asp:BoundField DataField="AsesorEstado" HeaderText="AsesorEstado" SortExpression="AsesorEstado" />--%><%--<asp:BoundField DataField="GDHEstado" HeaderText="GDHEstado" SortExpression="GDHEstado" />--%><%--<asp:BoundField DataField="EstadoDescuento" HeaderText="ESTADO SOLICITUD" SortExpression="EstadoDescuento" />--%>
                              <%-- <asp:ImageField DataImageUrlField="EstadoDescuento" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="SOLICITUD ESTADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>--%>
                      <%-- <asp:TemplateField HeaderText="" SortExpression="idfacturacion" Visible="False">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idDetalle") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <span>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="X-Large" />
                                                        &nbsp;&nbsp; </span>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idDetalle") %>' Visible="False"></asp:Label>
                                                    <asp:Label ID="Labelimporte" runat="server" Text='<%# Bind("monto") %>' Visible="False"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:TemplateField>--%>
                               <asp:ButtonField ButtonType="Button" CommandName="Pagar" ImageUrl="~/images/1pagar.png" ShowHeader="True" Text="U$S">
                               <ControlStyle Height="30px" Width="40px" />
                               <HeaderStyle Width="30px" />
                               <ItemStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                               </asp:ButtonField>
                               <asp:ButtonField ButtonType="Image" CommandName="Ver" ImageUrl="~/images/buscarr.png" ShowHeader="True" Text="Ver">
                               <ControlStyle Height="30px" Width="30px" />
                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
                               </asp:ButtonField>
                               <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" >
                               <HeaderStyle Width="50px" />
                              </asp:BoundField>
                               <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" >
                               <HeaderStyle Width="100px" />
                              </asp:BoundField>
                               <asp:BoundField DataField="idUsuario" HeaderText="COD. SOLICITA" SortExpression="idUsuario">
                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                               </asp:BoundField>
                               <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                              <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLICITUD" SortExpression="descripcion" />
                              <asp:BoundField DataField="tpmoneda" HeaderText="" ReadOnly="True" SortExpression="tpmoneda">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="importe" HeaderText="MONTO" ReadOnly="True" SortExpression="importe">
                              <HeaderStyle Width="50px" />
                              <ItemStyle Width="50px" />
                              </asp:BoundField>
                               <asp:BoundField DataField="sistemaFecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRA" SortExpression="sistemaFecha">
                               <HeaderStyle Width="100px" />
                               <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                               </asp:BoundField>
                               <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="fecha">
                               <HeaderStyle Width="100px" />
                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                               </asp:BoundField>
                               <asp:ImageField DataImageUrlField="EstadoDeposito" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO DEPOSITO" Visible="False">
                                   <ControlStyle Height="18px" Width="18px" />
                                   <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                               </asp:ImageField>
                               <asp:ImageField DataImageUrlField="EstadoCobrado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="DESCUENTO APLICADO" Visible="False">
                                   <ControlStyle Height="18px" Width="18px" />
                                   <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                               </asp:ImageField>
                               <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/ctafac{0}.gif" Visible="True">
                                   <ControlStyle Height="15px" Width="15px" />
                                   <HeaderStyle Width="15px" />
                                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                               </asp:ImageField>
                      <asp:ButtonField ButtonType="Button" CommandName="si" HeaderText="" ShowHeader="True" Text="*">
                      <HeaderStyle Width="10px" />
                              <ItemStyle Width="10px" />
                      </asp:ButtonField>
                      


                              <asp:ButtonField CommandName="mostrar" ShowHeader="True" Text="Ver solicitud" Visible="False">
                              <ControlStyle CssClass="btn btn-success " />
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:ButtonField>
                          </Columns>
                          <EmptyDataTemplate>
                              No registra depósitos por realizar...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      Total depositos validados: S/.
                      <asp:Label ID="lblttDepositosValidadossoles" runat="server"></asp:Label>
                      <asp:SqlDataSource ID="SqlDataSourceDeposito" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_ResumenSolicitudesPrestamos" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblestadoPrestamo" Name="opSol" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </asp:Panel>

                <br />
              </asp:Panel>

              <asp:GridView ID="gvcuentascpagar" runat="server" AutoGenerateColumns="False" Class="table table-hover table-condensed " DataKeyNames="idDetalle,idpagos,VALIDAR,CTA" DataSourceID="SqlDataSource1" Font-Size="Small" GridLines="Horizontal" OnRowCommand="gvcuentascpagar_RowCommand" OnRowDataBound="gvcuentascpagar_RowDataBound" OnSelectedIndexChanged="gvcuentascpagar_SelectedIndexChanged" Width="100%">
                  <Columns>
                      <asp:ButtonField ButtonType="Button" CommandName="Pagar" ImageUrl="~/images/1pagar.png" ShowHeader="True" Text="U$S">
                      <ControlStyle Height="30px" Width="40px" />
                      <HeaderStyle Width="30px" />
                      <ItemStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                      </asp:ButtonField>
                      <asp:ButtonField ButtonType="Image" CommandName="Ver" ImageUrl="~/images/buscarr.png" ShowHeader="True" Text="Ver">
                      <ControlStyle Height="30px" Width="30px" />
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
                      </asp:ButtonField>
                      <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                      <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                      <asp:BoundField DataField="CTA" HeaderText="CTA" SortExpression="CTA" >
                      <HeaderStyle Width="100px" />
                      </asp:BoundField>
                      <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL">
                      <ItemStyle Font-Size="XX-Small" />
                      </asp:BoundField>
                      <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" Visible="False">
                      <ItemStyle Font-Size="X-Small" />
                      </asp:BoundField>
                      <asp:BoundField DataField="glosa" HeaderText="ASUNTO" SortExpression="glosa">
                      <ItemStyle Font-Size="XX-Small" />
                      </asp:BoundField>
                      <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M">
                      <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <asp:BoundField DataField="monto" DataFormatString="{0:0,0.00}" HeaderText="MONTO" SortExpression="monto">
                      <HeaderStyle Width="70px" />
                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <asp:BoundField DataField="DETRACCION" HeaderText="DTRAC" SortExpression="DETRACCION">
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <asp:BoundField DataField="ncuota" HeaderText="CUOTA" SortExpression="ncuota">
                      <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" />
                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <asp:BoundField DataField="fechavencto" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" SortExpression="fechavencto">
                      <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <asp:ImageField DataImageUrlField="DOC" DataImageUrlFormatString="~/images/FACT{0}.png" HeaderText="">
                          <ControlStyle Height="20px" Width="18px" />
                          <HeaderStyle Width="20px" />
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:ImageField>
                      <asp:ImageField DataImageUrlField="SERVC" DataImageUrlFormatString="~/images/c{0}.png">
                          <ControlStyle Height="15px" Width="15px" />
                          <HeaderStyle Width="15px" />
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:ImageField>
                      <asp:BoundField DataField="DIAS" HeaderText="DIAS" ReadOnly="True" SortExpression="DIAS">
                      <HeaderStyle Width="20px" />
                      <ItemStyle Font-Size="XX-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <asp:BoundField DataField="AVISO" HeaderText="AVISO" ReadOnly="True" SortExpression="AVISO" Visible="False" />
                      <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                      <asp:ImageField DataImageUrlField="AVISO" DataImageUrlFormatString="~/images/{0}.png" Visible="False">
                          <ControlStyle Height="10px" Width="10px" />
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:ImageField>
                      <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/ctafac{0}.gif" Visible="True">
                          <ControlStyle Height="15px" Width="15px" />
                          <HeaderStyle Width="15px" />
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:ImageField>
                      <asp:BoundField DataField="VALIDAR" HeaderText="*" SortExpression="VALIDAR" Visible="False">
                      <HeaderStyle Width="0px" />
                      <ItemStyle Font-Size="X-Large" ForeColor="#009933" HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:BoundField>
                      <%-- <asp:TemplateField HeaderText="" SortExpression="idfacturacion" Visible="False">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idDetalle") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <span>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="X-Large" />
                                                        &nbsp;&nbsp; </span>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idDetalle") %>' Visible="False"></asp:Label>
                                                    <asp:Label ID="Labelimporte" runat="server" Text='<%# Bind("monto") %>' Visible="False"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:TemplateField>--%>
                      <asp:ButtonField ButtonType="Button" CommandName="si" HeaderText="" ShowHeader="True" Text="*">
                      <HeaderStyle Width="10px" />
                      </asp:ButtonField>
                     <%-- <asp:ButtonField ButtonType="Button" CommandName="no" HeaderText="NO" ShowHeader="True">
                      <HeaderStyle Width="10px" />
                      </asp:ButtonField>--%>
                  </Columns>
                  <HeaderStyle BackColor="#F0F0F0" />
              </asp:GridView>
              (
              <asp:Label ID="lblncuentas" runat="server"></asp:Label>
              &nbsp;Items registrados).<br /> &nbsp;<asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images/ctafac1.png" Width="20px" />
              &nbsp;= Cta. seleccionada a realizar pago |
              <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/FACT1.png" Width="20px" />
              &nbsp;= Cta. con factura registrada |
              <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/c1.png" Width="20px" />
              &nbsp;= Cta. pagos fijos <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_cuentasxpagar" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblidempresa" Name="idempresa" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblidproveedor" Name="idprovedor" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblhasta" DbType="Date" Name="hasta" PropertyName="Text" />
                  </SelectParameters>
              </asp:SqlDataSource>
             </div> 
               
                             <asp:Panel ID="Panel2" runat="server" Visible="False" >
                                
                            
                                            <asp:Button ID="btCalc" runat="server"  Text="Calcular importe selecionado" OnClick="btCalc_Click" />
                     
                                     
                                         <asp:Label ID="Label3"  runat="server"></asp:Label> 
                                            <asp:Label ID="lblCtaSeleccionado" runat="server" Visible="False"></asp:Label>
                                            <asp:Button ID="btRegistrarCalculo" runat="server" BackColor="#C0E377" OnClick="btRegistrarCalculo_Click" OnClientClick="return confirm('Confirmar orden de pago?');" Text="Orden de pago" Visible="False" />
                                            <asp:Button ID="btQuitar" runat="server" ForeColor="#990000" Text="Quitar de orden" />
                                            &nbsp;<asp:Label ID="lblimporteselecionado" runat="server" Font-Size="X-Large"></asp:Label>

                            </asp:Panel>

  </div>
       

        </asp:Panel>     
      </div>
   
         
                  
      
        <asp:Panel ID="PanelInformacion" runat="server" class="row">
            <strong>INFORMACIÓN</strong>
            <asp:Label ID="lbliddetallePagar1" runat="server"></asp:Label>

        </asp:Panel>
        
          </div>
        <br />
</div>
</asp:Content>
