<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.bio.ventas.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 
    <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


<%--<script>


       $(document).ready(function () {
           $("#Modal").modal("show");
       });
</script>--%><%-- <SCRIPT LANGUAGE="JavaScript">

        function url() {

            hidden = open('http://www.microsoft.com', 'NewWindow', 'top=0,left=0,width=800,height=600,status=yes,resizable=yes,scrollbars=yes');

        }

            </SCRIPT>--%>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
           <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h3><strong><MARQUEE>
                  <asp:Label ID="lblmensajeTitulo" runat="server" Text="FELIZ CUMPLEAÑOS"></asp:Label></MARQUEE></strong>
                  </h3>
           </div>
           <div class="modal-body">
              <center>
                  <%--<a href="../../Almacen/WebForm1.aspx">--%>
               <asp:Image ID="Image2" runat="server" border="0"  Width="100%" Height="200" />
               <p  class="text-center">
                   <br />
                   <asp:Label ID="lblmensajeNombre" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                   <br /><small><asp:Label ID="lblmensajecargo" runat="server" Font-Size="Medium" ForeColor="#999999"></asp:Label></small>
                   
              
                  <H3> <asp:Label ID="lblmensajeFecha" runat="server" Font-Size="Medium"></asp:Label></H3>

                   <p>
                   </p>
                  
                       <asp:Label ID="lblmensajeConcepto" runat="server" Font-Size="Medium"></asp:Label>
                   
                   <asp:Label ID="lblmensajeCodUsu" runat="server"></asp:Label>
                   
                   <%--<a href="../../Almacen/WebForm1.aspx">--%>

                   <p>
                   </p>

                   <p>
                   </p>

                   <p>
                   </p>

               </p>
               
               </center>
       </div>
           <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn btn-success">Cerrar</a>
           </div>
      </div>
   </div>
</div>

   
 
        

            <div class="row">
                <div class="col-lg-12">
                <div class="page-header">
  <h2>Bienvenido:  <small> 
      <asp:LinkButton ID="lblnombre" runat="server" OnClick="lblnombre_Click" ToolTip="Ver ficha personal"></asp:LinkButton>

      <asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                 </small>
      <asp:Label ID="Label1almacen" runat="server" Visible="False"></asp:Label>
                    </h2>
