<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RegDatos.aspx.cs" Inherits="biotech.bio.ventas.rrhh.RegDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    

    <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> RECURSOS HUMANOS <small>DATOS ADMINISTRATIVOS</small>
                       
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>

                        <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>

                    </h2>
                </div>
                <!-- /.col-lg-12 -->
    </div>
    <ol class="breadcrumb">
  <li >
      <asp:LinkButton ID="lbPrincipal" runat="server" PostBackUrl="~/bio/ventas/rrhh/Default.aspx">RR.HH.</asp:LinkButton></li>

         <li >
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Datos administrativos</asp:LinkButton></li>

         <li >
      <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/bio/ventas/rrhh/Default.aspx" OnClick="LinkButton2_Click">Ver ficha personal</asp:LinkButton></li>

        <li>
                   
                        <asp:Label ID="lblpersonal" runat="server" Visible="False"></asp:Label>
                  
                </li>
</ol>

      <div class="row">
                <div class="col-lg-12">
                   
                </div>
                <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->

   
    <div class="row">
    
                      

                                <div class="col-md-offset-1 col-md-10">

            <div class="panel panel-success">


             <div class="panel-heading"><i class="fa fa-user"></i>  Datos Biotech:
                 <asp:Label ID="lblcodUsu2" runat="server"></asp:Label>
                 <asp:Label ID="lblrutafoto" runat="server"></asp:Label>
                </div>
             <div class="panel-body">               
                     <div class="container-fluid">
                      <div class="form-horizontal">

                          <div class="form-group row">
							
                              <div class="col-md-4">
                                                                    <asp:Image ID="img1"   runat="server" Alt="No registra" Height="200px" Width="180px" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" />
                                
                                                                   <asp:Button ID="btnsubirfoto" class="btn btn-default" runat="server" Text="ACTUALIZAR FOTO" OnClick="btnsubirfoto_Click" Width="180px" />
                                
                                </div>


							<div class="col-md-8">
                                        <div class="form-group row">
							        <label for="empresa" class="col-md-2 control-label">Cargo:</label>
							        <div class="col-md-10">
                                        <asp:DropDownList ID="ddlcargos" runat="server" class="form-control" DataSourceID="SqlDataSourceCargos" DataTextField="Descripcion" DataValueField="idCargo"></asp:DropDownList>
							            <asp:SqlDataSource ID="SqlDataSourceCargos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaTrabCargos] WHERE ([EstadoRRHH] = @EstadoRRHH)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="1" Name="EstadoRRHH" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
							        </div>
                                    </div>

                                        <div class="form-group row">
                                             <label for="empresa" class="col-md-2 control-label">Celular:</label>
							            <div class="col-md-10">
                                            <asp:TextBox ID="txtTelefEmpresa" placeholder="Cel. empresa" type="number" step="0" class="form-control"   runat="server"></asp:TextBox>
							            </div>
                                        </div>

                                         <div class="form-group row">
                                              <label for="empresa" class="col-md-2 control-label">Correo:</label>
							                <div class="col-md-10">
                                                <asp:TextBox ID="txtcorreoempresa" class="form-control" placeholder="micorreo@biotechcorp.com.pe"  runat="server"></asp:TextBox>
							                </div>
                                             </div>

                                             <div class="form-group row">

                                                 <label for="tel2" class="col-md-2 control-label">Zona:</label>
							                <div class="col-md-4">
                                                <asp:DropDownList ID="ddlzona" class="form-control" runat="server" DataSourceID="SqlDataSourceZona" DataTextField="descripcion" DataValueField="descripcion"></asp:DropDownList>
							                    <asp:SqlDataSource ID="SqlDataSourceZona" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_Zona] WHERE ([estadoRRHH] = @estadoRRHH)">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="1" Name="estadoRRHH" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
							                </div>	

                                                  <label for="empresa" class="col-md-2 control-label">Viático:</label>
							                    <div class="col-md-4">
                                                    <asp:TextBox ID="txtimporteViatico" type="number" step="0.01" class="form-control"   runat="server"></asp:TextBox>
							                    </div>
                                           
                                             </div>

                                
                                             <div class="form-group row">
                                                 <label for="txtHijos" class="col-md-2 control-label">Nº hijos:</label>
							                    <div class="col-md-4">
                                                    <asp:TextBox ID="txtHijos" class="form-control"  runat="server" TextMode="Number"></asp:TextBox>
							                    </div>
                            	                    <div class="col-md-1">
                                                        <asp:ImageButton ID="ibtnHijosAgregar" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtnHijosAgregar_Click" Width="30px" />
							                    </div>	
                                                 </div>

                                        <div class="form-group row">
                                             <label for="txtHijos" class="col-md-2 control-label">Foto:</label>
                                            <div class="col-md-10">
                                              <asp:FileUpload ID="FileUpload1"  runat="server" />
                                                <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#CC0000"></asp:Label>
                                                </div>
                                             
                                      </div>
                                </div>
                            
                        <%--  <div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Cargo:</label>
							<div class="col-md-6">
                                <asp:DropDownList ID="ddlcargos" runat="server" class="form-control" DataSourceID="SqlDataSourceCargos" DataTextField="Descripcion" DataValueField="idCargo"></asp:DropDownList>
							    <asp:SqlDataSource ID="SqlDataSourceCargos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaTrabCargos] WHERE ([EstadoRRHH] = @EstadoRRHH)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="EstadoRRHH" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>
							<label for="tel2" class="col-md-1 control-label">Zona:</label>
							<div class="col-md-3">
                                <asp:DropDownList ID="ddlzona" class="form-control" runat="server" DataSourceID="SqlDataSourceZona" DataTextField="descripcion" DataValueField="descripcion"></asp:DropDownList>
							    <asp:SqlDataSource ID="SqlDataSourceZona" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_Zona] WHERE ([estadoRRHH] = @estadoRRHH)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="estadoRRHH" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>		
						</div>--%>


                      <%--    <div class="form-group row">
                        <label for="empresa" class="col-md-1 control-label">Celular:</label>
							<div class="col-md-5">
                                <asp:TextBox ID="txtTelefEmpresa" placeholder="Cel. empresa" type="number" step="0" class="form-control"   runat="server"></asp:TextBox>
							</div>
                        <label for="empresa" class="col-md-2 control-label">Imp.Viático:</label>
							<div class="col-md-3">
                                <asp:TextBox ID="txtimporteViatico" type="number" step="0.01" class="form-control"   runat="server"></asp:TextBox>
							</div>
									
						</div>

                        <div class="form-group row">
                        <label for="empresa" class="col-md-1 control-label">Correo:</label>
							<div class="col-md-6">
                                <asp:TextBox ID="txtcorreoempresa" class="form-control" placeholder="micorreo@biotechcorp.com.pe"  runat="server"></asp:TextBox>
							</div>
							<label for="txtHijos" class="col-md-1 control-label">Nº hijos:</label>
							<div class="col-md-3">
                                <asp:TextBox ID="txtHijos" class="form-control"  runat="server" TextMode="Number"></asp:TextBox>
							</div>
                            	<div class="col-md-1">
                                    <asp:ImageButton ID="ibtnHijosAgregar" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtnHijosAgregar_Click" Width="30px" />
							</div>	
						</div>--%>

                            <div class="form-group row">
                                 <div class="col-md-12">
                            <label>Funciones:</label>
                                     <asp:GridView ID="gvareaResponsable" runat="server" DataSourceID="SqlDataSourceareaResponsable" AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvareaResponsable_RowCommand" ShowHeader="False" Width="100%">
                                         <Columns>
                                             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                             <asp:BoundField DataField="idpersonal" HeaderText="idpersonal" SortExpression="idpersonal" Visible="False" />
                                             <asp:TemplateField HeaderText="descripcion" SortExpression="descripcion">
                                                 <EditItemTemplate>
                                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>' Width="100%"></asp:TextBox>
                                                 </EditItemTemplate>
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                                 </ItemTemplate>
                                                 <HeaderStyle Width="100%" />
                                             </asp:TemplateField>
                                           
                                             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/eliminarr.png" EditImageUrl="~/images/editar1.png" UpdateImageUrl="~/images/actualizarr.png" >
                                             <ControlStyle Width="20px" />
                                             <HeaderStyle Width="60px" />
                                             <ItemStyle Width="60px" />
                                             </asp:CommandField>
                                           
                                         </Columns>
                                     </asp:GridView>
                                                     
                                     <asp:SqlDataSource ID="SqlDataSourceareaResponsable" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.PerAreaResponsable" SelectCommandType="StoredProcedure" DeleteCommand="delete rrhh.PersonalAreaResponsable where id=@id" UpdateCommand="update rrhh.PersonalAreaResponsable set descripcion=@descripcion where id=@id">
                                         <DeleteParameters>
                                             <asp:Parameter Name="id" />
                                         </DeleteParameters>
                                         <SelectParameters>
                                             <asp:ControlParameter ControlID="lblcodUsu2" Name="idpersonal" PropertyName="Text" Type="String" />
                                         </SelectParameters>
                                         <UpdateParameters>
                                             
                                             <asp:Parameter Name="descripcion" />
                                             <asp:Parameter Name="id" />
                                         </UpdateParameters>
                                     </asp:SqlDataSource>
                                                     
                           </div>
                            <div class="col-sm-10 col-md-11">
                                <asp:TextBox ID="txtareaCargo"  style="text-transform:uppercase;" placeholder="Funciones específicas" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-2 col-md-1">
                                <asp:Button ID="btnagregarareacargo" runat="server" Text="+" CssClass="btn btn-success" OnClick="btnagregarareacargo_Click" Width="100%" />
                            </div>
                            </div>

                            <div class="form-group row">
                                 <div class="col-md-12">
                            <label>Detalle de funciones:</label>
                                     <small> <asp:Label ID="lblmensajearea" runat="server" Text="" ForeColor="#CC0000"></asp:Label></small>
                            <asp:TextBox ID="txtfuncionesarea"  style="text-transform:uppercase;" placeholder="Detalle de funciones especificas..." class="form-control"  runat="server" TextMode="MultiLine" Rows="7"></asp:TextBox>                           
                          </div>
                            </div>
                            <div class="form-group row">
                                  <div class="col-md-12">
                            <label>Área:</label>
                            <asp:TextBox ID="txtResumenPerfil"  style="text-transform:uppercase;" placeholder="Área" class="form-control"  runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                           </div>
                           </div>


                          <div class="form-group row">
                           
							<div class="col-md-4">
                                <asp:DropDownList ID="ddlAFP" runat="server" CssClass="form-control" DataTextField="Descripcion" DataValueField="idRetencion" DataSourceID="SqlDataSourceAFPDESCRIP"></asp:DropDownList>

							    <asp:SqlDataSource ID="SqlDataSourceAFPDESCRIP" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idRetencion,Descripcion from tb_PlanillaRetenciones where idRetencion in (0,50,10,20,30,40)"></asp:SqlDataSource>
                                <label for="inputEmail4">ONP/AFP:</label>   
							</div>
                              <div class="col-md-3">
                                  <asp:TextBox ID="txtAFPcarnet" placeholder="Nº Carnet" CssClass="form-control" runat="server"></asp:TextBox>
                                  <label for="inputEmail4">Nº carnet</label>  
                              </div>
                              <div class="col-md-3">
                                   <asp:TextBox ID="txtAFPfechaAfiliacion" placeholder="Fecha Afiliación"  CssClass="form-control"  runat="server"></asp:TextBox>
                                  <label for="inputEmail4">Fecha afiliación:</label>  
                              </div>
                         </div>

                           <div class="form-group row">
                                 
                      
                               <div class="col-md-4">

                                   <asp:RadioButtonList ID="rbespecialRA" runat="server" RepeatDirection="Horizontal" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="rbespecialRA_SelectedIndexChanged">
                                      
                                       <asp:ListItem  Value="SI">SI</asp:ListItem>
                                        <asp:ListItem Selected="True"  Value="NO">NO</asp:ListItem>
                                   </asp:RadioButtonList>
                                       <label for="inputEmail4">Dsto. especial RA:</label> 
                                   </div>
							<div class="col-md-3">
                                <asp:TextBox ID="txtcomisionRA" CssClass="form-control" runat="server"></asp:TextBox>
							</div>

                      
									
						</div>

                           <div class="form-group row">
                                
							<div class="col-md-4">
                                <asp:RadioButtonList ID="rbEPS" runat="server" RepeatDirection="Horizontal" Width="300px">
                                    <asp:ListItem Value="1">SI</asp:ListItem>
                                    <asp:ListItem Value="0">NO</asp:ListItem>
                                </asp:RadioButtonList>
    <label for="inputEmail4">EPS:</label>   

							</div>
                              </div> 

               <div class="form-group row">
   
    <div class="col-md-4">
        <asp:RadioButtonList ID="rblDescuentoJudicial"  runat="server" RepeatDirection="Horizontal" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="rblDescuentoJudicial_SelectedIndexChanged">
            <asp:ListItem Value="1">SI</asp:ListItem>
            <asp:ListItem Value="0">NO</asp:ListItem>
        </asp:RadioButtonList>
    <label for="inputEmail4">Dscto. judicial</label>   
    </div>
                  <div class="col-md-3">
        <asp:TextBox ID="txtdescuentoJudicial" type="number" step="0.01" CssClass="form-control" runat="server"></asp:TextBox>
    <label for="inputEmail4">Dscto. judicial %</label>   
    </div>
                   </div>          



 <div class="form-row">
   
    <div class="col-md-4">
       <asp:DropDownList ID="ddlBanco" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceBancoPagos" DataTextField="banco" DataValueField="id"></asp:DropDownList>
							    <asp:SqlDataSource ID="SqlDataSourceBancoPagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_bancos]"></asp:SqlDataSource>							
        <label for="inputEmail4">Banco cuenta haberes</label>       
    &nbsp;</div>
    <div class="col-md-4">
         <asp:TextBox ID="txtncuenta" CssClass="form-control" placeholder="Num. cuenta" runat="server"></asp:TextBox>
         <label for="inputEmail4">Nº cuenta haberes</label>
         </div>
     <div class="col-md-4">
         <asp:TextBox ID="txtncuentaCCI" class="form-control" placeholder="Num. cta. CCI" runat="server"></asp:TextBox>
         <label for="inputEmail4">CCI cuenta haberes</label>
          </div>
  </div>

   <div class="form-row">

    <div class="col-md-4">
       <asp:DropDownList ID="ddlBancoCTS" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceBancoPagos" DataTextField="banco" DataValueField="id"></asp:DropDownList>
					 <label for="inputEmail4">Banco cuenta CTS</label>       
    &nbsp;</div>
    <div class="col-md-4">
            <asp:TextBox ID="txtctscuenta" CssClass="form-control" placeholder="Num. cuenta CTS" runat="server"></asp:TextBox>
         <label for="inputEmail4">Nº cuenta CTS</label>
         </div>
     <div class="col-md-4">
         <asp:TextBox ID="txtctsCCI" class="form-control" placeholder="Num. CTS CCI" runat="server"></asp:TextBox>
         <label for="inputEmail4">CCI cuenta CTS</label>
          </div>
  </div>		 

 <div class="form-row">

    <div class="col-md-4">
       <asp:DropDownList ID="ddlBancoFree" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceBancoPagos" DataTextField="banco" DataValueField="id"></asp:DropDownList>
					 <label for="inputEmail4">Banco cuenta Free</label>       
    &nbsp;</div>
    <div class="col-md-4">
            <asp:TextBox ID="txtfree" CssClass="form-control" placeholder="Num. cuenta free" runat="server"></asp:TextBox>
         <label for="inputEmail4">Nº cuenta Free</label>
         </div>
     <div class="col-md-4">
         <asp:TextBox ID="txtfreecci" class="form-control" placeholder="Num. free CCI" runat="server"></asp:TextBox>
         <label for="inputEmail4">CCI cuenta Free</label>
          </div>
  </div>		 





                          <asp:LinkButton CssClass="btn btn-success" ID="lbRegistrarinfobio" runat="server" OnClick="lbRegistrarinfobio_Click" Width="100%">Registrar información interna</asp:LinkButton>
                          <br />
                          <asp:Label ID="lblmensaje2" runat="server" ForeColor="#990000"></asp:Label>
                      </div>   
                         
                         <br />
                          <div class="form-horizontal">
                              Detalles de contratos registrados:
                              <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/rrhh/Administracion/Contratos.aspx">Administrar</asp:LinkButton>
                              <asp:GridView ID="gvContratosreg" runat="server" AutoGenerateColumns="False" DataKeyNames="idcontrato" DataSourceID="SqlDataSource1Contratos" Width="100%" AllowPaging="True" PageSize="5">
                                  <Columns>
                                      <asp:BoundField DataField="idcontrato" HeaderText="COD. CONTRATO" ReadOnly="True" SortExpression="idcontrato" />
                                      <asp:BoundField DataField="idpersonal" HeaderText="idpersonal" SortExpression="idpersonal" Visible="False" />
                                      <asp:BoundField DataField="fechaIngreso" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. INGRESO" SortExpression="fechaIngreso">
                                      <ItemStyle HorizontalAlign="Center" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="fechaSalida" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. TERMINO" SortExpression="fechaSalida">
                                      <ItemStyle HorizontalAlign="Center" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="diasTrabajados" HeaderText="DIAS LABORADOS" SortExpression="diasTrabajados">
                                      <ItemStyle HorizontalAlign="Center" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                      <asp:ImageField DataImageUrlField="estado" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                                  </Columns>
                                  <EmptyDataTemplate>
                                      contrato por registrar.
                                  </EmptyDataTemplate>
                              </asp:GridView>
                               <asp:SqlDataSource ID="SqlDataSource1Contratos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idcontrato,idpersonal,fechaIngreso,fechaSalida,diasTrabajados,estado from rrhh.contratos  where idpersonal = @idpersonal
