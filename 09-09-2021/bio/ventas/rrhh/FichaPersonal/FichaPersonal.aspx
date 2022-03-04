<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaPersonal.aspx.cs" Inherits="biotech.bio.ventas.rrhh.FichaPersonal.FichaPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FICHA PERSONAL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
     <style>
    body {
         /*background-color: #e0e0e0;*/
          background-color: #f8f8f8;
    }
  </style>
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            font-size: small;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
    <div>
       
    <div class="row">
      
         <div class="col-xs-6 col-md-9">
            <br />
       <h2 class="text-success">
    <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/images/logoicono.png" />
   FICHA PERSONAL 
            </h2>

             <h4 >
                 <strong><span class="auto-style1">APELLIDOS Y NOMBRES:</span></strong> <br />
             <asp:Label ID="lbl10apellidos" runat="server"></asp:Label>
                  ,
            <asp:Label ID="lbl10nombres" runat="server"> </asp:Label>
                </h4>
             <h4 >
                 <strong><span class="auto-style1">CARGO:</span></strong> <br />
                 <asp:Label ID="lblcargo" runat="server">POR ASIGNAR</asp:Label>
                </h4>
            
             </div> 
         <div class="col-xs-6 col-md-3 text-right"> <br />
             <asp:Image ID="imagenfoto" class="img-thumbnail"  runat="server" Height="200px" Width="180px" />
             </div>
        </div>
        
         <div class="panel panel-default">
              <div class="panel-heading">
          1. DATOS PERSONALES<asp:Label ID="lblIdEmpleado" runat="server" Visible="False"></asp:Label>
            </div>
          <div class="panel-body">

              <%-- <h4>1. DATOS PERSONALES:</h4>  --%>
             


    <div class="form-row">  
    <div class="col-md-3">
        <label for="inputEmail4">Fecha de nacimiento:</label>
        <p class="form-control-static"><asp:Label ID="lbl10fechanac" runat="server"></asp:Label></p>
        
           
    </div>
    <div class="col-md-3">
        <label for="inputEmail4">Departamento:</label>
        <p class="form-control-static">
            <asp:Label ID="lbl10Departamento" runat="server" Text=""></asp:Label>
        </p>
         
     </div>
        <div class="col-md-3">
        <label for="inputEmail4">Provincia:</label>
        <p class="form-control-static">
             <asp:Label ID="lbl10procincia" runat="server" Text=""></asp:Label>
        </p>
        
     </div>
        <div class="col-md-3">
        <label for="inputEmail4">Distrito:</label>
        <p class="form-control-static">
             <asp:Label ID="lbl10distrito" runat="server" Text=""></asp:Label>
        </p>
        
     </div>

  </div>   
              
   <div class="form-row">  
        <div class="col-md-3">
            <label for="inputEmail4">Tipo documento:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl10tpdocumento" runat="server" Text=""></asp:Label>
            </p>
                    
        </div>
        <div class="col-md-3">
            <label for="inputEmail4">Nº documento:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10ndocumento" runat="server" Text=""></asp:Label>
            </p>
             
        </div>
        <div class="col-md-3">
            <label for="inputEmail4">Estado civil:</label>
            <p class="form-control-static">
                 <asp:Label ID="lbl10Estadocivil" runat="server" Text=""></asp:Label>
            </p>
             
        </div>
        <div class="col-md-3">
            <label for="inputEmail4">Nº colegiatura:</label>
            <p class="form-control-static">
                 <asp:Label ID="lbl10ncolegiatura" runat="server" Text=""></asp:Label>
            </p>
             
        </div>

  </div>        

               <div class="form-row">  
        <div class="col-md-3">
            <label for="inputEmail4">Nº Teléfono:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl10telefono" runat="server" Text=""></asp:Label>
            </p>
                    
        </div>
        <div class="col-md-3">
            <label for="inputEmail4">Nº Celular:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10celular" runat="server" Text=""></asp:Label>
            </p>
             
        </div>
        <div class="col-md-6">
            <label for="inputEmail4">E-mail:</label>
            <p class="form-control-static">
                 <asp:Label ID="lbl10correo" runat="server" Text=""></asp:Label>
            </p>
             
        </div>
        

  </div> 
              
              </div>

               <div class="panel-heading">2. DOMICILIO ACTUAL</div>
