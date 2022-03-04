<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfiles.aspx.cs" Inherits="biotech.consultas.Perfiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <style type="text/css">
a:hover {
font-size:16px;
}
	 .auto-style1 {
         width: 500px;
     }
     .auto-style9 {
         width: 13px;
         font-weight: bold;
     }
     .auto-style10 {
         width: 135px;
         font-weight: bold;
         height: 20px;
     }
     .auto-style11 {
         width: 13px;
         font-weight: bold;
         height: 20px;
     }
     .auto-style12 {
         height: 20px;
     }
     .auto-style13 {
         width: 135px;
         font-weight: bold;
     }
	 .auto-style14 {
         color: #84C303;
         font-size: x-large;
     }
	 .auto-style15 {
         text-align: center;
     }
	</style>
     <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <title>Perfiles Biotech</title>
   
 
	<link rel="stylesheet" href="bootstrap.min.css">
	<link rel="stylesheet" href="estilos.css">
</head>
<body>
    <header>
		<section>
		<div class="container">
			    <img src="http://www.biotechcorp.com.pe/webapp/img/logo.png" width="117px" height="66px">
		</div>
	</section>
	</header>

    <%--<form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>



	<section class="container">
		<div class="row">
		<section class="posts col-md-9">
				<div class="miga-de-pan">
					<ol class="breadcrumb">
						<li><a href="http://www.biotechcorp.com.pe/webapp/index.html">Inicio</a></li>
						<li><a href="http://www.biotechcorp.com.pe/webapp/appcatalogoproductos.html">Categorias</a></li>
						<li class="active">PERFILES Y CARGOS</li>
					</ol>
				</div>
            <asp:Panel ID="pp1" runat="server">
            <h1 class="text-primary"><strong>ÁREA COMERCIAL</strong>
            </h1></asp:Panel>
 

            <form id="form1" runat="server">
    <div>
         <asp:Panel ID="Panel8" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="ImageButton8" class="img-thumbnail" runat="server" OnClick="ImageButton8_Click" />
                <%--<asp:Image ID="Image8" runat="server" class="img-thumbnail" ImageUrl="~/images/personal/ACHAC.jpg" />--%>
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario8" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo8" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo8" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

             <asp:Panel ID="parea8" runat="server">
                 <strong>Área responsable:</strong><br />
                 <asp:Label ID="lblarearesponsable8" runat="server"></asp:Label>
             </asp:Panel>
             <br />
             <strong>Perfil Profesional / Técnico:</strong><p>
                 <asp:Label ID="lblconcepto8" runat="server" Text=""></asp:Label>
             </p>
             <p>
                 &nbsp;</p>
        </asp:Panel>

        <asp:Panel ID="Panel7" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="ImageButton7" class="img-thumbnail" runat="server" OnClick="ImageButton7_Click" />
                <%--<asp:Image ID="Image7" runat="server" class="img-thumbnail" ImageUrl="~/images/personal/ACHAC.jpg" />--%>
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario7" runat="server" CssClass="auto-style14"></asp:Label>
               
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label7" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo7" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo7" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea7" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable7" runat="server"></asp:Label>
            </asp:Panel>
            <br />

            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto7" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>
        <asp:Panel ID="pp2" runat="server">
            <h3 class="text-primary"><strong>ASESORES COMERCIALES</strong></h3>

        </asp:Panel>
        

        <asp:Panel ID="Panel1" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image1" class="img-thumbnail" runat="server" OnClick="Image1_Click" />
                <%--<asp:Image ID="Image1" runat="server" class="img-thumbnail" />--%>
					</a><h2 class="post-title"><asp:Label ID="lblusuario1" runat="server" CssClass="auto-style14"></asp:Label>
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo1" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea1" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable1" runat="server"></asp:Label>
            </asp:Panel>
            <br />

            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto1" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>
         <%--_______________________________________________--%>
        <asp:Panel ID="Panel2" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image2" class="img-thumbnail" runat="server" OnClick="Image2_Click" />
                <%--<asp:Image ID="Image2" runat="server" class="img-thumbnail" ImageUrl="~/images/personal/ACHAC.jpg" />--%>
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario2" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo2" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea2" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable2" runat="server"></asp:Label>
            </asp:Panel>
            <p>
                &nbsp;</p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto2" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

        <br />
        <asp:Panel ID="Panel3" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image3" class="img-thumbnail" runat="server" OnClick="Image3_Click" />
                <%--<asp:Image ID="Image3" runat="server" class="img-thumbnail" ImageUrl="~/images/personal/ACHAC.jpg" />--%>
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario3" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo3" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea3" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable3" runat="server"></asp:Label>
            </asp:Panel>
            <p>
            </p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto3" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

        <asp:Panel ID="Panel4" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image4" class="img-thumbnail" runat="server" OnClick="Image4_Click" />

                <%--<asp:Image ID="Image4" runat="server" class="img-thumbnail" ImageUrl="~/images/personal/ACHAC.jpg" />--%>
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario4" runat="server" CssClass="auto-style14"></asp:Label>
            
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label4" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo4" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea4" runat="server">
                Área responsable:<br />
                <asp:Label ID="lblarearesponsable4" runat="server"></asp:Label>
            </asp:Panel>
            <br />

            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto4" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

        <asp:Panel ID="Panel5" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image5" class="img-thumbnail" runat="server" OnClick="Image5_Click" />
                
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario5" runat="server" CssClass="auto-style14"></asp:Label>
            
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo5" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo5" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea5" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable5" runat="server"></asp:Label>
            </asp:Panel>
            <p>
                &nbsp;</p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto5" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>
         
        <asp:Panel ID="pp3" runat="server"><h3 class="text-primary"><strong>DESARROLLO E INVESTIGACIÓN</strong></h3></asp:Panel>
        <asp:Panel ID="Panel6" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image6" class="img-thumbnail" runat="server" OnClick="Image6_Click" />
                
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario6" runat="server" CssClass="auto-style14"></asp:Label>
            
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label6" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo6" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo6" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea6" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable6" runat="server"></asp:Label>
            </asp:Panel>
            <br />

            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto6" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>



        <asp:Panel ID="pp4" runat="server"><h1 class="text-primary"><strong>ÁREA ADMINISTRATIVA</strong></h1></asp:Panel>
        
                <asp:Panel ID="Panel12" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image12" class="img-thumbnail" runat="server" OnClick="Image12_Click" />
                
					</a><h2 class="post-title">
                <asp:Label ID="lblusuario12" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label12" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo12" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo12" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

                    <asp:Panel ID="parea12" runat="server">
                        <strong>Área responsable:</strong><br />
                        <asp:Label ID="lblarearesponsable12" runat="server"></asp:Label>
                    </asp:Panel>
            <p>
                &nbsp;</p>
                    <p>
                        <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto12" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

       

          <asp:Panel ID="Panel14" runat="server" class="post clearfix" Visible="False">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image14" class="img-thumbnail" runat="server" OnClick="Image14_Click" />
                </a><h2 class="post-title">
                <asp:Label ID="lblusuario14" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label14" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo14" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona14" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono14" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo14" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

              <asp:Panel ID="parea14" runat="server">
                  <strong>Área responsable:</strong><br />
                  <asp:Label ID="lblarearesponsable14" runat="server"></asp:Label>
              </asp:Panel>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto14" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>




       

        <asp:Panel ID="Panel9" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image9" class="img-thumbnail" runat="server" OnClick="Image9_Click" />
                </a><h2 class="post-title">
                <asp:Label ID="lblusuario9" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo9" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo9" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea9" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable9" runat="server"></asp:Label>
            </asp:Panel>

            <p>
                &nbsp;</p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto9" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

        <asp:Panel ID="Panel10" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image10" class="img-thumbnail" runat="server" OnClick="Image10_Click" />
                </a><h2 class="post-title">
                <asp:Label ID="lblusuario10" runat="server" CssClass="auto-style14"></asp:Label>
            
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label10" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo10" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona10" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono10" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo10" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea10" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable10" runat="server"></asp:Label>
            </asp:Panel>
            <br />

            <p>
                &nbsp;</p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto10" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

        <asp:Panel ID="Panel11" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image11" class="img-thumbnail" runat="server" OnClick="Image11_Click" />
                </a><h2 class="post-title">
                <asp:Label ID="lblusuario11" runat="server" CssClass="auto-style14"></asp:Label>
               
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label11" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo11" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo11" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Panel ID="parea11" runat="server">
                <strong>Área responsable:</strong><br />
                <asp:Label ID="lblarearesponsable11" runat="server"></asp:Label>
            </asp:Panel>
            <p>
                &nbsp;</p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto11" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>



      

         <asp:Panel ID="Panel13" runat="server" class="post clearfix">
            <a href="#" class="thumb pull-left">
                <asp:ImageButton ID="Image13" class="img-thumbnail" runat="server" OnClick="Image13_Click" />
                </a><h2 class="post-title">
                <asp:Label ID="lblusuario13" runat="server" CssClass="auto-style14"></asp:Label>
                
					</h2>
					<p class="post-title">
                        <asp:Label ID="Label13" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Cargo</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <h4>
                            <asp:Label ID="lblcargo13" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">Zona</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblzona13" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Teléfono</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lbltelefono13" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail</td>
                    <td class="auto-style9">:</td>
                    <td>
                        <asp:Label ID="lblcorreo13" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

             <asp:Panel ID="parea13" runat="server">
                 <strong>Área responsable:</strong><br />
                 <asp:Label ID="lblarearesponsable13" runat="server"></asp:Label>
             </asp:Panel>
             <p>
             </p>
            <p>
                <strong>Perfil Profesional / Técnico:</strong></p>
            <p>
                <asp:Label ID="lblconcepto13" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>

         <div class="auto-style15">
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
         </div>

 </div>
    </form>

				
               
					
			

				

			

				
			</section>
            	
				

				
		  </aside>
	  </div>
	</section>

</body></html>
