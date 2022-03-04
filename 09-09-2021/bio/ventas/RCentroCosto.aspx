<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RCentroCosto.aspx.cs" Inherits="biotech.bio.ventas.RCentroCosto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   
  <script type="text/javascript">
      google.charts.load("current", { packages: ['corechart'] });
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
          //var data = google.visualization.arrayToDataTable([
          //  ["PERIODO", "Total:", { role: "style" }],
          //  ["Enero", 8.94, "#b87333"],
          //  ["Febrero", 10.49, "silver"],
          //  ["Gold", 19.30, "gold"],
          //  ["Platinum", 21.45, "color: #e5e4e2"]
          //]);

          var data = google.visualization.arrayToDataTable(<%=obtenerDatosbarraLINEAL()%>);

          var view = new google.visualization.DataView(data);
          //view.setColumns([0, 1,
          //                 {
          //                     calc: "stringify",
          //                     sourceColumn: 1,
          //                     type: "string",
          //                     role: "annotation"
          //                 },
          //                 2]);
          var options = {
              chart: {
                  title: 'Company Performance',
                  subtitle: 'Sales, Expenses, and Profit: 2014-2017',
              },
              bars: 'vertical',
              vAxis: { format: 'decimal' },
              height: 400,
              colors: ['#1b9e77', '#d95f02', '#7570b3']
          };

          //var options = {
          //    title: "RESUMEN ANUAL DE GASTOS",
          //    width: 1000,
          //    height: 600,
          //    bar: { groupWidth: "95%" },
          //    legend: { position: "none" },
          //};
          var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
          chart.draw(view, options);
      }
  </script>

     <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            width: 800px;
        }
    </style>

  <%--   <script type="text/javascript">
         google.charts.load('current', { 'packages': ['bar'] });
         google.charts.setOnLoadCallback(drawChart);

         function drawChart() {
             var data = google.visualization.arrayToDataTable([
               ['Year', 'Sales', 'Expenses', 'Profit'],
               ['2014', 1000, 400, 200],
               ['2015', 1170, 460, 250],
               ['2016', 660, 1120, 300],
               ['2017', 1030, 540, 350]
             ]);

             

            var options = {
                chart: {
                    title: 'Importe US$',



                },
                bars: 'horizontal', // Required for Material Bar Charts.
                hAxis: { format: 'decimal' },
                colors: ['#d8d8d9', '#a0c655', '#0080FF']
            };

            var chart = new google.charts.Bar(document.getElementById('grafbarra'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
        }
    </script>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

    <div class="col-md-12">
                <h1>RESUMEN DE GASTOS</h1>

            <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="">Resúmen de gastos</asp:LinkButton>
                        </li>

                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/AdminCCA.aspx">Dirigir Centro de Costo</asp:LinkButton>
                        </li>
                          
                       

                        <li>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/bio/ventas/compras/CCAregistrar.aspx">Administrar</asp:LinkButton>
                        </li>
                       
                    </ol>
                <asp:Panel ID="payuda" runat="server">
                </asp:Panel>
                <table class="auto-style1">
                    <tr>
                        <td>
                            AÑO:<br />
                            </td>
                        <td>
                            <asp:DropDownList ID="ddlano" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" Width="200px">
                            </asp:DropDownList>
                            <br />
                            </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnGenerar" runat="server" Text="GENERAR" OnClick="btnGenerar_Click" />
                            </td>
                    </tr>
                </table>
                            <br />
                <asp:Panel ID="Panel6" runat="server">
                    <table class="auto-style2">
                        <tr>
                            <td><b></b></td>
                            <td><b>IMP. TOTAL</b></td>
                            <td><b>GRATIFICACIÓN</b></td>
                            <td><b>CTS</b></td>
                            <td><b>IMP. TOTAL GENERAL</b></td>
                        </tr>
                        <tr>
                            <td><strong>
                                <asp:ImageButton ID="ibtnresumen" runat="server" ImageUrl="~/images/excel.png" OnClick="ibtnresumen_Click" Width="20px" />
                                </strong>TOTAL ANUAL</td>
                            <td>
                                <asp:Label ID="lblpimpTotal" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblttgrati" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblttcts" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblptotalgeneral" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                            <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.anos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                
        <div class="row">
            
             <div class="col-md-6">
                 <%--<div class="table-responsive">--%>
                  <asp:GridView ID="gvcca" runat="server" DataSourceID="SqlDataSourceCCA" AutoGenerateColumns="False" Width="100%" DataKeyNames="idmes" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvcca_SelectedIndexChanged" OnRowDataBound="gvcca_RowDataBound" ShowFooter="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="idmes" HeaderText="COD" SortExpression="idmes" ReadOnly="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" />
                        <asp:BoundField DataField="IMPGASTOS" HeaderText="GASTOS" ReadOnly="True" SortExpression="IMPGASTOS" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle Width="120px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="IMPGASTOSINTERNOS" HeaderText="GASTOS INTERNOS" ReadOnly="True" SortExpression="IMPGASTOSINTERNOS" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle Width="120px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPVIATIOS" HeaderText="VIATICOS" ReadOnly="True" SortExpression="IMPVIATIOS" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle Width="120px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                            <asp:BoundField DataField="IMPPLANILLA" HeaderText="PLANILLA" ReadOnly="True" SortExpression="IMPPLANILLA" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle Width="120px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>

                         <asp:BoundField DataField="IMPORTETOTAL" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="IMPORTETOTAL" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#E6E6CC" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSourceCCA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.resumenCCA_ano" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidAno" Name="idano" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                 <asp:Label ID="lbltitulo1" runat="server"></asp:Label>

                 <asp:Label ID="lbllinea1" runat="server" Text="*Resumen viáticos contempla gastos PETROTHOR."></asp:Label>
                 <br />
               
              
              </div>
             <div class="col-md-6">
                 <asp:Panel ID="Panel2" runat="server">
            <div id="columnchart_values" style="width: 100%; height: 300px;"></div> 
</asp:Panel>
        </div>
         </div>


                <asp:GridView ID="gvgraticts" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDPERIODO,ANO,PERIODO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvgraticts_RowDataBound" OnSelectedIndexChanged="gvgraticts_SelectedIndexChanged" ShowFooter="True" Width="700px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Height="20px" Width="20px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="IDPERIODO" HeaderText="IDPERIODO" SortExpression="IDPERIODO" Visible="False" />
                        <asp:BoundField DataField="ANO" HeaderText="ANO" ReadOnly="True" SortExpression="ANO" Visible="False" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="IMPGRATI" DataFormatString="{0:0,0.00}" HeaderText="IMP. GRATIFICACIÓN" ReadOnly="True" SortExpression="IMPGRATI">
                        <HeaderStyle Width="150px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPCTS" DataFormatString="{0:0,0.00}" HeaderText="IMP. CTS" ReadOnly="True" SortExpression="IMPCTS">
                        <HeaderStyle Width="150px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPTT" DataFormatString="{0:0,0.00}" HeaderText="IMPTT" ReadOnly="True" SortExpression="IMPTT">
                        <HeaderStyle Width="150px" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#E2E5D2" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_gratictsanual" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlano" Name="idano" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Panel ID="pgraticts" runat="server">
                    <strong>
                    Detalle gratificación:
                    <asp:Label ID="lbl50peridoDescripcion" runat="server"></asp:Label>
                    </strong>&nbsp;<asp:Label ID="lbl50idperiodo" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl50idano" runat="server" Visible="False"></asp:Label>
                    <strong>
                    <asp:ImageButton ID="ibtnGratificacion" runat="server" ImageUrl="~/images/excel.png" OnClick="ibtnGratificacion_Click" Width="20px" />
                    </strong>
                    <asp:GridView ID="gvGratificacion" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnRowDataBound="gvGratificacion_RowDataBound" ShowFooter="True" Width="100%" OnSelectedIndexChanged="gvGratificacion_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" Visible="False" />
                             <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                             <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
                            <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                             <asp:BoundField DataField="ZONA" HeaderText="ZONA" ReadOnly="True" SortExpression="ZONA" />
                            <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                           
                            <asp:BoundField DataField="TOTALGRATIFICACION" DataFormatString="{0:0,0.00}" HeaderText="IMP. GRATIFICACION" SortExpression="TOTALGRATIFICACION">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra gratificación....
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#E8E8E8" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_listadoGratificacion" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbl50idano" Name="idano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lbl50idperiodo" Name="idperido" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <strong>Detalle CTS:<asp:Label ID="lbl50peridoDescripcion0" runat="server"></asp:Label>
                    &nbsp;<asp:ImageButton ID="ibtnCTS" runat="server" ImageUrl="~/images/excel.png" OnClick="ibtnCTS_Click" Width="20px" />
                    </strong>
                    <asp:GridView ID="gvcts" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnRowDataBound="gvcts_RowDataBound" ShowFooter="True" Width="100%" OnSelectedIndexChanged="gvcts_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="id" HeaderText="cod" ReadOnly="True" SortExpression="id" Visible="False" />
                             <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                             <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />

                            <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                            <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" ReadOnly="True" SortExpression="ZONA" />

                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                            <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                            
                            <asp:BoundField DataField="RemNeta" DataFormatString="{0:0,0.00}" HeaderText="IMP. CTS" SortExpression="RemNeta">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra CTS....
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#E8E8E8" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_listadocts" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbl50idano" Name="idano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lbl50idperiodo" Name="idperiodo" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>

                <br />
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <strong>RESUMEN CENTRO DE COSTO:</strong> PERIODO:
                    <asp:Label ID="lblidAno" runat="server"></asp:Label>
                    -<asp:Label ID="lblidmes" runat="server"></asp:Label>
                    <asp:GridView ID="gvMensual" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDCCI,CCAUXILIAR,ABREV" DataSourceID="SqlDataSourcemes" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvMensual_RowDataBound" ShowFooter="True" Width="1000px" OnRowCommand="gvMensual_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDCCI" HeaderText="COD" ReadOnly="True" SortExpression="IDCCI" >
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                             <asp:BoundField DataField="ABREV" HeaderText="CC" ReadOnly="True" SortExpression="ABREV" />
                            <asp:BoundField DataField="CCAUXILIAR" HeaderText="CENTRO DE COSTOS (CC)" ReadOnly="True" SortExpression="CCAUXILIAR" />
                            <asp:BoundField DataField="IMPCOMPRASGG" DataFormatString="{0:0,0.00}" HeaderText="PAGOS" ReadOnly="True" SortExpression="IMPCOMPRASGG" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                             <asp:BoundField DataField="IMPVIATICO" DataFormatString="{0:0,0.00}" HeaderText="VIATICOS" ReadOnly="True" SortExpression="IMPVIATICO" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                               <asp:BoundField DataField="IMPPLANILLA" DataFormatString="{0:0,0.00}" HeaderText="IMP. PLANILLA" ReadOnly="True" SortExpression="IMPPLANILLA" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                              <asp:TemplateField HeaderText="PAGOS">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="COMPRAS" Text='<%# Bind("IMPCOMPRASGG","{0:0,0.00}") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="VIATICOS">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="VIATICOS" Text='<%# Bind("IMPVIATICO","{0:0,0.00}") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PLANILLA">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="PLANILLAS" Text='<%# Bind("IMPPLANILLA","{0:0,0.00}") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                              <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="TT">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                            </asp:BoundField>

                        </Columns>
                        <EmptyDataTemplate>
                            No registra centro de costo...
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#E6E6CC" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcemes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_resumenCCA_mes" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidmes" Name="idMes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidAno" Name="idAno" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
                <asp:Panel ID="ppplanilla" runat="server">
                    &nbsp;<asp:Label ID="lblcc1" runat="server" style="font-weight: 700"></asp:Label>
                    &nbsp;- <strong>PLANILLA</strong> :
                    <asp:Label ID="lblidano1" runat="server"></asp:Label>
                    &nbsp;-<asp:Label ID="lblidmes1" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="lblidcc1" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:GridView ID="gvppPlanilla" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcePLA" Width="1000px" GridLines="Horizontal" OnRowDataBound="gvppPlanilla_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="gvppPlanilla_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" Visible="False" >
                            <HeaderStyle Width="30px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                            <asp:BoundField DataField="Zona" HeaderText="ZONA" SortExpression="Zona" />
                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                            <asp:BoundField DataField="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" HeaderText="ASIG. FAMILIAR" SortExpression="ASIGFAMILIAR">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                             <asp:BoundField DataField="REMNETA" DataFormatString="{0:0,0.00}" HeaderText="REM. NETA" SortExpression="REMNETA">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                           
                            <asp:BoundField DataField="DESCUENTO" DataFormatString="{0:0,0.00}" HeaderText="DESC. INTERNOS" SortExpression="DESCUENTO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#CC0000" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EPS" DataFormatString="{0:0,0.00}" HeaderText="DESC. EPS" SortExpression="EPS">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#CC0000" />
                            </asp:BoundField>
                            <asp:BoundField DataField="REMPERCIBIDA" DataFormatString="{0:0,0.00}" HeaderText="REM. PERCIBIDA" SortExpression="REMPERCIBIDA">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#F4F4F4" />
                        <HeaderStyle BackColor="#F0F0F0" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcePLA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_Planilladetalle" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidano1" Name="idano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidmes1" Name="idmes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidcc1" Name="idcc" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </asp:Panel>
                <asp:Panel ID="ppViaticos" runat="server">
                    <asp:Label ID="lblcc2" runat="server" style="font-weight: 700"></asp:Label>
                    &nbsp;- <strong>VIATICOS</strong> :
                    <asp:Label ID="lblidano2" runat="server"></asp:Label>
                    &nbsp;-<asp:Label ID="lblidmes2" runat="server"></asp:Label>
                    &nbsp; <asp:Label ID="lblidcc2" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:GridView ID="gvppviaticos" runat="server" AutoGenerateColumns="False" DataKeyNames="IDCATEGORIA,CATEGORIA" DataSourceID="SqlDataSource1Viaticos" OnRowCommand="gvppviaticos_RowCommand" OnRowDataBound="gvppviaticos_RowDataBound" OnSelectedIndexChanged="gvppviaticos_SelectedIndexChanged" ShowFooter="True" Width="1000px">
                        <Columns>
                            <asp:BoundField DataField="IDCATEGORIA" HeaderText="COD" SortExpression="IDCATEGORIA" />
                            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                          
                              <asp:TemplateField HeaderText="CENTRAL">
                                 <ItemTemplate>
                                      <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="COMPRAS" Text='<%# Bind("IMPCOMPRASGG") %>'></asp:LinkButton>--%>
                                     <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="False" CommandName="CENTRAL" Text='<%# Eval("CENTRAL", "{0:N}") %>'></asp:LinkButton>
                                 </ItemTemplate>
                                  <HeaderStyle Width="120px" />
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            
                            
                            


                            <asp:TemplateField HeaderText="ICA" SortExpression="ICA">
                                <EditItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ICA") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton7" runat="server" CommandName="ICA" Text='<%# Eval("ICA", "{0:N}") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CHICLAYO" SortExpression="CHICLAYO">
                                <EditItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("CHICLAYO") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="CHICLAYO" Text='<%# Eval("CHICLAYO", "{0:N}") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PIURA" SortExpression="PIURA">
                                <EditItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("PIURA") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton9" runat="server" CommandName="PIURA" Text='<%# Eval("PIURA", "{0:N}") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="TT" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="TT" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle Width="150px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#F2F2F2" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1Viaticos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_ViatiosdetalleLista" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidano2" Name="idano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidmes2" Name="idmes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidcc2" Name="idcc" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Panel ID="psubviaticos" runat="server">
                        <asp:Label ID="lbl20categoria" runat="server" style="font-weight: 700"></asp:Label>
                        &nbsp; &nbsp;<asp:Panel ID="Panel4" runat="server" Visible="False">
                            zona:
                            <asp:Label ID="lbl20idzona" runat="server"></asp:Label>
                            &nbsp;&nbsp; ano:
                            <asp:Label ID="lbl20ano" runat="server"></asp:Label>
                            &nbsp; mes:
                            <asp:Label ID="lbl20mes" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; iddistribucion<asp:Label ID="lbl20idDistribucion" runat="server"></asp:Label>
                            &nbsp; idDescripcion<asp:Label ID="lbl20idDescripcion" runat="server"></asp:Label>
                        </asp:Panel>
                        &nbsp;<br />
                        <asp:GridView ID="gvsubViaticos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1subviatico" OnRowDataBound="gvsubViaticos_RowDataBound" OnSelectedIndexChanged="gvsubViaticos_SelectedIndexChanged" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="idRGdetalle" HeaderText="COD" SortExpression="idRGdetalle" />
                                <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PESONAL" HeaderText="PESONAL" SortExpression="PESONAL" Visible="False" />
                                <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                                <asp:BoundField DataField="fecharegistro" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRO" SortExpression="fecharegistro">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CATEGORIADESCRIP" HeaderText="TIPO GASTO" SortExpression="CATEGORIADESCRIP" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#EFEFEF" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1subviatico" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_subviatico" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbl20ano" Name="idano" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl20mes" Name="idmes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl20idDescripcion" Name="iddescripcion" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl20idDistribucion" Name="iddistribucion" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl20idzona" Name="idzona" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                    <br />
                </asp:Panel>
                <asp:Panel ID="ppcompras" runat="server" Visible="False">
                    <strong>
                    <asp:Label ID="lblcc33" runat="server"></asp:Label>
                    &nbsp;- PAGOS:</strong>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblidano33" runat="server"></asp:Label>
                    <asp:Label ID="lblidmes33" runat="server"></asp:Label>
                    <strong>
                    <asp:Label ID="lblidcc33" runat="server" Visible="False"></asp:Label>
                    </strong>&nbsp;<asp:GridView ID="gvppcompras" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idcca,CCA" DataSourceID="SqlDataSource1ccaux" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvppcompras_RowDataBound" OnSelectedIndexChanged="gvppcompras_SelectedIndexChanged" ShowFooter="True" Width="1000px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" >
                            </asp:CommandField>
                            <asp:BoundField DataField="idcca" HeaderText="COD" ReadOnly="True" SortExpression="idcca" >
                            </asp:BoundField>
                            <asp:BoundField DataField="CCA" HeaderText="CC AUXILIARES" SortExpression="CCA" ReadOnly="True" />
                            <asp:BoundField DataField="IMPPAGOS" HeaderText="IMPPAGOS" ReadOnly="True" SortExpression="IMPPAGOS" DataFormatString="{0:0,0.00}" Visible="False" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPINTERNAS" DataFormatString="{0:0,0.00}" HeaderText="IMPINTERNAS" ReadOnly="True" SortExpression="IMPINTERNAS" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPTOTAL" DataFormatString="{0:0,0.00}" HeaderText="IMPTOTAL" ReadOnly="True" SortExpression="IMPTOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra centro de costo Auxiliar.
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#E6E6CC" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1ccaux" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_comprascca" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidAno" Name="idAno" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidmes" Name="idMes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidcc33" Name="idcc" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Panel ID="psubcompras" runat="server">
                        <asp:Label ID="lbl30idccaux" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lbl30ccauxiDetalle" runat="server" style="font-weight: 700"></asp:Label>
                        <asp:Label ID="lbl30idano" runat="server"></asp:Label>
                        -<asp:Label ID="lbl30Idmes" runat="server"></asp:Label>
                        <asp:Panel ID="Panel5" runat="server" Visible="False">
                            IDCC:
                            <asp:Label ID="lbl30idcc" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp; IDCAT:
                            <asp:Label ID="bl30IdCategoria" runat="server"></asp:Label>
                            &nbsp; lbliddistribuicion
                            <asp:Label ID="lbl30idditribucion" runat="server"></asp:Label>
                        </asp:Panel>
                        REGISTRADO EN COMPRAS:<asp:GridView ID="gvSubGastos" runat="server" AutoGenerateColumns="False" DataKeyNames="IDPAGO" DataSourceID="SqlDataSource1PAGOS" Width="100%" OnRowDataBound="gvSubGastos_RowDataBound" ShowFooter="True">
                            <Columns>
                                <asp:BoundField DataField="IDPAGO" HeaderText="COD" ReadOnly="True" SortExpression="IDPAGO" >
                                <HeaderStyle Width="40px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FEMISION" HeaderText="F. EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}">
                                <HeaderStyle Width="90px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="REGISTRA" HeaderText="REGISTRA" SortExpression="REGISTRA" >
                                <HeaderStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TIPOGASTO" HeaderText="TIPO GASTO" SortExpression="TIPOGASTO" >
                                <HeaderStyle Width="200px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IDPROVEEDOR" HeaderText="IDPROVEEDOR" SortExpression="IDPROVEEDOR" Visible="False" />
                                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL" />
                                <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" />
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" ReadOnly="True">
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPORTEREAL" HeaderText="IMPORTE" SortExpression="IMPORTEREAL" DataFormatString="{0:0,0.00}" >
                                <HeaderStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                               
                                <asp:BoundField DataField="IMPSOLES" DataFormatString="{0:0,0.00}" HeaderText="IMP. SOLES" ReadOnly="True" SortExpression="IMPSOLES">
                                <HeaderStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                               
                            </Columns>
                            <EmptyDataTemplate>
                                No registra tipo de gasto...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#EFEFEF" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1PAGOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_subcompraspagos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbl30idano" Name="idano" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl30Idmes" Name="idmes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="bl30IdCategoria" Name="idcategoria" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl30idditribucion" Name="idDistribucion" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        REGISTRADO EN COMPRAS INTERNAS:<asp:GridView ID="gvSubGastosInternos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1internas" Width="100%" OnRowDataBound="gvSubGastosInternos_RowDataBound" ShowFooter="True">
                            <Columns>
                                <asp:BoundField DataField="idRGdetalle" HeaderText="COD" SortExpression="idRGdetalle" >
                                <HeaderStyle Width="40px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                                <HeaderStyle Width="90px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="REGISTRA" HeaderText="REGISTRA" SortExpression="REGISTRA">
                                <HeaderStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TIPOGASTO" HeaderText="TIPO GASTO" SortExpression="TIPOGASTO" >
                                <HeaderStyle Width="200px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IDPROV" HeaderText="IDPROV" SortExpression="IDPROV" Visible="False" />
                                <asp:BoundField DataField="IDPROVEEDOR" HeaderText="IDPROVEEDOR" SortExpression="IDPROVEEDOR" Visible="False" />
                                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                                <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE">
                                </asp:BoundField>
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                                <asp:BoundField DataField="IMPSOLES" DataFormatString="{0:0,0.00}" HeaderText="IMP. SOLES" SortExpression="IMPSOLES">
                                <HeaderStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idccAuxiliar" HeaderText="idccAuxiliar" SortExpression="idccAuxiliar" Visible="False" />
                                <asp:BoundField DataField="idccDistribucion" HeaderText="idccDistribucion" SortExpression="idccDistribucion" Visible="False" />
                            </Columns>
                            <EmptyDataTemplate>
                                No registra tipo de gasto interno...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#EFEFEF" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1internas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_subcomprasinternas" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbl30idano" Name="idano" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl30Idmes" Name="idmes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="bl30IdCategoria" Name="idCategoria" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbl30idditribucion" Name="idDistribucion" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </asp:Panel>
                <br />
                <asp:Label ID="lblidccAux" runat="server" Visible="False"></asp:Label>
                <asp:Panel ID="Panel3" runat="server" Visible="False">
                    <strong>COMPRAS/SERVICIOS REALIZADOS:</strong>
                    <asp:Label ID="lblccauxiliarDetalle" runat="server"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSourceresumPagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_pagosxcca" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidAno" Name="idano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidmes" Name="idmes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidccAux" Name="idcca" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gvPagos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPago" DataSourceID="SqlDataSourceresumPagos" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvPagos_RowDataBound" ShowFooter="True" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="idPago" HeaderText="COD. PAGO" ReadOnly="True" SortExpression="idPago" >
                            <HeaderStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" >
                            <HeaderStyle Width="100px" />
                            <ItemStyle Font-Bold="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPSOLES" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE EN SOLES" SortExpression="IMPSOLES">
                            <HeaderStyle Width="100px" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GLOSA" HeaderText="DETALLE" ReadOnly="True" SortExpression="GLOSA" />
                            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO" />
                        </Columns>
                        <FooterStyle BackColor="#E6E6CC" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />

                </div>
</asp:Content>
