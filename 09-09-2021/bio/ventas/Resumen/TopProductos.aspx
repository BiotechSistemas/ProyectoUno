<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="TopProductos.aspx.cs" Inherits="biotech.bio.ventas.Resumen.TopProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">
        google.charts.load("current", { packages: ["corechart"] });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable(<%=obtenerDatosBARRA2()%>);

            var options = {
                title: 'SEGÚN IMPORTE %',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
        }
    </script>
 



     <script type="text/javascript">
         google.charts.load('current', { 'packages': ['corechart'] });
         google.charts.setOnLoadCallback(drawChart);

         function drawChart() {
             var data = google.visualization.arrayToDataTable(<%=obtenerDatosBARRACANT()%>);
            var options = {
                title: 'SEGÚN CANTIDAD FACTURADA',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechartCANT'));

            chart.draw(data, options);
        }
    </script>


    
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['bar'] });
        google.charts.setOnLoadCallback(drawStuff);

        function drawStuff() {
            var data = new google.visualization.arrayToDataTable(<%=obtenerBarra()%>);

            var options = {
                width: 800,
                colors: ['#78a541'],
                vAxis: { format: 'decimal' },
                legend: { position: 'none' },
                //chart: {
                //    title: 'PRODUCTOS SEGÚN LITROS',
                //    //subtitle: 'popularity by percentage'
                //},
                axes: {
                    x: {
                        0: { side: 'top', label: 'PRODUCTOS SEGÚN LITROS' } // Top x-axis.
                    }
                },
                bar: { groupWidth: "60%" }

            };
            
            var chart = new google.charts.Bar(document.getElementById('top_x_div'));
            // Convert the Classic options to Material options.
            chart.draw(data, google.charts.Bar.convertOptions(options));
        };
    </script>
    <script src="../../js/sweetalert.min.js"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" />
       
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

                    <div class="col-md-12">
                        <h2 class="page-header "><i class="glyphicon glyphicon-edit"></i> RANKING PRODUCTOS</h2>
                            
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

     

   
    <div class="row">
        <div class="col-md-1">Periodo:
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="rblano" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceanoo" DataTextField="ano" DataValueField="ano"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceanoo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_ano where estado=1 order by ano"></asp:SqlDataSource>
             
            </div>
                <div class="col-md-3">
                     <asp:DropDownList ID="ddlbMesop" runat="server" CLASS="form-control" OnSelectedIndexChanged="ddlbMes_SelectedIndexChanged" Width="100%" AutoPostBack="True">
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


                </div>
                    <div class="col-md-2">
                        <asp:LinkButton ID="lbMensual" class="btn btn-default" runat="server" OnClick="lbMensual_Click" Width="100%">RESÚMEN MENSUAL</asp:LinkButton>
                    </div>
                        <div class="col-md-2">
                            <asp:LinkButton ID="lbAnual" class="btn btn-default" runat="server" OnClick="lbAnual_Click" Width="100%">RESÚMEN ANUAL</asp:LinkButton>
                        </div>
                        <div class="col-md-2">
                            <asp:LinkButton ID="lbtnComparativo" class="btn btn-default" runat="server"  Width="100%" OnClick="lbtnComparativo_Click">COMPARATIVO ANUAL</asp:LinkButton>
                        </div>
        </div><br />
       
     <asp:Panel ID="payuda" runat="server" Visible="False">
         <asp:Label ID="lblorden" runat="server"></asp:Label>
         &nbsp;op<asp:Label ID="lblOp" runat="server"></asp:Label>
         &nbsp;&nbsp; &nbsp;
    </asp:Panel> 

     
   
    <asp:Panel ID="Pprincipal" runat="server">

    
    
      

   
     <div class="row">
         <div class="panel panel-default">

<div class="panel-heading clearfix"> 
    <h4> <i class="fa fa-list-alt fa-fw"></i> <asp:Label ID="Label1" runat="server" Text="RESÚMEN MENSUAL"></asp:Label>
                        : 
                            <asp:Label ID="lblano" runat="server"></asp:Label>
                            /<asp:Label ID="lblMes" runat="server"></asp:Label>
         
        <div class="btn-group pull-right"> 
       <asp:LinkButton ID="lbtnimporte" CssClass=" btn btn-default" runat="server" OnClick="lbtnimporte_Click">POR IMPORTE</asp:LinkButton>
         <asp:LinkButton ID="lbtnlitros" CssClass=" btn btn-default"  runat="server" OnClick="lbtnlitros_Click">POR LITROS</asp:LinkButton>
        <%--<a href="#" class="btn btn-default btn-sm">## Move</a>--%> 
        </div> 
       
       
        <h4></h4>
       
       
        <h4></h4>
       
       
        <h4></h4>
       
       
        <h4></h4>
       
       
        <h4></h4>
       
       
    </h4>
      </div>
      <div class="panel-body">
         <div class="col-md-4">



                       
