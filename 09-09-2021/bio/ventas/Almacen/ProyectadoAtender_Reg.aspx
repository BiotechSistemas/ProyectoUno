<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ProyectadoAtender_Reg.aspx.cs" Inherits="biotech.bio.ventas.Almacen.ProyectadoAtender_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>--%>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />--%>
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

    
    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
        }
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> PROYECTADO ATENDIDO<asp:Label ID="lbldescripmes" runat="server"></asp:Label>
                <asp:Label ID="lblnumMes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidvendedor" runat="server"></asp:Label>
                <asp:Label ID="lblano" runat="server" Visible="False">2018</asp:Label>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </h2>

         <ol class="breadcrumb">
      <li>
         Principal
      </li>
      
  
    </ol> 
        </div>

    <div class="row">
        <div class="btn-group btn-group-justified">
                    <asp:Button ID="btGeneral" class="btn-group btn btn-default" runat="server" Text="GENERAL" OnClick="btGeneral_Click" Width="40%"/>
                    <asp:Button ID="btIca" class="btn-group btn btn-default"  runat="server" Text="ICA" OnClick="btIca_Click" Width="30%" />
                    <asp:Button ID="btPiura" class="btn-group btn btn-default"  runat="server" Text="PIURA" OnClick="btPiura_Click" Width="30%" />
                </div>
    </div>
    <div class="row">
    
                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes] where EstadoProyectado=1">
                            </asp:SqlDataSource>

    </div>


    <div class="row">
        <div class="col-md-6 col-xs-12" >
           
        <div class="panel panel-success">
    <div class="panel-heading"><strong>RESUMEN GENERAL/ZONAL:</strong> <asp:Label ID="lblzonaTitulo1" runat="server"></asp:Label>
                             &nbsp;-
                             <asp:Label ID="lblmes1" runat="server"></asp:Label>
                             <asp:Label ID="lblvendedor1" runat="server" Visible="False"></asp:Label></div>
   
                             
                            <asp:Panel ID="PanelGrupo1Listros" runat="server">
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped" DataSourceID="SqlDataSourceGeneral" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="PRODUCTO1" BorderStyle="None">
                                     <Columns>
                                         <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO1") %>' ForeColor="#006600"></asp:LinkButton>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:BoundField DataField="PRODUCTO1" HeaderText="PRODUCTO1" SortExpression="PRODUCTO1" Visible="False" />
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
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSourceGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_Comparativo" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                             </asp:Panel>
                 </div>
        
        </div>
        <div class="col-md-6 col-xs-12" >

            VENTAS REALIZADAS <strong>(EJECUTADO)</strong>:
            <asp:Label ID="lblProducto2" runat="server"></asp:Label>

            <asp:GridView ID="gvProductoVendido" runat="server" class="table table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVend" AllowPaging="True" PageSize="18">
                <Columns>
                    <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTIDAD" HeaderText="UNID." SortExpression="CANTIDAD">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TTCANTIDAD" HeaderText="TTCANTIDAD" ReadOnly="True" SortExpression="TTCANTIDAD" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    Seleccionar producto...
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceVend" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_COMPRARGRUPO20Distribucion" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblnumMes" Name="idperidodo" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="producto" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>


    </div>

     <div class="row">
         <div class="col-md-12" >
             <strong>VENTAS PROYECTADAS: <asp:Label ID="lblProducto" runat="server"></asp:Label>
             </strong>
         <asp:GridView ID="gvProdctosAtend" runat="server" class="table table-striped" AutoGenerateColumns="False" DataKeyNames="CODPROYECDET" DataSourceID="SqlDataSourceproved" Width="100%" GridLines="None">
             <Columns>
                 <asp:BoundField DataField="CODPROYECDET" HeaderText="CODPROYECDET" ReadOnly="True" SortExpression="CODPROYECDET" Visible="False" />
                 <asp:BoundField DataField="idcliente" HeaderText="IDCLIENTE" SortExpression="idcliente" Visible="False" />
                 <asp:BoundField DataField="idvendedor" HeaderText="ASESOR" ReadOnly="True" SortExpression="idvendedor" />
                 <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                 <asp:BoundField DataField="PRODUC" HeaderText="PRODUC" ReadOnly="True" SortExpression="PRODUC" Visible="False" />
                 <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENTACION" ReadOnly="True" SortExpression="PRESENTACION" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="UND" HeaderText="UND" ReadOnly="True" SortExpression="UND" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CANTTT" HeaderText="TT.LITROS" ReadOnly="True" SortExpression="CANTTT" Visible="False" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                  <asp:BoundField DataField="ATENDIDO2" HeaderText="UND-ATENDIDAS" ReadOnly="True" SortExpression="ATENDIDO" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" />
                 </asp:BoundField>
                  <asp:BoundField DataField="XATENDER" HeaderText="POR ATENDER" ReadOnly="True"   SortExpression="XATENDER" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#990000" />
                 </asp:BoundField>

                 <asp:ImageField DataImageUrlField="EST" ReadOnly="True" DataImageUrlFormatString="~/images/apro{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                 <asp:BoundField DataField="ATENDIDO" HeaderText="ATENDIDAS" SortExpression="ATENDIDO" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="EST" HeaderText="EST" ReadOnly="True" SortExpression="EST" Visible="False"  >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>

                 <asp:CommandField ButtonType="Button" ShowEditButton="True"  ShowSelectButton="True" />

             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSourceproved" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_productoCliente" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_ProyectadoDetalle SET canttendida = @ATENDIDO WHERE (iddetalleProyectado = @CODPROYECDET)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblidvendedor" Name="zona" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="GridView1" Name="producto" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
             <UpdateParameters>
               

                 <asp:Parameter Name="ATENDIDO" Type="Int32" />
                 <asp:Parameter Name="CODPROYECDET" Type="Int32" />
                 

             </UpdateParameters>
         </asp:SqlDataSource>
         </div>
         </div>





                              <asp:LinkButton ID="lbt_BIO" runat="server" ForeColor="#006600"  data-toggle="modal" data-target="#myModal">BIOTECH ICA - Ver ventas</asp:LinkButton>
   





    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />


    
      <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
        <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional"> 
      <ContentTemplate> 

              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">VENTAS REALIZADAS: <small>
                      <asp:Label ID="Label1" runat="server" Text="OFICINA BIOTECH"></asp:Label></small></h4>
                </div>
                <div class="modal-body">
                 
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>

           </ContentTemplate> 
     </asp:UpdatePanel> 
      
    </div>
  </div>

     <asp:GridView ID="gvProyExistencia" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceExistencia" GridLines="None">
                                     <Columns>
                                         <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False" />
                                         <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                                         </asp:BoundField>
                                         <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                                         <asp:BoundField DataField="UND" HeaderText="UND" ReadOnly="True" SortExpression="UND">
                                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="ATENDIDO" HeaderText="ATENDIDO" ReadOnly="True" SortExpression="ATENDIDO">
                                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="DIFERENCIA" HeaderText="DIFERENCIA" ReadOnly="True" SortExpression="DIFERENCIA">
                                         <ItemStyle BackColor="#F9F9F9" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="EXISTENCIA" HeaderText="EXISTENCIA" SortExpression="EXISTENCIA">
                                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="PORREPOSICION" HeaderText="PORREPOSICION" ReadOnly="True" SortExpression="PORREPOSICION">
                                         <ItemStyle Font-Bold="True" ForeColor="Maroon" HorizontalAlign="Center" VerticalAlign="Middle" />
                                         </asp:BoundField>
                                     </Columns>
                                     <HeaderStyle BackColor="WhiteSmoke" />
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSourceExistencia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectadoExistencia" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblidvendedor" Name="zona" PropertyName="Text" Type="String" />
                                         <asp:ControlParameter ControlID="lblnumMes" Name="periodo" PropertyName="Text" Type="Int32" />
                                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                     </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
