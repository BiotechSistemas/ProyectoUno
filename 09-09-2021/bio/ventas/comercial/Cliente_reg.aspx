<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente_reg.aspx.cs" Inherits="biotech.bio.ventas.comercial.Cliente_reg" %>

<!DOCTYPE html>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <head id="Head1" runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">




       <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <!-- Bootstrap core CSS -->

  <link href="../../a_lib/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../../a_lib/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../../a_lib/css/style.css" rel="stylesheet">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

 

    <title>Ficha Cliente</title>
          <style type="text/css">
            
              .auto-style2 {
                  width: 6px;
              }
              .auto-style3 {
                  width: 8px;
              }
          </style>
          
             <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server" >
      <div class="container">
         <div class="form-horizontal" role="form" id="datos_cotizacion">
                
             
             <div class="card">
              <h5 class="card-header h5">FICHA CLIENTE<asp:Label ID="lblidUsuario" runat="server" Text="JMANC" Visible="False"></asp:Label>
                 </h5>
              <div class="card-body">
            
               <div class="row">
  <div class="col-md-6">
                    
				      <div class="input-group">
                         <asp:TextBox placeholder="RUC / cliente" CssClass="form-control" ID="txtclienteBuscar" runat="server"></asp:TextBox>
                          <span class="input-group-btn">
                            <asp:LinkButton ID="lbtnBuscar"  class="btn btn-default" runat="server" OnClick="lbtnBuscar_Click">BUSCAR</asp:LinkButton>
                          </span>
                    </div>

            </div></div>
                  <hr />
                
                  <%--  <div class="border border-light p-5">--%>

				<div class="form-group row">
                    
				        <div class="col-md-2">
                            <asp:TextBox ID="txtruc" class="form-control form-control-sm" runat="server"  required></asp:TextBox>							
                            <small id="Small1" class="form-text text-muted mb-1">RUC</small>
					    </div>
				        <div class="col-md-7">
                            <asp:TextBox ID="txtRazonsocial" class="form-control form-control-sm" runat="server"  required></asp:TextBox>	
                            <small id="defaultRegisterFormPhoneHelpBlock" class="form-text text-muted mb-1">Razón Social / Cliente</small>
				        </div>
				        <div class="col-md-3">
                             <asp:DropDownList ID="ddlgiroempresa" runat="server"  class="form-control form-control-sm" AutoPostBack="True" OnSelectedIndexChanged="ddlgiroempresa_SelectedIndexChanged" DataSourceID="SqlDataSource5" DataTextField="giro" DataValueField="giro">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_giroempresa]"></asp:SqlDataSource>					    
                            <small id="Small7" class="form-text text-muted mb-2">Giro de la empresa<asp:Label ID="lblidGiroEmpresa" runat="server" Visible="False"></asp:Label>
                            </small>
					    </div>
                        
				</div>

                 <div class="form-group row">
                     <%--<label for="atencion" class="col-md-2 control-label">Dirección:</label>--%>
                     <div class="col-md-9">                         
                            <asp:TextBox ID="txtdireccion" class="form-control form-control-sm" runat="server" required></asp:TextBox>					    
                            <small id="Small8" class="form-text text-muted mb-2">Dirección</small>
					    </div>
                      
				        <div class="col-md-3">
                            <asp:DropDownList ID="ddltpmerdado" class="form-control form-control-sm" runat="server">
                                <asp:ListItem>Nacional</asp:ListItem>
                                <asp:ListItem>Extranjero</asp:ListItem>
                                <asp:ListItem>No indica</asp:ListItem>
                            </asp:DropDownList>	
                            <small id="Small10"  class="form-text text-muted mb-2">Tipo de mercado<asp:Label ID="lbltdtpmercado" runat="server" Visible="False"></asp:Label>
                            </small>
				        </div>
                     </div>

                     <div class="form-group row">
				        <div class="col-md-3">
                            <asp:DropDownList ID="ddlDepartamento"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSourceDepartamento" DataTextField="departamento" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlDepartamento_SelectedIndexChanged"></asp:DropDownList>				
                            <asp:SqlDataSource ID="SqlDataSourceDepartamento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [id], [departamento] FROM [tb_dDepartamento]"></asp:SqlDataSource>
                            <small id="Small4" class="form-text text-muted mb-2">Departamento<asp:Label ID="lbliddepartamento" runat="server" Text="Label" Visible="False"></asp:Label></small>
					    </div>
				        <div class="col-md-3">
                            <asp:DropDownList ID="ddlProvincia"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSourceProvincia" DataTextField="provincia" DataValueField="IdSunat" AutoPostBack="True"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceProvincia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select IdSunat,provincia from tb_dProvincia where idDepartamento=@iddepartamento">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlDepartamento" Name="iddepartamento" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <small id="Small5" class="form-text text-muted mb-2">Provincia<asp:Label ID="lblidProvincia" runat="server" Text="Label" Visible="False"></asp:Label></small>
				        </div>
				         <div class="col-md-3">
                             <asp:DropDownList ID="ddlDistrito"   class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSourcedistrito" DataTextField="ubigeo" DataValueField="ubigeo" AutoPostBack="True"></asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourcedistrito" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select ubigeo from tb_dDistritoUbigeo where idProv=@idprov