<asp:GridView ID="GridView1" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                            <Columns>
                                <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                                   <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                            </Columns>
                            <EmptyDataTemplate>
                                No registra información....
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#F3F3F3" ForeColor="#666666" />
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblOp" Name="op" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
        <div class="col-md-8">
            <asp:Panel ID="Panel1" runat="server">
                <div id="piechart" style="width: 800px; height: 500px;"></div>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                 <div id="top_x_div" style="width: 800px; height: 500px;"></div>
            </asp:Panel>
           
             <%--<div id="piechartCANT" style="width: 900px; height: 600px;"></div>--%>
        </div>
     </div>
  

  </div>



    </div>


     <div class="row">
         <%--<div class="col-md-6 col-xs-12">--%>
                   
         <div class="col-md-4">
              <h4> <i class="fa fa-list-alt fa-fw"></i> ZONA: ICA</h4> 
             <asp:Label ID="lblop2" runat="server" Visible="False">21</asp:Label>
             <asp:GridView ID="GridView2" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" GridLines="Horizontal" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                 <FooterStyle BackColor="#F2F2F2" ForeColor="Gray" />
                 <HeaderStyle BackColor="WhiteSmoke" />
             </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblop2" Name="op" PropertyName="Text" Type="Int32" />

                            <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
             </asp:SqlDataSource>
                    </div>
         <div class="col-md-4">
              <h4> <i class="fa fa-list-alt fa-fw"></i> ZONA: PIURA</h4> 
              <asp:Label ID="lblop3"  runat="server" Visible="False">22</asp:Label>
             <asp:GridView ID="GridView3" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="100%" GridLines="Horizontal" OnRowDataBound="GridView3_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                 <FooterStyle BackColor="#F2F2F2" ForeColor="Gray" />
                 <HeaderStyle BackColor="WhiteSmoke" />
              </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblop3" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
              </asp:SqlDataSource>
                    </div>

           <div class="col-md-4">
              <h4> <i class="fa fa-list-alt fa-fw"></i> ZONA: CHICLAYO</h4> 
              <asp:Label ID="lblopChiclayo"  runat="server" Visible="False">23</asp:Label>
             <asp:GridView ID="GridViewChiclayo" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="100%" GridLines="Horizontal" OnRowDataBound="GridViewChiclayo_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                 <FooterStyle BackColor="#F2F2F2" ForeColor="Gray" />
                 <HeaderStyle BackColor="WhiteSmoke" />
              </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblopChiclayo" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
              </asp:SqlDataSource>
                    </div>



          <div class="col-md-4">
              <h4> <i class="fa fa-list-alt fa-fw"></i> ZONA: CAÑETE</h4> 
              <asp:Label ID="lblop5"  runat="server" Visible="False">24</asp:Label>
             <asp:GridView ID="GridViewCanete" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Width="100%" GridLines="Horizontal" OnRowDataBound="GridViewCanete_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                 <FooterStyle BackColor="#F2F2F2" ForeColor="Gray" />
                 <HeaderStyle BackColor="WhiteSmoke" />
              </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblop5" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
              </asp:SqlDataSource>
                    </div>

            <div class="col-md-4">
              <h4> <i class="fa fa-list-alt fa-fw"></i> ZONA: AREQUIPA</h4> 
              <asp:Label ID="lblopArequipa"  runat="server" Visible="False">25</asp:Label>
             <asp:GridView ID="GridViewArequipa" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" Width="100%" GridLines="Horizontal" OnRowDataBound="GridViewArequipa_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                 <FooterStyle BackColor="#F2F2F2" ForeColor="Gray" />
                 <HeaderStyle BackColor="WhiteSmoke" />
              </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblopArequipa" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
              </asp:SqlDataSource>
                    </div>

    </div>


     </asp:Panel>
    <asp:Panel ID="PAgrupado" runat="server">
        
                         <div class="panel panel-default">
                            <div class="panel-heading clearfix"> 
                               <h4> <i class="fa fa-list-alt fa-fw"></i> RESUMEN COMPARATIVO</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                 <div class="col-md-1">
                                     AÑO Nº1 : 
                                     </div>
                                     <div class="col-md-5">   <asp:DropDownList ID="ddlano1" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceanoo" DataTextField="ano" DataValueField="ano"></asp:DropDownList>
                                     </div>
                                <div class="col-md-1">
                                    AÑO Nº2 :
                                    </div> 
                                    <div class="col-md-4">   <asp:DropDownList ID="ddlano2" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceanoo" DataTextField="ano" DataValueField="ano"></asp:DropDownList>
                                     </div>
                                 <div class="col-md-1">
                                     <asp:Button ID="btnComparativo" CssClass="btn btn-default" runat="server" Text="GENERAR" OnClick="btnComparativo_Click" />
                                     </div>
                                      </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Panel ID="pano1cliente" runat="server">
                                            RANKING DE CLIENTES POR PRODUCTO:
                                            <asp:Label ID="lblano1Producto" runat="server"></asp:Label>
                                            -<asp:Label ID="lblano1" runat="server"></asp:Label>
                                            <asp:GridView ID="gvano1Producto" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceAno1producto" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvano1Producto_RowDataBound" ShowFooter="True" Width="100%">
                                                <Columns>
                                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                                    <asp:BoundField DataField="SUMIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE TT" ReadOnly="True" SortExpression="SUMIMPORTE">
                                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="CANT_LITROS" HeaderText="CANT. LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="L" ReadOnly="True" SortExpression="L" />
                                                </Columns>
                                                <FooterStyle BackColor="#EAEAEA" ForeColor="Black" />
                                                <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#242121" />
                                            </asp:GridView>
                                            <br />
                                            <asp:SqlDataSource ID="SqlDataSourceAno1producto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="top_productosClientes" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                                                    <asp:ControlParameter ControlID="lblano1Producto" Name="producto" PropertyName="Text" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </asp:Panel>
                                        <asp:GridView ID="gvano1" runat="server" Class="table table-condensed  table-hover table-sm thead-light" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceano1" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="producto" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvano1_RowDataBound" OnSelectedIndexChanged="gvano1_SelectedIndexChanged" ShowFooter="True">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True">
                                                <ItemStyle ForeColor="#999999" />
                                                </asp:CommandField>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                                            <FooterStyle BackColor="#F3F3F3" ForeColor="Black" />
                 <HeaderStyle BackColor="#EAEAEA" Font-Bold="True" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#E3F7E1" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                            <SortedDescendingHeaderStyle BackColor="#242121" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSourceano1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="2" Name="op" Type="Int32" />
                                                <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                                <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                                                <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                     </div>
                                    <div class="col-md-6">
                                         <asp:Panel ID="pano2cliente" runat="server">
                                             RANKING DE CLIENTES POR PRODUCTO:
                                             <asp:Label ID="lblano2Producto" runat="server"></asp:Label>
                                             -<asp:Label ID="lblano2" runat="server"></asp:Label>
                                             <asp:GridView ID="gvano2Producto" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" datasourceid="SqlDataSourceAno2producto" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvano2Producto_RowDataBound" ShowFooter="True" Width="100%">
                                                 <Columns>
                                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                                    <asp:BoundField DataField="SUMIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE TT" ReadOnly="True" SortExpression="SUMIMPORTE">
                                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="CANT_LITROS" HeaderText="CANT. LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="L" ReadOnly="True" SortExpression="L" />
                                                </Columns>
                                                 <FooterStyle BackColor="#EAEAEA" ForeColor="Black" />
                                                 <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                                                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                 <SortedDescendingHeaderStyle BackColor="#242121" />
                                             </asp:GridView>
                                             <br />
                                             <asp:SqlDataSource ID="SqlDataSourceAno2producto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="top_productosClientes" SelectCommandType="StoredProcedure">
                                                 <SelectParameters>
                                                     <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                                                     <asp:ControlParameter ControlID="lblano2Producto" Name="producto" PropertyName="Text" Type="String" />
                                                 </SelectParameters>
                                             </asp:SqlDataSource>
                                         </asp:Panel>
                                         <asp:GridView ID="gvano2" runat="server" Class="table table-condensed  table-hover table-sm thead-light" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceano2" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="producto" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvano2_RowDataBound" OnSelectedIndexChanged="gvano2_SelectedIndexChanged" ShowFooter="True">
                                             <Columns>
                                                 <asp:CommandField ShowSelectButton="True">
                                                 <ItemStyle ForeColor="#999999" />
                                                 </asp:CommandField>
                     <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                      <asp:BoundField DataField="SUMIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUMIMPORTE" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                     <asp:BoundField DataField="CANT_LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="CANT_LITROS">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="L" HeaderText="" SortExpression="L" />
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información....
                 </EmptyDataTemplate>
                                             <FooterStyle BackColor="#F3F3F3" ForeColor="Black" />
                 <HeaderStyle BackColor="#EAEAEA" Font-Bold="True" />
                                             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                             <SelectedRowStyle BackColor="#E3F7E1" Font-Bold="True" />
                                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                             <SortedDescendingHeaderStyle BackColor="#242121" />
                                         </asp:GridView>
                                         <asp:SqlDataSource ID="SqlDataSourceano2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_topProductos" SelectCommandType="StoredProcedure">
                                             <SelectParameters>
                                                 <asp:Parameter DefaultValue="2" Name="op" Type="Int32" />
                                                 <asp:ControlParameter ControlID="lblMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                                 <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                                                 <asp:ControlParameter ControlID="lblorden" Name="orden" PropertyName="Text" Type="Int32" />
                                             </SelectParameters>
                                         </asp:SqlDataSource>
                                         <asp:Label ID="lblproductoselec" runat="server"></asp:Label>
                                     </div>
                                    </div>
                            </div>
                        </div>
          

    </asp:Panel>
         </div>
</asp:Content>
