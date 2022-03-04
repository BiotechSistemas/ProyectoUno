<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaPersonal.aspx.cs" Inherits="biotech.consultas.FichaPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bio Personal</title>
    
     <!-- Bootstrap Core CSS -->
    <link href="../bio/vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bio/vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../bio/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bio/vendorF/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../bio/vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
<body>
    <form id="form1" runat="server">
       <div class="container-fluid">

      
                
                    <h3 class="page-header"><i class="fa fa-users"></i> FICHA: <small>
      <asp:Label ID="lblpersonal" runat="server"></asp:Label>
                        <asp:Label ID="lblcodpersonal" runat="server" Text="RICAR"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server"></asp:Label></small>

                    </h3>
   

     <div class="row">
    
                       
                                <div class="col-md-6">
           <div class="panel panel-success">
                <div class="panel-heading">
                         <i class="fa fa-user"></i>   DATOS PERSONALES: <asp:Label ID="lblcodusu10" runat="server"></asp:Label>
                        &nbsp;</div>
                <div class="panel-body">

<div class="row">
  <div class="col-xs-4 col-sm-2"><strong>DNI:</strong></div>
  <div class="col-xs-8 col-sm-4">
      <asp:Label ID="lbldni" runat="server" Text=""></asp:Label></div>
    <div class="col-xs-4 col-sm-2"><strong>F.NACIMIENTO:</strong></div>
  <div class="col-xs-8 col-sm-4">
      <asp:Label ID="lblfnacimiento" runat="server" Text=""></asp:Label></div>
</div>
<div class="row">
  <div class="col-sm-2"><strong>CELULAR:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblcelularPersonal" runat="server"></asp:Label></div>
    <div class="col-sm-2"><strong>PROFESIÓN:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblprofesion" runat="server" Text=""></asp:Label></div>
</div>


<div class="row">
  <div class="col-sm-2"><strong>DIRECCIÓN:</strong></div>
  <div class="col-sm-10">
      <asp:Label ID="lblDireccion" runat="server" Text=""></asp:Label>

  </div>
    </div>
                    <div class="row">
  <div class="col-sm-2"><strong>E-MAIL:</strong></div>
  <div class="col-sm-10">
      <asp:Label ID="lblcorreopersonal" runat="server" Text=""></asp:Label>

  </div>
    </div>
  <br />
<div class="row">
  <div class="col-sm-2"><strong>DEPARTAMENTO:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lbldepartamento" runat="server" Text=""></asp:Label></div>
    <div class="col-sm-2"><strong>PROV/DIST.:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblProvincia" runat="server" Text=""></asp:Label>/
    <asp:Label ID="lblDistrito" runat="server" Text=""></asp:Label>

  </div>
</div>



<div class="row">
  <div class="col-sm-2"><strong>CONTAC.N°1:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblcontacto1" runat="server" Text=""></asp:Label></div>
    <div class="col-sm-2"><strong>CONTAC.N°2:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblcontacto2" runat="server" Text=""></asp:Label></div>
</div>

<div class="row">
  <div class="col-sm-2"><strong>N°FAMILIARES:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblFamiliares" runat="server" Text=""></asp:Label></div>
    <div class="col-sm-2"><strong>N°HIJOS:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblHijos" runat="server" Text=""></asp:Label></div>
</div>
<br />
<div class="row">
  <div class="col-sm-2"><strong>AFP:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblAFP" runat="server" Text=""></asp:Label></div>
    <div class="col-sm-2"><strong>E.CIVIL:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblEstadoCivil" runat="server" Text=""></asp:Label></div>
</div>

<div class="row">
  <div class="col-sm-2"><strong>ESSALUD:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblEssalud" runat="server" Text=""></asp:Label></div>
    <div class="col-sm-2"><strong>SCTR:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblSCTR" runat="server" Text=""></asp:Label></div>
</div>

                    <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000"></asp:Label>

              </div>
              
         </div>


 <div class="panel panel-success">
                <div class="panel-heading">
                         <i class="fa fa-user"></i>   DATOS EMPRESA: <asp:Label ID="lblbioIdtrabajador" runat="server"></asp:Label>
                        &nbsp;</div>
                <div class="panel-body">



<div class="row">
  <div class="col-xs-4 col-sm-2"><strong>CARGO:</strong></div>
  <div class="col-xs-8 col-sm-4">
      <asp:Label ID="lblbiocargo" runat="server" Text=""></asp:Label></div>
    <div class="col-xs-4 col-sm-2"><strong>ZONA:</strong></div>
  <div class="col-xs-8 col-sm-4">
      <asp:Label ID="lblbiozona" runat="server" Text=""></asp:Label></div>
