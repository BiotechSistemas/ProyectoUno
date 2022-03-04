<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenTecnico.aspx.cs" Inherits="biotech.bio.ventas.Unidades.ResumenTecnico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

            var options = {
                title: 'RESUMEN MENSUAL GV'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);

            //----------------------------
          
        }


      

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
			<h2><i class="fa fa-paste"></i>  RESUMEN GASTOS VEHICULARES (GV):
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>

     <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Principal</asp:LinkButton>
                        </li>
                         <li>
                        <asp:LinkButton ID="lbtnCargos" runat="server" PostBackUrl="~/bio/ventas/Unidades/CargosUnidades.aspx">Cargos/Recepción</asp:LinkButton>
                        </li>
                       <li>
                        <asp:LinkButton ID="lbtnrtecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/RTecnico.aspx" >R.Técnico</asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen GV. General</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtnResumenAsesor" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumUnidades.aspx">Resumen GV. por unidades</asp:LinkButton>
                        </li>
                        
                        
                    </ol>
            </div>

    
        <asp:Panel ID="Panel2" runat="server" ViewStateMode="Disabled" Visible="False">
            op:
            <asp:Label ID="lblop" runat="server" Text="2"></asp:Label>
            &nbsp;ano:
            <asp:Label ID="lblano" runat="server"></asp:Label>
            &nbsp;mes:
            <asp:Label ID="lblmes" runat="server"></asp:Label>
            &nbsp;idunidad:<asp:Label ID="lblidunidad" runat="server"></asp:Label>
            &nbsp;idAsesor:
            <asp:Label ID="lblidAsesor" runat="server"></asp:Label>
            &nbsp;idrendicion:
            </asp:Panel>
      


    <asp:Panel ID="punidades" runat="server">
        <div class="row">
             <div class="col-md-7">
            
                 1.0.- RESUMEN ANUAL GASTO VEHICULAR (GV):<br />
                 <asp:GridView ID="gvunAno" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered table-sm  table-hover" DataKeyNames="ANO" DataSourceID="SqlDataSourceano1" OnSelectedIndexChanged="gvunAno_SelectedIndexChanged" Font-Size="Small" GridLines="None">
                     <Columns>
                         <asp:TemplateField HeaderText="AÑO" ShowHeader="False">
                             <ItemTemplate>
                                 <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ANO") %>'></asp:LinkButton>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                         <asp:BoundField DataField="VIATICO" DataFormatString="{0:0,0.00}" HeaderText="VIÁTICOS" ReadOnly="True" SortExpression="VIATICO">
                         <HeaderStyle Width="100px" ForeColor="#006600" BackColor="#ECFFEC" />
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#006600" />
                         </asp:BoundField>
                         <asp:BoundField DataField="TECNICA" DataFormatString="{0:0,0.00}" HeaderText="TÉCNICOS" ReadOnly="True" SortExpression="TECNICA">
                         <HeaderStyle Width="100px" BackColor="#E1F2FB" ForeColor="#003399" />
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#003399" />
                         </asp:BoundField>
                         <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="TT">
                         <HeaderStyle Width="100px" />
                         <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSourceano1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfPeriodoAno" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                 <hr />
                 2.0.- RESUMEN MENSUAL GASTO VEHICULAR:
                 <asp:Label ID="lblanog2" runat="server"></asp:Label>
                 <asp:GridView ID="gvResumMensual" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered table-sm  table-hover" DataKeyNames="IDMES,PERIODO,ANO" DataSourceID="SqlDataSourceGrupoMes" OnSelectedIndexChanged="gvResumMensual_SelectedIndexChanged" Font-Size="Small" GridLines="None" OnRowDataBound="gvResumMensual_RowDataBound" ShowFooter="True">
                     <Columns>
                         <asp:TemplateField HeaderText="PERIODO" ShowHeader="False">
                             <ItemTemplate>
                                 <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("MES") %>'></asp:LinkButton>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:BoundField DataField="IDMES" HeaderText="IDMES" SortExpression="IDMES" Visible="False" />
                         <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" Visible="False" />
                         <asp:BoundField DataField="VIAT" DataFormatString="{0:0,0.00}" HeaderText="VIÁTICOS" ReadOnly="True" SortExpression="VIAT">
                         <HeaderStyle Width="100px" ForeColor="#006600" BackColor="#ECFFEC" />
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#006600" />
                         </asp:BoundField>
                         <asp:BoundField DataField="TEC" DataFormatString="{0:0,0.00}" HeaderText="TÉCNICOS" ReadOnly="True" SortExpression="TEC">
                         <HeaderStyle Width="100px" BackColor="#E1F2FB" ForeColor="#003399" />
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#003399" />
                         </asp:BoundField>
                         <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="TT">
                         <HeaderStyle Width="100px" />
                         <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                          <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                          <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSourceGrupoMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfPeriodo" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                          <%--<asp:ControlParameter ControlID="gvunAno" Name="ano" PropertyName="SelectedValue" Type="Int32" />--%>
                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
