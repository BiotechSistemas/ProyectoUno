<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuestrosColaboradores.aspx.cs" Inherits="biotech.consultas.NuestrosColaboradores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>COLABORADORES</title>
  
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

<%-- <style type="text/css">
  body {

/* Ubicación de la imagen */

background-image: url(images/background-photo.jpg);

/* Para dejar la imagen de fondo centrada, vertical y

horizontalmente */

background-position: center center;

/* Para que la imagen de fondo no se repita */

background-repeat: no-repeat;

/* La imagen se fija en la ventana de visualización para que la altura de la imagen no supere a la del contenido */

background-attachment: fixed;

/* La imagen de fondo se reescala automáticamente con el cambio del ancho de ventana del navegador */

background-size: cover;

/* Se muestra un color de fondo mientras se está cargando la imagen

de fondo o si hay problemas para cargarla */

background-color: #3cbf05;

}
</style>--%>
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
						<li><a href="https://www.biotechcorp.com.pe/webapp/">Inicio</a></li>  
						<li><a href="">Nuestros colaboradores</a></li>    
						<li><a  href="#contenido1">Equipo Técnico Comercial</a></li>
						
                        <li><a  href="#contenido3">Equipo Administrativo</a></li>
                    </ol>
		        </div>

			
			</section>  </div>
			</div>
 
       <%-- <div class="row">
    <div class="col-md-2 col-md-offset-5">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="imggg" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreGG" runat="server" ForeColor="#333333"></asp:Label>
                <asp:Label ID="lblidgg" runat="server" Visible="False"></asp:Label>
                  </p>
         
              <p>
                <asp:LinkButton ID="lbtnCargoGG" runat="server" ForeColor="#006600"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
            </div>--%>
             <div id="contenido1">
         <h2  class="text-center">
           <asp:Image ID="Image2" runat="server" ImageUrl="~/images/logoicono.jpg" Width="30px" />
           EQUIPO TÉCNICO COMERCIAL</h2>
<%--<div class="row">
    <div class="col-sm-6 col-md-2  col-md-offset-5">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibcoordinador" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombrecoordinador" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidcorrdinador" runat="server" Text="" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtncoordinadorCArgo" runat="server" ForeColor="#006600"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
</div>--%>


  <div class="row">
    <div class="col-sm-6 col-md-2 col-md-offset-2">
      <div class="thumbnail">
        <a >
            <asp:ImageButton ID="ibasesor1" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibasesor1_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreasesor1" runat="server" ForeColor="#333333"></asp:Label>
                <asp:Label ID="lblidasesor1" runat="server" Visible="False"></asp:Label>
                  </p>
         
              <p>
                <asp:LinkButton ID="lbtnasesor1" runat="server" ForeColor="#006600" OnClick="lbtnasesor1_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
    <div class="col-sm-6 col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibasesor2" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibasesor2_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreasesor2" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidasesor2" runat="server" Text="" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtnCargoAsesor2" runat="server" ForeColor="#006600" OnClick="lbtnCargoAsesor2_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
      <div class="col-sm-6 col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibasesor3" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibasesor3_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreasesor3" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidasesor3" runat="server" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtnCargoasesor3" runat="server" ForeColor="#006600" OnClick="lbtnCargoasesor3_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
      <div class="col-sm-6 col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibasesor4" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibasesor4_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreasesor4" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidAsesor4" runat="server" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtnasesor4" runat="server" ForeColor="#006600" OnClick="lbtnasesor4_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
  
  </div>
                 </div>
 <div id="contenido2">

        

         <div class="row">

             
<div class="col-sm-6 col-md-2 col-md-offset-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibGerenteComercial" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibGerenteComercial_Click"  />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreGcomercial" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidGcomercial" runat="server" Text="" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtncgcomercialCArgo" runat="server" ForeColor="#006600" OnClick="lbtncgcomercialCArgo_Click" ></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>

