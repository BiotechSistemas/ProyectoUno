<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal.aspx.cs" Inherits="biotech.consultas.Personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PERSONAL</title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <style type="text/css">
    footer {
	background-color:#3cbf05;
	color: green;
 
  padding: 15px;}
        </style>
      <style type="text/css">
	
a:link {
/*color:#93b83b;*/
color: green;
}
a:visited {
/*color:#93b83b;*/
color: green;
}
a:hover {
    color:#93b83b;
/*color:#696968;*/
}

	</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <header>
		<section >
		<div class="container">
         <img src="https://www.biotechcorp.com.pe/webapp/img/logo.png" width="117px" height="66px">
            <br />
     
		</div>
	</section>
	</header>
		<div class="row">
            <h1 class="text-success">
           <span class="glyphicon glyphicon-leaf"></span>
           NUESTROS COLABORADORES</h1>
			<section class="posts col-md-12>
				<div class="miga-de-pan">
					<ol class="breadcrumb">                
						
						<li><a href="NuestrosColaboradores.aspx">Principal</a></li>    
						
                    </ol>
		        </div>

			
			</section>  


		</div>


         <div class="row">

              <div class="col-md-6 col-md-offset-3">
              <div class="row">
             <div class="panel panel-default">
              
              <div class="panel-body">

             
    <div class="col-md-6">
        <strong>Apellidos y nombres:</strong> 
        <asp:Label ID="lblidPersonal" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblnombrescompletos" runat="server"></asp:Label>
        <br /> <br />
       
        <strong>Cargo:</strong> <br />
        <asp:Label ID="lblcargodescripcion" runat="server"></asp:Label>
&nbsp;<br /> <br />
        <strong>Zona:</strong>
        <asp:Label ID="lblzona" runat="server"></asp:Label>
         <br /> <br />
        <strong>Teléfono:</strong>
        <asp:Label ID="lbltelefono" runat="server"></asp:Label>
         <br /> <br />
        <strong>E-mail:</strong> <br />
        <asp:Label ID="lblcorreo" runat="server"></asp:Label>
        
        </div>
             <div class="col-md-6">
         <asp:ImageButton ID="imagen" class="img-thumbnail" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" /> 
        </div>


 <div class="col-md-12">

      <br /> <br />
        <strong>Area:</strong> <br />
        <asp:Label ID="lblperfilProfesional" runat="server"></asp:Label>
         <br /> 
        <br />
        <strong>Funciones:</strong> <br />
        
        <asp:GridView ID="gvareacargo" runat="server" DataSourceID="SqlDataSourceAreaCargo" AutoGenerateColumns="False" DataKeyNames="id" GridLines="None" Width="100%" ShowHeader="False">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="idpersonal" HeaderText="idpersonal" SortExpression="idpersonal" Visible="False" />
                <asp:BoundField DataField="descripcion" HeaderText="Área responsable:" SortExpression="descripcion" />
            </Columns>
            <EmptyDataTemplate>
                No registra área responsable...
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceAreaCargo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.PerAreaResponsable" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidPersonal" Name="idpersonal" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
         <strong>Profesión:</strong> <br />
        <asp:GridView ID="gvprofesion" runat="server" DataSourceID="SqlDataSourceProfesion" AutoGenerateColumns="False" GridLines="None" Width="100%" ShowHeader="False">
            <Columns>
                <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                <asp:BoundField DataField="idCatEducacion" HeaderText="idCatEducacion" SortExpression="idCatEducacion" Visible="False" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" Visible="False" />
            </Columns>
            <EmptyDataTemplate>
                No registra área responsable...
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceProfesion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.nivelprofesional" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidPersonal" Name="idpersonal" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;<br /> 
     </div>


             </div>
                </div>
            </div>

        <div class="row">
    <div class="col-md-2  col-md-offset-5">
          
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/consultas/NuestrosColaboradores.aspx">Retornar</asp:LinkButton>
        </div>
			</div>

            </div>

        </div>
    </form>
</body>
</html>
