<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="biotech.bio.ventas.Activos.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-stack-overflow  "></i> BIENES O ACTIVOS
                       
                    </h2>
                </div>
                <!-- /.col-lg-12 -->
    </div>


    <div class="row">
                    <div class="col-lg-12">
                      <asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                       
                      </div>   
                 </div>
    <br />



    <div class="row">


        <div class="col-md-12">
              <asp:Panel ID="PanelNuevo" runat="server">

              <div class="panel panel-success">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> COD. ACT:  
                            
                            <asp:Label ID="lblCodActivo" runat="server"></asp:Label>
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">



              <div class="row">
              
                 <div class="table-responsive">
                  <table class="table table-borderless">
                      
                      <tr>
                          <td class="auto-style1">Activo:</td>
                          <td colspan="3" class="auto-style1">
                              <asp:TextBox ID="txtactivo" required Class="form-control" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Descripción:</td>
                          <td colspan="3">
                              <asp:TextBox required ID="txtdescripcion" placeholder="Descripción, detalle..." Class="form-control" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Tipo:</td>
                          <td>
                              <asp:DropDownList ID="ddlRegTipo" Class="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idtipo" AutoPostBack="True" OnSelectedIndexChanged="ddlRegTipo_SelectedIndexChanged">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposTipos]"></asp:SqlDataSource>
                          </td>
                          <td>Titular:</td>
                          <td>
                              <asp:DropDownList ID="ddlRegTitular" runat="server" Class="form-control"  DataSourceID="SqlDataSource2" DataTextField="empresa" DataValueField="id" Width="100%">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [id], [empresa], [empresa1] FROM [tb_empresas] WHERE ([EstadoCargos] = @EstadoCargos)">
                                  <SelectParameters>
                                      <asp:Parameter DefaultValue="1" Name="EstadoCargos" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                          </td>
                      </tr>
                      <tr>
                          <td>Marca:</td>
                          <td>
                              <asp:TextBox required ID="txtmarcar" placeholder="Marca" Class="form-control" runat="server"></asp:TextBox>
                          </td>
                          <td>Modelo:</td>
                          <td>
                              <asp:TextBox ID="txtmodelo" placeholder="Modelo" required Class="form-control" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Año:</td>
                          <td>
                              <asp:TextBox ID="txtano" runat="server" Class="form-control" required="" step="0.01" type="number"></asp:TextBox>
                          </td>
                          <td>N°contrato/<br /> Factura:</td>
                          <td>
                              <asp:TextBox ID="txtNumContrato"  required Class="form-control"  runat="server" placeholder="N° documento"></asp:TextBox>
                          </td>
                      </tr>
                      <asp:Panel ID="Pgrupo2" runat="server">
                      <tr>
                          <td>Procesador/
                              <br />
                              Motor/ SIM</td>
                          <td>
                              <asp:TextBox ID="txtprocesadorMotor" required Class="form-control" runat="server"></asp:TextBox>
                          </td>
                          <td>RAM/ Chasis<br /> / IMEI</td>
                          <td>
                              <asp:TextBox ID="txtramchasis" runat="server" Class="form-control" required=""></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Plan linea:</td>
                          <td>
                              <asp:TextBox ID="txtplanLinea" Class="form-control" runat="server"></asp:TextBox>
                          </td>
                          <td>&nbsp;</td>
                          <td>
                              &nbsp;</td>
                          
                      </tr>
                          </asp:Panel>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <asp:Panel ID="Pgrupo3" runat="server">

                     
                      <tr>
                          <td>Seguro:</td>
                          <td>
                              <asp:TextBox ID="txtSeguro" Class="form-control"  runat="server"></asp:TextBox>
                          </td>
                          <td>GPS:</td>
                          <td>
                              <asp:TextBox ID="txtGPS" Class="form-control"  runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Lunas oscuras:</td>
                          <td>
                              <asp:TextBox ID="txtlunasoscuras" placeholder="N° de licencia  del polarizado" runat="server" Class="form-control"></asp:TextBox>
                          </td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>Llantas/Aro:</td>
                          <td colspan="3">
                              <asp:TextBox ID="txtLlantasAro" Class="form-control" placeholder="Llantas / Detalle aros" runat="server" ToolTip="255/70/R 16 111H" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Combustible</td>
                          <td colspan="3">
                              <asp:TextBox ID="txtCombustible" placeholder="Detalle Combustible(s)..." Class="form-control"  runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                          
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr> </asp:Panel>
                  </table>
                     <asp:Button ID="btActualizar" class="btn btn-success"  runat="server" Text="Actualizar" Width="200px" OnClick="btActualizar_Click" />
                     <asp:Button ID="btRegistrar" class="btn btn-success"  runat="server" Text="Registrar" Width="200px" OnClick="btRegistrar_Click" />

                     <asp:LinkButton ID="LinkButton1" Class="btn btn-danger" runat="server" OnClick="LinkButton1_Click">Cancelar</asp:LinkButton>

                  </div>
                  </div>
                            </div>
                  

              </asp:Panel>

                  </div>







             
       
    <div class="panel panel-success">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> BIONES ó ACTIVOS REGISTRADOS: <asp:Label ID="lblpesonal" runat="server"></asp:Label><asp:Label ID="lblcodpersonal" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblCodTipo" runat="server" Visible="False"></asp:Label>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                                <div class="form-horizontal" >
                                  <div class="form-group">
                                      
                                        <div class="col-md-10">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSourceTipo" DataTextField="descripcion" DataValueField="idtipo" RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                            </asp:RadioButtonList>
                                            <asp:SqlDataSource ID="SqlDataSourceTipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposTipos]"></asp:SqlDataSource>
                                        </div>

                                      <asp:LinkButton ID="lbNuevo" class="btn btn-success" runat="server" OnClick="lbNuevo_Click">Nuevo</asp:LinkButton>
                                  </div>
                                  
                                  <%--<button type="submit" class="btn btn-default">Entrar</button>--%>
                                
                            <div class="table-responsive">
                                <asp:GridView ID="gvcargosSelecc" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="IdEquipo,EstadoDisponible,Nombre" DataSourceID="SqlDataSourceCargosTipos" Width="100%" GridLines="Horizontal" OnRowCommand="gvcargosSelecc_RowCommand">
                                    <Columns>
                                        <asp:ButtonField CommandName="elimina" HeaderText="EQUIPO" ShowHeader="True" Text="Eliminar" DataTextField="Nombre" >
                                        <HeaderStyle Width="90px" />
                                        <ItemStyle ForeColor="#006600" />
                                        </asp:ButtonField>
                                        <asp:BoundField DataField="IdEquipo" HeaderText="COD" ReadOnly="True" SortExpression="IdEquipo" Visible="False" />
                                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                          
                                        
                                        <asp:BoundField DataField="Nombre" HeaderText="EQUIPO/ UNIDAD" SortExpression="Nombre" Visible="False" />
                                        <asp:BoundField DataField="Descripcion" HeaderText="DESCRIPCION" SortExpression="Descripcion" >
                                        <ItemStyle Font-Size="X-Small" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="marca" HeaderText="MARCA" SortExpression="marca" />
                                        <asp:BoundField DataField="modelo" HeaderText="MODELO" SortExpression="modelo" />
                                        <asp:BoundField DataField="EstadoDisponible" HeaderText="DISP." SortExpression="EstadoDisponible" Visible="False" />
                                       
                                        <asp:ImageField DataImageUrlField="EstadoDisponible" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="DISP.">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ImageField>
                                          
                <asp:ButtonField CommandName="edita" ShowHeader="True" Text="Modificar" ImageUrl="~/images/buscarr.png" >
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                          
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

                               
                                   
                                  
                                    <%--<div class="form-group">
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
                                --%>






                            </div>
                            
            </div>
                </div></div>

       
          
            

  
    <div class="row">

        <br />

    </div>

</asp:Content>
