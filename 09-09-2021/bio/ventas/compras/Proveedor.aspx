<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="biotech.bio.ventas.compras.Proveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
     
             <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-sign-out"></i> PROVEEDORES<asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
                           
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblIDusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidCAtProveedor2020" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>  </div> 

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
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>
                    </ol>
            </div>


       <div class="form-horizontal">
       
            

            <asp:Panel ID="PanelMENSAJE" runat="server">
            
             <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label>
            </div>
            </asp:Panel>
            
            
            
            <asp:Panel ID="PanelDatos" runat="server">
            <div class="panel panel-success">
                  <div class="panel-heading">ADMINISTRAR PROVEEDOR:</div>
                  <div class="panel-body">
        
                  
            <div class="form-group row">

				  <label for="txtruc" class="col-md-1 control-label">
                  RUC:</label>
				  <div class="col-md-2">
                      <asp:TextBox ID="txtruc" placeholder="RUC" required Class="form-control" runat="server" MaxLength="12"></asp:TextBox>                     
				  </div>
				  
				  <div class="col-md-5">
                      <asp:TextBox ID="txtrazonsocial" placeholder="Razón Social" required class="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
				  </div>
                 <div class="col-md-2">
                      <asp:TextBox ID="txtabreviatura" required class="form-control" runat="server" placeholder="Abreviatura"  Style="text-transform: uppercase" ToolTip="Indicar abreviatura" MaxLength="10"></asp:TextBox>
				  </div>
                  <div class="col-md-2">
                      <asp:DropDownList ID="ddlempresa" class="form-control" runat="server" DataSourceID="SqlDataSourceempresa" DataTextField="empresa" DataValueField="id"></asp:DropDownList>
				      <asp:SqlDataSource ID="SqlDataSourceempresa" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([EstadoActual] = @EstadoActual)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="1" Name="EstadoActual" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
				  </div>
			</div>
            <div class="form-group row">
				  <label for="txttelefono" required class="col-md-1 control-label">TELEF:</label>
				  <div class="col-md-2">
                      <asp:TextBox ID="txttelefono" Class="form-control" placeholder="111-1111 / ..." runat="server"></asp:TextBox>  
                                          
				  </div>
				  <label for="txtdireccion" required class="col-md-1 control-label">DIRECC:</label>
				  <div class="col-md-8">
                      <asp:TextBox ID="txtdireccion" class="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
				  </div>
                 
			</div>
            <div class="form-group row">
				  <label for="txtcontacto" class="col-md-1 control-label">CONTACTO:</label>
				  <div class="col-md-5">
                      <asp:TextBox ID="txtcontacto" Class="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>                     
				  </div>
				  <label for="txtcorreo" class="col-md-1 control-label">CORREO:</label>
				  <div class="col-md-5">
                      <asp:TextBox ID="txtcorreo" class="form-control" runat="server"></asp:TextBox>
				  </div>
                 
			</div>

            <div class="form-group row">
               

                 <label for="ddltipo" class="col-md-1 control-label"><asp:Label ID="lblidProveedortipo" runat="server"></asp:Label>TIPO:
                  </label>
				  <div class="col-md-3">
                      <asp:DropDownList ID="ddltipoProveedor" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3provtipo" DataTextField="descripcion" DataValueField="id" OnSelectedIndexChanged="ddltipo_SelectedIndexChanged"></asp:DropDownList>
				      <asp:SqlDataSource ID="SqlDataSource3provtipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="provee_tipos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
				  </div>

				  
                  <label for="ddlcategoria" class="col-md-1 control-label">CAT:<asp:Label ID="lblidProveedorCategoria" runat="server"></asp:Label>
                  </label>
				  <div class="col-md-3">
                      <asp:DropDownList ID="ddlcategoriaProveedor" class="form-control" runat="server" DataSourceID="SqlDataSourceCatre" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>
				      <asp:SqlDataSource ID="SqlDataSourceCatre" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proveedor_listadoCategoriaxTipo" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblidProveedortipo" Name="idtipoProvee" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
				  </div>
                 <label for="ddlzona" class="col-md-1 control-label">ZONA:<asp:Label ID="lblidzona" runat="server" Visible="False"></asp:Label>
                 </label>
                 <div class="col-md-3">
                       <asp:DropDownList ID="ddlzona" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idZona"></asp:DropDownList>
				       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_Zona]"></asp:SqlDataSource>
				  </div>


               
			</div>

               <div class="form-group row">
				  <label for="ddlBanco" class="col-md-1 control-label">CONDICIÓN:</label>
				  <div class="col-md-3">
                      <asp:RadioButtonList ID="rbCondicion" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rbCondicion_SelectedIndexChanged" Width="100%">
                          <asp:ListItem>CONTADO</asp:ListItem>
                          <asp:ListItem>CREDITO</asp:ListItem>
                      </asp:RadioButtonList>
                  </div>
                   <%--<asp:Panel ID="PanelCOND" runat="server"></asp:Panel>--%>
                    <label for="rbcond" class="col-md-1 control-label">COMPROB.:</label>
				  <div class="col-md-3">
                      <asp:DropDownList ID="ddlcond" CssClass="form-control" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="idcondPago">
                         
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idcondPago], [descripcion] FROM [TipocondPago] WHERE ([estado] = @estado) ORDER BY [orden]">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
                          </SelectParameters>
                      </asp:SqlDataSource>
				  </div>
                    <label for="txtdias" class="col-md-1 control-label">DIAS:</label>
				  <div class="col-md-1">
                      <asp:TextBox ID="txtndias" class="form-control" runat="server" Width="100%"></asp:TextBox>
				  </div>
                    <label for="txtmonto" class="col-md-1 control-label">IMPORTE:</label>
				  <div class="col-md-1">
                      <asp:TextBox ID="txtmonto" class="form-control" placeholder="Importe" runat="server" ToolTip="Ingresar importe de credito aprox."></asp:TextBox>
				  </div>

			</div>

                      <div class="form-group row">
                          <label for="ddlListaDetraccion"  class="col-md-1 control-label">DETRAC.:</label>
                            <div class="col-md-3">
                                <asp:DropDownList ID="ddlListaDetraccion" class="form-control" runat="server" DataSourceID="SqlDataSource7" DataTextField="detalle" DataValueField="idDetraccion">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM PAGOS.Detracciones where estado = 1
