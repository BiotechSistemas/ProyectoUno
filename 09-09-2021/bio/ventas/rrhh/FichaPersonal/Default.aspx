<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.bio.ventas.rrhh.FichaPersonal.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
    <title>REGISTRAR FICHA PERSONAL</title>
    <meta charset="utf-8">
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
        .auto-style2 {
            color: #666666;
        }
    </style>
</head>
    
<body>
  
       
    <div class="container">
    <form id="form1" runat="server">
    
<h1 class="text-success">
    <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/images/logoicono.png" />
    FICHA PERSONAL<asp:Label ID="lblIdEmpleado" runat="server" Visible="False"></asp:Label>
            </h1>

        <asp:Image ID="Image10" runat="server" ImageAlign="Middle" ImageUrl="~/images/formulario/M1.png" Width="100%" />
        <asp:Image ID="Image20" runat="server" ImageAlign="Middle" ImageUrl="~/images/formulario/M2.png" Width="100%" />
        <asp:Image ID="Image30" runat="server" ImageAlign="Middle" ImageUrl="~/images/formulario/M3.png" Width="100%" />
        <asp:Image ID="Image40" runat="server" ImageAlign="Middle" ImageUrl="~/images/formulario/M4.png" Width="100%" />
        <asp:Image ID="Image50" runat="server" ImageAlign="Middle" ImageUrl="~/images/formulario/M5.png" Width="100%" />
        <asp:Panel ID="Panel1" runat="server">
        <div class="panel panel-default">
  <div class="panel-heading">NIVEL 1.1: DATOS PERSONALES
            </div>
  <div class="panel-body">
 
 
      <div class="form-row">
   
    <div class="col-md-6">
        <asp:TextBox ID="txt10apellidos"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
        <label for="inputEmail4">Apellidos </label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresar apellidos completos." ControlToValidate="txt10apellidos" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
       
    &nbsp;</div>
    <div class="col-md-6">
        <asp:TextBox ID="txt10nombres"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
         <label for="inputEmail4">Nombres</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatornombres" runat="server" ErrorMessage="Ingresar nombres completos." ControlToValidate="txt10nombres" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    </div>
  </div>

         <div class="form-row">
   
    <div class="col-md-3">
         
        <asp:TextBox ID="txt10fechanac" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
        <label for="inputEmail4">Fecha de nacimiento</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1fnacimiento" runat="server" ErrorMessage="Ingresar fecha de nacimiento." ControlToValidate="txt10fechanac" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    </div>
    <div class="col-md-3">
        <asp:DropDownList ID="ddl10departamento" class="form-control" runat="server" DataSourceID="SqlDataSourcedepartamento" AutoPostBack="True" DataTextField="departamento" DataValueField="id" OnSelectedIndexChanged="ddl10departamento_SelectedIndexChanged"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSourcedepartamento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.departamento" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
         <label for="inputEmail4">Departamento de nacimiento</label>
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresar fecha de nacimiento" ControlToValidate="txt10fechanac" ForeColor="#CC0000">*</asp:RequiredFieldValidator>--%>
        <asp:Label ID="lbliddepartamento10" runat="server" Visible="False"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl10departamento" ErrorMessage="Seleccionar departamento de nacimiento." ForeColor="#CC0000" InitialValue="1">*</asp:RequiredFieldValidator>
    </div>
              <div class="col-md-3">
                  <asp:DropDownList class="form-control" ID="ddl10provincia" runat="server" DataSourceID="SqlDataSourceprov" AutoPostBack="True" DataTextField="provincia" DataValueField="IdSunat"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceprov" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idSunat,provincia FROM tb_dProvincia where  idDepartamento = @idDepartamento">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lbliddepartamento10" Name="idDepartamento" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
         <label for="inputEmail4">Provincia de nacimiento</label>
    </div>
              <div class="col-md-3">
                  <asp:DropDownList ID="ddl10distrito" class="form-control" runat="server" DataSourceID="SqlDataSourcedistrito" DataTextField="ubigeo" DataValueField="idUbigeo"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourcedistrito" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idUbigeo,ubigeo FROM tb_dDistritoUbigeo where idProv = @idProv
">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="ddl10provincia" Name="idProv" PropertyName="SelectedValue" />
                      </SelectParameters>
                  </asp:SqlDataSource>
         <label for="inputEmail4">Distrito de nacimiento</label>
    </div>
  </div>

    <div class="form-row">
    <div class="col-md-3">
        <asp:DropDownList ID="ddl10documento"  class="form-control" runat="server" DataSourceID="SqlDataSource1TPDOC" DataTextField="descripcion" DataValueField="idtp">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1TPDOC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idtp,descripcion FROM rrhh.tpdocumento"></asp:SqlDataSource>
        <label for="inputEmail4">Documento</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddl10documento" ErrorMessage="Seleccionar tipo de documento." ForeColor="#CC0000" InitialValue="0">*</asp:RequiredFieldValidator>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt10ndocumento" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
         <label for="inputEmail4">Nº Documento</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1ndocumento" runat="server" ErrorMessage="Ingresar número de documento." ControlToValidate="txt10ndocumento" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    </div>
         <div class="col-md-3">
             <asp:DropDownList ID="ddl10EstadoCivil"  class="form-control" runat="server" DataSourceID="SqlDataSource1tpestadocivil" DataTextField="descripcion" DataValueField="idtp">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1tpestadocivil" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idtp,descripcion FROM rrhh.tpEstadoCivil"></asp:SqlDataSource>
         <label for="inputEmail4">Estado Civil</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl10EstadoCivil" ErrorMessage="Seleccionar estado civil." ForeColor="#CC0000" InitialValue="0">*</asp:RequiredFieldValidator>
    </div>

    <div class="col-md-3">
        <asp:TextBox ID="txt10ncolegio" class="form-control" runat="server"></asp:TextBox>
         <label for="inputEmail4">Nº de Colegiatura</label>
    </div>
  </div>

   <div class="form-row">  
    <div class="col-md-4">
        <asp:TextBox ID="txt10telefono" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
        <label for="inputEmail4">Nº Teléfono</label>
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="txt10celular" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
         <label for="inputEmail4">Nº Celular</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1celular" runat="server" ErrorMessage="Ingresar celular personal ó de contacto." ControlToValidate="txt10celular" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="txt10correo"  style="text-transform:lowercase;" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
         <label for="inputEmail4">E-mail</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1correo" runat="server" ErrorMessage="Ingresar correo electrónico." ControlToValidate="txt10correo" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1Mail" runat="server" ErrorMessage="Ingresar correo electronico válido." ControlToValidate="txt10correo" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </div>
  </div>
      </div>
             </div>
            <%--------------------------%>

               <div class="panel panel-default">
  <div class="panel-heading">NIVEL 1.2: DOMICILIO ACTUAL</div>