<div class="col-sm-6 col-md-2  ">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibcoordinador" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibcoordinador_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombrecoordinador" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidcorrdinador" runat="server" Text="" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtncoordinadorCArgo" runat="server" ForeColor="#006600" OnClick="lbtncoordinadorCArgo_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>


    <div class="col-sm-6 col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibTecnico1" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibTecnico1_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombretecnico1" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidtecnico1" runat="server" Visible="False"></asp:Label>
         
              <p>
                <asp:LinkButton ID="lbtncarcoTecnico1" runat="server" ForeColor="#006600" OnClick="lbtncarcoTecnico1_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
             <%-- <div class="col-sm-6 col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibtecnico2" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibtecnico2_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombretec2" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidtec2" runat="server" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtnCargoTec2" runat="server" ForeColor="#006600" OnClick="lbtnCargoTec2_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>--%>
             <div class="col-sm-6 col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="ibtecnico3" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibtecnico3_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreTec3" runat="server" ForeColor="#333333"></asp:Label></p>
                  <asp:Label ID="lblidTecnico3" runat="server" Visible="False"></asp:Label>
              <p>
                <asp:LinkButton ID="lbtnCargoTec3" runat="server" ForeColor="#006600" OnClick="lbtnCargoTec3_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>
             </div>
     </div>
            <div id="contenido3">
   <h2 class="text-center"> <asp:Image ID="Image4" runat="server" ImageUrl="~/images/logoicono.jpg" Width="30px" /> EQUIPO ADMINISTRATIVO</h2>
      <div class="row">
                <div class="col-sm-6 col-md-2 col-md-offset-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ImageButtonAdmin1" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ImageButtonAdmin1_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lbladmin1" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidadmin1" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="lbtnadmincargo1" runat="server" ForeColor="#006600" OnClick="lbtnadmincargo1_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>

                <div class="col-sm-6 col-md-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ibadmin2" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibadmin2_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lblmonbreadmin2" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidnombreAdmin2" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="lbtncargoAdmin2" runat="server" ForeColor="#006600" OnClick="lbtncargoAdmin2_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>
                <div class="col-sm-6 col-md-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ibadmin3" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibadmin3_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lblNombreamind3" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidadmin3" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="lbtnCargoAdmin3" runat="server" ForeColor="#006600" OnClick="lbtnCargoAdmin3_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>
                <div class="col-sm-6 col-md-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ibadmin4" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibadmin4_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lblnombreadmin4" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidAdmin4" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="lbtnCargoAdmin4" runat="server" ForeColor="#006600" OnClick="lbtnCargoAdmin4_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>

        
    
             </div>



      <div class="row">

            <div class="col-sm-6 col-md-2 col-md-offset-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ibadmin5" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibadmin5_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lblnombreAdmin5" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidAdmin5" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="ltbCargoAdmin5" runat="server" ForeColor="#006600" OnClick="ltbCargoAdmin5_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>


                <div class="col-sm-4 col-md-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ibAdmin6" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibAdmin6_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lblnombreadmin6" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidAdmin6" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="lbtncargoAdmin6" runat="server" ForeColor="#006600" OnClick="lbtncargoAdmin6_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>

          <div class="col-sm-4 col-md-2">
                      <div class="thumbnail">
                        <a href="/w3images/lights.jpg" target="_blank">
                            <asp:ImageButton ID="ibAdmin7" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="ibAdmin7_Click" />          
                              <div class="caption text-center">
                            <p> <asp:Label ID="lblnombreadmin7" runat="server" ForeColor="#333333"></asp:Label></p>
                                  <asp:Label ID="lblidAdmin7" runat="server" Visible="False"></asp:Label>
                              <p>
                                <asp:LinkButton ID="lbtncargoAdmin7" runat="server" ForeColor="#006600" OnClick="lbtncargoAdmin7_Click"></asp:LinkButton></p>          
                          </div>         
                        </a>
                      </div>   
                </div>

              <div class="col-md-2">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
            <asp:ImageButton ID="imggg" class="img-circle" runat="server"  style="width:100%" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="imggg_Click" />          
              <div class="caption text-center">
            <p> <asp:Label ID="lblnombreGG" runat="server" ForeColor="#333333"></asp:Label>
                <asp:Label ID="lblidgg" runat="server" Visible="False"></asp:Label>
                  </p>
         
              <p>
                <asp:LinkButton ID="lbtnCargoGG" runat="server" ForeColor="#006600" OnClick="lbtnCargoGG_Click"></asp:LinkButton></p>          
          </div>         
        </a>
      </div>        
    </div>


        </div>
</div>

<div id="footer">
      <div class="container">


        <p class="text-muted credit">Biotech Corp S.A.C.</p>



      </div>
    </div>
    </div>
    </form>
</body>
</html>