</div>


            <!-- /.row -->
            <div class="row">
                 <asp:Panel ID="pclientes" runat="server">
                    <div class="col-lg-3 col-md-6">
                   <div class="panel panel-primary">
                   
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Clientes</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="Clientes.aspx">--%>
                

                        <a href="Cliente/Clientes.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                        </div>
                </asp:Panel>
                        
                    
               
                
                    <asp:Panel ID="pVentas" runat="server">
                        <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div ><STRONG>Ventas</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <a href="CuentasXCobrar.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                        </div>
                    </asp:Panel>

                    <asp:Panel ID="pVentas10" runat="server">
                         <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Ventas</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <a href="FactLetra/NotaPedido.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                        </div>
                    </asp:Panel>

                    
               <asp:Panel ID="pCompras" runat="server" >
                <div class="col-lg-3 col-md-6">
                         <div class="panel panel-yellow">

                             <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Compras</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                         <%--<a href="../../porpagar/Pagos_ctaporpagar.aspx">--%>
                        <a href="../../porpagar/Pagos_ctaporpagar.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Detalle</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                             </div>
                     </div>
                        </asp:Panel>
                    
                       
                   
               
               
                            <asp:Panel ID="pAlmacen" runat="server" >
                                 <div class="col-lg-3 col-md-6">
                                       <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Almacen</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="../../Almacen/WebForm1.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                            </div> </div>
                            </asp:Panel>
                    
                        
                    
                


              
                            <asp:Panel ID="pviaticos" runat="server" >
                                  <div class="col-lg-3 col-md-6">
                                           <div class="panel panel-primary">

                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   
                                    <i class="fa fa-credit-card fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Viáticos</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="rrhh/RegViaticosRegistrados.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
 </div></div>
                            </asp:Panel>
                    
                        
                    
               

                

               
                            <asp:Panel ID="pResumen" runat="server" >
                                 <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Resumen</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="ResumenVentasAgrup.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                            </div></div>
                            </asp:Panel>


                   <asp:Panel ID="prensayos" runat="server" >
                                 <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>ENSAYOS</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="AreaTecnica/Resum_ensayos.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                            </div></div>
                            </asp:Panel>








                    <asp:Panel ID="pResumen10" runat="server" >
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">

                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>Proyectado</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                       <%-- <a href="proyectado/Validar.aspx">--%>
                        <a href="proyectado/RegProyectadoGrupal.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                                  </div>
                            </asp:Panel>
                    
                        
                    
          

               
                            <asp:Panel ID="PanelRRHH" runat="server" >
                                 <div class="col-lg-3 col-md-6">
                                     <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>RR.HH.</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="rrhh/Default.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
  </div>
                                     </div>
                            </asp:Panel>

                 <asp:Panel ID="psolicitudGDH" runat="server" >
                                 <div class="col-lg-3 col-md-6">
                                     <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                  
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>SOLICITUD GDH</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="rrhh/Solicitud/SolicitudesRegistradasAdm.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
  </div>
                                     </div>
                            </asp:Panel>


                  <asp:Panel ID="psolTecnica" runat="server" >
                                 <div class="col-lg-3 col-md-6">
                                     <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                  
                                    <i class="fa fa-car fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div><STRONG>SOLICITUD TÉCNICA.</STRONG></div>
                                    <div>N°00</div>
                                </div>
                            </div>
                        </div>
                        <%--<a href="../../Almacen/WebForm1.aspx">--%>
                        <a href="Unidades/SolTecnicaPersonal.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalles</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
  </div>
                                     </div>
                            </asp:Panel>
                    
                        
                    
              


            </div>
            <!-- /.row -->
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-heading">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> Resumen General Ventas
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <%--<ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>--%>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                  
                
                </div>
           </div>
            <!-- /.row -->
    </asp:Panel>

                    <asp:Panel class="row" ID="pauditoria" runat="server" Visible="False">
                        <asp:Button ID="btnLetras" runat="server" Text="LETRAS ( 0 )" OnClick="btnLetras_Click" />
                        <br />
                        <asp:Panel ID="payudaLetra" runat="server" Visible="False">
                            &nbsp;<asp:Label ID="lblidopcion10" runat="server">1</asp:Label>
                            &nbsp;<asp:Label ID="lbllnLetra" runat="server"></asp:Label>
                            &nbsp;<asp:Label ID="lbllfecha1" runat="server"></asp:Label>
                            &nbsp;<asp:Label ID="lbllfecha2" runat="server"></asp:Label>
                            <asp:Label ID="lbllcontaLetras" runat="server"></asp:Label>
                        </asp:Panel>

                        <asp:Panel ID="Panelletra" runat="server" BackColor="#F9F9F9" Width="100%" Visible="False">
                           
                            <div class="table-responsive">
                                <strong>Movimientos realizados por confirmar:</strong> &nbsp;<asp:GridView ID="gvLetras" clase="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="15" Font-Size="XX-Small" GridLines="Horizontal" OnRowDataBound="gvLetras_RowDataBound" OnSelectedIndexChanged="gvLetras_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ButtonType="Button" SelectText="Confirmar" ShowSelectButton="True" >
                                    <HeaderStyle Width="40px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="RUC" HeaderText="RUC"  Visible="False"  SortExpression="RUC" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
                                    <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FEMISION" HeaderText="F. EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                                    <HeaderStyle Width="60px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FVENCIMIENTO" HeaderText="F. VENCTO" SortExpression="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" >
                                    <HeaderStyle Width="60px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                   
                                  
                                    <asp:BoundField DataField="TT" HeaderText="IMPORTE" SortExpression="TT" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                    </asp:BoundField>
                                     <asp:BoundField DataField="MONEDA" HeaderText="" SortExpression="MONEDA" ReadOnly="True" >
                                    <HeaderStyle Width="30px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                      <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" >
                                    <HeaderStyle Width="70px" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" DataFormatString="{0:dd/MM/yyyy}" >
                                    <HeaderStyle Font-Size="XX-Small" Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FMOVIMIENTO" HeaderText="F. MOVIMIENTO" SortExpression="FMOVIMIENTO" DataFormatString="{0:dd/MM/yyyy}" >
                                    <HeaderStyle Width="50px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" visible="False"/>
                                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" ReadOnly="True" >
                                    <HeaderStyle Width="70px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                </Columns>
                            </asp:GridView>
                                <asp:Button ID="btn10xconfirmar" runat="server" OnClick="btn10xconfirmar_Click" Text="POR CONFIRMAR" />
                                <asp:Button ID="btn10confirmados" runat="server" OnClick="btn10confirmados_Click" Text="CONFIRMADOS" />
                                &nbsp;| DESDE:
                                <asp:TextBox ID="txt10fdesde" runat="server" TextMode="Date"></asp:TextBox>
                                &nbsp;HASTA
                                <asp:TextBox ID="txt10fhasta" runat="server" TextMode="Date"></asp:TextBox>
                                &nbsp;<asp:Button ID="btn10porfecha" runat="server" OnClick="btn10porfecha_Click" Text="FILTRAR FECHA" />
                                &nbsp;<asp:Label ID="lblitemLetra" runat="server"></asp:Label>
                                &nbsp;Regismos encontrados.<br />
                                <asp:Label ID="lblmensajeLetra" runat="server" ForeColor="#990000"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="letras_movimientos_validargg" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidopcion10" DefaultValue="10" Name="opestado" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lbllnLetra" DefaultValue="" Name="idletra" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lbllfecha1" DbType="Date" Name="fecha1" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="lbllfecha2" DbType="Date" Name="fecha2" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                </div>
                        </asp:Panel>

                    </asp:Panel>
    
    <div class="row">
        
        <hr />
                
                            <asp:ImageButton ID="lbtnRevTecnica" runat="server" ImageUrl="~/images/botonmantenimientoprev.png" OnClick="lbtnRevTecnica_Click" Width="200px" />
