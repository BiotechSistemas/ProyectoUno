<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ComprasOC.aspx.cs" Inherits="biotech.bio.ventas.compras.ComprasOC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
         <div class="panel panel-default">
                        <div class="panel-heading">
                          <strong>Registro de compras y gastos
                         <asp:Label ID="lblfechasistema" runat="server" Text="Label"></asp:Label>
                              </strong>
                        </div>
            
        <div class="panel-body">

            <asp:Panel ID="ppagoreg"  class="form-horizontal" runat="server">


                <div class="form-group row">
                            <label for="ddlempresa" class="col-md-1 control-label">Empresa:</label>
							<div class="col-md-2">
								<asp:DropDownList ID="ddlempresa" class="form-control"  runat="server" DataSourceID="SqlDataSourceEmpresa" DataTextField="empresa" DataValueField="id"></asp:DropDownList>
				                <asp:SqlDataSource ID="SqlDataSourceEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([estado] = @estado)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>

							<label for="txtfecha" class="col-md-1 col-md-offset-1 control-label">F.Emisión:</label>
							<div class="col-md-2">
								 <asp:TextBox ID="txtfecha" runat="server" required class="form-control"  TextMode="Date" ToolTip="Fecha de registo de cuenta"></asp:TextBox>
							</div>
							
							<label for="email" class="col-md-1 control-label">N° Doc/Fact:</label>
							<div class="col-md-2">
								 <asp:TextBox ID="txtndocumento" runat="server" required placeholder="N° documento" class="form-control" ToolTip="Número de documento"></asp:TextBox>	
							</div>
                     <div class="col-md-2">
                                <asp:RadioButtonList ID="rbmoneda"  class="form-control"  runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbmoneda_SelectedIndexChanged" RepeatDirection="Horizontal">                            
                                <asp:ListItem Value="D">DOLARES</asp:ListItem>
                                <asp:ListItem Value="S">SOLES</asp:ListItem>                               
                                </asp:RadioButtonList>	
                            </div>
				</div>

                  <div class="form-group row">
                            <label for="ddlempresa" class="col-md-1 control-label">Proveedor:</label>
							<div class="col-md-2">
                                <asp:TextBox ID="txtproveedorruc" class="form-control" placeholder="RUC..." runat="server"></asp:TextBox>
                            </div>
                            <%--<label for="ddlempresa" class="col-md-1 control-label">Empresa:</label>--%>
							<div class="col-md-3">
                            <asp:TextBox ID="txtproveedorrazoncosial" placeholder="Razón social..." class="form-control" runat="server"></asp:TextBox>
                            </div>                           
							<div class="col-md-1">
                                <asp:CheckBox ID="CheckBoxDetraccion"  class="form-control" runat="server" Text="DETRAC." />
                            </div>
                            <label for="rbmoneda" class="col-md-1 control-label">PAGO:</label>
                           <div class="col-md-2">
                                <asp:RadioButtonList ID="rbcuotas"  class="form-control" RepeatDirection="Horizontal" runat="server"  Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbcuotas_SelectedIndexChanged">                            
                                        <asp:ListItem Value="NO">FIJO</asp:ListItem>       
                                     <asp:ListItem Value="SI">EN CUOTAS</asp:ListItem>
                                                    
                        </asp:RadioButtonList>	
                           </div>
                            <div class="col-md-1">
                                  <asp:TextBox ID="txtcuotas" runat="server" required type="number"  class="form-control" ToolTip="Cantidad de cuotas"></asp:TextBox>				
                          </div>
                </div>
                </asp:Panel>
 </div> </div>
                <br />
                <br />
                <br />
                <br />
                <br />

              <div class="form-group row">
                    <div class="col-md-2">
					    <asp:TextBox ID="txtfecha1" runat="server" class="form-control" ToolTip="Fecha de registro de cuenta"></asp:TextBox>				   
                    </div>
                    <div class="col-md-2">
                        
				    </div>                  
                    <div class="col-md-2">
                        <asp:TextBox ID="txtproveedor" runat="server" placeholder="Proveedor" class="form-control" ToolTip="Ingresar proveedor a buscar"></asp:TextBox>
				    </div>
                    <div class="col-md-1">                
                        <asp:LinkButton ID="lbBuscar" class="btn btn-success" runat="server" OnClick="lbBuscar_Click">Buscar</asp:LinkButton>
                    </div>                   
                        
                    <asp:Label ID="lblproveedorDetalle" class="col-md-5 control-label" runat="server"></asp:Label>
                                  
                </div>

                <div class="form-group row">                 
                    <div class="col-md-2">
                       				  
				    </div>
                    <div class="col-md-4">
                      <asp:TextBox ID="txtTitular" runat="server" required placeholder="Titular" class="form-control" ToolTip="Titular de cuenta"></asp:TextBox>						  
				    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtimporte" runat="server" required type="number" step="0.01" placeholder="importe" class="form-control" ToolTip="Importe a pagar"></asp:TextBox>						  
				    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtadelanto" runat="server"  type="number" step="0.01"  placeholder="adelanto" class="form-control" ToolTip="Importe de adelanto"></asp:TextBox>						  
				    </div> 
                    
                    <div class="col-md-2">
                        				  
				    </div> 
                          
                </div>

              <div class="form-group row"> 
                    <div class="col-md-6">
                      <div class="row">
                    <label for="rbcuotas" class="col-md-4 control-label">Pago en cuotas:</label>


                    <div class="col-md-3">
                       				  
				    </div>   

                    <div class="col-md-3">
                      		  
				    </div>
                </div>

                  </div>
                  <div class="col-md-6">
                  <asp:Panel ID="Paneldetaccion" runat="server" class="row">                      
                        <label for="rbcuotas" class="col-md-4 control-label">Imp. por detacción:</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtimportedetaccion" type="number" step="0.01" class="form-control" placeholder="Cuotas" runat="server"></asp:TextBox>
                        <%--<asp:TextBox ID="txtimportedetaccion" runat="server" required type="number"  placeholder="Cuotas" class="form-control" ToolTip="Importe de detracción"></asp:TextBox>--%>						  
				        </div>  
                  </asp:Panel>
                  </div>
                    
               </div>

                <div class="form-group row">
                    <div class="col-md-12">
                    <asp:TextBox ID="txtglosa"  rows="2" class="form-control" runat="server" TextMode="MultiLine" placeholder="Descripcion de cuenta" ToolTip="Asunto o descripción"></asp:TextBox>
                    </div>
                </div>
                

                <div class="form-group row">
                    <div class="col-md-12">
                <asp:Button ID="Button2" CssClass="col-md-1 btn btn-success"  runat="server" Text="Registrar" OnClick="bt_regCompra" Visible="False" OnClientClick="successRegistrado2"></asp:Button>
                <asp:Button ID="btmodificar" CssClass="col-md-1 btn btn-success"  runat="server" Text="Modificar" OnClick="bt_modificarcompra"></asp:Button>
                <asp:Button ID="bteliminar" CssClass="col-md-1 btn btn-danger"  runat="server" Text="Eliminar" OnClick="bteliminar_Click"></asp:Button>
                        
                        <asp:LinkButton ID="lbtcacelar" runat="server" CssClass="col-md-2 btn btn-danger" OnClick="lbtcacelar_Click">CANCELAR</asp:LinkButton>
                        
                </div>
                    </div>
          
        </div>

</asp:Content>
