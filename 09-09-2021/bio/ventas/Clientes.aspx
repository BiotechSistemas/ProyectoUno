<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="biotech.bio.ventas.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
    <link rel="icon" type="image/png" href="http://www.biotechcorp.com.pe/webapp/logoicono.png" />
<head runat="server">
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bio Clientes</title>
    
     <!-- Bootstrap Core CSS -->
    <link href="../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

     <style type="text/css">

       .navbar-default .nav li a{
  color: #808080;
}

/*Mouse encima*/
.navbar-default .nav li a:hover{
  color: #05a808;
}
    
    </style>
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</head>
<body >
    <form id="form1" runat="server">
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/images/logobio3.png" Width="170px" /></a>
            </div>
            <!-- /.navbar-header -->

            <%--<ul class="nav navbar-top-links navbar-right">
                
                
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>--%>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>



                        <li>
                            <a > <asp:LinkButton ID="lbPrincipal" runat="server" OnClick="lbPrincipal_Click" PostBackUrl="~/bio/ventas/Default.aspx"><i class="fa fa-sitemap fa-fw"></i> Principal</asp:LinkButton></a>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbalmacen" runat="server" PostBackUrl="~/Almacen/WebForm1.aspx"><i class="fa fa-edit fa-fw"></i> Almacen</asp:LinkButton>
                            
                        </li>
                        <li>                          
                            <asp:LinkButton ID="lbGrupoVentas" runat="server" OnClick="lbGrupoVentas_Click"><i class="fa fa-copy fa-fw"></i> Ventas<span class="fa arrow"></span></asp:LinkButton>
                            <ul class="nav nav-second-level">
                                <li>
                                    <asp:LinkButton ID="lbG1Pedidos" runat="server" OnClick="lbG1Pedidos_Click" PostBackUrl="~/bio/ventas/Pedidos.aspx"><i class="fa fa-list-alt fa-fw"></i> Pedidos</asp:LinkButton>                                
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbG1Clientes" runat="server" OnClick="lbG1Clientes_Click" PostBackUrl="~/bio/ventas/Clientes.aspx"><i class="fa fa-group fa-fw"></i> Clientes</asp:LinkButton>
                                </li>
                                 <li>
                                    <asp:LinkButton ID="lbG1CtaXCobrar" runat="server" OnClick="lbG1CtaXCobrar_Click" PostBackUrl="~/bio/ventas/CuentasXCobrar.aspx"><i class="fa fa-money fa-fw"></i> Cuentas por cobrar</asp:LinkButton>
                                    
                                    
                                    <!-- /.nav-third-level -->
                                     
                                </li>
                                
                               

                                 
                                

                                
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        
                       
                       

                        <li>
                            <asp:LinkButton ID="lbCompras" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx"><i class="fa fa-shopping-cart fa-fw"></i> Compras</asp:LinkButton>
                            
                        </li>
                        
                        
                       <li>
                            <asp:LinkButton ID="lbRecursos" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticosRegistrados.aspx"><i class="fa  fa-credit-card fa-fw"></i> Viáticos</asp:LinkButton>
                           
                        </li>

                          <li>
                                    <asp:LinkButton ID="lbResumenVentas" runat="server" OnClick="lbResumenVentas_Click"><i class="fa fa-bar-chart-o fa-fw"></i> Resumen<span class="fa arrow"></span></asp:LinkButton>
                                    
                                    <ul class="nav nav-third-level">
                                        
                                        <li>
                                            <asp:LinkButton ID="lbrVentasGeneral" runat="server" OnClick="lbrVentasGeneral_Click" PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx">R. Ventas</asp:LinkButton>
                                            
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lbrVentasComparativo" runat="server" OnClick="lbrVentasComparativo_Click" PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">R. Proyectado</asp:LinkButton>
                                          
                                        </li>
                                       <li>
                                            <asp:LinkButton ID="lbremProducto" runat="server"  PostBackUrl="~/bio/ventas/Resumen/TopProductos.aspx">Producto</asp:LinkButton>
                                          
                                        </li>
                                         <li>
                                            <asp:LinkButton ID="lbResumenViaticos" runat="server"  PostBackUrl="~/bio/ventas/costos/Viaticos.aspx">Viáticos</asp:LinkButton>
                                          
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>



                         <li>
                            <asp:LinkButton ID="lbAdministrar" runat="server" PostBackUrl=""><i class="fa fa-gears fa-fw"></i> Administrar</asp:LinkButton>
                           
                        </li>

                        <li>
                            <asp:LinkButton ID="lbSalir" runat="server" PostBackUrl="~/Default.aspx"><i class="fa fa-power-off fa-fw"></i> Cerrar</asp:LinkButton>
                            
                        </li>
                        
                        
                       <%-- <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>--%>
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-users"></i> Ficha clientes<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>   
                 </div>
                <asp:Panel ID="PanelSoloGerencia" class="row" runat="server">
                   
                  <h4><i class="fa fa-laptop"></i> Por aprobación gerencia:
                        </h4>
                  
                     
                     
                          <div class="table-responsive">
                          <asp:GridView ID="gvAprobGerencia" class="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idRuc" DataSourceID="SqlDataSourcexevalgenrecia" OnSelectedIndexChanged="gvAprobGerencia_SelectedIndexChanged">

                              <Columns>
                                  <asp:CommandField ShowSelectButton="True" >
                                  <ItemStyle ForeColor="#006600" HorizontalAlign="Center" VerticalAlign="Middle" />
                                  </asp:CommandField>
                                  <asp:BoundField DataField="idRuc" HeaderText="idRuc" ReadOnly="True" SortExpression="idRuc" Visible="False" />
                                  <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                                  <asp:BoundField DataField="CONDICIONASESOR" HeaderText="ASESOR" ReadOnly="True" SortExpression="CONDICIONASESOR" Visible="False" />
                                  <asp:BoundField DataField="CONDCREDITO" HeaderText="COND. CREDITO" ReadOnly="True" SortExpression="CONDCREDITO" />
                                  <asp:BoundField DataField="CREDIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="CREDIMPORTE">
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="CREDMONEDA" HeaderText="MONENDA" ReadOnly="True" SortExpression="CREDMONEDA" />
                                  <asp:BoundField DataField="ASESORC" HeaderText="ASESORC" SortExpression="ASESORC" />
                                  <asp:BoundField DataField="OBS_CREDITOS" HeaderText="OBS_CREDITOS" SortExpression="OBS_CREDITOS" Visible="False" />
                                  <asp:BoundField DataField="FEVALUACION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EVAL. CREDITOS" SortExpression="FEVALUACION">
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="ESTCREDITO" HeaderText="ESTCREDITO" SortExpression="ESTCREDITO" Visible="False" />
                                  <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                  <asp:BoundField DataField="observacionjefatura" HeaderText="observacionjefatura" SortExpression="observacionjefatura" Visible="False" />
                                  <asp:BoundField DataField="AuditoriaFecha" HeaderText="AuditoriaFecha" SortExpression="AuditoriaFecha" Visible="False" />
                              </Columns>

                              <HeaderStyle BackColor="WhiteSmoke" />

                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSourcexevalgenrecia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Cliente_xevalGerencia" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      
                          </div>

                </asp:Panel>  

                <hr />
        <asp:Panel ID="Panel1" class="row" runat="server" >
            
               <div class="col-lg-1 col-md-1 col-xs-2">
                <asp:ImageButton ID="ImageButton3" Class="btn btn-default" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton3_Click" Height="35px"  />
                </div>
                <div class="col-lg-2 col-md-4 col-xs-9">
                <input Class="form-control" id="myInput" type="text" placeholder="Buscar..">
                </div>
                <div class="col-lg-9 col-md-7 col-xs-12">
                    <div class="btn-group btn-group-justified">
                        <div class="btn-group">
                    <asp:Button ID="Button5" runat="server" Class="btn btn-success"  OnClick="Button5_Click" Text="POR EVALUAR"  />
                            </div>
                        <div class="btn-group">
                    <asp:Button ID="Button2" runat="server" Class="btn btn-success" Text="OBSERVADOS"  OnClick="Button2_Click"  />
                            </div>
                        <div class="btn-group">
                    <asp:Button ID="Button3" runat="server" Class="btn btn-success" OnClick="Button3_Click" Text="APROBADOS" />
                            </div>
                   </div>
                   </div>
             
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" class="row" Visible="False">   
       
            <asp:Label ID="lblopcion" runat="server"></asp:Label>
            <asp:Label ID="lblcliente" runat="server"></asp:Label>
            <asp:Label ID="lblestado" runat="server"></asp:Label>
            </asp:Panel>  



        <asp:Panel ID="PanelCREDITOS" runat="server" class="row">
            <div class="col-lg-12">
           
              

                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                <asp:HiddenField ID="hfCustomerProducto" runat="server" />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_FichaTotales" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblcliente" Name="cliente" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblestado" Name="estado" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="table-responsive">
                <asp:GridView ID="gvFichaCliente" class="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False"  DataKeyNames="idRuc" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="gvFichaCliente_SelectedIndexChanged" PageSize="25" OnRowCommand="gvFichaCliente_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="idRuc" HeaderText="RUC" ReadOnly="True" SortExpression="idRuc" Visible="False" />
                        <asp:TemplateField HeaderText="CLIENTE" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="Green" Text='<%# Eval("CLIENTE") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                        <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OPLINEA" HeaderText="CONDICION" ReadOnly="True" SortExpression="OPLINEA" />
                        <asp:BoundField DataField="CONDICIONPAGO" HeaderText="DIAS" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                        <asp:BoundField DataField="CREDITOS" HeaderText="CREDITOS" SortExpression="CREDITOS" Visible="False" />
                        <asp:BoundField DataField="GERENCIA" HeaderText="GERENCIA" SortExpression="GERENCIA" Visible="False" />
                        <asp:ImageField DataImageUrlField="CREDITOS" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="CRED">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:ImageField DataImageUrlField="GERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="GER">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:ButtonField CommandName="edita" HeaderText="CREDITOS Y C." ShowHeader="True" Text="Evaluar" Visible="False" >
                        <ItemStyle ForeColor="#006600" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ButtonField>
                    </Columns>
                    <HeaderStyle BackColor="#DFF0D8" />
                </asp:GridView>
                    </div>
                            <p>
                                ESTADO: 0 = por aprobar , 2= por completar datos, 55 = observados, 1 = aprobados.
                            </p>
               
                <asp:Label ID="lblitem2" runat="server" CssClass="auto-style119"></asp:Label>
                <span class="auto-style119">&nbsp;</span>

            </div>
         
        
                </asp:Panel>

                         
                    </div></div>

    </form>

  
    
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendorF/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendorF/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendorF/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../vendorF/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendorF/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendorF/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <%--  <script>
        $(document).ready(function () {
            $('#gvFichaCliente').DataTable({
                responsive: true
            });
        });
    </script>--%>


    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#gvFichaCliente tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
</script>
</body>
</html>