order by idcontrato desc">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="lblcodUsu2" Name="idpersonal" PropertyName="Text" />
                                   </SelectParameters>
                              </asp:SqlDataSource>
                               <div class="form-group row">
							<label for="empresa" class="col-md-2 control-label">F. Ingreso:</label>
							<div class="col-md-4">
                                <asp:TextBox ID="txtfingreso" CssClass="form-control" placeholder="01-01-2019" runat="server"></asp:TextBox>
							</div>
							<label for="tel2" class="col-md-2 control-label">F. Termino:</label>
							<div class="col-md-4">
                                <asp:TextBox ID="txtfterminocontrato" class="form-control" ReadOnly="true" placeholder="31-12-2019" runat="server"></asp:TextBox>
                            </div>		
						</div>
                               <asp:LinkButton CssClass="btn btn-default" ID="lbtnREGcontrato" runat="server" Width="100%" OnClick="lbtnREGcontrato_Click" >Actualizar fecha contrato DESDE - HASTA</asp:LinkButton>
               
                                                       <br />  <br />
                               <div class="form-group row">
							<label for="empresa" class="col-md-5 control-label">Dias Vacaciones anteriores gozadas:</label>
							<div class="col-md-2">
                                <asp:TextBox ID="txtnAnterioVacaciones" CssClass="form-control" placeholder="01-01-2019" runat="server"></asp:TextBox>
							</div>
							
							<div class="col-md-5">
                                <asp:Button ID="btnRegVacacionesanteriores" CssClass="btn btn-default" runat="server" Text="REGISTRAR VACCIONES ANTERIORES" OnClick="btnRegVacacionesanteriores_Click" Width="100%" />
                            </div>		
						</div>


                              </div>                         
                </div> </div>
            
            </div>


     </div>
    

        <asp:Panel ID="panteriorficha" runat="server" Visible="False">
                                <div class="col-md-6">
           <div class="panel panel-default">
                <div class="panel-heading">
                         <i class="fa fa-user"></i>   Datos personales: <asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        &nbsp;</div>
                <div class="panel-body">
                <div class="container-fluid">
                                    <div class="form-horizontal">
                                        <div class="form-group row">
				                          <label for="atencion" class="col-md-2 control-label">Nombres:</label>
				                          <div class="col-md-5">
                                              <asp:TextBox ID="txtapellidos" required class="form-control" placeholder="Apellidos" runat="server"></asp:TextBox>
					                      
				                          </div>
				                         
							            <div class="col-md-5">
                                            <asp:TextBox ID="txtnombres" required class="form-control" placeholder="Nombres"  runat="server"></asp:TextBox>
								          
							            </div>
				                        </div>



						<div class="form-group row">
							<label for="empresa" class="col-md-2 control-label">DNI:</label>
							<div class="col-md-3">
                                <asp:TextBox ID="txtDni" required type="number" step="0" class="form-control" placeholder="DNI" runat="server"></asp:TextBox>
							</div>
							<label for="tel2" class="col-md-2 control-label">F. Nac:</label>
							<div class="col-md-4">
                                <asp:TextBox ID="txtfechanac" class="form-control" placeholder="Num. empresa" runat="server"></asp:TextBox>
							</div>	
                            <div class="col-md-1">
                                <asp:ImageButton ID="ibtRegNac" runat="server" Height="30px" ImageUrl="~/images/guadar.png" Width="30px" OnClick="ibtRegNac_Click" />
                            </div>	
						</div>

                        <div class="form-group row">
							<label for="empresa" class="col-md-2 control-label">Dirección:</label>
							<div class="col-md-10">
                                <asp:TextBox ID="txtdireccion"  placeholder="Dirección" class="form-control"  runat="server"></asp:TextBox>
							</div>	
						</div>

                        <div class="form-group row">
							<label for="empresa" class="col-md-2 control-label">Depart.:</label>
							<div class="col-md-4">
                                <asp:DropDownList ID="ddlDepartamento"  class="form-control" runat="server" DataSourceID="SqlDataSourceDep" DataTextField="departamento" DataValueField="id" AutoPostBack="True"></asp:DropDownList>
							    <asp:SqlDataSource ID="SqlDataSourceDep" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dDepartamento]"></asp:SqlDataSource>
							</div>
                            <label for="empresa" class="col-md-2 control-label">Provincia:</label>
							<div class="col-md-4">
                                <asp:DropDownList ID="ddlProvincia"   class="form-control" runat="server" DataSourceID="SqlDataSource22" DataTextField="provincia" DataValueField="idprovincia"></asp:DropDownList>
							    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dProvincia] WHERE ([idDepartamento] = @idDepartamento)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlDepartamento" Name="idDepartamento" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>

                        </div>
                        <div class="form-group row">
                           <label for="empresa" class="col-md-2 control-label">Distrito:</label>
							<div class="col-md-4">
                                <asp:TextBox ID="txtDistrito" required placeholder="distrito" CssClass="form-control" runat="server"></asp:TextBox>
							</div>	
						</div>


                        <div class="form-group row">
							
							<label for="tel2" class="col-md-2 control-label">Celular:</label>
							
							<div class="col-md-4">
                                <asp:TextBox ID="txtcelularPersonal" type="number" step="0" required class="form-control" placeholder="Num. personal" runat="server"></asp:TextBox>
							</div>
						</div>
                        <div class="form-group row">
							
							<label for="tel2" class="col-md-2 control-label">Contactos:</label>
							<div class="col-md-5">
                                <asp:TextBox ID="txttelfContacto1" class="form-control" type="number" step="0" placeholder="Telf. contactos emergencia" runat="server"></asp:TextBox>
							</div>

							<div class="col-md-5">
                                <asp:TextBox ID="txttelfContacto2" class="form-control" type="number" step="0" placeholder="Telf. contactos emergencia" runat="server"></asp:TextBox>
							</div>
						</div>
                        <div class="form-group row">
                        <label for="empresa" class="col-md-2 control-label">Correo:</label>
							<div class="col-md-10">
                                <asp:TextBox ID="txtcorreoPersonal" class="form-control"  placeholder="correo personal" runat="server"></asp:TextBox>
							</div>
									
						</div>
                        <div class="form-group row">
							
							<label for="tel2" class="col-md-2 control-label">Familiares:</label>
							<div class="col-md-4">
                                <asp:TextBox ID="txtnfamilias" type="number" step="0" class="form-control" placeholder="Cant. integrantes Familia" runat="server"></asp:TextBox>
							</div>
                            <label for="tel2" class="col-md-2 control-label">N° hijos:</label>
							<div class="col-md-4">
                                <asp:TextBox ID="txtnhijos" type="number" step="0" class="form-control" placeholder="Cant. de hijos" runat="server"></asp:TextBox>
							</div>
						</div>

                        <div class="form-group row">
							
							
                           
                            <label for="tel2" class="col-md-2 control-label">E.CIVIL:</label>
                            <div class="col-md-4">
                            <asp:DropDownList class="form-control" ID="ddlEstadoCivil" runat="server">
                                <asp:ListItem>SOLTERO</asp:ListItem>
                                <asp:ListItem>CASADO</asp:ListItem>
                                <asp:ListItem>VIUDO</asp:ListItem>
                                <asp:ListItem>DIVORCIADO</asp:ListItem>
                            </asp:DropDownList>
                                </div>
						</div>

                        <div class="form-group row">
							
							<label for="tel2" class="col-md-2 control-label">ESSALUD:</label>
							<div class="col-md-4">
                                <asp:RadioButtonList ID="rbEssalud"  runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem>SI</asp:ListItem>
                                    <asp:ListItem>NO</asp:ListItem>
                                </asp:RadioButtonList>
							</div>
                            <label for="tel2" class="col-md-2 control-label">SCTR:</label>
							<div class="col-md-4">
                                <asp:RadioButtonList ID="rbSCTR"  runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem>SI</asp:ListItem>
                                    <asp:ListItem>NO</asp:ListItem>
                                </asp:RadioButtonList>
							</div>
                        </div>
                        <div class="form-group row">
							
							<label for="tel2" class="col-md-2 control-label">Professión:</label>
							<div class="col-md-10">
                                <asp:TextBox ID="txtprofesion" CssClass="form-control" placeholder="Profesión" runat="server"></asp:TextBox>
                                </div>
                            </div>

                                        <asp:Button ID="btRegpersonales" Class="btn btn-default" runat="server" OnClick="btRegpersonales_Click" Text="Registrar datos personales" Width="100%" />

                                        


                           

                       





                                        <br />

                                        


                           

                       





                                        <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
                                   

                           

                       





                                    </div>

                                        
         </div>   </div>   </div></div>
            </asp:Panel>
        </div>



</asp:Content>
