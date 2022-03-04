<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ComprasReg.aspx.cs" Inherits="biotech.bio.ventas.compras.ComprasReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>NUEVA OC</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
        .auto-style2 {
            width: 893px;
        }
        .auto-style3 {
            height: 40px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
   

     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-shopping-cart  "></i> Compras / Gastos<asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
                           
                            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
       
        <asp:Label ID="lblmensajecompra" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                        </h3>
                      </div>  

     </div> 
    <div class="row">    
       <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/Proveedor.aspx">Proveedores</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotizaciones</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Compras</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cta. por pagar</asp:LinkButton>
                        </li>
       </ol>
     </div>

    <div class="row">
        <asp:LinkButton ID="lbtcon" class="btn btn-default" runat="server" OnClick="lbtcon_Click">CON COTIZACIÓN</asp:LinkButton><asp:LinkButton ID="lbtsin" class="btn btn-default" runat="server" OnClick="lbtsin_Click">SIN COTIZACIÓN</asp:LinkButton>
       
        &nbsp;&nbsp;
        
       
    &nbsp;
     <asp:LinkButton ID="lbRegProveedor" runat="server">Registrar Proveedor</asp:LinkButton>
         &nbsp;</div>

    <asp:Panel ID="pCotaprobadas" runat="server">
     

   
    <div class="row">
         <div class="panel panel-info">
                        <div class="panel-heading">
                          <strong>Cotizaciones aprobadas
                            <asp:Label ID="Label1" runat="server" Text="POR ATENDER"></asp:Label>
                            : 
                           <asp:Label ID="lblestado" runat="server" Text="1" Visible="False"></asp:Label>                              
        <asp:Label ID="lbldato" runat="server" Visible="False"></asp:Label>
                              &nbsp;
                              </strong>
                            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Por atender</asp:LinkButton>
                            /
                            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Atendidas</asp:LinkButton>
                        </div>
                       
          <div class="table-responsive">
        <asp:GridView ID="gvCotizaciones" class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idCotizacion,RAZONSOCIAL,COTIZACION,RUC,ASUNTO,MONEDA,idSolicita,IDCONDPAGO,tpmoneda,TT" DataSourceID="SqlDataSourcCot" Font-Size="X-Small" GridLines="None" AllowPaging="True" OnRowCommand="gvCotizaciones_RowCommand" PageSize="5" OnSelectedIndexChanged="gvCotizaciones_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField ShowHeader="False" HeaderText="N° COT.">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("COTIZACION") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="80px" />
                </asp:TemplateField>
                <asp:BoundField DataField="idCotizacion" HeaderText="idCotizacion" ReadOnly="True" SortExpression="idCotizacion" Visible="False" />
                <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION" Visible="False" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL" >
                <HeaderStyle Width="400px" />
                <ItemStyle Font-Size="XX-Small" Width="400px" />
                </asp:BoundField>
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FEXPIRA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EXPIRA" SortExpression="FEXPIRA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CODAUTORIZA" HeaderText="AUTORIZA" SortExpression="CODAUTORIZA" >
                <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="condicion" HeaderText="CONDICIÓN" SortExpression="condicion" />
                <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TT">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                  <asp:ButtonField CommandName="comprar" HeaderText="" ShowHeader="True" Text="Comprar" />
            
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" Visible="False" />
                <asp:BoundField DataField="tpmoneda" HeaderText="tpmoneda" SortExpression="tpmoneda" Visible="False" />
                <asp:BoundField DataField="idSolicita" HeaderText="idSolicita" SortExpression="idSolicita" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcCot" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasCot_ListadoEstado" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblestado" Name="estado" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lbldato" Name="dato" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
   
                 </div>

             </div>
           </asp:Panel>
    
    <div class="row">
        <%--  <div class="col-md-2 ">
                                <asp:TextBox ID="txtproveebanco" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                               <small id="Small4" class="form-text text-muted mb-2">Banco</small>
                            <small id="Small19" class="form-text text-muted mb-2">
                                <asp:Label ID="Label9" runat="server" ForeColor="#990000" Text="*"></asp:Label>
                                </small>
                            </div>
                    <div class="col-md-2">
                                <asp:TextBox ID="txtproveeNcuenta" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                                 <small id="Small1" class="form-text text-muted mb-2">N° Cuenta</small>
                            <small id="Small20" class="form-text text-muted mb-2">
                                <asp:Label ID="Label10" runat="server" ForeColor="#990000" Text="*"></asp:Label>
                                </small>
                            </div>--%>


                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="lblfechasistema" runat="server"></asp:Label>
                                IDPROV:<asp:Label ID="lblidproveedor" runat="server"></asp:Label>
                                &nbsp;IDCOTSELECT:<asp:Label ID="lblidCotSelecionado" runat="server"></asp:Label>
                                &nbsp;GRUPOSERIE<asp:Label ID="lblgrupo" runat="server"></asp:Label>
                                <asp:Label ID="lblserie" runat="server"></asp:Label>
                                <strong>
                                <asp:Label ID="lblidoc" runat="server" Text="0"></asp:Label>
                                </strong>
                            </asp:Panel>
        <%--<small id="Small6" class="form-text text-muted mb-2">Moneda</small>--%>

         <asp:Panel ID="PanelDatosCot" runat="server">
             <div class="alert alert-info">
                                <table class="nav-justified">
                                    <tr>
                                        <td class="auto-style3"><strong>COTIZACIÓN</strong>:<br />
                                            <asp:LinkButton ID="lblDetcot" runat="server" OnClick="lblDetcot_Click"></asp:LinkButton>
                                        </td>
                                        <td class="auto-style3" colspan="2"><strong>PROVEEDOR</strong>:<asp:Label ID="lblidProveedorCot" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblproveedorCot" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style3"><strong>AUTORIZA</strong>:<asp:Label ID="lblidAutorizaCot" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblautorizaCot" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3"><strong>IMPORTE:
                                            </strong><asp:Label ID="lblidmonedaCot" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblimportecot" runat="server"></asp:Label>
                                            <asp:Label ID="lblmonedacot" runat="server"></asp:Label>
                                            <br />
                                        </td>
                                        
                                        <td class="auto-style3"><strong>TIPO COTIZACIÓN</strong>:<asp:Label ID="lblidTipoCot" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblTipoCot" runat="server"></asp:Label>
                                            
                                            -<br /> <strong>DETALLE CONDICIÓN PAGO:</strong><asp:Label ID="lblcotTpPagoDescripcion" runat="server"></asp:Label>
                                            <asp:Label ID="lblCotIdTpPago" runat="server" Visible="False"></asp:Label>
                                            <br />

                                            <strong>
                                            CENTRO DE COSTO</strong>:<asp:Label ID="lblIdCentroCostoCot" runat="server" Visible="False"></asp:Label>
                                           
                                            <asp:Label ID="lblcentrocostoCot" runat="server"></asp:Label>
                                            <br />
                                        </td>
                                        <td class="auto-style3"><strong>UNIDAD</strong>:<asp:Label ID="lblidunidadCot" runat="server" Visible="False"></asp:Label>
                                            -<asp:Label ID="lblidunidad" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblUnidadcot" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style3"><strong>SOLICITA</strong>:<asp:Label ID="lblidSolicitaCot" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblnomsolictacod" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>

                 </div>
                            </asp:Panel>
         <div class="panel panel-success">
                        <div class="panel-heading">
                            
                           
                            <h4><strong>REG. ORDEN DE COMPRA / SERVICIOS N°:
                              </strong> <asp:Label ID="lbloc" runat="server" Font-Bold="True"></asp:Label>
                              &nbsp;&nbsp;</h4>
                        </div>
            
        <div class="panel-body">

            <asp:Panel ID="ppagoreg"  class="form-horizontal" runat="server">


                <div class="form-group row">
                          
							<div class="col-md-3">
								<asp:DropDownList ID="ddlempresa" class="form-control input-sm"  runat="server" DataSourceID="SqlDataSourceEmpresa" DataTextField="empresa" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlempresa_SelectedIndexChanged"></asp:DropDownList>
				                <asp:SqlDataSource ID="SqlDataSourceEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([estado] = @estado) AND ID>3">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <small id="Small23" class="form-text text-muted mb-2">Empresa <asp:Label ID="Label11" runat="server" ForeColor="#990000" Text="*"></asp:Label></small>
							</div>
                   
							<%--<label for="txtfecha" class="col-md-1 col-md-offset-1 control-label">F.Emisión:</label>--%>
							<div class="col-md-3 ">
                                  <asp:DropDownList ID="ddlSolicita" class="form-control input-sm" runat="server" DataSourceID="SqlDataSourcesolicita" DataTextField="NOMBRE" DataValueField="id" Height="30px" Width="100%"></asp:DropDownList>


							    <asp:SqlDataSource ID="SqlDataSourcesolicita" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="compra_CotAutorizados" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="10" Name="todos" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                                 <small id="Small10" class="form-text text-muted mb-2">
                                Solicita
                                </small>
								 </div>
						 <div class="col-md-3 ">
                                    <asp:TextBox ID="txtfechaCompra" runat="server" required class="form-control input-sm"   ToolTip="Fecha de registo de cuenta" TextMode="Date" ></asp:TextBox>
                         <small id="Small12" class="form-text text-muted mb-2">
                                    Fecha compra:
                                </small>
					</div>
                  
                      <div class="col-md-3">
                        <asp:DropDownList ID="ddlSerComp" CssClass="form-control input-sm" runat="server" DataSourceID="SqlDataSourceTPOC" DataTextField="tipo" DataValueField="codoc">
                            <asp:ListItem Selected="True" Value="C">COMPRA</asp:ListItem>
                            <asp:ListItem Value="S">SERVICIO</asp:ListItem>
                        </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSourceTPOC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [CompraCotTipo]"></asp:SqlDataSource>
                         <small id="Small14" class="form-text text-muted mb-2">Tipo OC.</small>
                    </div>
				</div> 

               
                 <div class="form-group row">
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl10CC" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcecca" DataTextField="Descripcion" DataValueField="idCentroCosto"  AutoPostBack="True" OnSelectedIndexChanged="ddl10CCA_SelectedIndexChanged">
                                    </asp:DropDownList>
                                   
                        <small id="Small1" class="form-text text-muted mb-2">
                            <asp:SqlDataSource ID="SqlDataSourcecca" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.CCostoAdministrativo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            Centro de costo:</small>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl10CCaux" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2ccauxi"  DataTextField="CATEGORIA" DataValueField="idCategoria" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCaux_SelectedIndexChanged">
                                    </asp:DropDownList>
                                
                        <small id="Small41" class="form-text text-muted mb-2">
                            <asp:SqlDataSource ID="SqlDataSource2ccauxi" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_distribucionxcc" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl10CC" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            CC. auxiliar:</small>
                        </div>
                        <div class="col-md-3">
                                    <asp:DropDownList ID="dd10tipocompras"  CssClass="form-control" runat="server" DataSourceID="SqlDataSourcecctipo" DataTextField="titulo" DataValueField="idccdet" >
                                    </asp:DropDownList>
                                
                        <small id="Small19" class="form-text text-muted mb-2">
                                    <asp:SqlDataSource ID="SqlDataSourcecctipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ddl10CCaux" Name="idcat" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    Tipo de gasto:</small>
                        </div>
                    
                         
                 </div>



                      
                     <asp:Panel ID="Panelplaca" runat="server">
                         <div class="form-group row">
                      <div class="col-md-3 ">
                                    <%--<asp:TextBox ID="txtPlaca" runat="server" required class="form-control"   ></asp:TextBox>--%>
                          <asp:DropDownList ID="ddlplaca" class="form-control input-sm" runat="server" DataSourceID="SqlDataSourceUnidades" DataTextField="PLACA" DataValueField="IdEquipo" AutoPostBack="True" OnSelectedIndexChanged="ddlplaca_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceUnidades" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                         <small id="Small21" class="form-text text-muted mb-2">
                                    Unidad vehicular:&nbsp;</small><asp:Label ID="estadosinUnidad" runat="server" Visible="False"></asp:Label>
                         </div>
                     
                         
                          <div class="col-md-2">
                             
                               <asp:RadioButtonList ID="rbsolicutudTec" runat="server" CLASS="form-control" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rbsolicutudTec_SelectedIndexChanged" CellPadding="2" Width="100%">
                                   <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                   <asp:ListItem Value="0">NO</asp:ListItem>
                              </asp:RadioButtonList>
                               <small id="Small25" class="form-text text-muted mb-2">
                                 Solicitud Técnica
                                </small>
                              </div>
                             <asp:Panel ID="PanelSubPlaca" runat="server">
                    <div class="col-md-2">
                        <asp:DropDownList ID="ddlsolictudTecnicaxCerrar" class="form-control" runat="server" DataSourceID="SqlDataSourceSOLTEC" DataTextField="solicitus" DataValueField="idsolicitud"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceSOLTEC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_SolicitudTecnica_xcerrar" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidunidad" Name="idEquipo" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <small id="Small24" class="form-text text-muted mb-2">
                            <asp:LinkButton ID="lbtnsolTEc" runat="server" OnClick="lbtnsolTEc_Click">Solicitud Técnica</asp:LinkButton></small>
                        </div>
                                 </asp:Panel>
                            <div class="col-md-2 ">
                            <asp:TextBox ID="txtkm" required type="number" CssClass="form-control" runat="server">0</asp:TextBox>
                             <small id="Small17" class="form-text text-muted mb-2">
                                 Kilometraje:<asp:Label ID="lblkmRevOridinal1" runat="server"></asp:Label>
                                &nbsp;Km
                                </small>
                     </div>
                             </div>
                         </asp:Panel>

                     <hr />
                     <div class="form-group row">
                <div class="col-md-3">
                         <div class="input-group">
                           <asp:TextBox ID="txtproveebuscar" class="form-control input-sm" placeholder="RUC / Proveedor..." runat="server" ></asp:TextBox>
                          <span class="input-group-btn">
                              <asp:LinkButton ID="lbtBuscar" class="btn btn-success input-sm" runat="server" OnClick="lbtBuscar_Click">Buscar</asp:LinkButton>
                          
                          </span>
                        </div>
                    </div>
                     
                 </div>
             

                  <div class="form-group row">
                            
                           
                      
							<div class="col-md-2">
                                <asp:TextBox ID="txtproveedorruc" class="form-control input-sm"  placeholder="RUC..."  runat="server" readonly Width="100%"  ></asp:TextBox>
                                <small id="Small16" class="form-text text-muted mb-2">RUC <asp:Label ID="Label7" runat="server" ForeColor="#990000" Text="*"></asp:Label></small>
                            </div>
                          
							<div class="col-md-4">
                            <asp:TextBox ID="txtproveedorrazonsocial" placeholder="Razón social..." class="form-control input-sm" runat="server" Width="100%" readonly ></asp:TextBox>
                                <small id="Small15" class="form-text text-muted mb-2">Razón social <asp:Label ID="Label6" runat="server" ForeColor="#990000" Text="*"></asp:Label></small>
                            </div>   
                       <div class="col-md-3">
                                <asp:TextBox ID="txtproveeTelefono" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                                 <small id="Small3" class="form-text text-muted mb-2">Teléfono
                                <asp:Label ID="Label3" runat="server" ForeColor="#990000" Text="*"></asp:Label>
                                </small>
                            &nbsp;</div>
                       <div class="col-md-3">
                                <asp:TextBox ID="txtproveeContacto" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                                 <small id="Small5" class="form-text text-muted mb-2">Contacto</small>
                                <asp:Label ID="Label2" runat="server" ForeColor="#990000" Text="*"></asp:Label>
                            </div>
                           
                       
                                              
							
                      </div>
                 <fieldset disabled="">
                     <div class="form-group row">
                      <div class="col-md-6">
                            <asp:TextBox ID="txtproveedireccion" placeholder="Dirección..." class="form-control input-sm"  runat="server" readonly Width="100%"></asp:TextBox>
                          <small id="Small22" class="form-text text-muted mb-2">Direccion <asp:Label ID="Label5" runat="server" ForeColor="#990000" Text="*"></asp:Label></small>
                            </div>  
                            <div class="col-md-3">
                                <asp:TextBox ID="txtproveeCorreo" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                                 <small id="Small2" class="form-text text-muted mb-2">Correo</small>
                            </div>
                  <%--  <div class="col-md-2 ">
                                <asp:TextBox ID="txtproveebanco" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                               <small id="Small4" class="form-text text-muted mb-2">Banco</small>
                            <small id="Small19" class="form-text text-muted mb-2">
                                <asp:Label ID="Label9" runat="server" ForeColor="#990000" Text="*"></asp:Label>
                                </small>
                            </div>
                    <div class="col-md-2">
                                <asp:TextBox ID="txtproveeNcuenta" class="form-control input-sm" runat="server" readonly Width="100%"></asp:TextBox>
                                 <small id="Small1" class="form-text text-muted mb-2">N° Cuenta</small>
                            <small id="Small20" class="form-text text-muted mb-2">
                                <asp:Label ID="Label10" runat="server" ForeColor="#990000" Text="*"></asp:Label>
                                </small>
                            </div>--%>
                    </div>
                     <div class="form-group row">
                      <div class="col-md-12">
                              <asp:GridView ID="gvctaBancos" runat="server" AutoGenerateColumns="False" DataKeyNames="idProveedor,idbanco" DataSourceID="SqlDataSourcecuentas">
                                  <Columns>
                                      <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" ReadOnly="True" SortExpression="idProveedor" Visible="False" />
                                      <asp:BoundField DataField="idbanco" HeaderText="idbanco" ReadOnly="True" SortExpression="idbanco" Visible="False" />
                                      <asp:BoundField DataField="banco" HeaderText="CUENTAS BANCARIAS" SortExpression="banco" />
                                      <asp:BoundField DataField="NcuentasDolares" HeaderText="CTA. DÓLARES" SortExpression="NcuentasDolares" />
                                      <asp:BoundField DataField="cciDolares" HeaderText="CCI DÓLARES" SortExpression="cciDolares" />
                                      <asp:BoundField DataField="NcuentaSoles" HeaderText="CTA. SOLES" SortExpression="NcuentaSoles" />
                                      <asp:BoundField DataField="cciSoles" HeaderText="CCI SOLES" SortExpression="cciSoles" />
                                  </Columns>
                                  <EmptyDataTemplate>
                                      No registra cuentas bancarias....
                                  </EmptyDataTemplate>
            </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSourcecuentas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proveedor_Listadocuentas" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblidproveedor" Name="idproveedor" PropertyName="Text" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                     </div>
                         </div>
                 </fieldset>

                
                
                <div class="form-group row">

                    
							<div class="col-md-6">
                                <asp:TextBox ID="txtasunto" required class="form-control input-sm" placeholder="Asunto..." runat="server"></asp:TextBox>
                    </div>
                     <div class="col-md-3">
                                <asp:RadioButtonList ID="rbmoneda"   runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbmoneda_SelectedIndexChanged" RepeatDirection="Horizontal">                            
                                <asp:ListItem Value="D">DOLARES</asp:ListItem>
                                <asp:ListItem Value="S" Selected="True">SOLES</asp:ListItem>                               
                                </asp:RadioButtonList>	
                           <%--<small id="Small6" class="form-text text-muted mb-2">Moneda</small>--%>
                            </div>
              </div>



              
                </asp:Panel>

        

            <asp:Panel ID="PanelOCConpado" runat="server">
            <div class="row">
         <div class="col-md-6">
            
             <div class="panel panel-success">
                        <div class="panel-heading">
                            CONDICIÓN COMPRA/PAGO:
                        </div>
                        <div class="panel-body">
                         
                      
                   
             <div class="form-horizontal">
              
                                 <div class="form-group">
                                          <label for="ddlempresa" class="col-md-3 control-label">Tipo pago:</label>
                                            <div class="col-md-5">
                                                 <asp:DropDownList ID="ddlCondCompra" CssClass="form-control  input-sm" runat="server" DataSourceID="SqlDataSourcecond" DataTextField="condicion" DataValueField="idCondpago" AutoPostBack="True" OnSelectedIndexChanged="ddlCondCompra_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourcecond" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [CompraCotCondPago]"></asp:SqlDataSource>
                                        </div>  
                                                <div class="col-md-3">
                                          <asp:TextBox ID="txtadelanto" Class="form-control" placeholder="Adelanto" requerid runat="server"  type="number" step="0.0001" Enabled="False" Width="100%">0</asp:TextBox>
                                               
                                </div>   
                                          </div>
                              

                                    <div class="form-group">
                                          <label for="ddlempresa" class="col-md-3 control-label">Form. pago:</label>
                                       

							<div class="col-md-5">
                                         <asp:DropDownList ID="ddltipopagoo" CssClass="form-control  input-sm" runat="server" DataSourceID="SqlDataSource8" DataTextField="descripcion" DataValueField="OC_formapago" AutoPostBack="True" OnSelectedIndexChanged="ddltipopagoo_SelectedIndexChanged">
                                        </asp:DropDownList>
                                       
                                        
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [oc_formapago] WHERE ([estado] = @estado)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="2" Name="estado" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                </div>
                                        <div class="col-md-3">
                                          <asp:TextBox ID="txtfpdias" Class="form-control  input-sm"  requerid runat="server" pLACEHOLDER="dias" type="number" Enabled="False" Width="100%">0</asp:TextBox>
                                               
                                </div>                                                               
                                         </div>


                                        <div class="form-group">
                                          <label for="ddlempresa" class="col-md-3 control-label">F. entrega:</label>
                                            <div class="col-md-4">
                                                <asp:TextBox ID="txtFechaEntrega" required  CssClass="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>
                                            </div>
                                             <div class="col-md-5">
                                                 <asp:DropDownList ID="ddlbEntregatipo" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="ddlbEntregatipo_SelectedIndexChanged" Width="100%">
                                                     <asp:ListItem Selected="True" Value="TOTAL">ENTREGA TOTAL</asp:ListItem>
                                                     <asp:ListItem Value="PARCIAL">ENTREGA PARCIAL</asp:ListItem>
                                                 </asp:DropDownList>
                                            </div>
                                           
                                        </div>

                                        <div class="form-group">
                                          <label for="ddlempresa" class="col-md-3 control-label">L. entrega:</label>
                                            <div class="col-md-9">
                                                <asp:TextBox ID="txtLugarEntrega" placeholder="Lugar de entrega..." CssClass="form-control  input-sm" runat="server" ></asp:TextBox>
                                            </div>                                                                                   
                                        </div>

                                        <div class="form-group">
                                          <label for="ddlempresa" class="col-md-3 control-label">Detalle pago:</label>
                                            <div class="col-md-9">
                                                <asp:TextBox ID="txtReferencia" placeholder="50% de adelanto, ...." CssClass="form-control input-sm" runat="server" ></asp:TextBox>
                                            </div>                                                                                   
                                        </div>
                                        

                 </div>

                                 </div>
        </div>
             </div>
   
        <div class="col-md-6">
              
             <div class="panel panel-success">
                        <div class="panel-heading">
                           FACTURAR A:
                        </div>
                        <div class="panel-body">
                         
                        

             <div class="form-horizontal">
                                      <div class="form-group">
                                         
							        <div class="col-md-12">
                                        <strong>RUC: </strong><asp:Label ID="lblimportanteRuc" runat="server" class="form-control-static"></asp:Label>
                                        &nbsp;-
                                        <asp:Label ID="lblidfacturara" runat="server" Visible="False"></asp:Label>
                                        <strong>
                                        <asp:Label ID="lblimportanteFacturara" runat="server" class="form-control-static"></asp:Label>     
                                       </strong>
                                        
                                        </div>
                                     </div>

                                  
                                    
                                    <div class="form-group">
                                        
							        <div class="col-md-12">
                                        <asp:Label ID="lblimportanteDireccion" class="form-control-static" runat="server"></asp:Label>
                                                 
                                        </div>
                                     </div>
                    
                 </div>
<asp:Button ID="btRegProductos" CssClass="btn btn-success" runat="server" Text="REGISTRAR OC / INGRESAR PRODUCTO" Width="100%" OnClick="btRegProductos_Click" />
                            <asp:Label ID="lblmensajeRegoc" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
        </div>   
</div>

</div>
</div>
 </asp:Panel>
            <asp:Panel ID="PanelOCproductos" runat="server">
          


           


                 <div class="col-md-6">
              
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    PRODUCTOS/SERVICIOS A COMPRAR:
                                    <asp:Label ID="lblidmayorocDet" runat="server" Visible="False"></asp:Label>
                                    &nbsp;
                                    <asp:CheckBox ID="igvCompra" runat="server" Checked="True" Text="IGV(18%)" />
                                </div>
                                <div class="panel-body">
                                      <div class="form-horizontal">
                                    <div class="form-group">
                                    
                                           
							            <div class="col-md-2">
                                            <asp:TextBox ID="txtcompraidpro" class="form-control input-sm" runat="server" AutoPostBack="True" OnTextChanged="txtcompraidpro_TextChanged"></asp:TextBox>
                                            <small id="Small6" class="form-text text-muted mb-2">COD.</small>
                                        </div>
                                        <div class="col-md-10">
                                            <asp:HiddenField ID="hfCustomerId" runat="server" />
                                            <asp:TextBox ID="txtcompraProducto" class="form-control input-sm" runat="server" Width="100%" Enabled="False"></asp:TextBox>
                                            <small id="Small7" class="form-text text-muted mb-2">
                                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Producto</asp:LinkButton></small>
                                        </div>
                                        
                                 </div>
                                 <div class="form-group">
                                      <div class="col-md-3">
                                             <asp:DropDownList ID="ddlOCundMedProducto" CssClass="form-control  input-sm" runat="server" DataSourceID="SqlDataSourceundmed" DataTextField="abreviatura" DataValueField="id"></asp:DropDownList>
                                             <asp:SqlDataSource ID="SqlDataSourceundmed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [id], [abreviatura], [unidad] FROM [UnidadMedida]"></asp:SqlDataSource>
                                         
                                         <small id="Small13" class="form-text text-muted mb-2">Und. medida</small>
                                         </div>
                                        <div class="col-md-3 ">
                                            <asp:TextBox ID="txtcompraproducPrecio" required class="form-control input-sm" runat="server"></asp:TextBox>
                                            <small id="Small8" class="form-text text-muted mb-2">Precio</small>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtcompraproducCantidad" required class="form-control input-sm" runat="server"></asp:TextBox>
                                            <small id="Small9" class="form-text text-muted mb-2">Cantidad</small>
                                        </div>
                                        <asp:Button ID="brREgProcompra" class="btn btn-success fa fa-link" runat="server" Text="+" OnClick="brREgProcompra_Click" />
                                       
                            </button>

                                   </div>
                                
                              </div>
                                    <strong>Detalle de Productos/Servicios OC:</strong><asp:Label ID="lblmensajeProducto" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
&nbsp;<div class="table-responsive">
                                     <asp:GridView ID="gvOCProductos"  class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleoc" DataSourceID="SqlDataSourceOCdET" Font-Size="XX-Small" OnRowDataBound="gvOCProductos_RowDataBound" OnDataBound="gvOCProductos_DataBound" OnSelectedIndexChanged="gvOCProductos_SelectedIndexChanged">
                                         <Columns>
                                             <asp:CommandField ShowSelectButton="True" SelectText="x" >
                                             <ControlStyle CssClass="btn btn-danger btn-circle btn-sm "></ControlStyle>
                                             </asp:CommandField>
                                             <asp:BoundField DataField="iddetalleoc" ReadOnly="True" SortExpression="iddetalleoc" HeaderText="iddetalleoc" Visible="False" />
                                             <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                                             <asp:BoundField DataField="CODP" HeaderText="COD" SortExpression="CODP" />
                                             <asp:BoundField DataField="UNDMED" HeaderText="UND." SortExpression="UNDMED" />
                                             <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                             <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                             </asp:BoundField>
                                             <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" DataFormatString="{0:0,0.00}" >
                                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                             </asp:BoundField>
                                             <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" SortExpression="SUBTT" Visible="False" />
                                             <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                             </asp:BoundField>
                                             <asp:BoundField DataField="TT" HeaderText="SUB.TT." SortExpression="TT" DataFormatString="{0:0,0.00}" >
                                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                             </asp:BoundField>
                                         </Columns>
                                      </asp:GridView>


                                      <asp:SqlDataSource ID="SqlDataSourceOCdET" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasOC_ListadoDet" SelectCommandType="StoredProcedure">
                                          <SelectParameters>
                                              <asp:ControlParameter ControlID="lblidoc" Name="idoc" PropertyName="Text" Type="Int32" />
                                          </SelectParameters>
                                      </asp:SqlDataSource>

                                          (
                                          <asp:Label ID="lblnumregistros" runat="server" Text="0"></asp:Label>
                                          &nbsp;items) SUB TOTAL:
                                        <asp:Label ID="lblsubtotal" runat="server">0.00</asp:Label>
                                        &nbsp; IGV:
                                        <asp:Label ID="lblsubigv" runat="server" ForeColor="Maroon">0.00</asp:Label>
                                        &nbsp;&nbsp; TOTAL:
                                        <asp:Label ID="lbltotal" runat="server" Font-Bold="True">0.00</asp:Label>

                                        </div>
                                    </div>
                                
                            </div>
                 
               
                 Detalle de entrega:
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                     <asp:ListItem Selected="True" Value="TOTAL">ENTREGA TOTAL</asp:ListItem>
                     <asp:ListItem Value="PARCIAL">ENTREGA PARCIAL</asp:ListItem>
                 </asp:DropDownList>
                <asp:Panel ID="TipoEntrega" runat="server">

                    <table class="nav-justified">
                        <tr>
                            <td WIDTH="70" class="auto-style1">F.entrega:<br />
                                <asp:TextBox ID="txtEntrega1"  runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td WIDTH="250" class="auto-style2">Descripción:<br />
                                <asp:TextBox ID="txtEntraga1Descrip"  runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td WIDTH="40">
                                <asp:LinkButton ID="LinkButton8" CssClass="btn btn-default" runat="server" OnClick="LinkButton8_Click">REGISTRAR</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="gvEntregas" class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="identrega" DataSourceID="SqlDataSourceEntregas" OnSelectedIndexChanged="gvEntregas_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" >
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="25px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="identrega" HeaderText="identrega" InsertVisible="False" ReadOnly="True" SortExpression="identrega" Visible="False" />
                                        <asp:BoundField DataField="idOc" HeaderText="idOc" SortExpression="idOc" Visible="False" />
                                        <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha">
                                        <HeaderStyle Width="80px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="entrega" HeaderText="ENTREGAS" SortExpression="entrega" />
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra entrega...
                                    </EmptyDataTemplate>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceEntregas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompra_Entrega] WHERE ([idOc] = @idOc)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidoc" Name="idOc" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </asp:Panel>
                     </div>
                 <br />
               
                <asp:Panel ID="pPRoductosCot" runat="server">
                <div class="col-md-6">
              
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                   PRODUCTOS COTIZADOS / DATA DE PRODUCTOS:
                                </div>
                                <div class="panel-body">

                                    <asp:Panel ID="PanelproCot" runat="server">
                                    <div class="table-responsive">
                                    <asp:GridView ID="gvDetcotselec" class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,COD,DESCRIPCION,CANT,PUNIT" DataSourceID="SqlDataSourceDetCotSelec" OnSelectedIndexChanged="gvDetcotselec_SelectedIndexChanged" Font-Size="X-Small" Width="100%">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                                            <asp:BoundField DataField="idCompraCot" HeaderText="idCompraCot" SortExpression="idCompraCot" Visible="False" />
                                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PUNIT" HeaderText="P.UNIT" SortExpression="PUNIT" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DSCTO" HeaderText="DSCTO" SortExpression="DSCTO" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            Seleccionar cotización...<br />
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceDetCotSelec" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasCot_ListDetalle" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidCotSelecionado" Name="idcot" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                       
                                    </div>
                                        </asp:Panel>
                                    <asp:Panel ID="PanelProSinCot" runat="server">
                                        <asp:TextBox ID="txtbuscarpro" runat="server" AutoPostBack="True" OnTextChanged="txtbuscarpro_TextChanged"></asp:TextBox>
                                        <asp:LinkButton ID="lbtbuscaproo" CssClass="btn btn-default" runat="server" OnClick="lbtbuscaproo_Click">Buscar</asp:LinkButton>
                                        <asp:DropDownList ID="ddlCentroCot" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id" OnSelectedIndexChanged="ddlCentroCot_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:LinkButton ID="lbtRegProduct" runat="server" CssClass="btn btn-default" OnClick="lbtRegProduct_Click">Registrar producto/servicio</asp:LinkButton>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OdenCompraCentro]"></asp:SqlDataSource>
                                        <asp:Label ID="lblidop" runat="server" Text="0" Visible="False"></asp:Label>
                                        <asp:Label ID="lblbuscarop" runat="server" Visible="False"></asp:Label>
                                        <div class="table-responsive">
                                        <asp:GridView ID="GridViewProSinCot" class="table table table-striped table-sm  table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="COD,DESCRIPCION,UND" DataSourceID="SqlDataSource3" Font-Size="X-Small" GridLines="None" OnSelectedIndexChanged="GridViewProSinCot_SelectedIndexChanged" Width="100%">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True">
                                                <HeaderStyle Width="100px" />
                                                </asp:CommandField>
                                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND" />
                                                <asp:BoundField DataField="CENTRO" HeaderText="CENTRO" ReadOnly="True" SortExpression="CENTRO" />
                                            </Columns>
                                            <EmptyDataTemplate>
                                                Producto o servicio no registrado....
                                            </EmptyDataTemplate>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasOC_ListarProductp" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblidop" Name="op" PropertyName="Text" Type="Int32" />
                                                <asp:ControlParameter ControlID="lblbuscarop" Name="producto" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                            </div>
                                    </asp:Panel>
                                    </div>
                            </div>
                 </div>
                    </asp:Panel>

           
            </asp:Panel>


        

            
         
            </div> 

         </div>
              
           
<%--                  </ContentTemplate>
            </asp:UpdatePanel>--%>
             
 
        </div>


    <div class="row">
     <div class="col-md-6">
          <asp:LinkButton ID="lbfinreg" CssClass="btn btn-success" runat="server" OnClick="lbfinreg_Click" Width="100%">FINALIZAR ORDEN COMPRA/SERVICIO</asp:LinkButton>
   
         
                                        

         </div>

        <div class="col-md-3 offset-md-3">
        </div>
        </div>
     <div class="row">
           <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="Maroon" Text="* Datos necesarios para la creaciòn de OC"></asp:Label>
 
        
         <br />
           <asp:Panel ID="Panel2" runat="server" Visible="False">
               Mail Admin:<asp:Label ID="lblcorreos" runat="server"></asp:Label>
               /&nbsp;&nbsp; coreo emite:
               <asp:Label ID="lblcorreoEmisor" runat="server"></asp:Label>
           </asp:Panel>

        
    </div>
    

</asp:Content>
