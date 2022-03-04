<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadesRegistrar.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadesRegistrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #800000;
        }

       
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 40px;
  height: 40px;
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 300px;
  height: 300px;
}

/**THE SAME CSS IS USED IN ALL 3 DEMOS**/    
/**gallery margins**/  
ul.gallery{    
margin-left: 3vw;     
margin-right:3vw;  
}    

.zoom {      
-webkit-transition: all 0.35s ease-in-out;    
-moz-transition: all 0.35s ease-in-out;    
transition: all 0.35s ease-in-out;     
cursor: -webkit-zoom-in;      
cursor: -moz-zoom-in;      
cursor: zoom-in;  
}     

.zoom:hover,  
.zoom:active,   
.zoom:focus {
/**adjust scale to desired size, 
add browser prefixes**/
-ms-transform: scale(2.5);    
-moz-transform: scale(2.5);  
-webkit-transform: scale(2.5);  
-o-transform: scale(2.5);  
transform: scale(2.5);    
position:relative;      
z-index:100;  
}

/**To keep upscaled images visible on mobile, 
increase left & right margins a bit**/  
@media only screen and (max-width: 768px) {   
ul.gallery {      
margin-left: 15vw;       
margin-right: 15vw;
}

/**TIP: Easy escape for touch screens,
give gallery's parent container a cursor: pointer.**/
.DivName {cursor: pointer}
}

        .auto-style2 {
            width: 700px;
        }

    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <div class="col-lg-12">
                    <h1 class="page-header"><i class="fa fa-car"></i> Registro de unidades:<asp:Label ID="lblplacaprincipal" runat="server"></asp:Label>
                    </h1>
                </div>
        </div>
    <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="lbtActualizar_Click">Actualizar</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtSolicitud1" runat="server" PostBackUrl="~/bio/ventas/Unidades/SolicitudListar.aspx">Solic.Técnica</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtUnidadesLista1" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx">Unid.Vehiculares</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtUnidadesAmin" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesRegistrar.aspx">Admin. Unidades</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtResumen1" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen</asp:LinkButton>
                        </li>
                            <%--<li>
                        <asp:LinkButton ID="lbtNuevaSolicitud1" runat="server" OnClick="lbtNuevaSolicitud1_Click">Nueva Solicitud</asp:LinkButton>
                        </li>--%>                        
                        <%-- <div class="col-lg-6">--%>
                    </ol>
            </div>
    <div class="row">
                <div class="col-lg-12">
                  
                               <%-- <div class="col-lg-6">--%>

                                      <div class="panel panel-success">
                        <div class="panel-heading">
                            Detalle de Unidades: 
                            <asp:Label ID="lblidunidad" runat="server" Text="1" Visible="False"></asp:Label>
                        &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="lblFechaRegistro" runat="server"></asp:Label>
                        </div>
                        <div class="panel-body">
  <asp:Panel ID="Panel1" runat="server">
                            <div class="row">


    <div class="form-row">
        <div class="form-group col-md-2">
          <label for="txtplaca">Placa:</label>
            <asp:TextBox ID="txtplaca" class="form-control" runat="server"></asp:TextBox>   
        </div>
       
 
          <div class="form-group col-md-2">
            <label for="ddlmarca">Marca:</label>
              <asp:DropDownList ID="ddlmarca"  class="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="marca" DataValueField="id"></asp:DropDownList> 
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from [dbo].[tb_PlanillaEquiposMarca] where idtipo=3"></asp:SqlDataSource>
          </div>
          <div class="form-group col-md-2">
            <label for="txtmodelos">Modelo:</label>
              <asp:TextBox ID="txtmodelos" class="form-control" runat="server"></asp:TextBox> 
          </div>
  
        <div class="form-group col-md-3">
          <label for="txtmotor">Motor:</label>
            <asp:TextBox ID="txtmotor" class="form-control" runat="server"></asp:TextBox>
        </div>
 
        <div class="form-group col-md-3">
         <label for="txtchasis">Chasis:</label>
         <asp:TextBox ID="txtchasis" class="form-control" runat="server"></asp:TextBox>
        </div>


  </div>

  <div class="form-row">
        <div class="form-group col-md-3">
          <label for="txtllantasaro">Llantas/Aro:</label>
         <asp:TextBox ID="txtllantasaro" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
         <label for="ddlcombustible">Combustible:</label>
            <asp:DropDownList ID="ddlcombustible" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="combustible" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposCombustible]"></asp:SqlDataSource>
        </div>
       <div class="form-group col-md-1">
          <label for="txtano">Año:</label>
         <asp:TextBox ID="txtano" class="form-control" required type="number"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-2">
          <label for="ddladquisicion">Adquisiciòn:</label>
            <asp:DropDownList ID="ddladquisicion" class="form-control"  runat="server" DataSourceID="SqlDataSource3" DataTextField="origen" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposOrigen]"></asp:SqlDataSource>
        </div>
      <div class="form-group col-md-3">
          <label for="txtempresa">Titular:</label>
          <asp:TextBox ID="txttitular" class="form-control" runat="server"></asp:TextBox>
          
        </div>
  </div>

 <div class="form-row">
        
        <div class="form-group col-md-2">
         <label for="txtkilometraje">Reg. kilometraje:</label>
          <asp:TextBox ID="txtkilometraje" class="form-control" required type="number" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-2">
          <label for="txtrecorridomantenimiento">Mantenimiento:</label>
         <asp:TextBox ID="txtrecorridomantenimiento" class="form-control" required type="number"  runat="server"></asp:TextBox>
        </div>
      <div class="form-group col-md-3">
      <label for="ddldisponibilidad">Estado:</label>
          <asp:DropDownList ID="ddldisponibilidad" class="form-control" runat="server" DataSourceID="SqlDataSource4" DataTextField="estado" DataValueField="id"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposDisponibilidad]"></asp:SqlDataSource>
    </div>
  </div>

    <div class="form-row">
      <div class="form-group col-md-12">
          <label for="txtdescripcion">Descripciòn:</label>
          <asp:TextBox ID="txtdescripcion" Style="text-transform: uppercase" class="form-control" runat="server"></asp:TextBox>
        </div>
  </div>
       <br />

                                   
                                </div>
      </asp:Panel>
              <div class="form-row">
 
                  <asp:Button ID="btNuevo" CssClass="btn btn-success col-md-1" runat="server" Text="Nuevo" OnClick="btNuevo_Click" />
                  <asp:Button ID="btRegistrar"  CssClass="btn btn-success col-md-1" runat="server" Text="Registrar" OnClick="btRegistrar_Click" />
                  <asp:Button ID="btEditar"  CssClass="btn btn-warning col-md-1"  runat="server" Text="Editar" OnClick="btEditar_Click" />
                 
                 
                  <asp:LinkButton ID="lbtCancelar"  CssClass="btn btn-default col-md-1" runat="server" OnClick="lbtCancelar_Click">Cancelar</asp:LinkButton>

                  <asp:DropDownList ID="ddlUnidad" CssClass="form-control col-md-2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Nombre" DataValueField="IdEquipo" OnSelectedIndexChanged="ddlUnidad_SelectedIndexChanged" Width="200px">
                  </asp:DropDownList>
                  <asp:LinkButton ID="lbtActualizar" CssClass="btn btn-default col-md-1" runat="server" OnClick="lbtActualizar_Click">Actualizar</asp:LinkButton>

                  <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select IdEquipo, Nombre from [dbo].[tb_PlanillaEquipos] where idTipo = 3"></asp:SqlDataSource>
                  <asp:Label ID="lblmensaje" runat="server" ForeColor="Maroon"></asp:Label>
    </div>                  <!-- /.col-lg-6 (nested) -->

                     </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->

                              
                                <!-- /.col-lg-6 (nested) -->
                           
                </div>
                <!-- /.col-lg-12 -->
           
     <div class="row">
         <div class="col-md-12">
         <table class="auto-style2">
             <tr>
                 <td WIDTH="200"><strong>Captura N°1:</strong></td>
                 <td WIDTH="150">
                     &nbsp;</td>
                 <td  WIDTH="200">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td WIDTH="90">
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                     </td>
                 <td WIDTH="80">
                     <asp:LinkButton CssClass="btn btn-default" ID="lbtn1" runat="server" Width="120px" OnClick="lbtn1_Click">Guardar</asp:LinkButton>
                 </td>
                 <td  WIDTH="80" class="text-right">
                     <asp:Label ID="lbln1" runat="server"></asp:Label>
                     <asp:LinkButton ID="lbti1" runat="server"></asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td><strong>Captura N°2:</strong></td>
                 <td>
                     &nbsp;</td>
                 <td class="text-right">&nbsp;</td>
             </tr>
             <tr>
                 <td>
                     <asp:FileUpload ID="FileUpload2" runat="server" />
                     </td>
                 <td>
                     <asp:LinkButton CssClass="btn btn-default" ID="lbtn2" runat="server" Width="120px" OnClick="lbtn2_Click">Guardar</asp:LinkButton>
                     </td>
                 <td class="text-right">
                     <asp:Label ID="lbln2" runat="server"></asp:Label>
                     <asp:LinkButton ID="lbti2" runat="server"></asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td><strong>Captura N°3:</strong></td>
                 <td>
                     &nbsp;</td>
                 <td class="text-right">&nbsp;</td>
             </tr>
             <tr>
                 <td>
                     <asp:FileUpload ID="FileUpload3" runat="server" />
                     </td>
                 <td>
                     <asp:LinkButton CssClass="btn btn-default" ID="lbtn3" runat="server" Width="120px" OnClick="lbtn3_Click">Guardar</asp:LinkButton>
                     </td>
                 <td class="text-right">
                     <asp:Label ID="lbln3" runat="server"></asp:Label>
                     <asp:LinkButton ID="lbti3" runat="server"></asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td><strong>Captura N°4:</strong></td>
                 <td>
                     &nbsp;</td>
                 <td class="text-right">&nbsp;</td>
             </tr>
             <tr>
                 <td>
                     <asp:FileUpload ID="FileUpload4" runat="server" />
                     </td>
                 <td>
                     <asp:LinkButton CssClass="btn btn-default" ID="lbtn4" runat="server" Width="120px" OnClick="lbtn4_Click">Guardar</asp:LinkButton>
                     </td>
                 <td class="text-right">
                     <asp:Label ID="lbln4" runat="server"></asp:Label>
                     <asp:LinkButton ID="lbti4" runat="server"></asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td colspan="3">
                     <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                 </td>
             </tr>
         </table>
         </div>
         </div>

    <br />
    <br />




    <div class="panel panel-success">
                        <div class="panel-heading">
                            Servicios registrados:
                            
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Activos</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">De baja</asp:LinkButton>
                            
                        &nbsp;<asp:Label ID="lblestado" runat="server" Visible="False">1</asp:Label>
                            
                        </div>
                       
                            <asp:GridView ID="gvunidarServicios" class="table table-condensed table-bordered  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idServicios" DataSourceID="SqlDataSourceServicios" OnRowCommand="gvunidarServicios_RowCommand" OnSelectedIndexChanged="gvunidarServicios_SelectedIndexChanged" OnRowDeleted="gvunidarServicios_RowDeleted" GridLines="None">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" >
                                    <ControlStyle Height="20px" Width="20px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                    </asp:CommandField>
            
                                    <asp:BoundField DataField="idServicios" HeaderText="idServicios" ReadOnly="True" SortExpression="idServicios" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="EMPRESA" HeaderText="EMPRESA" SortExpression="EMPRESA" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCIÓN" SortExpression="DESCRIPCION" />
                                    <asp:BoundField DataField="FECHA_E" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISIÓN" SortExpression="FECHA_E">
                                    <HeaderStyle Width="60px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FECHA_V" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FECHA_V">
                                    <HeaderStyle Width="60px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                   <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="ESTADO">
                                    <ControlStyle Height="18px" Width="18px" />
                                    <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     </asp:ImageField>


                                    <asp:ButtonField CommandName="baja" HeaderText="" ShowHeader="True" Text="Baja" >        
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>

                                     <asp:ButtonField CommandName="alta" HeaderText="" ShowHeader="True" Text="Alta" >        
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>
            

                                </Columns>
                                <EmptyDataTemplate>
                                    <span class="auto-style1">No registra servicios...!</span>
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:Label ID="lblmensaje2" runat="server" ForeColor="Maroon"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceServicios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposServicios] WHERE ([idEquipo] = @idEquipo) and (ESTADO = @estado) and grupo=10 ORDER BY idServicios desc " DeleteCommand="DELETE tb_PlanillaEquiposServicios WHERE idServicios = @idServicios">
                                <DeleteParameters>
                                    <asp:Parameter Name="idServicios" />
                                </DeleteParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidunidad" Name="idEquipo" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblestado" Name="estado" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                     <div class="panel-body">
                            <div class="row">

                                 <div class="form-row">
                                        <div class="form-group col-md-2">
                                          <label for="txtplaca">Servicio:</label>
                                            <asp:TextBox ID="txtservicio" Style="text-transform: uppercase" class="form-control input-sm" runat="server"></asp:TextBox>   
                                        </div>
                                        <div class="form-group col-md-5">
                                          <label for="txtplaca">Descripción:</label>
                                            <asp:TextBox ID="txtdescripServ" Style="text-transform: uppercase" class="form-control input-sm" runat="server"></asp:TextBox>   
                                        </div>
                                        <div class="form-group col-md-2">
                                          <label for="txtplaca">F.Emisión:</label>
                                            <asp:TextBox ID="txtfemision" class="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>   
                                        </div>
                                        <div class="form-group col-md-2">
                                          <label for="txtplaca">F.Vencimiento:</label>
                                            <asp:TextBox ID="txtfvencimiento" class="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>   
                                        </div>
                                       
                                            <asp:LinkButton ID="lbtRegServicio" CssClass="btn btn-success" runat="server" OnClick="lbtRegServicio_Click"> + </asp:LinkButton>
                                      
                                  </div>
       

                             </div>
                       </div>
        </div>
        



     <div class="panel panel-info">
                        <div class="panel-heading">
                            Accesorios registrados:
                            
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Activos</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">De baja</asp:LinkButton>
                            
                        &nbsp;<asp:Label ID="lblAccesorioEstado" runat="server" Visible="False">1</asp:Label>
                            
                        </div>
          
                                       
                       
                                        <asp:Label ID="lblmensaje3" runat="server" ForeColor="Maroon"></asp:Label>
                                       
                       
                            <asp:GridView ID="gvAccesorios" class="table table-condensed table-bordered  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idServicios" DataSourceID="SqlDataSourceAccesorios" OnRowCommand="gvAccesorios_RowCommand" OnSelectedIndexChanged="gvAccesorios_SelectedIndexChanged" OnRowDeleted="gvAccesorios_RowDeleted" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="15">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" >
                                    <ControlStyle Height="20px" Width="20px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                    </asp:CommandField>
            
                                    <asp:BoundField DataField="idServicios" HeaderText="idServicios" ReadOnly="True" SortExpression="idServicios" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="EMPRESA" HeaderText="ACCESORIO" SortExpression="EMPRESA" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCIÓN" SortExpression="DESCRIPCION" />
                                    <asp:BoundField DataField="FECHA_E" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.ADQUIERE" SortExpression="FECHA_E">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idCondicion" HeaderText="COND." SortExpression="idCondicion" >
                                   
                                    <HeaderStyle Width="30px" />
                                    </asp:BoundField>
                                   
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                   <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="ESTADO">
                                    <ControlStyle Height="18px" Width="18px" />
                                    <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     </asp:ImageField>


                                    <asp:ButtonField CommandName="baja" HeaderText="" ShowHeader="True" Text="Baja" >         
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>
                                     <asp:ButtonField CommandName="alta" HeaderText="" ShowHeader="True" Text="Alta" >          
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>

                                </Columns>
                                <EmptyDataTemplate>
                                    <span class="auto-style1">No registra servicios...!</span>
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceAccesorios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposServicios] WHERE ([idEquipo] = @idEquipo) and (ESTADO = @estado) and grupo=20 ORDER BY idServicios desc " DeleteCommand="DELETE tb_PlanillaEquiposServicios WHERE idServicios = @idServicios">
                                <DeleteParameters>
                                    <asp:Parameter Name="idServicios" />
                                </DeleteParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidunidad" Name="idEquipo" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblAccesorioEstado" Name="estado" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
         <div class="panel-body">
                            <div class="row">

                                 <div class="form-row">
                                     <div class="form-group col-md-2">
                                          <label for="txtaccesorio">Accesorio:</label>
                                         <asp:TextBox ID="txtaccesorio" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                     </div>
                                     <div class="form-group col-md-5">
                                          <label for="txtDetalle">Detalle/Observación:</label>
                                            <asp:TextBox ID="txtDetalle" Style="text-transform: uppercase" class="form-control input-sm" runat="server"></asp:TextBox>   
                                        </div>
                                     <div class="form-group col-md-2">
                                          <label for="ddlCondicion">Condición</label>
                                            <asp:DropDownList ID="ddlCondicion" runat="server" class="form-control input-sm" DataSourceID="SqlDataSourceCondicion" DataTextField="descripcion" DataValueField="idCondicion"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceCondicion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposCondicion] WHERE ([tipo] = @tipo) ORDER BY descripcion ">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="1" Name="tipo" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                      <div class="form-group col-md-2">
                                          <label for="txtfechaCompra">F. Adquiere:</label>
                                            <asp:TextBox ID="txtAdquiere" class="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>   
                                        </div>

                                        
                                        
                                        
                                       
                                       
                                            <asp:LinkButton ID="lbt_regAccesorios" CssClass="btn btn-info " runat="server" OnClick="lbt_regAccesorios_Click"> + </asp:LinkButton>
                                      
                                  </div>
       

                             </div>
                       </div>
         </div>


</asp:Content>
