<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="Pagos_historial.aspx.cs" Inherits="biotech.porpagar.Pagos_historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: 18pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<script src="../js/sweetalert.min.js" type="text/javascript"></script>
<link href="../css/sweetalert.css" rel="stylesheet" type="text/css" />
    

    <div class="container-fluid">
		  <div class="row-fluid">
			<div class="col-md-12">
			<h2><span class="glyphicon glyphicon-edit"></span> PAGOS REALIZADOS<asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblempresa" runat="server" Visible="False">5</asp:Label>
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblfecha1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblfecha2" runat="server" Visible="False"></asp:Label>
                </h2>
			<hr>
			<div class="form-horizontal" role="form" id="datos_cotizacion">
                <div class="form-group row">
                     <div class="col-md-1">                
                      <asp:ImageButton ID="ibtnctaporpagar" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx" ImageUrl="~/images/bhome.png" Width="60px" ToolTip="Cuentas por pagar" Height="35px" />
                    </div>  
				  <label for="atencion" class="col-md-1 control-label">Fecha:</label>
				  <div class="col-md-2">
                      <asp:TextBox ID="TextBox1" required class="form-control" runat="server" TextMode="Date"></asp:TextBox>				
				  </div>
                    <label for="atencion" class="col-md-1 control-label">hasta:</label>
				 <div class="col-md-2">
                      <asp:TextBox ID="TextBox2" required class="form-control" runat="server" TextMode="Date"></asp:TextBox>				
				  </div>
                    <asp:Button ID="btBuscar" runat="server" class="col-md-1 btn btn-success" Text="GENERAR" OnClick="btBuscar_Click" />

                     <div class="col-md-1">
                         </div>
				</div>

                <div class="form-group row">
                    <strong>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/excel.png" Width="25px" OnClick="ImageButton1_Click" />
                         &nbsp;DETALLE PAGOS DIRECTOS:</strong>
                    <asp:Label ID="lblnpagoddirectos" runat="server"></asp:Label>
                    <asp:GridView ID="gvpdirectos"  Class="table table-condensed  table-hover table-striped"  runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,IDPAGO" DataSourceID="SqlDataSourcedirectos" Width="100%" Font-Size="Small" AllowSorting="True" OnRowDataBound="gvpdirectos_RowDataBound" OnSelectedIndexChanged="gvpdirectos_SelectedIndexChanged" OnRowCommand="gvpdirectos_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("idDetalle") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="idDetalle" HeaderText="COD" ReadOnly="True" SortExpression="idDetalle" Visible="False"  />
                            <asp:BoundField DataField="PAGO" HeaderText="CAT. PAGO" ReadOnly="True" SortExpression="PAGO" />
                            <asp:BoundField DataField="IMPORTEPAGADO" DataFormatString="{0:0,0.0000}" HeaderText="IMPORTE PAGADO" SortExpression="IMPORTEPAGADO">
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                            <asp:BoundField DataField="FPAGADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. PAGADA" SortExpression="FPAGADA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="MEDIOPAGO" HeaderText="MEDIO PAGO" SortExpression="MEDIOPAGO" />
                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                            <asp:BoundField DataField="NOPERACION" HeaderText="Nº OPERACION" ReadOnly="True" SortExpression="NOPERACION" />
                            <asp:BoundField DataField="NCUOTA" HeaderText="Nº CUOTA" SortExpression="NCUOTA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CONDPAGOFACT" HeaderText="COND. PAGO FACT" SortExpression="CONDPAGOFACT" />
                            <asp:BoundField DataField="NFACTURA" HeaderText="Nª FACTURA" ReadOnly="True" SortExpression="NFACTURA" />
                            <asp:BoundField DataField="EMISIONFACT" DataFormatString="{0:dd/MM/yyyy}" HeaderText="EMISIONFACT" SortExpression="EMISIONFACT">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                            <ItemStyle Font-Size="X-Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" >
                            <ItemStyle Font-Size="X-Small" Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                            <ItemStyle Font-Size="X-Small" Width="350px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DOCFACT" HeaderText="DOC. FACT" SortExpression="DOCFACT" Visible="false" />
                            
                             <asp:ImageField DataImageUrlField="DOCFAT1" DataImageUrlFormatString="~/images/{0}.png" HeaderText="">
                            <ControlStyle Height="20px" Width="15px" />
                            <HeaderStyle Width="10px" />
                        </asp:ImageField>
                        

                            <asp:BoundField DataField="AUTOR" HeaderText="AUTOR" SortExpression="AUTOR" />
                            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" Visible="False" />

                              <asp:ButtonField CommandName="BAJARFACT" HeaderText="DOC" ShowHeader="True" Text="DESCARGAR" ButtonType="Image" ImageUrl="~/images/BAJAR.png" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <ItemStyle Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:ButtonField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra pagos directos...
                        </EmptyDataTemplate>
                        <HeaderStyle Font-Size="X-Small" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcedirectos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pagos_HistorialDIRECTOS" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblempresa" Name="empresa" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblfecha1" DbType="Date" Name="f1" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblfecha2" DbType="Date" Name="f2" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Panel ID="Paneldetraccion" runat="server">
                        <strong>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/excel.png" OnClick="ImageButton2_Click" Width="25px" />
                        &nbsp;DETALLE PAGOS DETRACCCIÓN:&nbsp;
                      </strong>  <asp:Label ID="lblnpagoDetraccion" runat="server"></asp:Label>
                        
                        <asp:GridView ID="gvpDetraccion" Class="table table-condensed  table-hover table-striped"  runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idDetalle,IDPAGO" DataSourceID="SqlDataSourceDET" Width="100%" Font-Size="Small" OnRowCommand="gvpDetraccion_RowCommand" OnRowDataBound="gvpDetraccion_RowDataBound" OnSelectedIndexChanged="gvpDetraccion_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("idDetalle") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                                <asp:BoundField DataField="PAGO" HeaderText="PAGO" ReadOnly="True" SortExpression="PAGO" />
                                <asp:BoundField DataField="IMPORTEDET" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE DET." SortExpression="IMPORTEDET">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NFACTURA" HeaderText="Nº FACTURA" ReadOnly="True" SortExpression="NFACTURA" />
                                <asp:BoundField DataField="EMISIONFACT" DataFormatString="{0:dd/MM/yyyy}" HeaderText="EMISION FACT." SortExpression="EMISIONFACT">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FPAGADADET" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. PAGADA DET" SortExpression="FPAGADADET">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MEDPAGODET" HeaderText="MED PAGO DET." SortExpression="MEDPAGODET" />
                                <asp:BoundField DataField="BANCODET" HeaderText="BANCO DET." SortExpression="BANCODET" />
                                <asp:BoundField DataField="NOPERACIONDET" HeaderText="OPERACION DET." SortExpression="NOPERACIONDET" />
                                <asp:BoundField DataField="NCONSTANCIADET" HeaderText="CONSTANCIA DET." SortExpression="NCONSTANCIADET" />
                                <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" />
                                <asp:BoundField DataField="DOCDET" HeaderText="DOCDET" SortExpression="DOCDET" Visible="False" />
                               
                                  <asp:ImageField DataImageUrlField="DOCDET1" DataImageUrlFormatString="~/images/{0}.png" HeaderText="">
                            <ControlStyle Height="20px" Width="15px" />
                            <HeaderStyle Width="10px" />
                        </asp:ImageField>
                                <asp:BoundField DataField="ESTADODET" HeaderText="ESTADO DET." SortExpression="ESTADODET" Visible="False">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>

                                 <asp:ButtonField CommandName="BAJARFACTDET"  HeaderText="" ShowHeader="True" Text="bajar" ImageUrl="~/images/BAJAR.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="20px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                No registra pagos de detracción...
                            </EmptyDataTemplate>
                        </asp:GridView>
                        
                        <asp:SqlDataSource ID="SqlDataSourceDET" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pagos_HistorialDETRACCION" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblempresa" Name="empresa" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblfecha1" DbType="Date" Name="f1" PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblfecha2" DbType="Date" Name="f2" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                    </asp:Panel>
                    Descargar documento:
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/BAJAR.png" Width="20px" />
                    <br />
                    <br />
                    <strong><span class="auto-style1">DEPOSITOS REALIZADOS:</span></strong><asp:GridView ID="gvResumensolicitudes" runat="server" AllowPaging="True" AutoGenerateColumns="False" Class="table table-hover table-condensed "  GridLines="Horizontal" DataKeyNames="COD" DataSourceID="SqlDataSourceDeposito" PageSize="15" Width="100%" Font-Size="Small" AllowSorting="True" OnSelectedIndexChanged="gvResumensolicitudes_SelectedIndexChanged">
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
                               <asp:CommandField ShowSelectButton="True" />
                               <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" >
                              </asp:BoundField>
                               <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" >
                              </asp:BoundField>
                               <asp:BoundField DataField="idUsuario" HeaderText="COD. PERSONAL" SortExpression="idUsuario">
                               </asp:BoundField>
                               <asp:BoundField DataField="fecha" HeaderText="FECHA SOLICITA" SortExpression="fecha" />
                              <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                              <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLICITUD" SortExpression="descripcion">
                              </asp:BoundField>
                              <asp:BoundField DataField="tpmoneda" HeaderText="tpmoneda" ReadOnly="True" SortExpression="tpmoneda" Visible="False">
                              </asp:BoundField>
                               <asp:BoundField DataField="importe" HeaderText="IMPORTE" SortExpression="importe">
                               </asp:BoundField>
                               <asp:BoundField DataField="AsesorEstado" HeaderText="AsesorEstado" SortExpression="AsesorEstado" ReadOnly="True" Visible="False">
                               </asp:BoundField>
                               <asp:BoundField DataField="GDHEstado" HeaderText="GDHEstado" ReadOnly="True" SortExpression="GDHEstado" Visible="False" />
                              <asp:BoundField DataField="EstadoDescuento" HeaderText="EstadoDescuento" ReadOnly="True" SortExpression="EstadoDescuento" Visible="False" />
                              <asp:BoundField DataField="EstadoDepositoFecha" HeaderText="F. DEPOSITO" SortExpression="EstadoDepositoFecha" />
                              <asp:BoundField DataField="EstadoDeposito" HeaderText="ESTADO DEPOSITO" SortExpression="EstadoDeposito" Visible="False" />
                              <asp:BoundField DataField="EstadoCobrado" HeaderText="ESTADO ADMIN." SortExpression="EstadoCobrado" />
                              <asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" Visible="False" />
                          </Columns>
                          <EmptyDataTemplate>
                              No registra depósitos por realizar...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourceDeposito" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_DepositosRealizados" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                               <asp:ControlParameter ControlID="lblfecha1" DbType="Date" Name="f1" PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblfecha2" DbType="Date" Name="f2" PropertyName="Text" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                    <br />
                    </div>
                
            </div>
            </div>
           </div>

</asp:Content>