"></asp:SqlDataSource>
				  </div>
                          <div class="col-md-3">
                              <asp:TextBox ID="nCuentaDetraccion" PLACEHOLDER="Cta. detracción" Class="form-control" runat="server"></asp:TextBox>
                          </div>
                           

                        
                          
				  <div class="col-md-5">
                       
                      <asp:TextBox ID="txtnnumcuenta" class="form-control" runat="server" Enabled="False" Width="100%"></asp:TextBox>
				  </div>


                      </div>

         <asp:Button ID="btregistrar" class="btn btn-success" runat="server" Text="REGISTRAR PROVEEDOR" Visible="False" OnClick="btregistrar_Click" />
                    <asp:Button ID="btActualizar" class="btn btn-info" runat="server" Text="ACTUALIZAR PROVEEDOR" OnClick="btActualizar_Click" />
                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-default" OnClick="LinkButton2_Click">  CANCELAR   </asp:LinkButton>
            
           </div>

                  <asp:Panel ID="panelcuentasBanco" runat="server">
                      <strong>CUENTAS BANCARIAS: </strong>
                      <asp:LinkButton ID="lbtnnuevacuenta" runat="server" OnClick="lbtnnuevacuenta_Click">Nueva cuenta</asp:LinkButton>
                      <br />
                      <asp:GridView ID="gbcuentasBancarias" class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idProveedor,idbanco,NcuentasDolares,cciDolares,NcuentaSoles,cciSoles" DataSourceID="SqlDataSourcecuentas" Width="100%" OnSelectedIndexChanged="gbcuentasBancarias_SelectedIndexChanged">
                          <Columns>
                              <asp:CommandField ShowSelectButton="True" />
                              <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" ReadOnly="True" SortExpression="idProveedor" Visible="False" />
                              <asp:BoundField DataField="idbanco" HeaderText="idbanco" ReadOnly="True" SortExpression="idbanco" Visible="False" />
                              <asp:BoundField DataField="banco" HeaderText="BANCO" SortExpression="banco" />
                              <asp:BoundField DataField="NcuentasDolares" HeaderText="CTA. DOLARES" SortExpression="NcuentasDolares" />
                              <asp:BoundField DataField="cciDolares" HeaderText="CCI DOLARES" SortExpression="cciDolares" />
                              <asp:BoundField DataField="NcuentaSoles" HeaderText="CTA. SOLES" SortExpression="NcuentaSoles" />
                              <asp:BoundField DataField="cciSoles" HeaderText="CCI SOLES" SortExpression="cciSoles" />
                          </Columns>
                          <EmptyDataTemplate>
                              No registra cuenta bancaria....
                          </EmptyDataTemplate>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecuentas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proveedor_Listadocuentas" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblidCodigoProveedor" Name="idproveedor" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:SqlDataSource ID="SqlDataSourceBancos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_bancos"></asp:SqlDataSource>
                      <table class="auto-style1">
                          <tr>
                              <td>
                                  <asp:DropDownList ID="ddlctaBanco" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceBancos" DataTextField="banco" DataValueField="id" Width="180px">
                                  </asp:DropDownList>
                                  BANCO:</td>
                              <td>
                                  <asp:TextBox ID="txtcuentaDolares" CssClass="form-control"  runat="server" Width="170px"></asp:TextBox>
                               
                                  CUENTA DOLARES:</td>
                              <td>
                                  <asp:TextBox ID="txtcciDolares" CssClass="form-control"  runat="server" Width="170px"></asp:TextBox>
                                  CCI DOLARES:</td>
                              <td>
                                  <asp:TextBox ID="txtcuentaSoles" CssClass="form-control"  runat="server" Width="170px"></asp:TextBox>
                                  CUENTA SOLES:</td>
                              <td>
                                  <asp:TextBox ID="txtCCiSoles" CssClass="form-control"  runat="server" Width="170px"></asp:TextBox>
                                  CCI SOLES:</td>
                              <td>&nbsp;</td>
                              <td>
                                  <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="REGISTRAR CUENTAS" />
                              </td>
                              <td>
                                  <asp:ImageButton ID="ibtnEliminarDetraccion" runat="server" ImageUrl="~/images/eliminarr.png" OnClick="ibtnEliminarDetraccion_Click" Visible="False" Width="40px" />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                      </table>
                  </asp:Panel>
                  <asp:Panel ID="Panelayudacta" runat="server" Visible="False">
                      ID PROVEEDOR:
                      <asp:Label ID="lblidproveedor50" runat="server"></asp:Label>
                      &nbsp; id banco:
                      <asp:Label ID="lblIdctaBanco50" runat="server"></asp:Label>
                      &nbsp; idproveedor:
                      <asp:Label ID="lblidCodigoProveedor" runat="server"></asp:Label>
                  </asp:Panel>
               
                </div>