</div>
            <asp:Panel ID="pgraficos" runat="server">
                   <div class="col-md-5">
                       <div class="panel panel-default">
                       
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                             
                            
                            <asp:Panel ID="PGMES1" runat="server">
                             <div id="piechart" style="width: 100%">
                            </div>

                            </asp:Panel>
                            
                       
                               

                        </div>
                        <!-- /.panel-body -->
             </div>
             </div>
                </asp:Panel>
             </div>
          </asp:Panel>
   
     <asp:Panel ID="PanelVIATEC" runat="server">

         <asp:Panel ID="Panel30" runat="server">
             <hr />
        <div class="row">

            <div class="col-md-7">
           
                           3.0.- DET. RESUMEN MENSUAL GV: PERIODO:
                 <asp:Label ID="lblperidoSelec2" runat="server" Font-Bold="True"></asp:Label>

 
      

             
            <asp:GridView ID="gvDetMEs1" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idrendicion,ANO,MES,ASESOR,IDPLACA,PLACA,NOMBREASESOR,IMPORTE,IMPTECNICO" DataSourceID="SqlDataSourceDetMes" OnSelectedIndexChanged="gvDetMEs1_SelectedIndexChanged" Font-Size="X-Small" GridLines="None" OnRowDataBound="gvDetMEs1_RowDataBound" ShowFooter="True">
                <Columns>
                    <asp:TemplateField HeaderText="PLACA" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PLACA") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idrendicion" HeaderText="idrendicion" SortExpression="idrendicion" Visible="False" />
                    <asp:BoundField DataField="ANO" HeaderText="ANO" ReadOnly="True" SortExpression="ANO" Visible="False" />
                    <asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" Visible="False" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />

                    <asp:BoundField DataField="ASESOR" HeaderText="COD" ReadOnly="True" SortExpression="ASESOR" Visible="False" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NOMBREASESOR" HeaderText="ASESOR" ReadOnly="True" SortExpression="NOMBREASESOR" />
                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" ReadOnly="True" SortExpression="ZONA" />
                    <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="VIÁTICO" ReadOnly="True" SortExpression="IMPORTE">
                    <HeaderStyle Width="100px" ForeColor="#006600" BackColor="#ECFFEC" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#006600" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDPLACA" HeaderText="IDPLACA" SortExpression="IDPLACA" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPTECNICO" DataFormatString="{0:0,0.00}" HeaderText="TÉCNICO" ReadOnly="True" SortExpression="IMPTECNICO">
                    <HeaderStyle Width="100px" BackColor="#E1F2FB" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#003399" />
                    </asp:BoundField>

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceDetMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfUndMEs" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvunAno" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                    <%--<asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />--%>
                    <asp:ControlParameter ControlID="gvResumMensual" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                   
                </SelectParameters>
            </asp:SqlDataSource>

    
                  </div>
            <div class="col-md-5">

                <div class="panel panel-default">
  <div class="panel-heading">3.1.-RESUMEN ZONAL GV: PERIODO:
                <asp:Label ID="lblperidoSelec21" runat="server" Font-Bold="True"></asp:Label>
                &nbsp;ZONA:
                <asp:Label ID="lblidzona" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="LBLANO2" runat="server" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="LBLMES2" runat="server" Visible="False"></asp:Label>&nbsp;&nbsp; </div>
  <div class="panel-body">

                <div class="table-responsive">
                <asp:GridView ID="gvZona" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceZona" Font-Size="X-Small" OnRowDataBound="gvZona_RowDataBound" ShowFooter="True" DataKeyNames="ZONA" OnSelectedIndexChanged="gvZona_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="ZONA" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("ZONA") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" Visible="False" />
                        <asp:BoundField DataField="VIATICO" DataFormatString="{0:0,0.00}" HeaderText="VIATICO" ReadOnly="True" SortExpression="VIATICO">
                        <HeaderStyle ForeColor="#006600" BackColor="#ECFFEC" Width="100px" />
                        <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TECNICO" DataFormatString="{0:0,0.00}" HeaderText="TECNICO" ReadOnly="True" SortExpression="TECNICO">
                        <HeaderStyle BackColor="#E1F2FB" Width="100px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#003366" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPTT" DataFormatString="{0:0,0.00}" HeaderText="IMPTT" ReadOnly="True" SortExpression="IMPTT">
                        <HeaderStyle Width="100px" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceZona" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_ZonalxPeriodo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvunAno" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="gvResumMensual" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                    <asp:GridView ID="GVZONA2" class="table table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="CODTRAB" DataSourceID="SqlDataSourceZONAXZONA" Font-Size="X-Small" OnRowDataBound="GVZONA2_RowDataBound" ShowFooter="True">
                        <Columns>
                            <asp:BoundField DataField="CODTRAB" HeaderText="ID" ReadOnly="True" SortExpression="CODTRAB" Visible="False" />
                             <asp:BoundField DataField="APELLIDO" HeaderText="ASESOR - ZONA" ReadOnly="True" SortExpression="APELLIDO" />
                            <asp:BoundField DataField="VIATICO" HeaderText="VIATICO" ReadOnly="True" SortExpression="VIATICO" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle BackColor="#ECFFEC" Width="100px" />
                            <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TECNICO" HeaderText="TECNICO" ReadOnly="True" SortExpression="TECNICO" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle BackColor="#E1F2FB" Width="100px" />
                            <ItemStyle ForeColor="#003366" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPTT" HeaderText="IMP.TT" ReadOnly="True" SortExpression="IMPTT" >
                            <HeaderStyle Width="100px" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceZONAXZONA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_ZonalxPeriodoZona" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="LBLANO2" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="LBLMES2" Name="periodo" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidzona" Name="zona" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
      </div></div>

             </div>
            </div>
         </asp:Panel>
        <asp:Panel ID="panelGrupo4" runat="server">
                
         <div class="row">
             <div class="panel panel-default">
              <div class="panel-heading">4.0.- INF. DE REGISTRO GV: <strong>&nbsp;ASESOR:</strong>&nbsp; <asp:Label ID="lblasesor1" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lblnom1" runat="server"></asp:Label>
                 
                 &nbsp;&nbsp;<strong>IMP.TT:</strong> 
                 <asp:Label ID="lblimpTTAsesor" runat="server" Font-Bold="True"></asp:Label>
                  <asp:Label ID="lblidRendicionSelec" runat="server" Visible="False"></asp:Label>
                  &nbsp;*<asp:Label ID="lbl31IdUnidades" runat="server"></asp:Label>
                 </div>
              <div class="panel-body">

            <div class="col-md-7">
              
                 4.1.- GASTOS POR VIÁTICOS:
                 &nbsp;<div class="table-responsive">
                     <asp:GridView ID="gvGrupoViaticos" runat="server" class="table table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGrupoviaticos" DataKeyNames="IDCATEGORIA" Font-Size="X-Small">
                         <Columns>
                             <asp:BoundField DataField="IDCATEGORIA" HeaderText="IDCATEGORIA" SortExpression="IDCATEGORIA" Visible="False" />
                             <asp:BoundField DataField="UNIDAD" HeaderText="UNIDAD" SortExpression="UNIDAD" >
                             <HeaderStyle Width="100px" />
                             </asp:BoundField>
                             <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                             <asp:BoundField DataField="IMPORTE" HeaderText="IMP. VIÁTICOS" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                             <HeaderStyle ForeColor="#006600" />
                             <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                             </asp:BoundField>
                         </Columns>
                         <EmptyDataTemplate>
                             No registra gastos...
                         </EmptyDataTemplate>
                         <HeaderStyle BackColor="#ECFFEC" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSourceGrupoviaticos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfViaticosAgrupadosXidRend" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblidRendicionSelec" Name="idrendicion" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lbl31IdUnidades" Name="idunidad" PropertyName="Text" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
            <asp:GridView ID="gvDetalleMEs1" class="table table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idRGdetalle" DataSourceID="SqlDataSourceMEsDEt1" Font-Size="XX-Small" OnRowDataBound="gvDetalleMEs1_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="gvDetalleMEs1_SelectedIndexChanged" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="idRGdetalle" HeaderText="idRGdetalle" ReadOnly="True" SortExpression="idRGdetalle" Visible="False" />
                    <asp:BoundField DataField="idRG" HeaderText="idRG" SortExpression="idRG" Visible="False" />
                    <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="DETALLE DE GASTOS" SortExpression="CATEGORIA" />
                    <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="FREGISTRO">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" DataFormatString="{0:0,0}" HeaderText="KMFACT" SortExpression="KMFACT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GALONES" HeaderText="GALONES" SortExpression="GALONES">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NDOC" HeaderText="NDOC" SortExpression="NDOC" Visible="False">
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMP. VIÁTICOS" SortExpression="IMPORTE">
                    <HeaderStyle ForeColor="#006600" Width="100px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    No registra gastos...
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#ECFFEC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceMEsDEt1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfMesDetalle" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvDetMEs1" Name="idRendicion" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="lbl31IdUnidades" Name="idunidad" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
           </div>

            
             </div>
            
            <div class="col-md-5">
                
                 <div class="table-responsive">
                     4.2.-GASTOS TÉCNICOS:&nbsp;<strong>PLACA</strong>:<asp:Label ID="lblnplaca" runat="server"></asp:Label>
                     &nbsp;<asp:Label ID="lblidtransporte1" runat="server" Visible="False"></asp:Label>
                     &nbsp;&nbsp;
                     <asp:Label ID="lblano3" runat="server" Visible="False"></asp:Label>
                     &nbsp;<asp:Label ID="lblmes3" runat="server" Visible="False"></asp:Label>
                     <asp:Label ID="lblidunidad3" runat="server" Visible="False"></asp:Label>
                     <asp:Label ID="lblidasesor3" runat="server" Visible="False"></asp:Label>
                     <asp:GridView ID="gvTecnicos" runat="server" class="table table-info table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceplacaAsesor" Font-Size="X-Small" OnRowDataBound="gvTecnicos_RowDataBound" ShowFooter="True" DataKeyNames="IDSOL" OnSelectedIndexChanged="gvTecnicos_SelectedIndexChanged">
                         <Columns>
                             <asp:TemplateField HeaderText="SOLICITUD" ShowHeader="False">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("SOLICITUD") %>'></asp:LinkButton>
                                 </ItemTemplate>
                             </asp:TemplateField>
                            
                             <asp:BoundField DataField="IDEQUIPO" HeaderText="IDEQUIPO" SortExpression="IDEQUIPO" Visible="False" />
                             <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" Visible="False" />
                             <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False" />
                            <asp:BoundField DataField="IDSOL" HeaderText="IDSOL" SortExpression="IDSOL" Visible="False" />
                             <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" SortExpression="SOLICITUD" Visible="False" />
                             <asp:BoundField DataField="FECHA" HeaderText="F.SOLICITUD" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                             <ItemStyle Font-Size="X-Small" />
                             </asp:BoundField>
                             
                             <asp:BoundField DataField="IMPTT" HeaderText="IMP. TÉCNICO" ReadOnly="True" SortExpression="IMPTT" DataFormatString="{0:0,0.00}" >
                             <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
                             <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EmptyDataTemplate>
                             No registra gastos técnicos...
                         </EmptyDataTemplate>
                         <HeaderStyle BackColor="#E1F2FB" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSourceplacaAsesor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_PlacaAsesor" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblano3" Name="ano" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblmes3" Name="mes" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblidunidad3" Name="idplaca" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblidasesor3" Name="idassesor" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 </div>
             </div>

                  </div>
            </div>

        </div>
             </asp:Panel>
         
    </asp:Panel>

    
</asp:Content>
