<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenVentasAgrup.aspx.cs" Inherits="biotech.bio.ventas.ResumenVentasAgrup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <%-- <script src="http://code.jquery.com/jquery-1.8.2.js"></script>  
    <script src="http://www.google.com/jsapi" type="text/javascript"></script>  --%>


   
  

     <style type="text/css">
           .modalBackground 
            {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
                z-index: 10000;
            }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>


   




     <script type="text/javascript">

         google.charts.load('current', { 'packages': ['corechart'] });
         google.charts.setOnLoadCallback(drawChart10);

         function drawChart10() {

             var data = google.visualization.arrayToDataTable(<%=obtenerDatosASESOR()%>);

            var options = {
                title: 'RESUMEN VENTAS DEL MES'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechartASESOR'));

            chart.draw(data, options);
        }



         google.charts.load('current', { 'packages': ['corechart'] });
         google.charts.setOnLoadCallback(drawChart);

         function drawChart() {

             var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

             var options = {
                 title: 'RESUMEN ZONAL',
                 colors: ['#a0c655', '#27a527', '#23a7ce', '#f49207', '#006d6d']
             };

             var chart = new google.visualization.PieChart(document.getElementById('piechart10'));

             chart.draw(data, options);
         }

       

        
         google.charts.setOnLoadCallback(drawChartDonus);
         function drawChartDonus() {
             //var data = google.visualization.arrayToDataTable([
             //  ['Task', 'Hours per Day'],
             //  ['Work', 11],
             //  ['Eat', 2],
             //  ['Commute', 2],
             //  ['Watch TV', 2],
             //  ['Sleep', 7]
             //]);
             var data = google.visualization.arrayToDataTable(<%=obtenerDatosDONUS()%>);

             var options = {
                 title: 'RESUMEN PORCENTUAL',
                 pieHole: 0.4,
                
                
             };
            
             var chart = new google.visualization.PieChart(document.getElementById('donutchartICA'));
             var chart0 = new google.visualization.PieChart(document.getElementById('donutchartICA0'));
             chart.draw(data, options);
             chart0.draw(data, options);

           
         }
   
       



         google.charts.load('current', { packages: ['corechart', 'bar'] });
         google.charts.setOnLoadCallback(drawAxisTickColors);


       
        
        google.charts.load('current', {'packages':['bar']});
        


         google.charts.setOnLoadCallback(drawMultSeries);

         function drawMultSeries() {
             var data = google.visualization.arrayToDataTable([
               ['City', '2010 Population', '2000 Population'],
               ['New York City, NY', 8175000, 8008000],
               ['Los Angeles, CA', 3792000, 3694000],
               ['Chicago, IL', 2695000, 2896000],
               ['Houston, TX', 2099000, 1953000],
               ['Philadelphia, PA', 1526000, 1517000]
             ]);

             //var data = google.visualization.arrayToDataTable(<%=obtenerDatosbarraLINEAL()%>);

             var options = {
                
                 chartArea: { width: '50%' },
                 hAxis: {
                     title: 'Importe US$',
                     minValue: 0
                 },
                
                 colors: ['#d8d8d9', '#a0c655', '#0080FF']
             };

             var chart = new google.visualization.BarChart(document.getElementById('Div_lineal'));
             chart.draw(data, options);
         }




    </script>

    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['bar'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            //var data = google.visualization.arrayToDataTable([
            //  ['Year', 'Sales', 'Expenses', 'Profit'],
            //  ['2014', 1000, 400, 200],
            //  ['2015', 1170, 460, 250],
            //  ['2016', 660, 1120, 300],
            //  ['2017', 1030, 540, 350]
            //]);

            var data = google.visualization.arrayToDataTable(<%=obtenerDatosbarraLINEAL()%>);

            var options = {
                chart: {
                    title: 'Importe US$',
                    
                   
                    
                },
                bars: 'horizontal', // Required for Material Bar Charts.
                hAxis: { format: 'decimal' },
                colors: ['#d8d8d9', '#a0c655', '#0080FF']
            };

            var chart = new google.charts.Bar(document.getElementById('barchart_material'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
        }
    </script>


       <script type="text/javascript">
           google.charts.load('current', { packages: ['corechart', 'bar'] });
           google.charts.setOnLoadCallback(drawAxisTickColors);

           function drawAxisTickColors() {

               var data = google.visualization.arrayToDataTable(<%=obtenerDatosBARRA2()%>);

               var options = {
                   chart: {
                       title: 'RESUMEN DE VENTAS',
                       subtitle: 'SEGÚN PERIODO',
                   },
                   chartArea: { width: '60%' },
                   bars: 'vertical',
                   focusTarget: 'category',
                   vAxis: { format: 'decimal' },

                   colors: ['#D0D3D4', '#27a527', '#0080FF']
               };


               var chart = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
               chart.draw(data, options);
           }
    </script>



      <style type="text/css">
          .auto-style3 {
              height: 20px;
          }
          .auto-style4 {
              width: 400px;
          }
          .auto-style5 {
              height: 20px;
              text-align: right;
          }
          .auto-style66 {
              background-color: #e6e5e5;
              
          }
          .auto-style6 {
              background-color: #e6e5e5;
              text-align: right;
          }
          .auto-style7 {
              background-color: #e6e5e5;
              text-align: right;
          }
          .auto-style67 {
              font-size: x-small;
              color: #999999;
          }
          .auto-style68 {
              width: 800px;
          }
          .auto-style69 {
              width: 200px;
          }
          .auto-style70 {
              width: 250px;
          }
      </style>

     <link href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

     <script>

         function popupBT() {

             $("#popupdiv").dialog({
                 title: ".RESUMEN PORCENTUAL POR ASESORES",
                 width: 450,
                 height: 450,
                 modal: true,

             });
         }


  </script>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header "><i class="glyphicon glyphicon-edit"></i> RESUMEN PRINCIPAL<asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h2>
                            
                            <ol class="breadcrumb">
                              <li class="active">
                                  <asp:LinkButton ID="lbPrincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx" >R.Principal</asp:LinkButton>
                              </li>

                                <li>
                                    <asp:LinkButton ID="lbComparativo" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">R.Comparativo Ventas</asp:LinkButton>
                                </li>
                             <%-- <li>
                                  <asp:LinkButton ID="lbDetallado" runat="server" PostBackUrl="~/bio/ventas/ResumenGeneral.aspx" >R.General Ventas</asp:LinkButton>      
                              </li>--%>
                              <%--  <li>
                                    <asp:LinkButton ID="lbProyectado" runat="server" PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">R.Proyectado</asp:LinkButton>
                                </li>--%>
                                <li>
                                    <asp:LinkButton ID="lbProducto" runat="server" PostBackUrl="~/bio/ventas/Resumen/facturacion.aspx">R.Facturación</asp:LinkButton>
                                </li>

                                 <li>
                                    <asp:LinkButton ID="lbViaticos" runat="server" PostBackUrl="~/bio/ventas/costos/Viaticos.aspx">R.Viáticos</asp:LinkButton>
                                </li>
                                 <li>
                                    <asp:LinkButton ID="LinkButtonTOP" runat="server" PostBackUrl="~/bio/ventas/Resumen/TopProductos.aspx">Ranking Productos</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbtnHostorialPrecios" runat="server" PostBackUrl="~/bio/ventas/ResumProductos.aspx">Historial Productos-Precios</asp:LinkButton>
                                </li>
                                 <%--<li>--%>
                                    
                                     <asp:LinkButton ID="lbAnalisisB" runat="server" PostBackUrl="~/bio/ventas/ResumAnalisisb.aspx" Visible="False">Presupuesto</asp:LinkButton>
                                <%--</li>--%>
                            </ol> 
                           
    </div>

     </div>
    
    <div class="row">
         <div class="col-md-5">

             <table class="auto-style4">
            <tr>
                <td>AÑO:</td>
                <td>
                    <asp:RadioButtonList ID="rblano" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblano_SelectedIndexChanged" RepeatDirection="Horizontal" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" Width="100%">
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem Selected="True">2018</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_ano] WHERE ([estado] = @estado)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>PERIODO</td>
                <td>
				 <asp:DropDownList ID="ddlbMes" runat="server" CLASS="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlbMes_SelectedIndexChanged" Width="100%">
                        <asp:ListItem Value="1">ENERO</asp:ListItem>
                        <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                        <asp:ListItem Value="3">MARZO</asp:ListItem>
                        <asp:ListItem Value="4">ABRIL</asp:ListItem>
                        <asp:ListItem Value="5">MAYO</asp:ListItem>
                        <asp:ListItem Value="6">JUNIO</asp:ListItem>
                        <asp:ListItem Value="7">JULIO</asp:ListItem>
                        <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                        <asp:ListItem Value="9">SETIEMBRE</asp:ListItem>
                        <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                        <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                        <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                    </asp:DropDownList>


				     </td>
            </tr>
        </table>
        <br />
        <table class="table table-hover table-condensed">
            <tr>
                <td class="auto-style66"><strong>ZONA</strong></td>
                <td class="auto-style7">
                    <asp:Label ID="lbltituloanoPresupuesto" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lbltituloano" runat="server" Font-Bold="True"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style6">%</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="lbIca" class="btn btn-success" runat="server" OnClick="lbIca_Click"  Width="100px" BackColor="#86C824" OnClientClick="openModal()">ICA</asp:LinkButton>

                </td>
                <td class="text-right">
                    <asp:Label ID="lblPreIca" runat="server" ForeColor="Silver"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblm1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblDifporcentICa" runat="server" Font-Size="Small" ForeColor="Silver"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="lbPiura" class="btn btn-success" runat="server"   OnClick="lbPiura_Click" Width="100px" OnClientClick="openModal()">PIURA</asp:LinkButton>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblPrePiura" runat="server" ForeColor="Silver"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblm2" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblDifporcentPiura" runat="server" Font-Size="Small" ForeColor="Silver"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                   <asp:LinkButton ID="lbChiclayo" class="btn btn-info" runat="server"    Width="100px" OnClientClick="openModal()" OnClick="lbChiclayo_Click">CHICLAYO</asp:LinkButton>

                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblPreChiclayo" runat="server" ForeColor="Silver"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblm3" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblDifporcentChiclayo" runat="server" Font-Size="Small" ForeColor="Silver"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                   <asp:LinkButton ID="lbCanete0" class="btn btn-warning" runat="server"    Width="100px" OnClientClick="openModal()" OnClick="lbCanete0_Click">CAÑETE</asp:LinkButton>

                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblPreCanete" runat="server" ForeColor="Silver"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblm4" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblDifporcentCanete0" runat="server" Font-Size="Small" ForeColor="Silver"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="lblArequipa" class="btn btn-success" runat="server" OnClick="lbtn_Arequipa"  Width="100px" BackColor="Teal" OnClientClick="openModal()">AREQUIPA</asp:LinkButton>

                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblPreArequipa" runat="server" ForeColor="Silver"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblm5" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblDifporcentArequipa" runat="server" Font-Size="Small" ForeColor="Silver"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton3" class="btn btn-default" runat="server" OnClick="LinkButton3_Click" Width="100px">GENERAL</asp:LinkButton>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblPrett" runat="server" ForeColor="Silver"></asp:Label>
                    </td>
                <td class="text-right">
                    <asp:Label ID="lbltotal" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblDifporcentTT" runat="server" Font-Size="Small" ForeColor="Silver"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td colspan="6" class="auto-style67">
            *Press: ZONA, ver resumen % por asesores&nbsp; / Importe Base realizado en DOLARES.</tr>
           
        </table>
             &nbsp;<asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>


              </div>
         <div class="col-lg-3">
             <div class="panel panel-default">
                       
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                             <div id="piechart10" style="width: 100%">
                            </div>


                        </div>
                        <!-- /.panel-body -->
             </div>
             </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                       
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                              <%-- <div id="piechartASESOR" style="width: 600px; height: 350px;">
                            </div>--%>
                            <div id="barchart_material" style="width: 100%; height: 200px;"></div>
                            </div>
                        </div>
                        <!-- /.panel-body -->


                <%-- <div id="piechartASESOR" style="width: 600px; height: 350px;">
                            </div>--%>


             </div>
                    
        </div>
         
       
             <div class="row">
                
       


        
           
                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       

 <div class="col-md-4">
                
           
           
            <asp:Label ID="lblano" runat="server"></asp:Label>
                         -<asp:Label ID="lblperiodo" runat="server"></asp:Label>
            <asp:Label ID="lblzona2" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblzona1" runat="server" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="lblidVendedorSelecionado" runat="server" Text="GENERAL" Visible="False"></asp:Label>
            &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#006600" OnClick="LinkButton5_Click">CLIENTES</asp:LinkButton>
&nbsp;|<asp:LinkButton ID="lbtGrupoAsesores" runat="server" ForeColor="#006600" OnClick="lbtGrupoAsesores_Click"> ASESORES</asp:LinkButton>
&nbsp;|
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#006600" OnClick="LinkButton4_Click">FACTURAS</asp:LinkButton>
            <div class="table-responsive">

                <asp:GridView ID="GridView2018" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="IDCLIENTE,CLIENTE,IMPBRUTO" DataSourceID="SqlDataSourcecomparativo2" OnRowDataBound="GridView2018_RowDataBound" OnSelectedIndexChanged="GridView2018_SelectedIndexChanged" ShowFooter="True" Width="100%" BorderStyle="None" GridLines="Horizontal" Font-Size="X-Small" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                          <Columns>
                              <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDCLIENTE") %>' ForeColor="#006600"></asp:LinkButton>
                                  </ItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMP.BRUTO" ReadOnly="True" SortExpression="IMPBRUTO">
                              <HeaderStyle Width="80px" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <FooterStyle BackColor="#EFEFEF" ForeColor="Black" />
                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#DFF4DF" Font-Bold="True" ForeColor="#006600" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_ResumenZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblperiodo" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblperiodo" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>





                <asp:Panel ID="Panel1" runat="server" Font-Size="Small" Visible="False">
                    <asp:GridView ID="gvtopFacturas" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Size="X-Small" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="gvtopFacturas_SelectedIndexChanged" AllowPaging="True" PageSize="15">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                            <asp:BoundField DataField="fechareg" HeaderText="F. EMISION" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="fechaven" HeaderText="F. VENCTO" SortExpression="fechaven" DataFormatString="{0:dd/MM/yyyy}" Visible="False" />
                            <asp:BoundField DataField="RazonSocial" HeaderText="CLIENTE" SortExpression="RazonSocial" />
                            <asp:BoundField DataField="importebruto" SortExpression="importebruto" HeaderText="IMP. B" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tpmoneda" HeaderText="MONEDA" SortExpression="tpmoneda" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Zona" HeaderText="ZONA" SortExpression="Zona">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="facturas_emitidas" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView2019" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceventasfacDet" Width="400px">
                        <Columns>
                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA" SortExpression="PV">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB.TOTAL" SortExpression="SUBTOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" ReadOnly="True" SortExpression="DESCTO" Visible="False" />
                            <asp:BoundField DataField="PL" HeaderText="PL" SortExpression="PL" Visible="False" />
                            <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceventasfacDet" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_VentasFacturasDetalladas" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="gvtopFacturas" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" PostBackUrl="~/bio/ventas/Resumen/facturacion.aspx">Ver detalle Facturas</asp:LinkButton>
                </asp:Panel>

                <asp:Panel ID="Panel2_asesores" runat="server" Visible="False">
                    <asp:GridView ID="GVICA0" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered table-hover" DataSourceID="SqlDataSourceDISTRIBICA" Font-Size="X-Small" OnSelectedIndexChanged="GVICA0_SelectedIndexChanged" ShowFooter="True" DataKeyNames="VENDEDOR,IMPBASE" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GVICA0_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton7" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("VENDEDOR") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="VENDEDOR" HeaderText="COD" SortExpression="VENDEDOR" Visible="False" />
                            <asp:BoundField DataField="APELLIDOS" HeaderText="ASESOR" SortExpression="APELLIDOS" />
                            <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP.BASE" ReadOnly="True" SortExpression="IMPBASE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                       
                        <EmptyDataTemplate>
                            No registra ventas.
                        </EmptyDataTemplate>
                       
                        <FooterStyle BackColor="#EFEFEF" ForeColor="Black" />
                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#DFF4DF" Font-Bold="True" ForeColor="#006600" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <div id="donutchartICA0" style="width: 400px; height: 240px;">
                    </div>
                </asp:Panel>



                </div>
      

   </div>
                  <div class="col-md-8">


                      <asp:Panel ID="PFacturacionDetalles" runat="server" Visible="False">
        <table class="auto-style68">
            <tr>
                <td>Desde:<br />
                    <asp:TextBox ID="txtf1" runat="server" Height="30px" TextMode="Date" Width="140px"></asp:TextBox>
                </td>
                <td>Hasta:<br />
                    <asp:TextBox ID="txtf2" runat="server" Height="30px" TextMode="Date" Width="140px"></asp:TextBox>
                </td>
                <td>
                    <asp:Panel ID="pbuscacliente" runat="server">
                        <table class="auto-style69">
                            <tr>
                                <td>Cliente / RUC :<br />
                                    <asp:TextBox ID="txtcliente" runat="server" placeholder="cliente ..." ToolTip="Ingresar cliente" Width="300px"></asp:TextBox>
                                </td>
                                <td>
                                    <br />
                                    <asp:Button ID="btnBuscarCliente" runat="server" OnClick="btnBuscarCliente_Click" Text="BUSCAR SEGÚN FECHA" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="pBuscaAsesor" runat="server">
                        <table class="auto-style70">
                            <tr>
                                <td>Asesor:<br />
                                    <asp:Label ID="lblbuscarAsesorSelec" runat="server" Width="250px"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="ddl2Asesor" runat="server" DataSourceID="SqlDataSourceaSESORESTODOS" DataTextField="ASESOR" DataValueField="CODTRAB" Visible="False" Width="300px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <br />
                                    <asp:Button ID="btnBuscarAsesor" runat="server" OnClick="btnBuscarAsesor_Click" Text="BUSCAR SEGÚN FECHA" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td><br />
                </td>
            </tr>
        </table>
         <div class="row">
        <div class="table-responsive">
            <asp:Panel ID="PanelAyuda2" runat="server" Visible="False">
                <asp:Label ID="lbl2op" runat="server">1</asp:Label>
                <asp:Label ID="lbl2codasesor" runat="server"></asp:Label>
                <asp:Label ID="lbl2f1" runat="server"></asp:Label>
                <asp:Label ID="lbl2f2" runat="server"></asp:Label>
                <asp:Label ID="lbl2razonsocialCliente" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSourceaSESORESTODOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES_ASESORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </asp:Panel>
            <asp:GridView ID="GridView2020" runat="server" AutoGenerateColumns="False"  DataKeyNames="IDFACT" DataSourceID="SqlDataSourceFact2">
                <Columns>
                    <asp:BoundField DataField="IDFACT" HeaderText="IDFACT" ReadOnly="True" SortExpression="IDFACT" Visible="False" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                    <asp:BoundField DataField="FEMISION" HeaderText="F. EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                    <ItemStyle Font-Size="X-Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB. TT" ReadOnly="True" SortExpression="SUBTT">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PORCENTAJEVENTA" DataFormatString="{0:0,0.00}" HeaderText="DSTO %" ReadOnly="True" SortExpression="PORCENTAJEVENTA">
                    <ItemStyle BackColor="#E1ECEC" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PL" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA" SortExpression="PL">
                    <ItemStyle BackColor="#E1ECEC" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Zona" HeaderText="ZONA" SortExpression="Zona" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" Font-Size="XX-Small" />
            </asp:GridView>
            <asp:GridView ID="GridView2020Asesores" runat="server" AutoGenerateColumns="False" DataKeyNames="IDFACT" DataSourceID="SqlDataSourceFact2">
                <Columns>
                    <asp:BoundField DataField="IDFACT" HeaderText="IDFACT" ReadOnly="True" SortExpression="IDFACT" Visible="False" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                    <ItemStyle Font-Size="X-Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB. TT" ReadOnly="True" SortExpression="SUBTT">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PORCENTAJEVENTA" DataFormatString="{0:0,0.00}" HeaderText="DSTO %" ReadOnly="True" SortExpression="PORCENTAJEVENTA">
                    <ItemStyle BackColor="#E1ECEC" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PL" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA" SortExpression="PL">
                    <ItemStyle BackColor="#E1ECEC" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Zona" HeaderText="ZONA" SortExpression="Zona" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" Font-Size="XX-Small" />
            </asp:GridView>
            <br />
            *Importe total ventas realizadas =
            <asp:Label ID="lblTTVentas" runat="server" Font-Bold="True"></asp:Label>
            &nbsp;expresado en DOLARES.<asp:SqlDataSource ID="SqlDataSourceFact2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_Fact_Resumen" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbl2op" Name="op" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbl2codasesor" Name="codvendedor" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lbl2f1" DbType="Date" Name="f1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="lbl2f2" DbType="Date" Name="f2" PropertyName="Text" />
                    <asp:ControlParameter ControlID="lbl2razonsocialCliente" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>
    </asp:Panel>

                      <asp:Panel ID="pGraficoComparativoGeneral" runat="server">

               <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> CUADRO COMPARATIVO:     
                          
                            <asp:Label ID="lblzonalgraf" runat="server" Text="GENERAL" Visible="False" Font-Bold="True"></asp:Label>
            <asp:Label ID="lblzona" runat="server" Font-Bold="True"></asp:Label>
            <asp:Label ID="lblzonaID" runat="server" Visible="False"></asp:Label>
                         </div>
                        <!-- /.panel-heading -->
                       
                            <div class="panel-body">     
                                   <div id="chart_div2" style="width: 100%; height:300px">
          </div>
                            <asp:LinkButton ID="lbVerMasComparativo" class="btn btn-default btn-block" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">Detalle comparativo</asp:LinkButton>
                                </div>  
                              
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                   
        </asp:Panel>
 </div> 
    
    <br />

    <asp:Panel ID="PanelDIAGRAMA" runat="server" Visible="False">
    <div id="popupdiv" style="display:normal">          
          <asp:GridView ID="GVICA" class="table table-striped table-bordered table-hover" runat="server" DataSourceID="SqlDataSourceDISTRIBICA" AutoGenerateColumns="False" OnSelectedIndexChanged="GVICA_SelectedIndexChanged" Font-Size="X-Small" OnRowDataBound="GVICA_RowDataBound" ShowFooter="True">
               <Columns>
                    <asp:TemplateField HeaderText="COD" ShowHeader="False" Visible="False">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("VENDEDOR") %>'></asp:LinkButton>
                                      </ItemTemplate>
                                      <HeaderStyle Width="50px" />
                                  </asp:TemplateField>
                                  <asp:BoundField DataField="VENDEDOR" HeaderText="COD" SortExpression="VENDEDOR" />
                                  <asp:BoundField DataField="APELLIDOS" HeaderText="ASESOR" SortExpression="APELLIDOS">
                                  </asp:BoundField>
                                  <asp:BoundField DataField="IMPBASE" HeaderText="IMP.BASE" SortExpression="IMPBASE" ReadOnly="True" DataFormatString="{0:0,0.00}" >
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                                  <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                              </Columns>
                              <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceDISTRIBICA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_zonalistadoGRAF" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="lblperiodo" Name="periodo" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>

             <div id="donutchartICA" style="width: 400px; height: 240px;">
                            </div>


        </div>
        </asp:Panel>

        
       <%-- <div id="piechartASESOR" style="width: 600px; height: 350px;">
                            </div>--%>
        

        
   

</asp:Content>
