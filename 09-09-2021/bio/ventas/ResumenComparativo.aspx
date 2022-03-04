<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenComparativo.aspx.cs" Inherits="biotech.bio.ventas.ResumenComparativo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            color: #990000;
        }
        .auto-style3 {
            color: #006600;
        }
    </style>

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

             var options = {
                 title: 'RESUMEN VENTAS DEL MES'
             };

             var chart = new google.visualization.PieChart(document.getElementById('piechart'));

             chart.draw(data, options);
        }

    </script>

     <script type="text/javascript">
         google.charts.load("current", { packages: ["corechart"] });
         google.charts.setOnLoadCallback(drawChart);
         function drawChart() {
             //var data = google.visualization.arrayToDataTable([
             //  ['Task', 'Hours per Day'],
             //  ['Work', 11],
             //  ['Eat', 2],
             //  ['Commute', 2],
             //  ['Watch TV', 2],
             //  ['Sleep', 7]
             //]);
             var data = google.visualization.arrayToDataTable(<%=obtenerDatosPRE()%>);
             var options = {
                 title: 'CUMPLIMIENTO % PRESUPUESTO ANUAL',
                 is3D: true,
                
                 colors: ['#27a527', '#C0392B', '#a0c655']
             };

             var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
             chart.draw(data, options);
         }
    </script>


     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { packages: ['corechart', 'bar'] });
        google.charts.setOnLoadCallback(drawAxisTickColors);

        function drawAxisTickColors() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatosBARRA()%>);

            var options = {
                chart: {
                    title: 'RESUMEN DE VENTAS',
                    subtitle: 'SEGÚN PERIODO',
                },
                bars: 'vertical',
                focusTarget: 'category',
                vAxis: { format: 'decimal' },
               
                colors: ['#a0c655', '#27a527', '#0080FF']
            };


            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
            chart.draw(data, options);
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
                bars: 'vertical',
                focusTarget: 'category',
                vAxis: { format: 'decimal' },

                colors: ['#D0D3D4', '#27a527', '#0080FF']
            };


            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
            chart.draw(data, options);
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> RESUMEN COMPARATIVO VENTAS
                            -
                          <asp:Label ID="lblzona" runat="server" Text="GENERAL"></asp:Label>
                          &nbsp;</h2>
                            
                         <ol class="breadcrumb">
                              <li class="active">
                                  <asp:LinkButton ID="lbPrincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx" >R.Principal</asp:LinkButton>
                              </li>

                                <li>
                                    <asp:LinkButton ID="lbComparativo" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">R.Comparativo Ventas</asp:LinkButton>
                                </li>
                            <%--  <li>
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
    &nbsp;<asp:Panel ID="panelReporteComparativo" runat="server">
                      
       
		
         
                       


                <div class="form-group row">
                    <div class="col-md-9 col-xs-12">
                    <div class="btn-group btn-group-justified">
                        <div class="btn-group">
                            <asp:Button ID="btGeneral" runat="server"  Text="GENERAL" OnClick="btGeneral_Click" Height="40px" Width="25%" />
                       
                        <asp:Button ID="BTICA" runat="server"  Text="ICA" OnClick="BTICA_Click" Height="40px" Width="20%"  />
                        
                        <asp:Button ID="BTPIURA" runat="server"  Text="PIURA" OnClick="BTPIURA_Click" Height="40px" Width="20%"  />
                            <asp:Button ID="BTCHICLAYO" runat="server"  Text="CHICLAYO"  Height="40px" Width="20%" OnClick="BTCHICLAYO_Click"  />
                        
                        <asp:Button ID="btsusan" runat="server" class="btn btn-default" Text="SUSAN" OnClick="btsusan_Click" Visible="False" />
                       
                            <asp:Button ID="btmancilla" runat="server" class="btn btn-default" Text="MANCILLA" OnClick="btmancilla_Click" Visible="False" />
                       
                            <asp:Button ID="btassereto" runat="server" class="btn btn-default" Text="ASSERETO" OnClick="btassereto_Click" Visible="False" />
                        
                        
                            <asp:Button ID="btBio" runat="server" class="btn btn-default" Text="BIOTECH" OnClick="btBio_Click" Visible="False" />
                        </div>
                       
                       
                        
                     </div>
                   </div>
                    
                    <div class="col-md-3 col-xs-12">
                        <asp:DropDownList ID="ddlbMesComparativo" runat="server" AutoPostBack="True" CLASS="form-control" OnSelectedIndexChanged="ddlbMesComparativo_SelectedIndexChanged" Visible="False">
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
                            <asp:ListItem Value="11">NOVEMBRE</asp:ListItem>
                            <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                        </asp:DropDownList>


                        <asp:RadioButtonList ID="rbano" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" OnSelectedIndexChanged="rbano_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%"></asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_ano] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </div>
                    </div>


                 <div class="form-group row">

                      <div class="col-md-8 col-xs-12">
                          <div class="table-responsive">
                          <asp:GridView ID="GridView2019" runat="server" class="table-condensed  table-bordered  table-striped table-hover table-sm thead-light" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAnualZonal" GridLines="None" DataKeyNames="MES,PER,PERIODO"  OnRowDataBound="GridView2019_RowDataBound" OnSelectedIndexChanged="GridView2019_SelectedIndexChanged" ShowFooter="True" Width="100%" Font-Size="Small" BorderStyle="None">
                          <Columns>
                              <asp:TemplateField ShowHeader="False" HeaderText="PERIODO">
                                  <ItemTemplate>
                                      <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("PER") %>' Width="100px" />
                                  </ItemTemplate>
                                  <ControlStyle Width="50px" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                              <asp:BoundField DataField="PER" HeaderText="PER" ReadOnly="True" SortExpression="PER" Visible="False" />
                              <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" Visible="False" />
                              <asp:BoundField DataField="2017" DataFormatString="{0:0,0.00}" HeaderText="2017" ReadOnly="True" SortExpression="2017">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="2018" DataFormatString="{0:0,0.00}" HeaderText="PRE 2018" ReadOnly="True" SortExpression="2018">
                              <HeaderStyle BackColor="#75A3A7" ForeColor="White" />
                              <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ACTUAL" DataFormatString="{0:0,0.00}" HeaderText="2018" ReadOnly="True" SortExpression="ACTUAL">
                              <HeaderStyle BackColor="#669999" ForeColor="White" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#006600" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIF" HeaderText="PRE2018 - 2018" ReadOnly="True" SortExpression="DIF" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#75A3A7" ForeColor="White" />
                              <ItemStyle Font-Size="X-Small" ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIFPORCENT" DataFormatString="{0:0,0.00}" HeaderText="%" ReadOnly="True" SortExpression="DIFPORCENT">
                              <HeaderStyle BackColor="#75A3A7" ForeColor="White" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="%2" HeaderText="%" ReadOnly="False" SortExpression="%2" Visible="False">
                              <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIFANOS" HeaderText="2018-2017" ReadOnly="True" SortExpression="DIFANOS" DataFormatString="{0:0,0.00}">
                               <HeaderStyle BackColor="#CCCCCC" ForeColor="Black" />
                               <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" />                
                              </asp:BoundField>
                               <asp:BoundField DataField="DIFANOSPORCENT" HeaderText="%" ReadOnly="True" SortExpression="DIFANOSPORCENT" DataFormatString="{0:0,0.00}">
                               <HeaderStyle BackColor="#CCCCCC" ForeColor="Black" />
                               <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />                
                              </asp:BoundField>


                              <asp:BoundField DataField="%" HeaderText="%" ReadOnly="False" SortExpression="%" Visible="False">
                              <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <FooterStyle ForeColor="Black" />
                          <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourceAnualZonal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_anualZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblzona" Name="idcliente" PropertyName="Text" Type="String" />
                               <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                              </div>
                          &nbsp;<asp:Label ID="lblpresupuano" runat="server" Text="Label"></asp:Label>
                          &nbsp;= Presupuesto |
                          <asp:Label ID="lblanopresent" runat="server"></asp:Label>
                          &nbsp;= Ventas actuales.
                          <asp:Label ID="lblventa1" runat="server" Visible="False">0</asp:Label>
                          &nbsp;<asp:Label ID="lbldiferencia1" runat="server" Visible="False">0</asp:Label>
                          </div>
                      <div class="col-md-4 col-xs-12">
                          <div class="panel panel-default">
                       
                        
                          <asp:Panel ID="PanelGrafGeneral" runat="server">
                                <div id="piechart_3d" style="width: 100%; height: 400px;">
                                </div>

                          </asp:Panel>

                               <table align="center" class="table">
                                  <tr>
                                      <td align=center><trong>PRE.</trong></td>
                                      <td align=center>=</td>
                                      <td align=center class="auto-style3"><trong>VENTA</trong></td>
                                      <td align=center>+</td>
                                      <td align=center class="auto-style2"><trong>DIF.</trong></td>
                                  </tr>
                                  <tr>
                                      <td align=center>
                                          <asp:Label ID="lblpre10" runat="server" ></asp:Label>
                                          </td>
                                      <td align=center>=</td>
                                      <td align=center>
                                          <asp:Label ID="lblventa10" runat="server" ForeColor="#006600"></asp:Label>
                                          &nbsp;</td>
                                      <td align=center>+</td>
                                      <td align=center>
                                          <asp:Label ID="lblporvender10" runat="server" ForeColor="#990000"></asp:Label>
                                      </td>
                                  </tr>
                              </table>

                            </div>
                          
                     </div>


                 </div>


                
                     <div class="form-group row">
                         <div class="col-md-6 col-xs-12">
                             <div class="panel panel-default">
                        <div class="panel-heading">
                            VENTAS:
                            <asp:Label ID="lblt1" runat="server"></asp:Label>
                        </div>
                        <!-- /.panel-heading -->
                       
                          <div id="chart_div" style="width: 100%; height: 350px;">
                                </div>  

                       
                             </div>
                             </div>
                         <div class="col-md-6 col-xs-12">
                                <div class="panel panel-default">
                        <div class="panel-heading">
                            VENTAS:
                            <asp:Label ID="lblt2" runat="server"></asp:Label>
                            &nbsp;</div>
                       
                            <div id="chart_div2" style="width: 100%; height: 350px;">
                                </div>  
                           
                             </div>
                             </div>
                     </div>



                    <asp:Panel ID="PanelMENSAJE" runat="server" Visible="False">
                        <asp:Label ID="lbldesde" runat="server"></asp:Label>
                        hasta<asp:Label ID="lblhasta" runat="server"></asp:Label>
                        ano1:&nbsp;ano2:<div class="table-responsive">
                            </div>
                    </asp:Panel>
                 
                     
 <div class="form-group row">
    
                     <asp:Label ID="lblidVendedorSelecionado" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                <asp:Label ID="lblano" runat="server" Visible="False"></asp:Label>

                <asp:LinkButton ID="lbtClientes" runat="server" Class="btn btn-default" OnClick="lbtClientes_Click" Width="50%">AGRUPADO POR CLIENTES</asp:LinkButton><asp:LinkButton ID="lbtAsesores" Class="btn btn-default"  runat="server" OnClick="lbtAsesores_Click" Width="50%">AGRUPADO POR ASESORES</asp:LinkButton>

      </div>
                <asp:Panel ID="pgAsesores" runat="server">


                    <div class="form-group row">
                        <div class="col-md-12">
                      
                              <h3>
                                 <span class="glyphicon glyphicon-edit">
                                  
                                  </span><asp:Label ID="lbltitulo" runat="server"></asp:Label> <asp:Label ID="lblmesgraf" runat="server" Text="Label"></asp:Label>
                                  <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                  <asp:Label ID="lbldeszonaxvendedor" runat="server"></asp:Label>
                              </h3>
                             
                        </div>
                    </div>

                  <div class="form-group row">
                      <div class="col-md-6 col-xs-12">

                      


                     
  
                          <asp:GridView ID="GridView2020" class="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDISTRIB" DataKeyNames="VENDEDOR,ZONA" OnRowDataBound="GridView2020_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView2020_SelectedIndexChanged">
                              <Columns>
                                  <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("VENDEDOR") %>'></asp:LinkButton>
                                      </ItemTemplate>
                                      <HeaderStyle Width="50px" />
                                  </asp:TemplateField>
                                  <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" Visible="False" />
                                  <asp:BoundField DataField="APELLIDOS" HeaderText="ASESOR" SortExpression="APELLIDOS" />
                                  <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP. BASE" ReadOnly="True" SortExpression="IMPBASE">
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                              </Columns>
                              <HeaderStyle BackColor="WhiteSmoke" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSourceDISTRIB" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_zonalistadoGRAF" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="Label1" Name="periodo" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
  
                          <div id="piechart" style="width: 600px; height: 350px;">
                            </div>
                            </div>

                  
                      <div class="col-md-6 col-xs-12">

                          <asp:GridView ID="gvXAsesor"  class="table  table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcexVendedor" OnRowDataBound="gvXAsesor_RowDataBound" ShowFooter="True">
                              <Columns>
                                  <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                                  <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                  <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" Visible="False" />
                                  <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                                  <asp:BoundField DataField="IMPBRUTO" HeaderText="IMP. BRUTO" ReadOnly="True" SortExpression="IMPBRUTO" DataFormatString="{0:0,0.00}" >
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                              </Columns>
                              <HeaderStyle BackColor="WhiteSmoke" />
                          </asp:GridView>

                          <asp:SqlDataSource ID="SqlDataSourcexVendedor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_ResumenZonal_xVENDEDOR" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="Label1" Name="idperidodo" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="lblzonaXVendedor" Name="zona" PropertyName="Text" Type="String" />
                                  <asp:ControlParameter ControlID="lblCodVendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          <asp:Label ID="lblCodVendedor" runat="server" Visible="False"></asp:Label>

                          <asp:Label ID="lblzonaXVendedor" runat="server" Visible="False"></asp:Label>

                          </div>

                </asp:Panel>

                <asp:Panel ID="pgclientes" runat="server">
                <div class="form-group row">			  
				  <div class="col-md-6">
					  <h4><span class="glyphicon glyphicon-edit"></span> &nbsp;Por clientes:<asp:Label ID="lblmes11" runat="server"></asp:Label>
                          &nbsp;<asp:Label ID="lblano1" runat="server" Text="2017"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:Label ID="lbltt1" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lbltt2" runat="server" Visible="False"></asp:Label>
                      </h4>

				      <asp:GridView ID="GridView2017" runat="server" class="table-condensed  table-bordered  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="IDCLIENTE,CLIENTE" DataSourceID="SqlDataSourcecomparativo1"  ShowFooter="True" Width="100%" OnRowDataBound="GridView2017_RowDataBound" OnSelectedIndexChanged="GridView2017_SelectedIndexChanged" Font-Size="X-Small">
                          <Columns>
                              <asp:TemplateField HeaderText="RUC" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("IDCLIENTE") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBRUTO" HeaderText="IMPORTE" SortExpression="IMPBRUTO" DataFormatString="{0:0,0.00}" ReadOnly="True">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_ResumenZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

				  </div>
				  <div class="col-md-6">
					  <h4><span class="glyphicon glyphicon-edit"></span> &nbsp;Por clientes:<asp:Label ID="lblmes22" runat="server"></asp:Label>
                          &nbsp;
                          <asp:Label ID="lblano2" runat="server" Text="2018"></asp:Label>
                      </h4>
				      <asp:GridView ID="GridView2018" runat="server" class="table-condensed  table-bordered  table-hover table-sm thead-light" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecomparativo2" OnRowDataBound="GridView2018_RowDataBound" OnSelectedIndexChanged="GridView2018_SelectedIndexChanged" ShowFooter="True" Width="100%" DataKeyNames="IDCLIENTE,CLIENTE" Font-Size="X-Small">
                          <Columns>
                              <asp:TemplateField HeaderText="RUC" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("IDCLIENTE") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBRUTO" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPBRUTO" DataFormatString="{0:0,0.00}">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_ResumenZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                      

				  </div>
				</div>
      
                <div class="form-group row">			  
				    <div class="col-md-6">

                        PRODUCTOS :<asp:Label ID="lblidclienteG1" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblclienteg1" runat="server"></asp:Label>
                        <asp:GridView ID="gvLitrosG1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG1" OnRowDataBound="gvLitrosG1_RowDataBound" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                Sin registro año anterior...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLITROSG1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_GRUPOZONA" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbldesde" Name="periodo1" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblhasta" Name="periodo2" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidclienteG1" Name="idClienteRuc" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
<%--<div id="piechart" style="width: 600px; height: 350px;">
                            </div>--%>

                        </asp:Panel>
                        
                    </div>
                    <div class="col-md-6">
                        PRODUCTOS :<asp:Label ID="lblidclienteG2" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblclienteG2" runat="server"></asp:Label>
                        <asp:GridView ID="gvLitrosG2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG2" OnRowDataBound="gvLitrosG2_RowDataBound" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                Sin registro año actual...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLITROSG2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_GRUPO" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbldesde" Name="periodo1" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblhasta" Name="periodo2" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidclienteG2" Name="idClienteRuc" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </div>
                </div>

                    </asp:Panel>
         
        </asp:Panel>
               
      

       
       

       
            </asp:Content>
