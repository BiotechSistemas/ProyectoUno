<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/VentasResponsive.Master" AutoEventWireup="true" CodeBehind="ProyectadoEjecutado.aspx.cs" Inherits="biotech.VentasRTC.ProyectadoEjecutado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
		<div class="row-fluid">
			<div class="col-md-12">
			    <h2><span class="glyphicon glyphicon-edit"></span> PROYECTADO - EJECUTADO<asp:Label ID="lblmax" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblidvendedor" runat="server" Visible="False" ></asp:Label>
                    <asp:Label ID="lblnumMes" runat="server" Visible="False" ></asp:Label>
                    <asp:Label ID="lblano" runat="server" Visible="False" >2018</asp:Label>
                    <asp:Label ID="lblzona" runat="server" Visible="False" ></asp:Label>
                </h2>
                <hr />
            </div>

            <div class="row">
            <div class="col-md-12">

                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcemes" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="100%" RepeatDirection="Horizontal">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDataSourcemes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes where EstadoProyectado = 1">
                </asp:SqlDataSource>

            </div>

                 <div class="col-md-12">
                     <div class="panel panel-default">
    <div class="panel-heading"> RESUMEN ZONAL:<small><asp:Label ID="lblmes1" runat="server"></asp:Label></small>
                         </div>
    
  
                     <div class="table-responsive">
                        
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped" DataSourceID="SqlDataSourceGeneral" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="PRODUCTO1" BorderStyle="None">
                                     <Columns>
                                         <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False" Visible="False">
                                             <ItemTemplate>
                                                 <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO1") %>' ForeColor="#006600"></asp:LinkButton>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:BoundField DataField="PRODUCTO1" HeaderText="PRODUCTO" SortExpression="PRODUCTO1" />
                                         <asp:BoundField DataField="PROYECTADO" HeaderText="PROYECTADO" ReadOnly="True" SortExpression="PROYECTADO">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="VENDIDO" HeaderText="EJECUTADO" SortExpression="VENDIDO" ReadOnly="True" >
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="PORVENDER" HeaderText="DIFERENCIA" ReadOnly="True" SortExpression="PORVENDER">
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                     </Columns>
                                     <EmptyDataTemplate>
                                         No se encontraron registros...
                                     </EmptyDataTemplate>
                                     <HeaderStyle BackColor="WhiteSmoke" />
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSourceGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_Comparativo" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblzona" Name="vendedor" PropertyName="Text" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>

                              <asp:LinkButton ID="lbt_BIO" runat="server" ForeColor="#006600"  data-toggle="modal" data-target="#myModal">BIOTECH ICA - Ver ventas</asp:LinkButton>
   
                     </div>
                         </div>
                 </div>

            </div>
           
            <div class="row">
                 <div class="col-md-12">
                <div class="panel panel-default">
    <div class="panel-heading">PROYECTADO PERSONAL:</div>

   <div class="panel-body">
 
            <div class="col-md-6">
<div class="table-responsive">
    
                              <asp:GridView ID="gvAsesores" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVENDEDORES" OnRowDataBound="gvAsesores_RowDataBound" GridLines="None" DataKeyNames="PRODUCTO1" OnSelectedIndexChanged="gvAsesores_SelectedIndexChanged">

                                  <Columns>
                                      <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("PRODUCTO1") %>'></asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="PRODUCTO1" HeaderText="PRODUCTO" SortExpression="PRODUCTO1" Visible="False" />
                                      <asp:BoundField DataField="PROYECTADO" HeaderText="PROYECT" ReadOnly="True" SortExpression="PROYECTADO" >
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="VENDIDO" HeaderText="EJECUT" SortExpression="VENDIDO" ReadOnly="True" >
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="PORVENDER" HeaderText="DIFEREN" ReadOnly="True" SortExpression="PORVENDER" >
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                  </Columns>

                                  <EmptyDataTemplate>
                                      Seleccionar asesor....
                                  </EmptyDataTemplate>

                                  <HeaderStyle BackColor="WhiteSmoke" />

                              </asp:GridView>


                              <asp:SqlDataSource ID="SqlDataSourceVENDEDORES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_Comparativo" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                                  </SelectParameters>
                              </asp:SqlDataSource>


</div>
            </div>
            <div class="col-md-6">
            

                   <div class="table-responsive">
                              DETALLE PRODUCTO: <asp:Label ID="lblproducto11" runat="server" style="font-weight: 700"></asp:Label>
                              <asp:GridView ID="gvdistribucionProyectado" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceXPRODUCTOvENDEDOR" OnRowDataBound="gvdistribucionProyectado_RowDataBound" ShowFooter="True" Font-Size="X-Small" BorderStyle="None" GridLines="Horizontal">
                                <Columns>
                                    <asp:BoundField DataField="PROYECTADO" HeaderText="PROYECTADO" SortExpression="PROYECTADO" ReadOnly="True" />
                                    <asp:BoundField DataField="CLIENTEEJECUTADO" HeaderText="CLIENTEEJECUTADO" SortExpression="CLIENTEEJECUTADO" ReadOnly="True" Visible="False" />
                                    <asp:BoundField DataField="CLIENTE1Y2" HeaderText="CLIENTE" SortExpression="CLIENTE1Y2" ReadOnly="True" />
                                    <asp:BoundField DataField="LPROYECTADO" HeaderText="PROY" SortExpression="LPROYECTADO" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LEJECUTADO" HeaderText="EJEC" SortExpression="LEJECUTADO" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DIFERENCIA" HeaderText="DIF" SortExpression="DIFERENCIA" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                  <EmptyDataTemplate>
                                      Indicar asesor / producto
                                  </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                 
                            <asp:SqlDataSource ID="SqlDataSourceXPRODUCTOvENDEDOR" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectadoXProducto" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblproducto11" Name="producto" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

              </div>

            </div>





    </div></div>
                     </div>
            </div>
        </div>


          <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">VENTAS REALIZADAS: <small>
              <asp:Label ID="Label1" runat="server" Text="OFICINA BIOTECH"></asp:Label></small></h4>
        </div>
        <div class="modal-body">
         

              <asp:GridView ID="gvxVendedor" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceXVENT">
                             <Columns>
                                 <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                 <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" >
                                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                 </asp:BoundField>
                             </Columns>
                             <EmptyDataTemplate>
                                 nO HAY
                             </EmptyDataTemplate>
                             <HeaderStyle BackColor="WhiteSmoke" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSourceXVENT" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectadoLitrosxVendedor" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:Parameter DefaultValue="BIO" Name="idvendedor" Type="String" />
                                 <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


       


</asp:Content>