&nbsp;
                
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/botonacta.png" OnClick="ImageButton1_Click" Width="200px" />
   

      

            <br />
        <br />
Políticas y Normas Biotech:


        <asp:Label ID="lblidSelect" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbldoc" runat="server" Visible="False"></asp:Label>
                    <asp:GridView ID="gvNormas" runat="server" AutoGenerateColumns="False" BorderWidth="0px" DataKeyNames="id,doc" DataSourceID="SqlDataSourceNormas" GridLines="None" OnSelectedIndexChanged="gvNormas_SelectedIndexChanged" ShowHeader="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("descripcion") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" Visible="False" />
                            <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                            <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceNormas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="sp_NormasLista" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
               


        <br />
        </div>
    


            
      <asp:Panel ID="panel_Honomastico" runat="server">
           <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-heading">
                       
                        <div class="panel-body">
                            <div id="Div1">

                                Feliz cumpleaños :
                                <div class="table-responsive">
                                <asp:GridView ID="GridView2" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="codTrabajador" DataSourceID="SqlDataSourceHONOMASTICO" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/regalo.gif" >
                                        <ControlStyle Height="40px" Width="40px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="codTrabajador" HeaderText="codTrabajador" ReadOnly="True" SortExpression="codTrabajador" Visible="False" />
                                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                                        <asp:BoundField DataField="HONOMASTICO" HeaderText="HONOMÁSTICO" ReadOnly="True" SortExpression="HONOMASTICO" />
                                        <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                                        <asp:BoundField DataField="Descripcion" HeaderText="CARGO" SortExpression="Descripcion" Visible="False" />
                                        <asp:BoundField DataField="Zona" HeaderText="Zona" SortExpression="Zona" Visible="False" />
                                        <asp:BoundField DataField="estadoSaludo" HeaderText="SALUDO" SortExpression="estadoSaludo" Visible="False" />
                                    </Columns>
                                </asp:GridView>
                                    </div>
                                <asp:SqlDataSource ID="SqlDataSourceHONOMASTICO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_honomasticoHoy" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                            </div>

                           
                        </div>
                        <!-- /.panel-body -->
                      
                          
                          <!-- /.panel-body --></div>
                    <!-- /.panel -->
                  
                
                </div>
           </div>
      </asp:Panel>
    
     <%--<link href="/bio/vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <!-- jQuery -->
    <script src="/bio/vendorF/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/bio/vendorF/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/bio/vendorF/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="/bio/vendorF/raphael/raphael.min.js"></script>
    <script src="/bio/vendorF/morrisjs/morris.min.js"></script>
    <script src="/bio/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/bio/dist/js/sb-admin-2.js"></script>


</asp:Content>
