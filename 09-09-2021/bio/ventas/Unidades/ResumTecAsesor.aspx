<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumTecAsesor.aspx.cs" Inherits="biotech.bio.ventas.Unidades.ResumTecAsesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 4px;
        }
    </style>

      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

            var options = {
                title: ''
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);

            //----------------------------

        }




    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
			<h1><i class="fa fa-paste"></i> GASTOS TÉC. ASESOR:
                <asp:Label ID="lblidAno" runat="server"></asp:Label>
                <asp:Label ID="lblidusuario" runat="server" Text=""></asp:Label>
                 
                <asp:Label ID="lblIdUnidad" runat="server"></asp:Label>
                
                     </h1>
        </div>

    <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Principal</asp:LinkButton>
                        </li>
                       
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen Tec. General</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtnResumenAsesor" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumTecAsesor.aspx">Resumen Asesores</asp:LinkButton>
                        </li>
                        
                        
                    </ol>
            </div>


    <div class="row">


        <table class="nav-justified">
            <tr>
                <td WIDTH="150">AÑOÑO</td>
                <td WIDTH="20">:</td>
                <td>
                    <asp:RadioButtonList ID="rbano" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceAno" DataTextField="idano" DataValueField="idano" RepeatDirection="Horizontal" OnSelectedIndexChanged="rbano_SelectedIndexChanged">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSourceAno" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT DISTINCT idano FROM tb_rdRendicionGastos
"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