<div class="panel-body">
  
      
    <div class="form-row">  
      
           <div class="col-md-3">
          <asp:DropDownList ID="ddl20Departamento"  class="form-control"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcedepartamento1" DataTextField="departamento" DataValueField="id" OnSelectedIndexChanged="ddl20Departamento_SelectedIndexChanged"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSourcedepartamento1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,departamento from tb_dDepartamento
"></asp:SqlDataSource>
         <label for="inputEmail4">Departamento  dirección
               </label><asp:Label ID="lbl20idDepartamento" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl20Departamento" ErrorMessage="Seleccionar departamento domicilio." ForeColor="#CC0000" InitialValue="1">*</asp:RequiredFieldValidator>
           </div>
    <div class="col-md-3">
          <asp:DropDownList ID="ddl20Provincia"  class="form-control"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceprov1" DataTextField="provincia" DataValueField="IdSunat"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceprov1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idSunat,provincia FROM tb_dProvincia where  idDepartamento = @idDepartamento">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lbl20idDepartamento" Name="idDepartamento" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
          </asp:SqlDataSource>
         <label for="inputEmail4">Provincia dirección</label>
    </div>
    <div class="col-md-3">
         <asp:DropDownList ID="ddl20Distrito"  class="form-control"  runat="server" DataSourceID="SqlDataSourcedistrito1" DataTextField="ubigeo" DataValueField="idUbigeo"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourcedistrito1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idUbigeo,ubigeo FROM tb_dDistritoUbigeo where idProv = @idProv