<div class="panel-body"> 
    <div class="form-row">  
            <div class="col-md-12">
            <label for="inputEmail4">Dirección:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30direccionactual" runat="server" Text=""></asp:Label>
            </p>
            </div>   
        </div>

    <div class="form-row">  
            <div class="col-md-3">
            <label for="inputEmail4">Tipo:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30tipo" runat="server" Text=""></asp:Label>
            </p>
            </div>
            <div class="col-md-3">
            <label for="inputEmail4">Departamento:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30departamento" runat="server" Text=""></asp:Label>
            </p>
            </div>
            <div class="col-md-3">
            <label for="inputEmail4">Provincia:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30Provincia" runat="server" Text=""></asp:Label>
            </p>
            </div>
            <div class="col-md-3">
            <label for="inputEmail4">Distrito:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30distrito" runat="server" Text=""></asp:Label>
            </p>
            </div>   
    </div>

    <div class="form-row">  
            <div class="col-md-6">
            <label for="inputEmail4">Referencia:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30Referencia" runat="server" Text=""></asp:Label>
            </p>
            </div>
            <div class="col-md-3">
            <label for="inputEmail4">Número:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30numero" runat="server" Text=""></asp:Label>
            </p>
            </div>
            <div class="col-md-3">
            <label for="inputEmail4">Interior:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl30interior" runat="server" Text=""></asp:Label>
            </p>
            </div>
            
    </div>

    </div>       


<div class="panel-heading">3. RÉGIMEN PENSIONARIO</div>
<div class="panel-body"> 
    <div class="form-row">  
            <div class="col-md-4">
            <label for="inputEmail4">ONP/AFP</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl20onp" runat="server" Text=""></asp:Label>
            </p>
            </div>
           <div class="col-md-4">
            <label for="inputEmail4">Documento afiliación:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl20documentoAfiliacion" runat="server" Text=""></asp:Label>
            </p>
            </div>
            <div class="col-md-4">
            <label for="inputEmail4">Fecha afiliación:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl20FechaAfiliacion" runat="server" Text=""></asp:Label>
            </p>
            </div>
            
    </div>
