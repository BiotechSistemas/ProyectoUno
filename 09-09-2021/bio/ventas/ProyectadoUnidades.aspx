<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ProyectadoUnidades.aspx.cs" Inherits="biotech.bio.ventas.ProyectadoUnidades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="row">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i> PROYECTADO-COSTOS:<asp:Label ID="lbldescripmes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblfebrero" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidvendedor" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lbloperacion" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblIdMes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblano" runat="server">2018</asp:Label>
                            -<asp:Label ID="lblnumMes" runat="server"></asp:Label>
                        </h3>
                            
                        <ol class="breadcrumb">
      <li>
          <asp:LinkButton ID="lbprincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx">Principal</asp:LinkButton>
                                   </li>
                            <li>
          <asp:LinkButton ID="lbProyectado" runat="server"  PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">Proyectado-Costo</asp:LinkButton>
                                   </li>
                            <li>
          <asp:LinkButton ID="lbproyectadoEjecutado" runat="server"  PostBackUrl="~/bio/ventas/proyectado/ProyecAtencion.aspx">Proyectado-Ejecutado</asp:LinkButton>
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
    



    <div class="col-md-3 col-xs-12">
             <h4> <asp:RadioButtonList ID="rblano" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano"  RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblano_SelectedIndexChanged" Width="100%" ></asp:RadioButtonList>
                 </h4>
                <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="
select idano,ano from tb_ano where estado = 1 "></asp:SqlDataSource>
                </div>
        <div class="col-md-9 col-xs-12" >
            <div class="row">
            <div class="btn-group btn-group-justified">
  <asp:Button ID="btGeneral" runat="server" Text="GENERAL" OnClick="btGeneral_Click" Width="40%" Height="40px"/>
  <asp:Button ID="btIca"  runat="server" Text="ICA" OnClick="btIca_Click" Width="20%" Height="40px" />
 <asp:Button ID="btPiura"  runat="server" Text="PIURA" OnClick="btPiura_Click" Width="20%" Height="40px" />
 <asp:Button ID="btChiclayo"  runat="server" Text="CHICLAYO"  Width="20%" Height="40px" OnClick="btChiclayo_Click" />