</div>
<div class="row">
  <div class="col-sm-2"><strong>CELULAR:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblbiocelular" runat="server"></asp:Label></div>
    <div class="col-sm-2"><strong>IMP.VIÀTICO:</strong></div>
  <div class="col-sm-4">
      <asp:Label ID="lblbioViatico" runat="server" Text=""></asp:Label></div>
</div>


<div class="row">
  <div class="col-sm-2"><strong>CORREO:</strong></div>
  <div class="col-sm-10">
      <asp:Label ID="lblbiocorreo" runat="server" Text=""></asp:Label>

  </div>
</div>

<div class="row">
  <div class="col-sm-2"><strong>FUNCIONES:</strong></div>
  <div class="col-sm-10">
      <asp:Label ID="lblbioFunciones" runat="server" Text=""></asp:Label>

  </div>
</div>
<div class="row">
  <div class="col-sm-2"><strong>PERFIL PROF.:</strong></div>
  <div class="col-sm-10">
      <asp:Label ID="lblbioPerfil" runat="server" Text=""></asp:Label>

  </div>
</div>

<div class="row">
  <div class="col-sm-2"><strong>CTA. BANCO:</strong></div>
  <div class="col-sm-10">
      <asp:Label ID="lblbiobanco" runat="server" Text=""></asp:Label>

  </div>
</div>
<div class="row">
  <div class="col-xs-4 col-sm-2"><strong>NºCUENTA:</strong></div>
  <div class="col-xs-8 col-sm-4">
      <asp:Label ID="lblbioncuenta" runat="server" Text=""></asp:Label></div>
    <div class="col-xs-4 col-sm-2"><strong>NCTA.FREE:</strong></div>
  <div class="col-xs-8 col-sm-4">
      <asp:Label ID="lblbioctafree" runat="server" Text=""></asp:Label></div>
</div>












                            <asp:Label ID="lblbiomensaje" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                </div>
 </div>







           </div>
          <div class="col-md-6">

 <div class="panel panel-success">
                <div class="panel-heading">
                         <i class="fa fa-user"></i> EQUIPOS A CARGO: <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                        &nbsp;</div>
                <div class="panel-body">
                    UNIAD VEHICULAR
                     <div class="table-responsive">
                            <asp:GridView ID="gvVehiculo" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourceUV" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="PlanLinea" SortExpression="PlanLinea" Visible="False" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    No registra...
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceUV" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="3" Name="idtipo" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                               </div> 

            
                    EQUIPO CELULAR
                     <div class="table-responsive">
                            <asp:GridView ID="gvCelular" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourceCELL" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="LINEA" SortExpression="PlanLinea" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    No registra...
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceCELL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="1" Name="idtipo" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>

                
                    EQUIPO DE COMPUTO
                     <div class="table-responsive">
                            <asp:GridView ID="gvPortatil" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourcePC" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="PROCESADOR" SortExpression="PlanLinea" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    No registra...
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                                <RowStyle BorderColor="#CCCCCC" />
                            </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourcePC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="2" Name="idtipo" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                  

                    HERRAMIENTAS,EQUIPOS Y OTROS
                       <div class="table-responsive">  
                            <asp:GridView ID="gvOtros" Class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id,CodTrabajador,idEquipo" DataSourceID="SqlDataSourceOTROS" Width="100%" BorderStyle="None">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="CodTrabajador" HeaderText="CodTrabajador" ReadOnly="True" SortExpression="CodTrabajador" Visible="False" />
                                    <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" ReadOnly="True" SortExpression="idEquipo" Visible="False" />
                                    <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                    <asp:BoundField DataField="fechaEntrega" HeaderText="fechaEntrega" SortExpression="fechaEntrega" Visible="False" />
                                    <asp:BoundField DataField="EstadoConfirmacion" HeaderText="EstadoConfirmacion" SortExpression="EstadoConfirmacion" Visible="False" />
                                    <asp:BoundField DataField="EQUIPO" HeaderText="EQUIPO" SortExpression="EQUIPO" />
                                    <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idTipo1" HeaderText="idTipo1" SortExpression="idTipo1" Visible="False" />
                                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                    <asp:BoundField DataField="proc_motor_SIM" HeaderText="proc_motor_SIM" SortExpression="proc_motor_SIM" Visible="False" />
                                    <asp:BoundField DataField="PlanLinea" HeaderText="PlanLinea" SortExpression="PlanLinea" Visible="False" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIP." SortExpression="DESCRIPCION" >
                                    <ItemStyle Font-Size="X-Small" />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    No registra...
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                                
                                
                            <asp:SqlDataSource ID="SqlDataSourceOTROS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cargo_detallextrab" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblcodpersonal" Name="idtrab" PropertyName="Text" Type="String" />
                                    <asp:Parameter DefaultValue="4" Name="idtipo" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                </div>
                   
                </div> 
 </div><a href="Javascript:window.close()">Cerrar</a>


          </div>

         </div>
        
    </form>
</body>
</html>
