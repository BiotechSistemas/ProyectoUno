<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consolidado.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.Consolidado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CONSOLIDADO</title>
      <script type="text/javascript">
          function imprime() {
              //desaparece el boton
              document.getElementById("btnImprimir").style.display = 'none'
              //se imprime la pagina
              window.print()
              //reaparece el boton
              document.getElementById("btnImprimir").style.display = 'inline'
          }

    </script>
     <style type="text/css">


BODY{
   	font-family: verdana;
}


</style>


    <style type="text/css">
       
          .auto-style1 {
            width: 750px;
            
         }

           .auto-style11 {
            width: 400px;
            
         }
        
            * {
              -webkit-border-sizing: border-box;
              -moz-border-sizing: border-box;
              border-sizing: border-box;
            }
       
            * {
            margin:0;
            padding:0;
            }

            .auto-style2 {
              text-align: center;
          }
       
          .auto-style3 {
            background-color: #EBEBEB;
        }
       
          .auto-style4 {
            text-align: right;
        }
       
          .auto-style12 {
            font-weight: bold;
            background-color: #EBEBEB;
        }
       
          </style>

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

            var options = {
                title: 'RESUMEN LETRAS POR COBRAR',
                width: 400,
                height: 250
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }

     
        google.charts.load('current', { packages: ['corechart', 'bar'] });
        google.charts.setOnLoadCallback(drawAxisTickColors);

        function drawAxisTickColors() {

    

            var data = google.visualization.arrayToDataTable(<%=obtenerDatosBARRA()%>);
            var view = new google.visualization.DataView(data);
            view.setColumns([0, 1,
                             {
                                 calc: "stringify",
                                 sourceColumn: 1,
                                 type: "string",
                                 role: "annotation"
                             },
                             2]);
            var options = {
                chart: {
                    title: 'RESUMEN DE VENTAS',
                    subtitle: 'SEGÚN PERIODO',
                },
                title: "CONSOLIDADO POR COBRAR",
                width: 400,
                height: 250,
                bar: { groupWidth: "80%" },
                bars: 'vertical',
                focusTarget: 'category',
                legend: { position: "none" },
                vAxis: { format: 'decimal' },
                height: 350
            };

         

            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
            chart.draw(data, options);


        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <center>
    <div>
    
     <table class="auto-style1">
            <tr>
                <td WIDTH="130px" >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.jpg" Width="110px" Height="60px" />
                </td>
                <td class="auto-style2" >
                    <h2 class="auto-style2">CONSOLIDADO POR COBRAR</h2>
                    <h4>&nbsp;AL <asp:Label ID="lblfecha" runat="server"></asp:Label>
                    </h4>
                    
                </td>
                
                <td class="auto-style2" >

         <input name="btnImprimir"id="btnImprimir" type="button" class="button" value="Imprimir / Exportar" onClick="imprime()"></td>
 
            </tr>
            </table>
        <hr />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            FACTURAS
            <br />
            POR ANEXAR DOLARES:
            <asp:Label ID="lblfactAnexasD" runat="server"></asp:Label>
            &nbsp; +
            <asp:Label ID="lblfactdolares" runat="server"></asp:Label>
            &nbsp;factura dolares /&nbsp;&nbsp;
            <br />
            SOLES X ANEXAR:&nbsp;
            <asp:Label ID="lblfactAnexasSoles" runat="server"></asp:Label>
            &nbsp;+&nbsp; FACTURA SOLES A DOLARES:
            <asp:Label ID="lblfacttSolesaDolares" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; factora soles:
            <asp:Label ID="lblfacSoles" runat="server"></asp:Label>
            <br />
            letras dolares&nbsp;<asp:Label ID="lblletradolares" runat="server"></asp:Label>
&nbsp;
            <br />
            letras soles:
            <asp:Label ID="lblletrassoles" runat="server"></asp:Label>
            &nbsp; letra soles a dolares:
            <asp:Label ID="lblLetraSolesadolares" runat="server"></asp:Label>
            <br />
            <br />
            descuento dolares=
            <asp:Label ID="lblDesctDolares" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp; descuento solees:
            <asp:Label ID="lblDesctoSoles" runat="server"></asp:Label>
            &nbsp;&nbsp; descto solesa dolares:
            <asp:Label ID="lblDesctoSaD" runat="server"></asp:Label>
        </asp:Panel>
        <br />
        <strong>Resumen facturas por cobrar:</strong><br />
        <table border="0">
                       <tr>
                           <td align=center WIDTH="450" class="auto-style3"><strong>
                               FACTURAS POR COBRAR</strong></td>
                           <td WIDTH="150" align=center class="auto-style3"><strong>DOLARES</strong></td>
                           <td WIDTH="150" align=center class="auto-style3"><strong>SOLES</strong></td>
                       </tr>
                       <tr>
                           <td>
                               <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#333333" OnClick="LinkButton1_Click">FACTURAS</asp:LinkButton>
                           </td>
                           <td align=right>
                               <asp:Label ID="lblfacttDolares" runat="server"></asp:Label>
                           </td>
                           <td align=right>
                               <asp:Label ID="lblFacttSoles" runat="server"></asp:Label>
                           </td>
                       </tr>
                   </table>
                               <asp:Panel ID="pFacturas" runat="server">
                                   
                                   Detalle facturas por cobrar:<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2Facturas" Font-Size="Small" GridLines="Horizontal" Width="750px">
                                       <Columns>
                                           <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                           <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA">
                                           <HeaderStyle Width="100px" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" />
                                           <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" ReadOnly="True" SortExpression="FVENCTO">
                                           <HeaderStyle Width="100px" />
                                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                                           <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE">
                                           <ItemStyle Font-Size="X-Small" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                           <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" />
                                           <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE NETO" SortExpression="IMPORTE" Visible="False">
                                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="RETND" DataFormatString="{0:0,0.00}" HeaderText="IMP. RETENIDO" SortExpression="RETND" Visible="False">
                                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="TOTAL POR COBRAR" ReadOnly="True" SortExpression="XCOBRAR">
                                           <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" Visible="False" />
                                           <asp:BoundField DataField="NOTACREDITO" HeaderText="NOTACREDITO" SortExpression="NOTACREDITO" Visible="False" />
                                           <asp:BoundField DataField="RET" HeaderText="RET" ReadOnly="True" SortExpression="RET" Visible="False" />
                                       </Columns>
                                       <HeaderStyle BackColor="#EBEBEB" />
                                   </asp:GridView>
                                   
                                   <asp:SqlDataSource ID="SqlDataSource2Facturas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP_RET" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                                   Detalle facturas por anexar a letras:<asp:GridView ID="gvFactxAnexar" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourcefactAnexar" Font-Size="Small" GridLines="Horizontal" OnSelectedIndexChanged="gvFactxAnexar_SelectedIndexChanged" Width="750px">
                                       <Columns>
                                           <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                           <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                           <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" />
                                           <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" ReadOnly="True" SortExpression="FVENCTO">
                                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                                           <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE">
                                           <ItemStyle Font-Size="X-Small" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                           <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" />
                                           <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" Visible="False" />
                                           <asp:BoundField DataField="RETND" HeaderText="RETND" SortExpression="RETND" Visible="False" />
                                           <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="TOTAL POR COBRAR" ReadOnly="True" SortExpression="XCOBRAR">
                                           <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                                           </asp:BoundField>
                                           <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" Visible="False" />
                                           <asp:BoundField DataField="NOTACREDITO" HeaderText="NOTACREDITO" SortExpression="NOTACREDITO" Visible="False" />
                                           <asp:BoundField DataField="RET" HeaderText="RET" ReadOnly="True" SortExpression="RET" Visible="False" />
                                       </Columns>
                                       <HeaderStyle BackColor="#F0F0F0" />
                                   </asp:GridView>
                                   <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Ocultar detalles facturas por cobrar</asp:LinkButton>
                                   <br />
                                   <asp:SqlDataSource ID="SqlDataSourcefactAnexar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP_RET_ANEXTAR" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                               </asp:Panel>
        <br />
        <strong>Resumen Letras por cobrar:</strong><br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_LetrasporCobrarConsol" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-hover table-striped" DataKeyNames="cod,ESTADO" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="750px">
                       <Columns>
                           <asp:TemplateField HeaderText="LETRA POR COBRAR" ShowHeader="False">
                               <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ESTADO") %>'></asp:LinkButton>
                               </ItemTemplate>
                               <ControlStyle ForeColor="#333333" />
                               <ItemStyle ForeColor="#333333" />
                           </asp:TemplateField>
                           <asp:BoundField DataField="cod" HeaderText="cod" SortExpression="cod" Visible="False" />
                           <asp:BoundField DataField="ESTADO" HeaderText="LETRAS POR COBRAR" SortExpression="ESTADO" Visible="False" >
                           <HeaderStyle Width="450px" />
                           </asp:BoundField>
                           <asp:BoundField DataField="DOLARES" DataFormatString="{0:0,0.00}" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES">
                           <HeaderStyle Width="150px" />
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="SOLES" DataFormatString="{0:0,0.00}" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES">
                           <HeaderStyle Width="150px" />
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                       </Columns>
                       <HeaderStyle BackColor="#EBEBEB" />
                   </asp:GridView>
        </div>
       



            <asp:Panel ID="pLetrasporCobrar" runat="server">
                Detalle:
                <asp:Label ID="lblestadoDescripcion" runat="server"></asp:Label>
                <asp:Label ID="lblidEstado" runat="server" Visible="False"></asp:Label>
                <asp:GridView ID="gvDetalleporcobrar" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceletrasxEstado" Font-Size="Small" GridLines="Horizontal" Width="750px">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                        <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                        <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" SortExpression="FVENCTO">
                        <HeaderStyle Width="100px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                        <HeaderStyle Width="100px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" />
                        <asp:BoundField DataField="IMPORT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORT">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" Visible="False" />
                        <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" Visible="False" />
                        <asp:BoundField DataField="BANCO" HeaderText="BANCO" ReadOnly="True" SortExpression="BANCO" Visible="False" />
                        <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" Visible="False" />
                        <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" Visible="False" />
                        <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                        <asp:BoundField DataField="FBANCO" HeaderText="FBANCO" SortExpression="FBANCO" Visible="False" />
                        <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                        <asp:BoundField DataField="TRANS" HeaderText="TRANS" ReadOnly="True" SortExpression="TRANS" Visible="False" />
                        <asp:BoundField DataField="HISTORIAL" HeaderText="HISTORIAL" ReadOnly="True" SortExpression="HISTORIAL" Visible="False" />
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceletrasxEstado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasporestado" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidEstado" Name="estadoletra" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ocultar detalle letras por cobrar</asp:LinkButton>
            </asp:Panel>
       



         <br />
            <strong>Resumen letras en descuento:</strong><asp:GridView ID="gvDescuento" runat="server" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="cod" DataSourceID="SqlDataSourcedDESCUENTOS" Width="750px" OnSelectedIndexChanged="gvDescuento_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="BANCO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#333333" Text='<%# Eval("BANCO") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="450px" />
                    <ItemStyle ForeColor="#333333" />
                </asp:TemplateField>
                <asp:BoundField DataField="cod" HeaderText="cod" SortExpression="cod" Visible="False" />
                <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" Visible="False">
                <HeaderStyle Width="450px" />
                </asp:BoundField>
                <asp:BoundField DataField="DOLARES" DataFormatString="{0:0,0.00}" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES">
                <HeaderStyle Width="150px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLES" DataFormatString="{0:0,0.00}" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES">
                <HeaderStyle Width="150px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
                <EmptyDataTemplate>
                    No registra letras en descuento...
                </EmptyDataTemplate>
            <HeaderStyle BackColor="#EBEBEB" />
                <PagerTemplate>
                    No indica cta...
                </PagerTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcedDESCUENTOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_LetrasporCobrarDESCUENTO" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:Panel ID="PanelDescuento" runat="server" Visible="False">
            Detalle de letras en descuento según banco:<asp:GridView ID="gvDtalleDescuento" runat="server" Width="750px" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceDetalleDescuento" Font-Size="X-Small">
                <Columns>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" Visible="False" />
                    <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" Visible="False" />
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                    <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="TOTAL">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPRENOVADO" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" Visible="False" />
                    <asp:BoundField DataField="IMPAMORTIZADO" HeaderText="IMPAMORTIZADO" SortExpression="IMPAMORTIZADO" Visible="False" />
                    <asp:BoundField DataField="PROTESTO" HeaderText="PROTESTO" SortExpression="PROTESTO" Visible="False" />
                    <asp:BoundField DataField="NUNICO" HeaderText="N° UNICO" SortExpression="NUNICO">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADOBANCO1" HeaderText="ESTADOBANCO1" SortExpression="ESTADOBANCO1" Visible="False" />
                    <asp:BoundField DataField="FCANCELADO" HeaderText="FCANCELADO" SortExpression="FCANCELADO" Visible="False" />
                    <asp:BoundField DataField="HISTORIAL" HeaderText="HISTORIAL" ReadOnly="True" SortExpression="HISTORIAL" Visible="False" />
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceDetalleDescuento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDsctoxBanco" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvDescuento" Name="banco" PropertyName="SelectedValue" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LBTNoCULTARdETDESCUENTO" runat="server" OnClick="LBTNoCULTARdETDESCUENTO_Click">Ocultar Det. Descuento</asp:LinkButton>
        </asp:Panel>
        <table  class="auto-style1">
            <tr>
                <td  WIDTH="300" >
         <div id="chart_div" style="width: 100%">
        </div>
                </td>
                <td  WIDTH="450" >
         <div id="piechart" style="width: 100%">
        </div>        
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align=right colspan="2">

        <table class="auto-style11">
            <tr>
                <td class="auto-style12">RESUMEN</td>
                <td style="background-color: #EBEBEB">&nbsp;</td>
                <td style="text-align: center"><strong style="background-color: #EBEBEB">TOTAL EN DOLARES</strong></td>
            </tr>
            <tr>
                <td>&bull; Facturas por cobrar</td>
                <td>:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTTFactenDolares" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&bull; Letras por cobrar</td>
                <td>:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTTLetrasendolares" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Total por cobrar</strong></td>
                <td>:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTTgeneral" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&bull; Letras en descuento</td>
                <td>:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTTDescuentoD" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Totalizado General</strong></td>
                <td>:</td>
                <td class="auto-style4">
                    <asp:Label ID="lbltotalGeneral" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
        </table>
            
                </td>
            </tr>
        </table>
        <br />
            <%--<div id="chart_div" style="width: 500px; height: 300px;"></div>--%>
        <br />
            
        </center>
    </form>
</body>
</html>