">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="ddl20Provincia" Name="idProv" PropertyName="SelectedValue" />
                      </SelectParameters>
         </asp:SqlDataSource>
         <label for="inputEmail4">Distrito  dirección</label>
    </div>
            <div class="col-md-3">
               <asp:DropDownList ID="ddl20tipodireccion" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1tdisrecc" DataTextField="descripcion" DataValueField="idtp"></asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1tdisrecc" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idtp, descripcion FROM rrhh.tpdireccion"></asp:SqlDataSource>
         <label for="inputEmail4">Tipo</label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl20tipodireccion"
                ErrorMessage="Seleccionar tipo dirección" InitialValue="0" ForeColor="#CC0000">*</asp:RequiredFieldValidator>              
    </div>
  </div>

     <div class="form-row">  
    <div class="col-md-12">
        <asp:TextBox ID="txt20direccion"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
        <label for="inputEmail4">Dirección</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20direccion" runat="server" ErrorMessage="Ingresar dirección actual" ForeColor="#CC0000" ControlToValidate="txt20direccion">*</asp:RequiredFieldValidator>
    </div>
           </div>

        <div class="form-row">  
    <div class="col-md-6">
        <asp:TextBox ID="txt20referencia"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
        <label for="inputEmail4">Referencia</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia" runat="server" ErrorMessage="Ingresar dirección refencial." ForeColor="#CC0000" ControlToValidate="txt20referencia">*</asp:RequiredFieldValidator>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt20numero" class="form-control"  runat="server" TextMode="Number"></asp:TextBox>
         <label for="inputEmail4">Número</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresar número (dirección), al tener reemplazarlo por cero." ControlToValidate="txt20numero" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt20interior" class="form-control"  runat="server" TextMode="Number"></asp:TextBox>
         <label for="inputEmail4">Interior</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingresar número interior (dirección), al tener reemplazarlo por cero." ControlToValidate="txt20interior" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    </div>
  </div>
    
      <asp:ValidationSummary ID="ValidationSummary10" runat="server" ForeColor="#CC0000" />
        </div>

            <div class="panel-footer">
                <asp:Button ID="btnactualizar1" runat="server" CssClass="btn btn-success" OnClick="btnactualizar1_Click" Text="SIGUIENTE &gt;&gt;" />
            </div>
  </div>
 </asp:Panel>

            <%--------------------------%>


       
      
        <asp:Panel ID="Panel2" runat="server">

             <div class="panel panel-default">
                  <div class="panel-heading">NIVEL 2.1: REGIMEN PENSIONARIO </div>
                  <div class="panel-body">
  
                       <div class="form-row">  
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlONP" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1ONP" DataTextField="Descripcion" DataValueField="idRetencion"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1ONP" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idRetencion,Descripcion FROM tb_PlanillaRetenciones WHERE grupo = 1"></asp:SqlDataSource>
                                <label for="inputEmail4">ONP/AFP</label>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresar dirección actual" ForeColor="#CC0000" ControlToValidate="txt20direccion">*</asp:RequiredFieldValidator>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlONP" ErrorMessage="Seleccionar ONP/AFP" ForeColor="#CC0000" InitialValue="0">*</asp:RequiredFieldValidator>
                            </div>
                            
                           <div class="col-md-4">
                                <asp:TextBox ID="txt2docAfiliacion" runat="server" class="form-control"></asp:TextBox>
                                <label for="inputEmail4">CARNET CUSPP</label>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresar dirección actual" ForeColor="#CC0000" ControlToValidate="txt20direccion">*</asp:RequiredFieldValidator>--%>
                            </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txt2fechaafiliacion" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                <label for="inputEmail4">FECHA AFILIACIÓN</label>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresar dirección actual" ForeColor="#CC0000" ControlToValidate="txt20direccion">*</asp:RequiredFieldValidator>--%>
                            </div>
                           
                       </div>
                      <asp:LinkButton ID="lbtnDatosafiilacion" runat="server" OnClick="lbtnDatosafiilacion_Click">Consultar datos de afiliación</asp:LinkButton>
                   </div>
              </div>


          <div class="panel panel-default">
  <div class="panel-heading">NIVEL 2.2: INFORMACIÓN COMPLEMENTARIA</div>
   <div class="panel-body">
      <div class="form-row">  
    <div class="col-md-4">
        <asp:TextBox ID="txt10carnetEssalud"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
        <label for="inputEmail4">Nº Carnet ESSALUD (Autogenerado)</label>
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="txt10CentroEssalud"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
         <label for="inputEmail4">Centro de atención ESSALUD</label>
    </div>
    <div class="col-md-4">
        <%--<asp:TextBox ID="txt10gruposanguineo" class="form-control" runat="server"></asp:TextBox>--%>
        <asp:DropDownList ID="ddlGrupoSanguineo" class="form-control" runat="server">
            <asp:ListItem Value="No indica"></asp:ListItem>
            <asp:ListItem Value="O positivo">O positivo</asp:ListItem>
            <asp:ListItem>O negativo</asp:ListItem>
            <asp:ListItem>A positivo</asp:ListItem>
            <asp:ListItem>A negativo</asp:ListItem>
            <asp:ListItem>B positivo</asp:ListItem>
            <asp:ListItem>B negativo</asp:ListItem>
            <asp:ListItem>AB positivo</asp:ListItem>
            <asp:ListItem>AB negativo</asp:ListItem>
        </asp:DropDownList>
         <label for="inputEmail4">Grupo Sanguineo</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlGrupoSanguineo" ErrorMessage="Seleccionar grupo sanguíneo" ForeColor="#CC0000" InitialValue="No indica">*</asp:RequiredFieldValidator>
    </div>
  </div>
      
           
       <div class="form-row">  
    <div class="col-md-3">
        <asp:RadioButtonList ID="rbalegico" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rbalegico_SelectedIndexChanged" Width="200px">           
            <asp:ListItem Selected="True">NO</asp:ListItem>
             <asp:ListItem>SI</asp:ListItem>            
        </asp:RadioButtonList>
        <label for="rbalegico">Es alergico</label>
    </div>
    <div class="col-md-9">
        <asp:TextBox ID="txt10alergicoDetalle"  style="text-transform:uppercase;" class="form-control" runat="server"></asp:TextBox>
         <label for="txt10alergico">Descripción alergica</label>
    </div>    
  </div>

      
    <div class="form-row">  
    <div class="col-md-3">
        <asp:TextBox ID="txt10altura" class="form-control"  type="number" step="0.01"  runat="server"></asp:TextBox>
        <label for="inputEmail4">Altura
        </label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10altura" runat="server" ErrorMessage="Ingresar altura (Ejem: 1.70)." ControlToValidate="txt10altura" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1ALTURA" runat="server" ErrorMessage="Ingresar altura (Ejem: 1.70)." ControlToValidate="txt10altura" ForeColor="#CC0000" ValidationExpression="((\d+)((\.\d{1,2})?))$">*</asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1altura" runat="server" ControlToValidate="txt10altura" ErrorMessage="La altura ingresada no es válida (Ejem: 1.70)." ForeColor="#CC0000" MaximumValue="2.5" MinimumValue="1">*</asp:RangeValidator>
    &nbsp;</div>
    <div class="col-md-3">
        <asp:TextBox ID="txt10peso" class="form-control"  type="number" step="0.001" runat="server"></asp:TextBox>
         <label for="inputEmail4">Peso</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10peso" runat="server" ErrorMessage="Ingresar peso (Ejem: 70.200)." ControlToValidate="txt10peso" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1PESO" runat="server" ErrorMessage="Ingresar peso exacto (Ejem: 70.200)." ControlToValidate="txt10peso" ForeColor="#CC0000" ValidationExpression="((\d+)((\.\d{1,3})?))$">*</asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt10peso" ErrorMessage="Peso ingresado no es válido  (Ejem: 70.200)." ForeColor="#CC0000" MaximumValue="150" MinimumValue="050" Type="Double">*</asp:RangeValidator>
   </div>
    <div class="col-md-3">
        
         <asp:DropDownList ID="ddltallacamisa" runat="server" class="form-control">
             <asp:ListItem Value="No indica">No indica</asp:ListItem>
             <asp:ListItem Value="XS1">XS</asp:ListItem>
             <asp:ListItem Value="S">S</asp:ListItem>
             <asp:ListItem Value="M">M</asp:ListItem>
             <asp:ListItem Value="L">L</asp:ListItem>
             <asp:ListItem Value="XL">XL</asp:ListItem>
             <asp:ListItem Value="XXL">XXL</asp:ListItem>
         </asp:DropDownList>
         <label for="inputEmail4">Talla polo/camisa</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddltallacamisa" ErrorMessage="Seleccionar talla polo/camisa" ForeColor="#CC0000" InitialValue="No indica">*</asp:RequiredFieldValidator>
   
         </div>
        <div class="col-md-3">
        <asp:TextBox ID="txt10tallapantalon" class="form-control"  type="number"  runat="server"></asp:TextBox>
         <label for="inputEmail4">Talla panatalón</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10tallapantalon" runat="server" ErrorMessage="Ingresar talla de pantalón (Ejem: 40)." ControlToValidate="txt10tallapantalon" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingresar talla de pantalón (Ejem: 40)." ControlToValidate="txt10tallapantalon" ForeColor="#CC0000" ValidationExpression="([0-9]|-)*">*</asp:RegularExpressionValidator>       
            <asp:RangeValidator ID="RangeValidator1Talla" runat="server" ControlToValidate="txt10tallapantalon" ErrorMessage="talla  ingresada no es válida (Ejem: 40)." MaximumValue="60" MinimumValue="10" ForeColor="#CC0000">*</asp:RangeValidator>
        </div>
  </div>
                 


                 <asp:Label ID="lblmensajegruposangre" runat="server" ForeColor="#CC0000"></asp:Label>

    </div>


              <asp:ValidationSummary ID="ValidationSummary20" runat="server" ForeColor="#CC0000" />

      <%---- TERMINA EL PANEL--%>
      <div class="panel-footer">

          <asp:Button ID="btnanterior2" CssClass="btn btn-success" runat="server" Text="&lt;&lt; ANTERIROR" OnClick="btnanterior2_Click" />
          <asp:Button ID="btngrupo2" runat="server" Text="SIGUIENTE &gt;&gt;" OnClick="btngrupo2_Click" CssClass="btn btn-success" />
      </div>

  </div>

            </asp:Panel>


        <%-- PANEL 3  --%>

        <asp:Panel ID="Panel3" runat="server">
              <div class="panel panel-default">
                  <div class="panel-heading">NIVEL 3 : DATOS FAMILIARES:
                      <asp:Label ID="lblidEstadoCivil" runat="server" Visible="False"></asp:Label>
                      <asp:Label ID="lblestadocivilDescripcion2" runat="server" Visible="False"></asp:Label>
                  </div>
                 
                  <div class="panel-body">
                      
                       <div class="form-row">  
                           3.1 DATOS REFERENCIALES DEL(LA) <strong>CONYUGE</strong> E <strong>HIJOS</strong> DEL TRABAJADOR:
                           <div class="table-responsive">
                           <asp:GridView ID="gvdatoshijos" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="id"  OnRowCommand="gvdatoshijos_RowCommand" ShowFooter="True" OnRowDeleting="gvdatoshijos_RowDeleting" OnRowDataBound="gvdatoshijos_RowDataBound" Font-Size="X-Small">
                               <Columns>

                                     <asp:TemplateField HeaderText="APELLIDOS">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" Text='<%# Eval("APELLIDOS") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthapellidos" style="text-transform:uppercase;" Text='<%# Eval("APELLIDOS") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txthapellidosFooter" style="text-transform:uppercase;"   placeholder="Apellidos" runat="server" Width="100%" BackColor="#FFFFCC" MaxLength="30" />
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                 
                                    <asp:TemplateField HeaderText="NOMBRES">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" Text='<%# Eval("NOMBRES") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthnombres"  style="text-transform:uppercase;" Text='<%# Eval("NOMBRES") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txthnombresFooter" style="text-transform:uppercase;" placeholder="Nombres" runat="server" Width="100%" BackColor="#FFFFCC" MaxLength="30" />
                                        </FooterTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="DNI">
                                        <ItemTemplate>
                                            <asp:Label ID="LabelDNI" Text='<%# Eval("DNI") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthdni" Text='<%# Eval("DNI") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txthdniFooter" placeholder="DNI" runat="server" Width="100%" BackColor="#FFFFCC" MaxLength="8" TextMode="Number" />
                                        </FooterTemplate>
                                        <HeaderStyle Width="80px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>


                                   <asp:TemplateField HeaderText="SEXO">
                                        <ItemTemplate>
                                            <asp:Label ID="lblsexo" Text='<%# Eval("SEXO") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtsexo" Text='<%# Eval("SEXO") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:DropDownList ID="ddlhSexofooter" runat="server" Width="100%" BackColor="#FFFFCC" Font-Size="X-Small">
                                                <asp:ListItem Value="M">MASCULINO</asp:ListItem>
                                                <asp:ListItem Value="F">FEMENINO</asp:ListItem>
                                            </asp:DropDownList>
                                        </FooterTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="PARENTESCO">
                                        <FooterTemplate>
                                            <asp:DropDownList ID="ddlhidParentesco" runat="server" DataSourceID="SqlDataSourceIDPARENTESCO" DataTextField="parentesco" DataValueField="id" Width="100%"  BackColor="#FFFFCC" >
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceIDPARENTESCO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT id,parentesco,grupo FROM rrhh.PerParentesco WHERE GRUPO=1"></asp:SqlDataSource>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" Text='<%# Eval("PARENTESCO") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthparentesco" Text='<%# Eval("PARENTESCO") %>' runat="server" />
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                   <asp:TemplateField HeaderText="F. NACIMIENTO">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4"   Text='<%# Eval("FNAC","{0:dd/MM/yyyy}") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthfnacimeinto" Text='<%# Eval("FNAC") %>' runat="server" Width="50px" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txthfnacimeintoFooter" runat="server" TextMode="Date" Width="100%" BackColor="#FFFFCC" />
                                        </FooterTemplate>
                                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <HeaderStyle Width="90px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="EST. CIVIL">
                                        <FooterTemplate>
                                            <asp:DropDownList ID="ddhEstadoCivil" runat="server" DataSourceID="SqlDataSource1ec" DataTextField="descripcion" DataValueField="idtp" BackColor="#EFFAEF" Width="100%">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1ec" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idtp,descripcion from rrhh.tpEstadoCivil "></asp:SqlDataSource>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" Text='<%# Eval("ESTADOCIVIL") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthEstadoCivil" Text='<%# Eval("ESTADOCIVIL") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                         <HeaderStyle Width="90px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="OCUPACIÓN">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" Text='<%# Eval("OCUPACION") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthocupacion"  style="text-transform:uppercase;" Text='<%# Eval("OCUPACION") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txthocupacionFooter" style="text-transform:uppercase;" placeholder="Ocupación"  runat="server" Width="100%" BackColor="#FFFFCC" MaxLength="30" />
                                        </FooterTemplate>
                                    </asp:TemplateField>

                                  
                                    <asp:TemplateField HeaderText="VIVE">
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" Text='<%# Eval("ESTADO") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthEstado" Text='<%# Eval("ESTADO") %>' runat="server" Width="50px" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:DropDownList ID="ddlhvivo" runat="server"  Width="100%"  BackColor="#FFFFCC">
                                                <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                                <asp:ListItem Value="0">NO</asp:ListItem>
                                            </asp:DropDownList>
                                        </FooterTemplate>
                                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                            
                                   <asp:TemplateField>
                                        <ItemTemplate>
                                            <%--<asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>--%>
                                            <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/eliminarusuario.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                                            <asp:ImageButton ID="ImageButton4" ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:ImageButton ID="ImageButton5" ImageUrl="~/Images/agregarUsuario.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                               </Columns>
                               <FooterStyle BackColor="#FFFFCC" />
                               <HeaderStyle BackColor="#EDF0F3" />
                           </asp:GridView>
                           <asp:SqlDataSource ID="SqlDataSourcehijos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Select id, idPersonal, apellidos, nombres, DNI, idparentesco, fnacimeinto, ocupacion, EstadoCivil, Estado from rrhh.PersonalHijos where idPersonal = @idPersonal">
                               <SelectParameters>
                                   <asp:ControlParameter ControlID="lblIdEmpleado" Name="idPersonal" PropertyName="Text" />
                               </SelectParameters>
                           </asp:SqlDataSource>
                               <span class="auto-style2"><small class="auto-style1">(<asp:Label ID="lblhijosreg" runat="server">0</asp:Label>
                               </small><span class="auto-style1">&nbsp; registros)</span></span></div>
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
         
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
                            <br />
                           <br />
                            <br />
                       </div>
                      <div class="form-row">  
                           </div>
                      <div class="form-row">  
                          3.2 DATOS FAMILIARES A QUIENES NOTIFICAR EN UNA SITUACIÓN DE EMERGENCIA:
                        <div class="table-responsive">
                           <asp:GridView ID="gvFamemergencia" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="id" ShowFooter="True" OnRowCommand="gvFamemergencia_RowCommand" OnRowDataBound="gvFamemergencia_RowDataBound" OnRowDeleting="gvFamemergencia_RowDeleting" Font-Size="Small">
                               <Columns>
                                    <asp:TemplateField HeaderText="APELLIDOS">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfapellidos" style="text-transform:uppercase;" Text='<%# Eval("apellidos") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txtfapellidosFooter"  style="text-transform:uppercase;" placeholder="Apellidos" runat="server" Width="100%" BackColor="#FFFFCC" MaxLength="30" />
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("apellidos") %>' />
                                        </ItemTemplate>
                                        <HeaderStyle Width="180px" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="NOMBRES">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfnombres" style="text-transform:uppercase;" Text='<%# Eval("nombres") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txtfnombresFooter"  style="text-transform:uppercase;" placeholder="Nombres" runat="server" Width="100%" BackColor="#FFFFCC" MaxLength="30" />
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("nombres") %>' />
                                        </ItemTemplate>
                                        <HeaderStyle Width="180px" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="PARENTESCO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfparentesco" Text='<%# Eval("parentesco") %>' runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:DropDownList ID="ddfamiliar2" runat="server"  BackColor="#FFFFCC"  Width="100%" DataSourceID="SqlDataSourceparentscogrupo2" DataTextField="parentesco" DataValueField="parentesco">
                                                <asp:ListItem>PADRE</asp:ListItem>
                                                <asp:ListItem>MADRE</asp:ListItem>
                                                <asp:ListItem>HERMANO(A)</asp:ListItem>
                                                <asp:ListItem>PRIMO(A)</asp:ListItem>
                                                <asp:ListItem>TIO(A)</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceparentscogrupo2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT id,parentesco,grupo FROM rrhh.PerParentesco"></asp:SqlDataSource>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("parentesco") %>' />
                                        </ItemTemplate>
                                        <HeaderStyle Width="110px" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="DIRECCIÓN">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" Text='<%# Eval("direccion") %>' runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfdireccion" Text='<%# Eval("direccion") %>' runat="server" MaxLength="450" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txtfdireccionFooter"  style="text-transform:uppercase;" placeholder="Dirección" runat="server" Width="100%" BackColor="#FFFFCC" />
                                        </FooterTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="TELÉFONO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfTelefono" Text='<%# Eval("telefono") %>' runat="server" Width="110px" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txtfTelefonoFooter" placeholder="Teléfono" runat="server" Width="100px" BackColor="#FFFFCC" MaxLength="15" TextMode="Number" />
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("telefono") %>' />
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <EditItemTemplate>
                                            <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                                            <asp:ImageButton ID="ImageButton4" ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:ImageButton ID="ImageButton5" ImageUrl="~/Images/agregarUsuario.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <%--<asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>--%>
                                            <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Images/eliminarusuario.png" ToolTip="Delete" Width="20px" />
                                        </ItemTemplate>
                                        <HeaderStyle Width="20px" />
                                    </asp:TemplateField>
                                </Columns>
                               <FooterStyle BackColor="#FFFFCC" />
                               <HeaderStyle BackColor="#EDF0F3" />

                           </asp:GridView>
                          </div>
                           <span class="auto-style2"><small class="auto-style1">(<asp:Label ID="lblFamiliarReg" runat="server">0</asp:Label>
                          </small><span class="auto-style1">&nbsp;registros)</span></span><br />
                           <asp:Label ID="lblfSuccessMessage" Text="" runat="server" ForeColor="Green" />
           
            <asp:Label ID="lblfErrorMessage" Text="" runat="server" ForeColor="Red" />
                       </div>

                  </div>
                   <div class="panel-footer">

                       <asp:Button ID="btnanterior3" runat="server" CssClass="btn btn-success" Text="&lt; ANTERIOR" OnClick="btnanterior3_Click1" />
                       <asp:Button ID="btnactualizar3" runat="server" Text="SIGUIENTE &gt;&gt;" OnClick="btnactualizar3_Click" CssClass="btn btn-success" />

                       </div>
             </div>

        </asp:Panel>

      <asp:Panel ID="Panel4" runat="server">
         
              <div class="panel panel-default">
                  <div class="panel-heading">PASO 4.1: LICENCIA DE CONDUCIR </div>
                 
                  <div class="panel-body">
                     
                       <div class="form-row">  
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddltpcategoriaLicencia" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceNlicencia" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>
                               
                                <asp:SqlDataSource ID="SqlDataSourceNlicencia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,descripcion from rrhh.CategoriaLicenciaconducir"></asp:SqlDataSource>
                               
                                <label for="ddltpcategoriaLicencia">CATEGORIA</label>
                                         </div>

                            <div class="col-md-4">
                                <asp:TextBox ID="txt41nunLicencia" class="form-control" placeholder="número de licencia" runat="server"></asp:TextBox>
                                <label for="txt41nunLicencia">Nº DE LICENCIA</label>
                                </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txt41Licenciafv" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                <label for="txt41Licenciafv">FECHA VENCIMIENTO LICENCIA</label>
                               </div>
                        </div>
                      </div>
                  </div>

           <div class="panel panel-default">
                  <div class="panel-heading">PASO 4.2: CUENTA DE HABERES </div>
                 
                  <div class="panel-body">
                     
                       <div class="form-row">  
                           <div class="col-md-4 ">
                               <asp:DropDownList ID="ddl42tpbanco" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1TPBANCO" DataTextField="banco" DataValueField="ID"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1TPBANCO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT ID,banco FROM tb_bancos"></asp:SqlDataSource>
                                <label for="ddl42tpbanco">BANCO CUENTA HABERES</label>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddl42tpbanco" ErrorMessage="Seleccionar banco cuenta haberes." ForeColor="#CC0000" InitialValue="100">*</asp:RequiredFieldValidator>
                                 </div>
                           <%--</div>
                           <div class="form-row">  --%>
                            <div class="col-md-4">
                                <asp:TextBox ID="txt42Ncuenta" class="form-control" runat="server"></asp:TextBox>
                                <label for="txt42Ncuenta">Nº CUENTA HABERES</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia7" runat="server" ControlToValidate="txt42Ncuenta" ErrorMessage="Ingresar número de cuenta haberes." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                                </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txt42CCI" class="form-control" runat="server"></asp:TextBox>
                                <label for="txt42CCI">Nº CCI CUENTA HABERES</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia8" runat="server" ControlToValidate="txt42CCI" ErrorMessage="Ingresar CCI cuenta haberes." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                               </div>
                        </div>

                            <div class="form-row">  
                                <div class="col-md-4 ">
                               <asp:DropDownList ID="ddlbancoCTS" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1TPBANCO" DataTextField="banco" DataValueField="ID"></asp:DropDownList>                    
                                    <label for="ddl42tpbanco">BANCO CUENTA CTS</label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlbancoCTS" ErrorMessage="Seleccionar banco cuenta CTS." ForeColor="#CC0000" InitialValue="100">*</asp:RequiredFieldValidator>
                                     </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txt42Ncuentacts" class="form-control" runat="server"></asp:TextBox>
                                <label for="txt42Ncuentacts">Nº CUENTA CTS</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia9" runat="server" ControlToValidate="txt42Ncuentacts" ErrorMessage="Ingresar número de cuenta CTS." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                                </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txt42ctsCCI" class="form-control" runat="server"></asp:TextBox>
                                <label for="txt42ctsCCI">Nº CCI CUENTA CTS</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia10" runat="server" ControlToValidate="txt42ctsCCI" ErrorMessage="Ingresar CCI cuenta CTS." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                               </div>
                        </div>

                       <div class="form-row">  
                                <div class="col-md-4 ">
                               <asp:DropDownList ID="ddlBancoFree" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1TPBANCO" DataTextField="banco" DataValueField="ID"></asp:DropDownList>                    
                                    <label for="ddl42tpbanco">BANCO CUENTA FREE</label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlBancoFree" ErrorMessage="Seleccionar banco cuenta FREE (Al no tener cuenta seleccionar BANCO REFERENCIAL)" ForeColor="#CC0000" InitialValue="100">*</asp:RequiredFieldValidator>
                                     </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtfree" class="form-control" runat="server"></asp:TextBox>
                                <label for="txtfree">Nº CUENTA FREE</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia11" runat="server" ControlToValidate="txtfree" ErrorMessage="Ingresar número de cuenta Free (Al no tener cuenta ingresar NO INDICA)." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                                </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txtfreCCI" class="form-control" runat="server"></asp:TextBox>
                                <label for="txtfreCCI">Nº CCI CUENTA FREE</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20referencia12" runat="server" ControlToValidate="txtfreCCI" ErrorMessage="Ingresar CCI cuenta Free (Al no tener cuenta ingresar NO INDICA)." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                               </div>
                                
                        </div>
                      <asp:ValidationSummary ID="ValidationSummary24" runat="server" ForeColor="#CC0000" />
                           </div>

               
                     

           <div class="panel-footer">

               <asp:Button ID="btn4anterior" runat="server" CssClass="btn btn-success" OnClick="btn4anterior_Click" Text="&lt; ANTERIOR" />
               <asp:Button ID="btn4actualizar" runat="server" OnClick="btn4actualizar_Click" Text="SIGUIENTE &gt;&gt;" CssClass="btn btn-success" />

               </div> </div>
                
                      </asp:Panel>


         <asp:Panel ID="Panel50" runat="server">

         <asp:Panel ID="Panel51" runat="server">

              <div class="panel panel-default">
                  <div class="panel-heading">PASO 5.1: ESTUDIOS PRIMARIOS - SECUNDARIOS</div>
                 
                  <div class="panel-body">
                     
                       <div class="form-row">  
                          A. ESTUDIOS PRIMARIOS:
                            <div class="col-md-12">
                                <div class="table-responsive">
                                <asp:GridView ID="gvEstudioPrimarios" CssClass="table table-condensed table-bordered table-hover" runat="server" DataSourceID="SqlDataSourceEprimarios" AutoGenerateColumns="False" DataKeyNames="ID2" Width="100%" OnRowCommand="gvEstudioPrimarios_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                        <asp:BoundField DataField="EDUCACION" HeaderText="EDUCACION" SortExpression="EDUCACION" >
                                        <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                        <asp:BoundField DataField="ESPECIALIDAD" HeaderText="ESPECIALIDAD" SortExpression="ESPECIALIDAD" Visible="False" />
                                        <asp:BoundField DataField="CENTROESTUDIOS" HeaderText="CENTROESTUDIOS" SortExpression="CENTROESTUDIOS" />
                                        <asp:BoundField DataField="COMPLETA" HeaderText="COMPLETA" SortExpression="COMPLETA" >
                                        <HeaderStyle Width="120px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DESDE" HeaderText="DESDE" SortExpression="DESDE" DataFormatString="{0:dd/MM/yyyy}" >
                                        <HeaderStyle Width="120px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="HASTA" HeaderText="HASTA" SortExpression="HASTA" DataFormatString="{0:dd/MM/yyyy}" >
                                        <HeaderStyle Width="120px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idGradoAcademico" HeaderText="idGradoAcademico" SortExpression="idGradoAcademico" Visible="False" />
                                        <asp:BoundField DataField="GRADOACADEMICO" HeaderText="GRADOACADEMICO" SortExpression="GRADOACADEMICO" Visible="False" />
                                        <asp:BoundField DataField="ID2" HeaderText="ID2" ReadOnly="True" SortExpression="ID2" Visible="False" />
                                        <asp:ButtonField CommandName="Delete1" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >

                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="20px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra estudios primarios.
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceEprimarios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.estudios" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="op" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblIdEmpleado" DefaultValue="" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    <br />
                                    </div>
                                </div>
                           </div>
                       <div class="form-row">  <br />
                          B. ESTUDIOS SECUNDARIOS:
                            <div class="col-md-12">
                                <div class="table-responsive">
                                <asp:GridView ID="GridViewEsecundarios" CssClass="table table-condensed table-bordered table-hover" runat="server" DataSourceID="SqlDataSourceeSecundarios" AutoGenerateColumns="False" DataKeyNames="ID2" Width="100%" OnRowCommand="GridViewEsecundarios_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                        <asp:BoundField DataField="EDUCACION" HeaderText="EDUCACION" SortExpression="EDUCACION" >
                                        <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                        <asp:BoundField DataField="ESPECIALIDAD" HeaderText="ESPECIALIDAD" SortExpression="ESPECIALIDAD" Visible="False" />
                                        <asp:BoundField DataField="CENTROESTUDIOS" HeaderText="CENTRO DE ESTUDIOS" SortExpression="CENTROESTUDIOS" />
                                        <asp:BoundField DataField="DESDE" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DESDE" SortExpression="DESDE">
                                        <HeaderStyle Width="120px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="HASTA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="HASTA" SortExpression="HASTA">
                                        <HeaderStyle Width="120px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idGradoAcademico" HeaderText="idGradoAcademico" SortExpression="idGradoAcademico" Visible="False" />
                                        <asp:BoundField DataField="GRADOACADEMICO" HeaderText="GRADO ACADEMICO" SortExpression="GRADOACADEMICO" Visible="False" />
                                        <asp:BoundField DataField="COMPLETA" HeaderText="COMPLETA" SortExpression="COMPLETA" >
                                        <HeaderStyle Width="120px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>

                                         <asp:BoundField DataField="ID2" HeaderText="ID2" ReadOnly="True" SortExpression="ID2" Visible="False" />

                                         <asp:ButtonField CommandName="Delete2" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >

                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="20px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                       
                                       
                                 
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra estudios secundarios.
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceeSecundarios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.estudios" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="op" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblIdEmpleado" DefaultValue="" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    </div>
                                </div><br /><br />
                           </div>

                     

                       <div class="form-row">   
                           <br />
                           <br />
                            <div class="col-md-2">
                                <asp:DropDownList ID="ddlEducacionbasica" CssClass="form-control input-sm" runat="server" DataSourceID="SqlDataSourceEBasico" DataTextField="descripcion" DataValueField="id" ToolTip="Seleccionar primaria  y secundaria." BackColor="#FFFFCC"></asp:DropDownList>
                             
                                <asp:SqlDataSource ID="SqlDataSourceEBasico" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,descripcion from rrhh.CatEducion where id in (1,2)
