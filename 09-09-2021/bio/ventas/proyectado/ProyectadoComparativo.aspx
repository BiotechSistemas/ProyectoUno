<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ProyectadoComparativo.aspx.cs" Inherits="biotech.bio.ventas.proyectado.ProyectadoComparativo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

 <%-- 
  <script>
      $(document).ready(function () {
          $("#mostrarmodal").modal("show");
      });
</script>--%>


    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
       

            $('#myModal10').modal('show');
        }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> PROYECTADO - EJECUTADO<asp:Label ID="lbldescripmes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblmes" runat="server"></asp:Label>
                <asp:Label ID="lblnumMes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblfebrero" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidvendedor" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lbloperacion" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblIdMes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblano" runat="server" Visible="False">2018</asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h2>
                            
                         <ol class="breadcrumb">
      <li>
          <asp:LinkButton ID="lbprincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx">Resumen principal</asp:LinkButton>
           <asp:LinkButton ID="lbprincipal10" runat="server"  PostBackUrl="~/bio/ventas/Default.aspx">Resumen principal</asp:LinkButton>
                </li>
                         
                            <li>
          <asp:LinkButton ID="lbProyectado" runat="server"  PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">Proyectado</asp:LinkButton>
                                   </li>
                            <li>
          <asp:LinkButton ID="lbproyectadoEjecutado" runat="server"  PostBackUrl="~/bio/ventas/proyectado/ProyectadoComparativo.aspx">Proyectado-Ejecutado</asp:LinkButton>
      </li>
      <li>
          <asp:LinkButton ID="lbproyectadoComparativo" runat="server"  PostBackUrl="~/bio/ventas/ProyectadoCostos.aspx">Proy.Generalizado</asp:LinkButton>
      </li>
      
  
    </ol> 
    </div>


       <div class="col-md-12">
                <div class="form-horizontal" role="form" >
                
               

<%--                <div class="form-group row" >
                    <asp:Label ID="lblProyectadoMEs" class="col-md-2 col-xs-2 control-label" runat="server" Font-Bold="True"></asp:Label>
                    <asp:Label ID="lblProyecSUSAN" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecMANCILLA" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecASSERETO" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecGUIOVANNI" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecHENRY" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>

                </div>--%>