">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="ddlProvincia" Name="idprov" PropertyName="SelectedValue" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                            <small id="Small6" class="form-text text-muted mb-2">Distrito<asp:Label ID="lbliddistrito" runat="server" Visible="False"></asp:Label></small>
				        </div>
                       
			
                    
				      
				        
				</div>
                   <div class="form-group row">
				        <div class="col-md-8">
                            <asp:Button ID="btReginforBasica" CssClass="btn btn-default" runat="server" Text="REGISTRAR INFORMACIÓN BASICA" Width="100%" OnClick="btReginforBasica_Click" />
                            <asp:Button ID="btnActualizarBasica" CssClass="btn btn-default" runat="server" Text="ACTUALIZAR INFORMACIÓN BASICA" Width="100%" Visible="False" OnClick="btnActualizarBasica_Click"  />
                        </div>
                        <div class="col-md-4">
                             <asp:LinkButton ID="lbtnCerrar" CssClass="btn btn-danger" runat="server" Width="100%" OnClick="lbtnCerrar_Click">CERRAR</asp:LinkButton>
                            </div>
                       </div>

                  <asp:Panel ID="pcontactos" runat="server">
                      Contactos registrados:
                      <asp:GridView ID="gvContacto" runat="server" class="table table-hover" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcecontacto" OnSelectedIndexChanged="gvContacto_SelectedIndexChanged" Width="100%">
                          <Columns>
                              <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                              <ControlStyle Height="20px" Width="20px" />
                              <HeaderStyle Height="20px" Width="20px" />
                              <ItemStyle Height="25px" Width="25px" />
                              </asp:CommandField>
                              <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                              <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                              <asp:BoundField DataField="contacto" HeaderText="CONTACTO" SortExpression="contacto" />
                              <asp:BoundField DataField="mail" HeaderText="E-MAIL" SortExpression="mail" />
                              <asp:BoundField DataField="telefono" HeaderText="TELEFONO" SortExpression="telefono" />
                              <asp:BoundField DataField="cargo" HeaderText="CARGO" SortExpression="cargo" />
                              <asp:BoundField DataField="idusuarioRegistra" HeaderText="USU" SortExpression="idusuarioRegistra" />
                              <asp:BoundField DataField="fcumpleanos" HeaderText="F. NACIMIENTO" SortExpression="fcumpleanos" DataFormatString="{0:dd/MM/yyyy}" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No registra contactos....
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="#E8E8E8" />
                      </asp:GridView>
                      <asp:LinkButton ID="lbtnEliminarcontacto" runat="server" OnClick="lbtnEliminarcontacto_Click" OnClientClick="return confirm('Desea eliminar contacto seleccionado?');" Visible="False">Eliminar contacto</asp:LinkButton>
                      &nbsp;<asp:Label ID="lblIdEliminarcontactoSelec" runat="server" Visible="False"></asp:Label>
                      <asp:SqlDataSource ID="SqlDataSourcecontacto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id, idcliente, contacto, mail, telefono, cargo, idusuarioRegistra,fcumpleanos from tb_FichaCliente_contacto  where idcliente = @idCliente">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="txtruc" Name="idCliente" PropertyName="Text" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <table>
                          <tr>
                              <td>
                                  <asp:TextBox ID="txtccontacto" runat="server" placeholder="contacto" Style="text-transform: uppercase" Width="200px"></asp:TextBox>
                                  <br />
                                  Contacto:</td>
                              <td>
                                  <asp:TextBox ID="txtcarea" runat="server" placeholder="área o cargo" Style="text-transform: uppercase" Width="200px"></asp:TextBox>
                                  <br />
                                  Área:</td>
                              <td>
                                  <asp:TextBox ID="txtctelefono" runat="server" placeholder="téléfono" Width="150px"></asp:TextBox>
                                  <br />
                                  Teléfono:</td>
                              <td>
                                  <asp:TextBox ID="txtcmail" runat="server" placeholder="mail" TextMode="Email" Width="200px"></asp:TextBox>
                                  <br />
                                  Mail:</td>
                              <td class="auto-style3">
                                  <asp:TextBox ID="txtcfechanac" runat="server" placeholder="mail" TextMode="Date" Width="150px"></asp:TextBox>
                                  <br />
                                  Fecha Nac.</td>
                              <td class="auto-style2">
                                  <asp:ImageButton ID="ibtnAgregarContacto" runat="server" ImageUrl="~/images/agregarUsuario.png" OnClick="ibtnAgregarContacto_Click" Width="30px" />
                              </td>
                          </tr>
                      </table>

                   
                  </asp:Panel>



                  <asp:Panel ID="pcultivos" runat="server" Visible="False">
         <h5 class="card-title">Cultivos registrados:</h5>

                 
                    <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="600px" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" ReadOnly="True" />
                    <asp:BoundField DataField="HECTAREA" SortExpression="HECTAREA" HeaderText="HECTAREA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" >
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" ReadOnly="True" Visible="False" >
                    </asp:BoundField>
                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                </Columns>
                        <EmptyDataTemplate>
                            <span class="auto-style1">No hay cultivos registrados....</span>
                        </EmptyDataTemplate>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CultivosCliente" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtruc" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            * cultivos registrados:
            <asp:Label ID="lblcantcultivos" runat="server">0</asp:Label>



                   <div class="form-group row">
                     <div class="col-md-2">
                            <asp:TextBox ID="TextBox12" class="form-control form-control-sm" runat="server" ></asp:TextBox>					    
                            <small id="Small11" class="form-text text-muted mb-2">Cultivo</small>
					    </div>
				        <div class="col-md-2">
                            <asp:TextBox ID="TextBox13" class="form-control form-control-sm" runat="server" ></asp:TextBox>							
                            <small id="Small12" class="form-text text-muted mb-2">Tipo</small>
					    </div>
				        <div class="col-md-2">
                            <asp:TextBox ID="TextBox14" class="form-control form-control-sm" runat="server" ></asp:TextBox>	
                            <small id="Small13" class="form-text text-muted mb-2">Hectarea</small>
				        </div>
				        <div class="col-md-2">
                            <asp:TextBox ID="TextBox15" class="form-control form-control-sm" runat="server" ></asp:TextBox>	
                            <small id="Small14" class="form-text text-muted mb-2">Zona de producción</small>
				        </div>
                         <div class="col-md-2">
                            <asp:Button ID="Button1" runat="server" Text="Registrar cultivo" Width="100%" />
                        </div>
				</div>

</asp:Panel>
                  <%--<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>--%>
             
          </div>


                
              </div>
                   
     </div>
</div>


        
    </form>
</body>
</html>