</div>
    <div class="row">

   
                 <div class="panel panel-success">
                      <div class="panel-heading"> RESUMEN ANUAL:</div>
                      <div class="panel-body">
                                <div class="col-md-7">
                                    AGRUPADO POR MES:
                                    <div class="table-responsive">
                             <asp:GridView ID="gvperiodo" runat="server" class="table table-striped table-bordered table-sm table-hover" AutoGenerateColumns="False" DataKeyNames="idperiodo,MES" DataSourceID="SqlDataSourceperido" Font-Size="Small" OnSelectedIndexChanged="gvperiodo_SelectedIndexChanged" OnRowDataBound="gvperiodo_RowDataBound" ShowFooter="True">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="idperiodo" HeaderText="idperiodo" SortExpression="idperiodo" Visible="False" />
                                            <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                                            <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" />
                                            <asp:BoundField DataField="IMPORTE" HeaderText="IMP. MENSUAL" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>

                                        <asp:SqlDataSource ID="SqlDataSourceperido" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_gastosAsesor" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblidAno" Name="idano" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        </div>

                      </div>
                

            <div class="col-md-5">
               AGRUPADO POR ASESOR:
                <div class="table-responsive">
                             <asp:GridView ID="gvrAnual" class="table table-striped table-bordered table-sm table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRano" Font-Size="Small" OnRowDataBound="gvrAnual_RowDataBound" ShowFooter="True">
                                        <Columns>
                                            <asp:BoundField DataField="CODASESOR" HeaderText="CODASESOR" SortExpression="CODASESOR" Visible="False" />
                                            <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" ReadOnly="True" SortExpression="ASESOR" />
                                            <asp:BoundField DataField="IMPORTE" HeaderText="IMP. ANUAL" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceRano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_gastosAsesorAnual" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidAno" Name="idano" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                    </div>
                      </div>
       
                </div> 

            </div>
           
  </div>


    
     <div class="row">
          <div class="panel panel-success">
  <div class="panel-heading">  RESUMEN AÑO-MES:
      <asp:Label ID="lblanomesSelec" runat="server"></asp:Label>
      <asp:Label ID="lblidperiodo" runat="server"></asp:Label>
              <asp:Label ID="lblano2" runat="server"></asp:Label>
              </div>
  <div class="panel-body">

      <div class="col-md-7">
          <div class="table-responsive">
               <asp:GridView ID="gvAnomes" class="table table-striped table-bordered table-sm table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="CODASESOR,ASESOR,IDR" DataSourceID="SqlDataSourceAnoMes" OnSelectedIndexChanged="gvAnomes_SelectedIndexChanged" OnRowDataBound="gvAnomes_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="COD" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("CODASESOR") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CODASESOR" HeaderText="CODASESOR" SortExpression="CODASESOR" Visible="False" />
                <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" ReadOnly="True" SortExpression="ASESOR" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IDR" HeaderText="IDR" SortExpression="IDR" Visible="False" />
            </Columns>
                   <PagerTemplate>
                       Selecionar periodo....
                   </PagerTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceAnoMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_gastosAsesoAnualMEs" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="rbano" Name="idano" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="gvperiodo" Name="idmes" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

          </div>
      </div>
       <div class="col-md-5">
             <div id="piechart" style="width: 100%">
                            </div>
      </div>
     


  </div>
              </div>
         </div>

    <asp:Panel ID="Panel3det" runat="server">
     <div class="row">
             
                  <div class="col-md-7">
                       <div class="panel panel-success">
                          <div class="panel-heading">  DETALLE VIATICOS (GASTOS POR UNIDAD,COMBUSTUBLE): COD.:
                              <asp:Label ID="lblidasesorSelec2" runat="server" Font-Bold="True"></asp:Label>
                              <asp:Label ID="lblperiodoselec2" runat="server" Visible="False"></asp:Label>
                              &nbsp;
                              <asp:Label ID="lblIdRendicion" runat="server" Visible="False"></asp:Label>
                           </div>

                         <div class="table-responsive">
                             <asp:GridView ID="gvgunidadviaticosGrupo" class="table table-striped table-bordered table-sm table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGrupoviaticos" Font-Size="X-Small" OnRowDataBound="gvgunidadviaticosGrupo_RowDataBound" ShowFooter="True">
                                 <Columns>
                                     <asp:BoundField DataField="IDCATEGORIA" HeaderText="IDCATEGORIA" SortExpression="IDCATEGORIA" Visible="False" />
                                     <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True" >
                                     <HeaderStyle Width="100px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                     </asp:BoundField>
                                 </Columns>
                                 <EmptyDataTemplate>
                                     No registra Viáticos...
                                 </EmptyDataTemplate>
                                </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSourceGrupoviaticos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfViaticosAgrupadosXidRend_sinUNIDAD" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="lblIdRendicion" Name="idrendicion" PropertyName="Text" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                            </div>
                             <div class="table-responsive">
                             <asp:GridView ID="gvgunidadviaticos" class="table table-striped table-bordered table-sm table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idRGdetalle" DataSourceID="SqlDataSourceMEsDEt1" Font-Size="X-Small" OnRowDataBound="gvgunidadviaticos_RowDataBound" ShowFooter="True">
                                 <Columns>
                                     <asp:BoundField DataField="idRGdetalle" HeaderText="idRGdetalle" ReadOnly="True" SortExpression="idRGdetalle" Visible="False" />
                                     <asp:BoundField DataField="idRG" HeaderText="idRG" SortExpression="idRG" Visible="False" />
                                     <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                                     <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                     <asp:BoundField DataField="FREGISTRO" HeaderText="F.REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" >
                                     <HeaderStyle Width="100px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                                     <asp:BoundField DataField="GALONES" HeaderText="GALONES" SortExpression="GALONES" Visible="False" />
                                     <asp:BoundField DataField="NDOC" HeaderText="NDOC" SortExpression="NDOC" Visible="False" />
                                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                                     <HeaderStyle Width="100px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                     </asp:BoundField>
                                 </Columns>
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSourceMEsDEt1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfMesDetalle_sinUNIDAD" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="lblIdRendicion" Name="idRendicion" PropertyName="Text" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                         </div>

                        </div>
                    </div>   
                  <div class="col-md-5">

                       <div class="panel panel-success">
                          <div class="panel-heading">  DETALLE GASTOS TECNICOS:&nbsp; ASESOR:
                              <asp:Label ID="lblasesor2selec" runat="server" Font-Bold="True"></asp:Label>
                              &nbsp;<asp:Label ID="lblano3" runat="server" Visible="False"></asp:Label>
                              &nbsp;<asp:Label ID="lblmes3" runat="server" Visible="False"></asp:Label>
                              <asp:Label ID="lblidasesor3" runat="server" Visible="False"></asp:Label>
                              <asp:Label ID="lblidTransporte3" runat="server" Visible="False"></asp:Label>
                           </div>
                           <div class="table-responsive">
                               
                                 <asp:GridView ID="gvgunidadTecnica" class="table table-striped table-bordered table-sm table-hover"  runat="server" DataSourceID="SqlDataSourceplacaAsesor" AutoGenerateColumns="False" Font-Size="X-Small" OnRowDataBound="gvgunidadTecnica_RowDataBound" ShowFooter="True">
                                     <Columns>
                                         <asp:BoundField DataField="IDEQUIPO" HeaderText="IDEQUIPO" SortExpression="IDEQUIPO" Visible="False" />
                                         <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" />
                                         <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False" />
                                         <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha">
                                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="SECCION" HeaderText="SECCION" SortExpression="SECCION" />
                                         <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                         <asp:BoundField DataField="IMPTT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPTT">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                     </Columns>
                                     <EmptyDataTemplate>
                                         No registra gastos técnicos...
                                     </EmptyDataTemplate>
                                    </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSourceplacaAsesor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_PlacaAsesor" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblano3" Name="ano" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblmes3" Name="mes" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblidTransporte3" Name="idplaca" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblidasesor3" Name="idassesor" PropertyName="Text" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                             </div>
                      </div>
                    </div>
             
            </div>
         
       </asp:Panel>   
        


    
</asp:Content>