"></asp:SqlDataSource>                           
                                <label for="ddlEducacionbasica">EDUCACIÓN</label>
                                         </div>

                           
                           <div class="col-md-4">
                                <asp:TextBox ID="txtCentroEstudios"  style="text-transform:uppercase;" class="form-control input-sm"  runat="server" ToolTip="Ingresar centro de estudios" BackColor="#FFFFCC" ></asp:TextBox>
                                <label for="txtCentroEstudios">CENTRO DE ESTUDIOS</label>
                                </div>
                            <div class="col-md-1">
                                 <asp:DropDownList ID="ddleprimaria" class="form-control input-sm"  runat="server"  DataTextField="descripcion" DataValueField="id" ToolTip="Estudios completos ( SI / NO )" Width="100%" BackColor="#FFFFCC">
                                     <asp:ListItem Selected="True">SI</asp:ListItem>
                                     <asp:ListItem>NO</asp:ListItem>
                                 </asp:DropDownList>
                                <label for="ddleprimaria">COMPLETA</label>
                                </div>
                           <div class="col-md-2">
                                <asp:TextBox ID="txtpromariaDesde" class="form-control input-sm"  placeholder="dd / MM / año"  runat="server" ToolTip="Fecha desde" TextMode="Date" BackColor="#FFFFCC"></asp:TextBox>
                                <label for="txtpromariaDesde">DESDE</label>
                                </div>
                           <div class="col-md-2">
                                <asp:TextBox ID="txtsecundariaHasta" class="form-control input-sm"  placeholder="dd / MM / año"  runat="server" ToolTip="Fecha hasta." TextMode="Date" BackColor="#FFFFCC"></asp:TextBox>
                                <label for="txtsecundariaHasta">HASTA</label>
                                </div>
                           <div class="col-md-1">
                               <asp:Button ID="btnRegistrarEbasica" CssClass="btn btn-success" runat="server" Text="+" ToolTip="Registrar Educación Básica." Width="100%" OnClick="btnRegistrarEbasica_Click" />
                              
                               </div>
                           <br />  
                           <br />  
                           <br />  
                           <br />
                           <br />
                           <br />  
                            <asp:Label ID="lblmensajecentroestudiospc" runat="server" ForeColor="#CC0000"></asp:Label>

                        </div>
                       
                      <br />                      
                       <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click1" Text="&lt;&lt; ANTERIOR" />
                       <asp:Button ID="btn51" runat="server" CssClass="btn btn-success" OnClick="btn51_Click" Text="SIGUIENTE &gt;&gt;" Visible="False" />
                       <asp:LinkButton ID="btn51_dos" runat="server" CssClass="btn btn-success" OnClick="btn51_dos_Click" Width="180px">SIGUIENTE &gt;&gt;</asp:LinkButton>
                      </div>
                  </div>


             </asp:Panel>
         <asp:Panel ID="Panel52" runat="server">
             

                <div class="panel panel-default">
                  <div class="panel-heading">PASO 5.2: EDUCACIÓN SUPERIOR:</div>
                 
                  <div class="panel-body">
                     
                       <div class="form-row">  
                         <%-- A. ESTUDIOS PRIMARIOS:--%>
                            <div class="col-md-12">
                                <div class="table-responsive">
                                <asp:GridView ID="gvEstudiossuperiores" CssClass="table table-condensed table-bordered table-hover" runat="server" DataSourceID="SqlDataSourceEsuperiores" AutoGenerateColumns="False" DataKeyNames="ID2" Width="100%" OnRowCommand="gvEstudiossuperiores_RowCommand">
                                    <Columns>

                                      <%--   <asp:TemplateField>
                                        <ItemTemplate>
                                            
                                            <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/eliminarr.png" runat="server" OnClientClick="return confirm('¿Desea eliminar el registro?');" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                                        </ItemTemplate>
                                       
                                       
                                    </asp:TemplateField>--%>

                                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                        <asp:BoundField DataField="EDUCACION" HeaderText="EDUCACION" SortExpression="EDUCACION" />
                                        <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                        <asp:BoundField DataField="ESPECIALIDAD" HeaderText="ESPECIALIDAD" SortExpression="ESPECIALIDAD" />
                                        <asp:BoundField DataField="CENTROESTUDIOS" HeaderText="CENTRO ESTUDIOS" SortExpression="CENTROESTUDIOS" />
                                        <asp:BoundField DataField="DESDE" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DESDE" SortExpression="DESDE">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="HASTA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="HASTA" SortExpression="HASTA">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idGradoAcademico" HeaderText="idGradoAcademico" SortExpression="idGradoAcademico" Visible="False" />
                                        <asp:BoundField DataField="GRADOACADEMICO" HeaderText="GRADOACADEMICO" SortExpression="GRADOACADEMICO" />
                                        <asp:BoundField DataField="COMPLETA" HeaderText="COMPLETA" SortExpression="COMPLETA">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="ID2" HeaderText="ID2" ReadOnly="True" SortExpression="ID2" Visible="False" />
                                          <asp:ButtonField CommandName="Delete22" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >

                                        <ControlStyle Height="20px" Width="20px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                       
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra estudios superiores.
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                    <br />
                                    <asp:Label ID="lblErrorMessage111" runat="server"></asp:Label>
                                <asp:SqlDataSource ID="SqlDataSourceEsuperiores" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.estudios" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="3" Name="op" Type="Int32" />
                                        <asp:ControlParameter ControlID="lblIdEmpleado" DefaultValue="" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    </div>
                                </div>
                           </div>
                     <br />
                     
                       <div class="form-row">     
                           <br />
                       <br />
                           <div class="col-md-3">
                               <asp:DropDownList ID="ddlEStpcentro" runat="server" CssClass="form-control input-sm"  DataSourceID="SqlDataSourceESTIPOCENTRO" DataTextField="descripcion" DataValueField="id" BackColor="#FFFFCC"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceESTIPOCENTRO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,descripcion from rrhh.CatEducion where idgrupo in (3,4) order by id"></asp:SqlDataSource>
                                <label for="txtCentroEstudios">ESTUDIO SUPERIOR</label>
                               </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtESespecialidad"  style="text-transform:uppercase;" class="form-control input-sm"  runat="server" ToolTip="Ingresar especialidad" BackColor="#FFFFCC" ></asp:TextBox>
                                <label for="txtCentroEstudios">ESPECIALIDAD</label>
                                </div>
                           <div class="col-md-6">
                                <asp:TextBox ID="txtEScentroestudios"  style="text-transform:uppercase;" class="form-control input-sm"  runat="server" ToolTip="Ingresar centro de estudios superiores" BackColor="#FFFFCC" ></asp:TextBox>
                                <label for="txtCentroEstudios">CENTRO DE ESTUDIOS</label>
                                </div>
                           </div>
                        <div class="form-row">   
                           <div class="col-md-3">
                                <asp:TextBox ID="txtESdesde" class="form-control input-sm" placeholder="dd / MM / año" runat="server" ToolTip="Fecha desde" TextMode="Date" BackColor="#FFFFCC"></asp:TextBox>
                                <label for="txtpromariaDesde">DESDE</label>
                                </div>
                           <div class="col-md-3">
                                <asp:TextBox ID="txtEShasta" class="form-control input-sm"  placeholder="dd / MM / año" runat="server" ToolTip="Fecha hasta" TextMode="Date" BackColor="#FFFFCC"></asp:TextBox>
                                <label for="txtsecundariaHasta">HASTA</label>
                                </div>  
                           <div class="col-md-3">
                               <asp:DropDownList ID="ddlGradoAcademico" CssClass="form-control input-sm" runat="server" DataSourceID="SqlDataSourceESgradoAcademico" DataTextField="grado" DataValueField="id" BackColor="#FFFFCC"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceESgradoAcademico" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT id,grado FROM rrhh.tpGradoAcademico