</div>

               <div class="panel-heading">4. DATOS COMPLEMENTARIOS</div>
          <div class="panel-body"> 

    <div class="form-row">  
        <div class="col-md-3">
            <label for="inputEmail4">Carné Essalud (Autogenerado):</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl10carneessalud" runat="server" Text=""></asp:Label>
            </p>
                    
        </div>
        <div class="col-md-3">
            <label for="inputEmail4">Centro de atención:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10CentroEssalud" runat="server" Text=""></asp:Label>
            </p>
             
        </div>
        <div class="col-md-6">
            <label for="inputEmail4">Grupo sanguíneo:</label>
            <p class="form-control-static">
                 <asp:Label ID="lbl10grupoSanguineo" runat="server" Text=""></asp:Label>
            </p>
             
        </div>
        

  </div>  

               <div class="form-row">  
        <div class="col-md-3">
            <label for="inputEmail4">Alergico (SI/NO):</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl10tpAlergico" runat="server" Text=""></asp:Label>
            </p>
                    
        </div>
        <div class="col-md-9">
            <label for="inputEmail4">Detalle alergico:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10alergicoDetalle" runat="server" Text=""></asp:Label>
            </p>


             
        </div>            
  </div>  




               <div class="form-row">  
        <div class="col-md-3">
            <label for="inputEmail4">Altura:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl10altura" runat="server" Text=""></asp:Label>
            </p>
                    
        </div>
        <div class="col-md-3">
            <label for="inputEmail4">Peso:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10peso" runat="server" Text=""></asp:Label>
            </p>
             
        </div> 
        <div class="col-md-3">
            <label for="inputEmail4">Talla polo:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10tallaPolo" runat="server" Text=""></asp:Label>
            </p>
             
        </div> 
        <div class="col-md-3">
            <label for="inputEmail4">Talla pantalon:</label>
            <p class="form-control-static">
                <asp:Label ID="lbl10tallaPantalon" runat="server" Text=""></asp:Label>
            </p>
             
        </div>            
  </div> 

 </div>
  

          <div class="panel-heading">5. DATOS FAMILIARES:</div>
          <div class="panel-body">

              <h4>5.1. Datos referentes, CONYUGE e HIJOS del trabajador:</h4> 
         <div class="form-row">  
            <div class="col-md-12">
                <asp:GridView ID="gvHijos" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1perhijos" Width="100%" DataKeyNames="id" Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                        <asp:BoundField DataField="APELLIDOS" HeaderText="APELLIDOS" SortExpression="APELLIDOS" />
                        <asp:BoundField DataField="NOMBRES" HeaderText="NOMBRES" SortExpression="NOMBRES" />
                        <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                        <asp:BoundField DataField="SEXO" HeaderText="SEXO" SortExpression="SEXO" ReadOnly="True" />
                        <asp:BoundField DataField="IDPARENTESCO" HeaderText="IDPARENTESCO" SortExpression="IDPARENTESCO" Visible="False">
                        </asp:BoundField>
                        <asp:BoundField DataField="PARENTESCO" HeaderText="PARENTESCO" SortExpression="PARENTESCO" />
                        <asp:BoundField DataField="FNAC" HeaderText="F. NACIMIENTO" SortExpression="FNAC" DataFormatString="{0:dd/MM/yyyy}" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="ANO" HeaderText="EDAD" SortExpression="ANO" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OCUPACION" HeaderText="OCUPACION" SortExpression="OCUPACION">
                        </asp:BoundField>
                        <asp:BoundField DataField="IDESTADOCIVIL" HeaderText="IDESTADOCIVIL" SortExpression="IDESTADOCIVIL" Visible="False" />
                        <asp:BoundField DataField="ESTADOCIVIL" HeaderText="ESTADOCIVIL" SortExpression="ESTADOCIVIL" />
                       
                        <asp:BoundField DataField="ESTADO" HeaderText="VIVO" ReadOnly="True" SortExpression="ESTADO">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        No registra información.
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1perhijos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.Perhijos" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblIdEmpleado" Name="idpersonal" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>


              <h4>5.2. Datos familiares a quienes notificar en una situación de emergencia:</h4> 
         <div class="form-row">  
            <div class="col-md-12">
                <asp:GridView ID="gvdatosFamiliares" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1Familiares" Width="100%" Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                        <asp:BoundField DataField="apellidos" HeaderText="APELLIDOS" SortExpression="apellidos" />
                        <asp:BoundField DataField="nombres" HeaderText="NOMBRES" SortExpression="nombres" />
                        <asp:BoundField DataField="parentesco" HeaderText="PARENTESCO" SortExpression="parentesco" />
                        <asp:BoundField DataField="direccion" HeaderText="DIRECCIÓN" SortExpression="direccion" />
                        <asp:BoundField DataField="telefono" HeaderText="TELÉFONO" SortExpression="telefono" />
                    </Columns>
                    <EmptyDataTemplate>
                        No registra información.
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1Familiares" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id, idPersonal, apellidos, nombres, parentesco, direccion, telefono from rrhh.PersonalFamiliaresNotificar where idPersonal =@idPersonal ">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblIdEmpleado" Name="idPersonal" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>

          </div>

  
        <div class="panel-heading">6. LICENCIA DE CONDUCIR:</div>
          <div class="panel-body">
               <div class="form-row">  
            <div class="col-md-3">
            <label for="inputEmail4">Categoria:</label>   
            <p class="form-control-static">
                <asp:Label ID="lblLicenciaCategoria" runat="server" Text=""></asp:Label>
            </p>                    
            </div>
              <div class="col-md-3">
            <label for="inputEmail4">Nº de licencia:</label>   
            <p class="form-control-static">
                <asp:Label ID="lblLicenciaNumero" runat="server" Text=""></asp:Label>
            </p>                    
            </div>
               <div class="col-md-3">
            <label for="inputEmail4">F. vencimiento licencia:</label>   
            <p class="form-control-static">
                <asp:Label ID="lblLicenciaFvencimiento" runat="server" Text=""></asp:Label>
            </p>                    
            </div>
                   </div>
          </div>
   
            <div class="panel-heading">7. CUENTA DE HABERES:</div>
          <div class="panel-body">
               <div class="form-row">  
            <div class="col-md-4">
            <label for="inputEmail4">Banco cuenta haberes:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl40banco" runat="server" Text=""></asp:Label>
            </p>                    
            </div>
              <div class="col-md-4">
            <label for="inputEmail4">Nº de cuenta haberes:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl40ncuenta" runat="server" Text=""></asp:Label>
            </p>                    
            </div>
            <div class="col-md-4">
            <label for="inputEmail4">CCI cuenta haberes:</label>   
            <p class="form-control-static">
                <asp:Label ID="lbl40cuentacci" runat="server" Text=""></asp:Label>
            </p>                    
            </div>
            </div>

               <div class="form-row">  
          
                 <div class="col-md-4">
                    <label for="lblidbancoCts">Banco cuenta CTS:</label>   
                    <p class="form-control-static">
                        <asp:Label ID="lblbancoCts" runat="server" Text=""></asp:Label>
                    </p>                    
                    </div>
                    <div class="col-md-4">
                    <label for="lbl40CTScuenta">Nº de cuenta CTS:</label>   
                    <p class="form-control-static">
                        <asp:Label ID="lbl40CTScuenta" runat="server" Text=""></asp:Label>
                    </p>                    
                    </div>                            
                           <div class="col-md-4">
                        <label for="lbl40CTScci">CCI cuenta CTS:</label>   
                        <p class="form-control-static">
                            <asp:Label ID="lbl40CTScci" runat="server" Text=""></asp:Label>
                        </p>                    
                        </div>
                   </div>


              <div class="form-row">  
          
                    <div class="col-md-4">
                    <label for="lblbancoFree">Banco cuenta Free:</label>   
                    <p class="form-control-static">
                        <asp:Label ID="lblbancoFree" runat="server" Text=""></asp:Label>
                    </p>                    
                    </div>
                       
                    <div class="col-md-4">
                    <label for="lblctafree">Nº de cuenta FREE:</label>   
                    <p class="form-control-static">
                        <asp:Label ID="lblctafree" runat="server" Text=""></asp:Label>
                    </p>                    
                    </div>
                    <div class="col-md-3">
                    <label for="lblctafreeCCI">CCI cuenta FREE:</label>   
                    <p class="form-control-static">
                        <asp:Label ID="lblctafreeCCI" runat="server" Text=""></asp:Label>
                    </p>                    
                    </div>
              </div>

           
          </div>

          <div class="panel-heading">6. DATOS DE ESTUDIOS:</div>
          <div class="panel-body">
             
                <div class="form-row">  
                     <h4>6.1. Estudios primarios:</h4> 
            <div class="col-md-12">
                <div class="table-responsive">

                                <asp:SqlDataSource ID="SqlDataSourceEprimarios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.estudios" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="op" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblIdEmpleado" DefaultValue="" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    <asp:GridView ID="gvestudiosPrimarios" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceEprimarios" Width="100%" Font-Size="Small">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                            <asp:BoundField DataField="EDUCACION" HeaderText="EDUCACION" SortExpression="EDUCACION" >
                                            <HeaderStyle Width="200px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                            <asp:BoundField DataField="ESPECIALIDAD" HeaderText="ESPECIALIDAD" SortExpression="ESPECIALIDAD" Visible="False" />
                                            <asp:BoundField DataField="CENTROESTUDIOS" HeaderText="CENTRO ESTUDIOS" SortExpression="CENTROESTUDIOS" />
                                            <asp:BoundField DataField="DESDE" HeaderText="DESDE" SortExpression="DESDE" DataFormatString="{0:dd/MM/yyyy}" >
                                            <HeaderStyle Width="120px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="HASTA" HeaderText="HASTA" SortExpression="HASTA" DataFormatString="{0:dd/MM/yyyy}" >
                                            <HeaderStyle Width="120px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idGradoAcademico" HeaderText="idGradoAcademico" SortExpression="idGradoAcademico" Visible="False" />
                                            <asp:BoundField DataField="GRADOACADEMICO" HeaderText="GRADO ACADEMICO" SortExpression="GRADOACADEMICO" >
                                            <HeaderStyle Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="COMPLETA" HeaderText="COMPLETA" SortExpression="COMPLETA" >
                                            <HeaderStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No registra información.
                                        </EmptyDataTemplate>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>

                </div>
                </div>
                    </div>
              
                <div class="form-row">  
                    <h4>6.2. Estudios secundarios:</h4> 
            <div class="col-md-12">
                <div class="table-responsive">

                                <asp:SqlDataSource ID="SqlDataSourceeSecundarios"  runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.estudios" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="op" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblIdEmpleado" DefaultValue="" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    <asp:GridView ID="gvestudiosSecundarios" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceeSecundarios" Width="100%" Font-Size="Small">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                            <asp:BoundField DataField="EDUCACION" HeaderText="EDUCACION" SortExpression="EDUCACION" >
                                            <HeaderStyle Width="200px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                            <asp:BoundField DataField="ESPECIALIDAD" HeaderText="ESPECIALIDAD" SortExpression="ESPECIALIDAD" Visible="False" />
                                            <asp:BoundField DataField="CENTROESTUDIOS" HeaderText="CENTRO ESTUDIOS" SortExpression="CENTROESTUDIOS" />
                                            <asp:BoundField DataField="DESDE" HeaderText="DESDE" SortExpression="DESDE" DataFormatString="{0:dd/MM/yyyy}" >
                                            <HeaderStyle Width="120px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="HASTA" HeaderText="HASTA" SortExpression="HASTA" DataFormatString="{0:dd/MM/yyyy}" >
                                            <HeaderStyle Width="120px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idGradoAcademico" HeaderText="idGradoAcademico" SortExpression="idGradoAcademico" Visible="False" />
                                            <asp:BoundField DataField="GRADOACADEMICO" HeaderText="GRADO ACADEMICO" SortExpression="GRADOACADEMICO" >
                                            <HeaderStyle Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="COMPLETA" HeaderText="COMPLETA" SortExpression="COMPLETA" >
                                            <HeaderStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No registra información.
                                        </EmptyDataTemplate>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>

                </div>
                </div>
                    </div>
              
              <div class="form-row">  
                   <h4>6.3. Estudios superiores:</h4> 
            <div class="col-md-12">
                <div class="table-responsive">

                                <asp:SqlDataSource ID="SqlDataSourceEsuperiores" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.estudios" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="3" Name="op" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblIdEmpleado" DefaultValue="" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    <asp:GridView ID="gvestudiosProfesionales" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceEsuperiores" Width="100%" Font-Size="Small">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                            <asp:BoundField DataField="EDUCACION" HeaderText="EDUCACION" SortExpression="EDUCACION" />
                                            <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                            <asp:BoundField DataField="ESPECIALIDAD" HeaderText="ESPECIALIDAD" SortExpression="ESPECIALIDAD" />
                                            <asp:BoundField DataField="CENTROESTUDIOS" HeaderText="CENTRO ESTUDIOS" SortExpression="CENTROESTUDIOS" />
                                            <asp:BoundField DataField="DESDE" HeaderText="DESDE" SortExpression="DESDE" DataFormatString="{0:dd/MM/yyyy}" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="HASTA" HeaderText="HASTA" SortExpression="HASTA" DataFormatString="{0:dd/MM/yyyy}" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idGradoAcademico" HeaderText="idGradoAcademico" SortExpression="idGradoAcademico" Visible="False" />
                                            <asp:BoundField DataField="GRADOACADEMICO" HeaderText="GRADO ACADEMICO" SortExpression="GRADOACADEMICO" />
                                            <asp:BoundField DataField="COMPLETA" HeaderText="COMPLETA" SortExpression="COMPLETA" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No registra información.
                                        </EmptyDataTemplate>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>

                </div>
                </div>
                    </div>
          </div>

          <div class="panel-heading">7. CONOCIMIENTO EN IDIOMAS</div>
          <div class="panel-body">
            
            <p>
                <asp:GridView ID="gvIdiomas" runat="server" CssClass="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceIdiomas" Width="100%" Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" Visible="False" />
                        <asp:BoundField DataField="IDIDIOMA" HeaderText="IDIDIOMA" SortExpression="IDIDIOMA" Visible="False" />
                        <asp:BoundField DataField="IDIOMA" HeaderText="IDIOMA" SortExpression="IDIOMA" />
                        <asp:BoundField DataField="LEE" HeaderText="LEE" SortExpression="LEE" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="HABLA" HeaderText="HABLA" SortExpression="HABLA" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESCRIBE" HeaderText="ESCRIBE" SortExpression="ESCRIBE" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        No registra información.
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceIdiomas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.PerIdiomas" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblIdEmpleado" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    </p>
          </div>

  
        </div>

    </div>
         <a href="javascript:window.opener='x';window.close();">CERRAR FICHA</a>  
    </form>
        </div>
</body>
</html>
