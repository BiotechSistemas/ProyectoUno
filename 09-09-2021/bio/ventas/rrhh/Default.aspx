<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> RECURSOS HUMANOS<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                    </h2>
                </div>
                <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->

      <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbtnPersonal" runat="server" OnClick="lbtnPersonal_Click">RR.HH.</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbtnLegajo" runat="server" OnClick="lbtnLegajo_Click"  PostBackUrl="~/bio/ventas/rrhh/Administracion/Legajo.aspx">Legajo de personal</asp:LinkButton>
      </li>
   <li>
      <asp:LinkButton ID="lbtndocumentosIngreso" runat="server"  PostBackUrl="~/bio/ventas/rrhh/FichaPersonal/DocIngresoAdmin.aspx">Documentos de ingreso</asp:LinkButton>
      </li>
<%-- <li>
      <asp:LinkButton ID="lbntcontratos" runat="server"  PostBackUrl="~/bio/ventas/rrhh/Administracion/Contratos.aspx">Contratos</asp:LinkButton>
      </li>--%>
        <li>
      <asp:LinkButton ID="LinkButton3" runat="server"  PostBackUrl="~/bio/ventas/rrhh/Solicitud/SolicitudesRegistradasAdm.aspx">Solicitud GDH</asp:LinkButton>
      </li>
           <li>
      <asp:LinkButton ID="lbtnPerfilPublico" runat="server"  PostBackUrl="~/consultas/NuestrosColaboradores.aspx">Perfil público</asp:LinkButton>
      </li>