"></asp:SqlDataSource>
                                <label for="txtsecundariaHasta">GRADO ACADÉMICO</label>
                               </div>   
                                
                                 <div class="col-md-2">
                                 <asp:DropDownList ID="ddEStpcompleta" class="form-control input-sm"  runat="server"  DataTextField="descripcion" DataValueField="id" ToolTip="Estudios completos ( SI / NO )" BackColor="#FFFFCC">
                                     <asp:ListItem Selected="True">SI</asp:ListItem>
                                     <asp:ListItem>NO</asp:ListItem>
                                 </asp:DropDownList>
                                <label for="ddleprimaria">COMPLETA</label>
                                </div> 
                           <div class="col-md-1">
                               <asp:Button ID="btnESregistrar" CssClass="btn btn-success" runat="server" Text="+" ToolTip="Registrar educación superior" Width="100%" OnClick="btnESregistrar_Click" />
                               </div>  
                            
                            &nbsp;
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblmensajeSuperiores" runat="server" ForeColor="#CC0000"></asp:Label>
                        </div>

               </div>
                     <div class="panel-footer">
                         <asp:Button ID="btn52anterior" runat="server" CssClass="btn btn-success" OnClick="btn52anterior_Click" Text="&lt; ANTERIOR" />
                      <asp:Button ID="btn52" runat="server" Text="SIGUIENTE >" CssClass="btn btn-success" OnClick="btn52_Click" />
                      </div>
              
            </div>
             
             </asp:Panel>

         <asp:Panel ID="Panel53" runat="server">

              <div class="panel panel-default">
                  <div class="panel-heading">PASO 5.3: CONOCIMIENTO DE IDIOMAS:</div>                
                  <div class="panel-body">                    
                       <div class="form-row">  
                         <%-- A. ESTUDIOS PRIMARIOS:--%>
                            <div class="col-md-12">
                                <div class="table-responsive">
                                <asp:GridView ID="gvIdiomasHablados" runat="server" CssClass="table table-condensed table-bordered table-hover" DataSourceID="SqlDataSourceIdiomas" AutoGenerateColumns="False" DataKeyNames="id" Width="100%" OnRowCommand="gvIdiomasHablados_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" Visible="False" />
                                        <asp:BoundField DataField="IDIDIOMA" HeaderText="IDIDIOMA" SortExpression="IDIDIOMA" Visible="False" />
                                        <asp:BoundField DataField="IDIOMA" HeaderText="IDIOMA" SortExpression="IDIOMA" />
                                        <asp:BoundField DataField="LEE" HeaderText="LEE" SortExpression="LEE" >
                                        <HeaderStyle Width="150px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="HABLA" HeaderText="HABLA" SortExpression="HABLA" >
                                        <HeaderStyle Width="150px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ESCRIBE" HeaderText="ESCRIBE" SortExpression="ESCRIBE" >
                                          <HeaderStyle Width="150px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                          <asp:ButtonField CommandName="eliminarIdioma" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >

                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="30px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra idimas.
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceIdiomas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.PerIdiomas" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblIdEmpleado" Name="idpersonal" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    </div>
                                <br />
                             </div>
                       </div>

                       <div class="form-row">   
                           <br />
                           <br />
                            <div class="col-md-2">
                                <asp:DropDownList ID="ddl5idtpidiomas" CssClass="form-control input-sm" runat="server" DataSourceID="SqlDataSourceidiomasddl" DataTextField="idioma" DataValueField="id" ToolTip="Seleccionar primaria  y secundaria." BackColor="#FFFFCC"></asp:DropDownList>
                             
                                <asp:SqlDataSource ID="SqlDataSourceidiomasddl" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,idioma from rrhh.tpidioma