</div>
        </div>   

                        
        </div>

    
      
            
      
                
        </div>


    </div>



                     <asp:Panel ID="PanelMES" runat="server">
                  <div class="form-group row">
                        <div class="col-md-12">
                            <asp:SqlDataSource ID="SqlDataSourceMES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [abrev], [idmes] FROM [tb_mes]"></asp:SqlDataSource>
                            <asp:RadioButtonList ID="RADIOBTMES" runat="server" DataSourceID="SqlDataSourceMES" DataTextField="abrev" DataValueField="idmes" RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="RADIOBTMES_SelectedIndexChanged"></asp:RadioButtonList>
                            </div>
                      </div>

                    <div class="form-group row">
                        <div class="col-md-12">


                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%" Visible="False">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes] where EstadoProyectado=1">
                            </asp:SqlDataSource>


                        </div>
                    </div>

                </asp:Panel>
        </div>

              <%--  <asp:Panel ID="PanelMES" runat="server">
                    <div class="form-group row">
                        <div class="col-md-12">


                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes] where EstadoProyectado=1">
                            </asp:SqlDataSource>


                        </div>
                    </div>

                </asp:Panel>--%>


                <asp:Panel ID="Panel1" runat="server">

                    

                     <div class="form-group row">
                        <div class="col-md-6">

                            <div class="panel panel-default">
  <div class="panel-heading">





                            <i class="glyphicon glyphicon-edit"></i> RESUMEN:
                             <asp:Label ID="lblzonaTitulo1" runat="server" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="lblmes1" runat="server"></asp:Label>
                             <asp:Label ID="lblvendedor1" runat="server" Visible="False"></asp:Label>
                            <small>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1">SEGÚN LITROS</asp:LinkButton>
                             &nbsp;|&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">SEGÚN PRESENTACIONES</asp:LinkButton></small>
                             &nbsp;
                            </div>
                            
                            <asp:Panel ID="PanelGrupo1Listros" runat="server">
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-condensed table-bordered table-hover" DataKeyNames="producto" DataSourceID="SqlDataSourcemesVentas" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                                     <Columns>
                                         <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("producto") %>'></asp:LinkButton>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:BoundField DataField="producto" HeaderText="producto" SortExpression="producto" Visible="False" />
                                         <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="MED" HeaderText="MED" SortExpression="MED" Visible="False" />
                                         <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                     </Columns>
                                     <EmptyDataTemplate>
                                         No se encontraron registros...
                                     </EmptyDataTemplate>
                                     <HeaderStyle BackColor="WhiteSmoke" />
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSourcemesVentas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_litrosTotales10" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblidvendedor" Name="estado" PropertyName="Text" Type="String" />
                                         <asp:ControlParameter ControlID="lblnumMes" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                             </asp:Panel>
                             &nbsp;<asp:Panel ID="PanelGrupo2Presentacion" runat="server">
                                <asp:GridView ID="gvGrupo2Presentacion" runat="server" class="table table-condensed table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGrupo2" OnRowDataBound="gvGrupo2Presentacion_RowDataBound" ShowFooter="True">

                                    <Columns>
                                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                        <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="MED" HeaderText="MED" SortExpression="MED" Visible="False" />
                                        <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>

                                    <HeaderStyle BackColor="WhiteSmoke" />

                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSourceGrupo2" runat="server"  ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_litrosTotales20" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                   
                                        <asp:ControlParameter ControlID="lblidvendedor" Name="estado" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="lblnumMes" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
                        </div></div>
                          <div class="col-md-4 col-md-offset-2">
                              <asp:Label ID="lblvendedor2" runat="server"></asp:Label>
                              &nbsp;RESUMEN:
                              <asp:Label ID="lblmes2" runat="server"></asp:Label>
                              &nbsp;<asp:Label ID="lblzonatitulo2" runat="server"></asp:Label>
                              <asp:GridView ID="GridView2" runat="server" class="table table-condensed table-hover" AutoGenerateColumns="False" GridLines="Horizontal" DataKeyNames="idvendedor" DataSourceID="SqlDataSourceResumen" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                  <Columns>
                                      <asp:TemplateField HeaderText="ASESOR" ShowHeader="False">
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("ASESOR") %>'></asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="idvendedor" HeaderText="idvendedor" SortExpression="idvendedor" Visible="False" />
                                      <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False" />
                                      <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
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


                              <asp:Panel ID="PanelaSesorSelec" runat="server">
                                   Asesor:
                              <asp:Label ID="lblidAsesorSeleccionado" runat="server"></asp:Label>


                              <asp:GridView ID="gvAsesores" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAse2" ShowFooter="True" OnRowDataBound="gvAsesores_RowDataBound" GridLines="None">

                                  <Columns>
                                      <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                                      <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" >
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="MED" HeaderText="MED" SortExpression="MED" Visible="False" />
                                      <asp:BoundField DataField="SUBTT" HeaderText="IMPORTE" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                  </Columns>

                                  <HeaderStyle BackColor="WhiteSmoke" />

                              </asp:GridView>


                              <asp:SqlDataSource ID="SqlDataSourceAse2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_litrosTotales10" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblidAsesorSeleccionado" Name="estado" PropertyName="Text" Type="String" />
                                      <asp:ControlParameter ControlID="lblnumMes" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                              </asp:Panel>


                             


                        </div>
                         <%-- <div class="col-md-4">
                              DIFERENCIA
                        </div>--%>
                     </div>

                    

                    <asp:Panel ID="pproducto" runat="server">
                     <div class="form-group row">
                        <div class="col-md-6">
                            &nbsp;Distribución del producto:<asp:Label ID="lblproducto1" runat="server"></asp:Label>
                            &nbsp;<asp:GridView ID="gvdistribucionProyectado" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDistribucionProyectado" OnRowDataBound="gvdistribucionProyectado_RowDataBound" ShowFooter="True" Font-Size="XX-Small">
                                <Columns>
                                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="PRODUC" HeaderText="PRODUCT" SortExpression="PRODUC" />
                                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENT" SortExpression="PRESENTACION" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CANTTT" HeaderText="TOTAL" SortExpression="CANTTT" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MED" SortExpression="MED" HeaderText="MED" Visible="False">
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceDistribucionProyectado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectdo_litrosTTCliente10" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidvendedor" Name="estado" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblproducto1" Name="producto" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div class="col-md-6">
                            &nbsp;<asp:Label ID="lblproducto2" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                        </div>
                    </div>
                    </asp:Panel>



                     <asp:Panel ID="PanelCliente" runat="server">
                          <div class="form-group row">
                            <div class="col-md-12">
                                Resumen zonal por clientes:<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceVend" DataTextField="apellidos" DataValueField="codTrabajador" RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Size="X-Small">
                                </asp:RadioButtonList>
                                <asp:SqlDataSource ID="SqlDataSourceVend" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="asesores_xIdZona" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidZonaNum" Name="idzona" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="lblidZonaNum" runat="server" Text="0" Visible="False"></asp:Label>
                                <asp:GridView ID="gvCliente" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCliente" Font-Size="XX-Small" DataKeyNames="CODASESOR,idcliente" OnRowDataBound="gvCliente_RowDataBound" ShowFooter="True" GridLines="None" AllowSorting="True">
                                    <Columns>
                                        <asp:BoundField DataField="CODASESOR" HeaderText="COD" SortExpression="CODASESOR" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                        <asp:BoundField DataField="PRODUC" HeaderText="PRODUCTO" SortExpression="PRODUC" />
                                        <asp:BoundField DataField="CANTTT" HeaderText="LITROS" ReadOnly="True" SortExpression="CANTTT" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="SUBTT" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra proyectado....
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectdo_litrosTTClienteVENDEDOR" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidAsesorSeleccionado" Name="idvendedor" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                          </div>
                     </asp:Panel>
                </asp:Panel>
        </div>


</asp:Content>