</asp:Panel>
            <br />

            <div class="form-group row">
                <div class="col-md-4">
                    <asp:Button ID="btnuevo" class="btn btn-success" runat="server" Text="NUEVO" OnClick="btnuevo_Click" />
               
                </div>
                 <div class="col-md-3">
                     <asp:TextBox ID="txtbuscar" placeholder="Ingresar proveedor" class="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtbuscar_TextChanged"></asp:TextBox>
                </div>
                <div class="col-md-1">
                    <asp:Button ID="btBuscar" class="btn btn-default" runat="server" Text="BUSCAR" OnClick="btBuscar_Click" />
                </div>
                   <div class="col-md-2">
                        <asp:DropDownList ID="ddlEmpresa20" class="form-control" runat="server" DataSourceID="SqlDataSource5" DataTextField="empresa" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlEmpresa20_SelectedIndexChanged"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([EstadoActual] = @EstadoActual)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="EstadoActual" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                
                <div class="col-md-1">
                      <asp:Button ID="btTodos" class="btn btn-default" runat="server" Text="TODOS" OnClick="btTodos_Click" />
                </div>	
                <div class="col-md-1">
                <asp:LinkButton ID="lb_retornar" class="btn btn-default" runat="server" OnClick="lb_retornar_Click" Visible="False">Retornar</asp:LinkButton>
                </div>	
		   </div>

            <br />
            
            <asp:Label ID="lblprovedor" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblcodtipo" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblcodproveedor" runat="server" Visible="False"></asp:Label>
            <asp:GridView ID="gvProveedores" class="table table table-striped table-sm  table-hover"   runat="server" AutoGenerateColumns="False" DataKeyNames="ID,RUC,idempresa" DataSourceID="SqlDataSourceProveedor" AllowPaging="True"  PageSize="30" Width="100%" GridLines="Horizontal" BorderStyle="None" OnSelectedIndexChanged="gvProveedores_SelectedIndexChanged" Font-Size="X-Small">
                <Columns>
                    <asp:TemplateField HeaderText="RUC" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("RUC") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                    <asp:BoundField DataField="CUENTA" HeaderText="CUENTA" SortExpression="CUENTA" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" Visible="False" />
                    <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                    <asp:BoundField DataField="CONTACTO" HeaderText="CONTACTO" SortExpression="CONTACTO" >
                    <ItemStyle Font-Size="X-Small" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" SortExpression="ESTADO" />
                </Columns>
                <HeaderStyle BackColor="#E9E9E9" />
            </asp:GridView>

       
            <asp:SqlDataSource ID="SqlDataSourceProveedor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="provee_listadoxtp" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblcodtipo" Name="tp" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblprovedor" Name="provedor" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                 
       </div>
           
     </asp:Content>