</ol> 



    <div class="row">
        <div class="col-md-12">
        <asp:Panel ID="phonomastico" runat="server">
            <asp:Label ID="lblcodhono" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblnombre" runat="server" Font-Bold="True"></asp:Label>
            <asp:Label ID="lblfecha" runat="server"></asp:Label>
            <asp:Label ID="lblcargo" runat="server"></asp:Label>
            <asp:Label ID="lblzona" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </div>





    <div class="row">
      <div class="col-sm-12">
            <asp:Panel ID="phabilitarLegajo" runat="server" Visible="False">
                                <asp:Label ID="lblidPersonalLegajo" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lblpersonalLegajo" runat="server" Font-Bold="True"></asp:Label>
                                <br />
                                <asp:Button ID="btnHabilitarLegajo" runat="server" Text="HABILITAR LEGAJO" OnClick="btnHabilitarLegajo_Click" Width="400px" />
                                <asp:Button ID="Button1" runat="server" ForeColor="#CC0000" OnClick="Button1_Click" Text="CERRAR" />
                                <br />
                                <asp:Label ID="lblmensajeLegajoNo" runat="server" ForeColor="#CC0000"></asp:Label>
                                <asp:Label ID="lblmensajeLegajoSi" runat="server" ForeColor="#006600"></asp:Label>
                                <br />
                <br />
                </asp:Panel>
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> FICHAS PERSONALES:
                            <asp:Label ID="lblestadoActivo" runat="server" Text="ACTIVO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lbtnActivo" runat="server" OnClick="lbtnActivo_Click">ACTIVO</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="LbtnCesado" runat="server" OnClick="LbtnCesado_Click">CESADO</asp:LinkButton>
                        </div>
                        <!-- /.panel-heading -->
                       
                            <div class="table-responsive">
                                <asp:Panel ID="PanelActivo" runat="server">
                                    <asp:GridView ID="gvPersonal" runat="server" AutoGenerateColumns="False" CLASS="table-condensed table-hover table-sm thead-light" DataKeyNames="codTrabajador,PERSONAL" DataSourceID="SqlDataSource1" Font-Size="Small" GridLines="Horizontal" OnRowCommand="gvPersonal_RowCommand" OnSelectedIndexChanged="gvPersonal_SelectedIndexChanged" Width="100%" AllowSorting="True">
                                        <Columns>
                                            <asp:TemplateField HeaderText="FICHA PERSONAL" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("codTrabajador") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <HeaderStyle Width="100px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False" Visible="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle ForeColor="#006600" />
                                            </asp:TemplateField>
                                            <asp:ImageField DataImageUrlField="FOTO" DataImageUrlFormatString="~/_archivos/PersonalFotos/{0}">
                                                <ControlStyle Height="60px" Width="55px" />
                                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ImageField>
                                            <asp:BoundField DataField="codTrabajador" HeaderText="COD" ReadOnly="True" SortExpression="codTrabajador" Visible="False" />
                                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                                            <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                                            <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                                            <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                                            <asp:ImageField DataImageUrlField="VALIDACION" DataImageUrlFormatString="~/images/Z{0}.png">
                                                <ControlStyle Height="18px" Width="18px" />
                                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ImageField>
                                           
                                           
                                            <asp:ButtonField ButtonType="Button" CommandName="Reg" HeaderText="ACTUALIZAR" ShowHeader="True" Text="FICHA">
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                             <asp:ButtonField ButtonType="Button" CommandName="Admin" HeaderText="BIOTECH" ShowHeader="True" Text="ADMINISTRAR">
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                             <asp:ButtonField ButtonType="Button" CommandName="legajo" HeaderText="HABILITAR" ShowHeader="True" Text="LEGAJO">
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>

                                            <asp:ButtonField ButtonType="Button" CommandName="Cargos" HeaderText="CARGOS" ShowHeader="True" Text="REG." Visible="False">
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                        </Columns>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_planilla2" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </asp:Panel>
                                <asp:Panel ID="PanelCesado" runat="server">
                                    <asp:GridView ID="gvPersonalCesado" runat="server" CLASS="table-condensed table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="codTrabajador,PERSONAL" DataSourceID="SqlDataSource2" OnRowCommand="gvPersonalCesado_RowCommand" GridLines="Horizontal" Width="100%" Font-Size="Small" AllowSorting="True" OnSelectedIndexChanged="gvPersonalCesado_SelectedIndexChanged">
                                        <Columns>
                                            <asp:TemplateField HeaderText="FICHA PERSONAL" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("codTrabajador") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <HeaderStyle Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False" Visible="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>' ForeColor="#006600"></asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle ForeColor="#006600" />
                                            </asp:TemplateField>

                                             <asp:ImageField DataImageUrlField="FOTO" DataImageUrlFormatString="~/_archivos/PersonalFotos/{0}">
                                                <ControlStyle Height="60px" Width="55px" />
                                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ImageField>
                                            <asp:BoundField DataField="codTrabajador" HeaderText="COD" ReadOnly="True" SortExpression="codTrabajador" />
                                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                                            <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                                            <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                                            <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                                            <asp:ImageField DataImageUrlField="VALIDACION" DataImageUrlFormatString="~/images/Z{0}.png">
                                                <ControlStyle Height="18px" Width="18px" />
                                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ImageField>
                                         
                                          
                                            <asp:ButtonField CommandName="Reg"  HeaderText="ACTUALIZAR" ShowHeader="True" Text="FICHA" ButtonType="Button" >
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                              <asp:ButtonField CommandName="Admin"  HeaderText="BIOTECH" ShowHeader="True" Text="ADMINISTRACION" ButtonType="Button" >
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                               <asp:ButtonField CommandName="legajo"  HeaderText="HABILITAR" ShowHeader="True" Text="LEGAJO" ButtonType="Button" >
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                            <asp:ButtonField CommandName="Cargos"  HeaderText="CARGOS" ShowHeader="True" Text="REG." ButtonType="Button" Visible="False" >
                                            <ItemStyle ForeColor="#006600" />
                                            </asp:ButtonField>
                                        </Columns>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_planilla2_sesado" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </asp:Panel>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
&nbsp;FICHA REGISTRADA ,
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
&nbsp;FICHA POR REGISTRAR
                                <br />
                                <asp:Label ID="lblmensajeprincipal" runat="server" ForeColor="#990000"></asp:Label>
                                <br />
                                <asp:LinkButton ID="lbltnPersonalLicenciaVencida" runat="server" OnClick="lbltnPersonalLicenciaVencida_Click">LICENCIAS VENCIDAS</asp:LinkButton>