<div class="form-group row">
    




        <div class="col-md-6 col-xs-12" >
            <div class="row">
                <div class="btn-group btn-group-justified">
                    <asp:Button ID="btGeneral"  runat="server" Text="GENERAL" OnClick="btGeneral_Click" Width="40%" Height="40px"/>
                    <asp:Button ID="btIca"   runat="server" Text="ICA" OnClick="btIca_Click" Width="30%" Height="40px" />
                    <asp:Button ID="btPiura"   runat="server" Text="PIURA" OnClick="btPiura_Click" Width="30%" Height="40px" />

                </div>
            </div>   
                      
        </div>                     
        </div>
    </div>
        </div>


     <asp:Panel ID="PanelMES" runat="server">
                    <div class="form-group row">
                        <div class="col-md-12">


                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes] where EstadoProyectado=1">
                            </asp:SqlDataSource>


                        </div>
                    </div>

                </asp:Panel>


                <asp:Panel ID="Panel1" runat="server">

                    

                     <div class="form-group row">
                        <div class="col-md-7">
                            <div class="panel panel-success">
    <div class="panel-heading"><i class="glyphicon glyphicon-edit"></i><strong> RESUMEN GENERAL/ZONAL:</strong> <asp:Label ID="lblzonaTitulo1" runat="server"></asp:Label>
                             &nbsp;
                             <asp:Label ID="lblmes1" runat="server"></asp:Label>
                             <asp:Label ID="lblvendedor1" runat="server" Visible="False"></asp:Label></div>
   
                             
                            <asp:Panel ID="PanelGrupo1Listros" runat="server">
                                <div class ="table-responsive">
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered table-hover" DataSourceID="SqlDataSourceGeneral" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="PRODUCTO1" BorderStyle="None" Font-Size="X-Small">
                                     <Columns>
                                         <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO1") %>' ForeColor="#006600"
                                                 
                                                  
                                                         
                                                 ></asp:LinkButton>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:BoundField DataField="PRODUCTO1" HeaderText="PRODUCTO1" SortExpression="PRODUCTO1" Visible="False" />
                                         <asp:BoundField DataField="PROYECTADO" HeaderText="PROYECTADO" ReadOnly="True" SortExpression="PROYECTADO">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="VENDIDO" HeaderText="EJECUTADO" SortExpression="VENDIDO" ReadOnly="True" >
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="PORVENDER" HeaderText="DIFERENCIA" ReadOnly="True" SortExpression="PORVENDER">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                          <asp:BoundField DataField="EXISTACTUAL" HeaderText="EXISTENCIA" ReadOnly="True" SortExpression="EXISTACTUAL">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                          <asp:BoundField DataField="REPOSICION" HeaderText="REPOSICION" ReadOnly="True" SortExpression="REPOSICION">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                     </Columns>
                                     <EmptyDataTemplate>
                                         No se encontraron registros...
                                     </EmptyDataTemplate>
                                 </asp:GridView>
                                   <small>&nbsp; *Seleccionar producto para ver existencia actual en almacenes.</small> 
                                    <asp:SqlDataSource ID="SqlDataSourceGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_Comparativo" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                    </div>
                             </asp:Panel>
                 </div>
                            <%--PANEL--%>

                            <div class="panel panel-default">
    <div class="panel-heading">DISTRIBUCIÓN DEL PRODUCTO:  <asp:Label ID="lblproducto11" runat="server" style="font-weight: 700"></asp:Label></div>



                             <asp:Panel ID="PanelGrupo2Presentacion" runat="server">
                                
                                 <div class ="table-responsive">
                                     <asp:GridView ID="gvGrupo2Presentacion" runat="server" class="table table-hover  table-bordered " AutoGenerateColumns="False" DataSourceID="SqlDataSourceXproducto" OnRowDataBound="gvGrupo2Presentacion_RowDataBound" ShowFooter="True" GridLines="None">

                                    <Columns>
                                        <asp:BoundField DataField="PROYECTADO" HeaderText="PRO" SortExpression="PROYECTADO" ReadOnly="True" >
                                        <ItemStyle Font-Size="X-Small" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CLIENTEEJECUTADO" HeaderText="CLIENTEEJECUTADO" SortExpression="CLIENTEEJECUTADO" ReadOnly="True" Visible="False" />
                                        <asp:BoundField DataField="CLIENTE1Y2" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE1Y2" >
                                        <ItemStyle Font-Size="XX-Small" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LPROYECTADO" HeaderText="PROYECT" SortExpression="LPROYECTADO" ReadOnly="True" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LEJECUTADO" HeaderText="EJECUT" ReadOnly="True" SortExpression="LEJECUTADO" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DIFERENCIA" HeaderText="DIFEREN" ReadOnly="True" SortExpression="DIFERENCIA" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>

                                    <EmptyDataTemplate>
                                        Indicar producto...
                                    </EmptyDataTemplate>

                                         <HeaderStyle BackColor="WhiteSmoke" />

                                </asp:GridView>

                                 <asp:SqlDataSource ID="SqlDataSourceXproducto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectadoXProducto" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                         <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblproducto11" Name="producto" PropertyName="Text" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                     </div>

                            </asp:Panel>


       
  </div>



                        </div>





                          <div class="col-md-5">
                              <asp:Panel ID="PanelAlm"   runat="server">
                                 <div class="panel panel-default">
  <div class="panel-heading">EXISTENCIA ACTUAL</div>
                                                                   
                                  <asp:GridView ID="gvPedido" runat="server" AutoGenerateColumns="False" class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataKeyNames="idProducto" DataSourceID="SqlDataSourcePRO" GridLines="None">
                                      <Columns>
                                          <asp:BoundField DataField="idProducto" HeaderText="idProducto" SortExpression="idProducto" Visible="False" />
                                          <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                          <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL">
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA">
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA">
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                          </asp:BoundField>
                                      </Columns>
                                      <HeaderStyle BackColor="WhiteSmoke" />
                                  </asp:GridView>
                                  <asp:SqlDataSource ID="SqlDataSourcePRO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_TotalLitros" SelectCommandType="StoredProcedure">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="lblproducto11" Name="idproducto" PropertyName="Text" Type="String" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
 

  <div class="panel-footer">
    TOTAL EN LITROS CENTRAL:
                                  <asp:Label ID="lblttCentral" runat="server" style="font-weight: 700"></asp:Label>
                                  &nbsp;/ ICA:<asp:Label ID="lblttica" runat="server" style="font-weight: 700"></asp:Label>
                                  &nbsp;/ PIURA:<asp:Label ID="lblttPiura" runat="server" style="font-weight: 700"></asp:Label>
                                  &nbsp;=
                                  <asp:Label ID="lblTotalLitros" runat="server" style="font-weight: 700"></asp:Label>
                                  &nbsp;GENERAL
  </div></div>
                                 
                              </asp:Panel>

                              <div class="panel panel-default">
                                <div class="panel-body">
                                   

                              <asp:Label ID="lblvendedor2" runat="server"></asp:Label>
                              <H4><i class="glyphicon glyphicon-edit"></i>  ASESORES REG. PROYECTADO:
                              <asp:Label ID="lblmes2" runat="server"></asp:Label>
                              &nbsp;<asp:Label ID="lblzonatitulo2" runat="server" Visible="False"></asp:Label>
                                  <asp:LinkButton ID="LinkButton2" runat="server" data-toggle="modal" data-target="#myModal10" Visible="False">LinkButton</asp:LinkButton>
                              </H4>
                              
                              <asp:LinkButton ID="lbt_BIO" runat="server" ForeColor="#006600"  data-toggle="modal" data-target="#myModal" >BIOTECH ICA - Ver ventas</asp:LinkButton>
   
                              &nbsp;
                              <div class ="table-responsive">
                                  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover" DataKeyNames="idvendedor,ASESOR" DataSourceID="SqlDataSourceResumen" GridLines="None" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowHeader="False">
                                  <Columns>
                                      <asp:TemplateField HeaderText="PROYECCION / ASESOR" ShowHeader="False">
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("ASESOR") %>'></asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="idvendedor" HeaderText="idvendedor" SortExpression="idvendedor" Visible="False" />
                                      <asp:BoundField DataField="ASESOR" HeaderText="PROYECCION" SortExpression="ASESOR" Visible="False" />
                                      <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" Visible="False">
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                  </Columns>
                                  <EmptyDataTemplate>
                                      <span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">No se encontraron registros...</span>
                                  </EmptyDataTemplate>
                                  <HeaderStyle BackColor="WhiteSmoke" />
                              </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSourceResumen" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_totales" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblidvendedor" Name="opcion" PropertyName="Text" Type="String" />
                                      <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                                  </div>
                              <div class="panel panel-default">
                                  <div class="panel-heading">
                                      RESUMEN INDIVIDUAL:
                                      <asp:Label ID="lblvendProyectado" runat="server"></asp:Label>
                                      <asp:Label ID="lblidvendedor20" runat="server" Visible="False"></asp:Label>
                                  </div>
                                  <div class="table-responsive">
                                      <asp:GridView ID="gvAsesores" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover" DataKeyNames="PRODUCTO1" DataSourceID="SqlDataSourceVENDEDORES" GridLines="None" OnRowDataBound="gvAsesores_RowDataBound" OnSelectedIndexChanged="gvAsesores_SelectedIndexChanged" Font-Size="X-Small">
                                          <Columns>
                                              <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                                  <ItemTemplate>
                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("PRODUCTO1") %>'></asp:LinkButton>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                              <asp:BoundField DataField="PRODUCTO1" HeaderText="PRODUCTO" SortExpression="PRODUCTO1" Visible="False" />
                                              <asp:BoundField DataField="PROYECTADO" HeaderText="PROYECT" ReadOnly="True" SortExpression="PROYECTADO">
                                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                              </asp:BoundField>
                                              <asp:BoundField DataField="VENDIDO" HeaderText="EJECUT" ReadOnly="True" SortExpression="VENDIDO">
                                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                              </asp:BoundField>
                                              <asp:BoundField DataField="PORVENDER" HeaderText="DIFEREN" ReadOnly="True" SortExpression="PORVENDER">
                                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                              </asp:BoundField>
                                               <asp:BoundField DataField="EXISTACTUAL" HeaderText="EXISTENCIA" ReadOnly="True" SortExpression="EXISTACTUAL">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                          <asp:BoundField DataField="REPOSICION" HeaderText="REPOSICION" ReadOnly="True" SortExpression="REPOSICION">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                          </Columns>
                                          <EmptyDataTemplate>
                                              Seleccionar asesor....
                                          </EmptyDataTemplate>
                                          <HeaderStyle BackColor="WhiteSmoke" />
                                      </asp:GridView>
                                  </div>
                              </div>
                              <%--SE CIERRA EL PANEL--%>
                              <asp:SqlDataSource ID="SqlDataSourceVENDEDORES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_Comparativo" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblidvendedor20" Name="vendedor" PropertyName="Text" Type="String" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                              &nbsp;PRODUCTO:
                              <asp:Label ID="lblproducto22" runat="server" style="font-weight: 700"></asp:Label>
                              <asp:Label ID="lblproducto1" runat="server"></asp:Label>
                              <div class="table-responsive">
                              <asp:GridView ID="gvdistribucionProyectado" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceXPRODUCTOvENDEDOR" OnRowDataBound="gvdistribucionProyectado_RowDataBound" ShowFooter="True" Font-Size="X-Small" BorderStyle="None" GridLines="None">
                                <Columns>
                                    <asp:BoundField DataField="PROYECTADO" SortExpression="PROYECTADO" ReadOnly="True" />
                                    <asp:BoundField DataField="CLIENTEEJECUTADO" HeaderText="CLIENTEEJECUTADO" SortExpression="CLIENTEEJECUTADO" ReadOnly="True" Visible="False" />
                                    <asp:BoundField DataField="CLIENTE1Y2" HeaderText="CLIENTE" SortExpression="CLIENTE1Y2" ReadOnly="True" >
                                    <ItemStyle Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LPROYECTADO" HeaderText="PROY" SortExpression="LPROYECTADO" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LEJECUTADO" HeaderText="EJEC" SortExpression="LEJECUTADO" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DIFERENCIA" HeaderText="DIF" SortExpression="DIFERENCIA" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                  <EmptyDataTemplate>
                                      Indicar asesor / producto
                                  </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                  </div>
                            <asp:SqlDataSource ID="SqlDataSourceXPRODUCTOvENDEDOR" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectadoXProducto" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidvendedor20" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblproducto11" Name="producto" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div></div></div>
                       
                            &nbsp;<asp:Label ID="lblproducto2" runat="server"></asp:Label>
                            <asp:Label ID="lblmensaje" runat="server"></asp:Label>



                         <br />
                         



                    </div>

                </asp:Panel>



   
    <div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
           <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h3>EXISTENCIA <asp:Label ID="lblproducto" runat="server" Text="Label"></asp:Label></h3>
           </div>
           <div class="modal-body">
              <h4>Texto de la ventana</h4>
              Mas texto en la ventana.    
       </div>
           <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn btn-danger">Cerrar</a>
           </div>
      </div>
   </div>
</div>









    


    <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">VENTAS REALIZADAS: <small>
              <asp:Label ID="Label1" runat="server" Text="OFICINA BIOTECH"></asp:Label></small></h4>
        </div>
        <div class="modal-body">
          <asp:GridView ID="gvxVendedor" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceXVENT">
                             <Columns>
                                 <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                 <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" >
                                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                 </asp:BoundField>
                             </Columns>
                             <HeaderStyle BackColor="WhiteSmoke" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSourceXVENT" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectadoLitrosxVendedor" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="lblidvendedor20" Name="idvendedor" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>




</asp:Content>