"></asp:SqlDataSource>                           
                                <label for="ddlEducacionbasica">IDIOMA</label>
                                         </div>

                           
                           <div class="col-md-3">
                               <asp:RadioButtonList ID="rbidiomaLee" runat="server" RepeatDirection="Horizontal" Width="100%" BackColor="#FFFFCC">
                                   <asp:ListItem Selected="True">SI</asp:ListItem>
                                   <asp:ListItem>NO</asp:ListItem>
                               </asp:RadioButtonList>
                                <label for="rbidiomaLee">LEE CON FACILIDAD</label>
                            </div>
                            <div class="col-md-3">
                               <asp:RadioButtonList ID="rbidiomaHabla" runat="server" RepeatDirection="Horizontal" Width="100%" BackColor="#FFFFCC">
                                   <asp:ListItem Selected="True">SI</asp:ListItem>
                                   <asp:ListItem>NO</asp:ListItem>
                               </asp:RadioButtonList>
                                <label for="rbidiomaHabla">HABLA CON FACILIDAD</label>
                            </div>
                           <div class="col-md-3">
                               <asp:RadioButtonList ID="rbidiomaEscribe" runat="server" RepeatDirection="Horizontal" Width="100%" BackColor="#FFFFCC">
                                   <asp:ListItem Selected="True">SI</asp:ListItem>
                                   <asp:ListItem>NO</asp:ListItem>
                               </asp:RadioButtonList>
                                <label for="rbidiomaEscribe">ESCRIBE CON FACILIDAD</label>
                            </div>
                           <div class="col-md-1">
                               <asp:Button ID="btnidiomasRegistrar" CssClass="btn btn-success" runat="server" Text="+" ToolTip="Registrar conocimientos en idiomas" Width="100%" OnClick="btnidiomasRegistrar_Click"  />
                               </div>

                        </div>

                       <asp:ValidationSummary ID="ValidationSummary21" runat="server" ForeColor="#CC0000" />
                 </div>

                    <div class="panel-footer">
                        <asp:Button ID="btn5anterior" runat="server" Text="&lt;&lt; ANTERIOR" CssClass="btn btn-success" OnClick="btn5anterior_Click" />
                        <asp:Button ID="btn5finalizarFicha" runat="server" Text="FINALIZAR FICHA PERSONAL" CssClass="btn btn-success" OnClick="btn5finalizarFicha_Click" OnClientClick="return confirm('Felicitaciones, ficha finalizada correctamente.');" />
                        </div>
            </div>
             </asp:Panel>


             </asp:Panel>
        <a href="javascript:window.opener='x';window.close();">CERRAR FORMULARIO</a>&nbsp;&nbsp;  
    </form>
        </div>
  
</body>
</html>