&nbsp;|
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">CON LICENCIA CONDUCIR</asp:LinkButton>
                                &nbsp;|
                                <asp:LinkButton ID="lbtnsinlicenciaconduc" runat="server" OnClick="lbtnsinlicenciaconduc_Click">SIN LICENCIA CONDUCIR</asp:LinkButton>
                                &nbsp;<asp:Label ID="lblopLicenciaConducir" runat="server" Visible="False">1</asp:Label>
                                <br />
                                <asp:Button ID="bt_regBienesoactvos" class="btn btn-success" runat="server" Text="REGISTRAR BIENES O ACTIVOS" PostBackUrl="~/bio/ventas/Activos/Registrar.aspx" Visible="False" />
                            </div>
                                
                                
                           
                            
                        </div>
                        <!-- /.panel-body -->
         

                    </div>

               






                        <br />
                <asp:Panel ID="pancelLicencias" runat="server">
               <div class="row">
      <div class="col-sm-12">
                   <h4>PERSONAL LICENCIA DE CONDUCIR:
                       <asp:Label ID="LBLTTLICENCIA" runat="server"></asp:Label>
                   </h4>
                   <asp:GridView ID="gvlicencias" runat="server"  CLASS="table-condensed table-hover table-sm thead-light" DataSourceID="SqlDataSourceLicenciaconducir" AutoGenerateColumns="False" DataKeyNames="codTrabajador" Font-Size="Small" Width="100%">
                       <Columns>
                           <asp:BoundField DataField="codTrabajador" HeaderText="COD" ReadOnly="True" SortExpression="codTrabajador" />
                           <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                           <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                           <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                           <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                           <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                           <asp:BoundField DataField="VALIDACION" HeaderText="VALIDACION" ReadOnly="True" SortExpression="VALIDACION" Visible="False" />
                           <asp:BoundField DataField="LICENCIACONDUC" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.V. LICENCIA COND." SortExpression="LICENCIACONDUC">
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="NLICENCIA" HeaderText="Nº LICENCIA COND." SortExpression="NLICENCIA" />
                       </Columns>
                       <EmptyDataTemplate>
                           No registra información
                       </EmptyDataTemplate>
                   </asp:GridView>
                   <asp:LinkButton ID="lbtnCerrarLicencia" runat="server" OnClick="lbtnCerrarLicencia_Click">CERRAR</asp:LinkButton>
                   <asp:SqlDataSource ID="SqlDataSourceLicenciaconducir" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.perRegLicenciaconducir" SelectCommandType="StoredProcedure">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="lblopLicenciaConducir" Name="op" PropertyName="Text" Type="Int32" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               </div>
                   </div>

                    </asp:Panel>




                        <asp:Panel ID="PanelREGCARGOS" runat="server" Visible="False">
        <div class="col-sm-6">
             <div class="panel panel-success">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> REG. CARGOS: <asp:Label ID="lblpesonal" runat="server"></asp:Label><asp:Label ID="lblcodpersonal" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblCodTipo" runat="server" Visible="False"></asp:Label>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                                <div class="form-horizontal" >
                                  <div class="form-group">
                                      <label class="col-md-2 control-label">Tipo:</label>
                                        <div class="col-md-5">
                                          <asp:DropDownList ID="ddlTipo" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceTipo" DataTextField="descripcion" DataValueField="idtipo"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceTipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposTipos]"></asp:SqlDataSource>
                                        </div>

                                      <asp:LinkButton ID="lbBuscar" class="btn btn-success" runat="server" OnClick="lbBuscar_Click">Buscar</asp:LinkButton>
                                  </div>
                                  
                                  <%--<button type="submit" class="btn btn-default">Entrar</button>--%>
                                
                            <div class="table-responsive">
                                <asp:GridView ID="gvcargosSelecc" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="IdEquipo,EstadoDisponible,Nombre" DataSourceID="SqlDataSourceCargosTipos" Width="100%" OnSelectedIndexChanged="gvcargosSelecc_SelectedIndexChanged" AllowPaging="True">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" >
                                        <ItemStyle ForeColor="#006600" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="IdEquipo" HeaderText="COD" ReadOnly="True" SortExpression="IdEquipo" Visible="False" />
                                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                        <asp:BoundField DataField="Nombre" HeaderText="EQUIPO/UNIDAD" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False" />
                                        <asp:BoundField DataField="marca" HeaderText="MARCA" SortExpression="marca" />
                                        <asp:BoundField DataField="modelo" HeaderText="MODELO" SortExpression="modelo" />
                                        <asp:BoundField DataField="EstadoDisponible" HeaderText="DISP." SortExpression="EstadoDisponible" Visible="False" />
                                       
                                        <asp:ImageField DataImageUrlField="EstadoDisponible" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="DISP.">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ImageField>
                                    </Columns>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceCargosTipos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cargostipo" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblCodTipo" Name="idTipo" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>                                
                                <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
                                <asp:Panel ID="Panel1" runat="server" Visible="False">

                                     <asp:Label ID="lblEquipo" runat="server"> </asp:Label>
                                    ,idequipo:<asp:Label ID="lblidEquipo" runat="server"></asp:Label>
                                    Estado:<asp:Label ID="lbEstado" runat="server"></asp:Label>
                                </asp:Panel>
                          </div>

                               
                                   
                                  
                                    <div class="form-group">
                                      <label class="col-md-2 control-label">F.Entrega:</label>
                                      <div class="col-md-5">
                                          <asp:TextBox ID="txtFentrega" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                      </div>
                                   </div>
                                    <div class="form-group">
                                      <label class="col-md-2 control-label">Estado:</label>
                                      <div class="col-md-10">
                                          <asp:TextBox ID="txtDescripcionEntrega" Class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                      </div>
                                   </div>
                                      <asp:LinkButton ID="lbRegistrarCargo" class="btn btn-success" runat="server" OnClick="lbRegistrarCargo_Click">Registrar</asp:LinkButton>
                                






                            </div>
                            
            </div>
                </div>
            <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-truck fa-fw"></i> UNIDAD VEHICULAR </div>
                        <!-- /.panel-heading -->
                        
                                <div class="table-responsive">
                            <asp:GridView ID="gvVehiculo" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourceUV" OnSelectedIndexChanged="gvVehiculo_SelectedIndexChanged" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                    <ControlStyle Height="20px" Width="20px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="PlanLinea" SortExpression="PlanLinea" Visible="False" />
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceUV" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="3" Name="idtipo" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                               </div> 
                                
                            
                            
            </div>
            <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-mobile-phone fa-fw"></i> CELULAR CORPORATIVO</div>
                        <!-- /.panel-heading -->
                         
                                <div class="table-responsive">
                            <asp:GridView ID="gvCelular" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourceCELL" OnSelectedIndexChanged="gvCelular_SelectedIndexChanged" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                    <ControlStyle Height="20px" Width="20px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="LINEA" SortExpression="PlanLinea" />
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceCELL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="1" Name="idtipo" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                
                           
                            
           </div>
             <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-desktop fa-fw"></i> EQUIPO DE COMPUTO</div>
                        <!-- /.panel-heading -->
                           
                                <div class="table-responsive">
                            <asp:GridView ID="gvPortatil" Class="table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourcePC" OnSelectedIndexChanged="gvPortatil_SelectedIndexChanged" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                    <ControlStyle Height="20px" Width="20px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="PROCESADOR" SortExpression="PlanLinea" />
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                                <RowStyle BorderColor="#CCCCCC" />
                            </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourcePC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="2" Name="idtipo" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                
                           
                            
           </div>
            <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-dashboard fa-fw"></i> HERRAMIENTAS,EQUIPOS Y OTROS</div>
                        <!-- /.panel-heading -->
                       
                                <div class="table-responsive">  
                            <asp:GridView ID="gvOtros" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourceOTROS" OnSelectedIndexChanged="gvOtros_SelectedIndexChanged" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                    <ControlStyle Height="20px" Width="20px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="PlanLinea" SortExpression="PlanLinea" Visible="False" />
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                
                                
                            <asp:SqlDataSource ID="SqlDataSourceOTROS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                    <asp:Parameter DefaultValue="4" Name="idtipo" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                </div>
                                
                            
                            
           </div>
         </div>
                            </asp:Panel>
        </div>
        <div class="row">
            <div class="col-md-6">
       
            </div>
            </div>
<%--<div class="col-md-8">
     <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Text Input</label>
                                            <input class="form-control">
                                            <p class="help-block">Example block-level help text here.</p>
                                        </div>
                                        <div class="form-group">
                                            <label>Text Input with Placeholder</label>
                                            <input class="form-control" placeholder="Enter text">
                                        </div>
                                        <div class="form-group">
                                            <label>Static Control</label>
                                            <p class="form-control-static">email@example.com</p>
                                        </div>
                                   </form>
                                 </div>
                                </div>
                         </div>
         </div>
    </div>--%>


    


</asp:Content>
