<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambiarPassword.aspx.cs" Inherits="biotech.CambiarPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="shortcut icon" href="../images/icono.ico">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>LOGIN BIOTECH CORP</title>

    <style>
      body{
	margin: 0;
	padding: 0;
	background: #333;
}
.login-form{
	width: 300px;
	height: 539px;
	position: absolute;
	padding: 10px 25px;
	background: #ffffff;
	left: 50%;
	top: 50%;
	transform: translateX(-50%) translateY(-50%);
	border-bottom: 5px solid gray;
	border-radius: 4px;
}
.login-face{
	width: 178px;
	height: 82px;
	position: relative;
	background: #ffffff;
	border-radius: 100px;
	margin-top: 80px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 0;
            top: 0px;
            left: 0px;
        }
.login-face>img{
	width: 180px;
	height: 120px;
	overflow: hidden;
}
.form{
	width: 100%;
	position: relative;
	margin: 25px auto;
            top: 0px;
            left: 0px;
            height: 360px;
        }
.input{
	width: 100%;
	height: 50px;
	position: relative;
	margin: 15px auto;
}
input[type="text"],
input[type="password"]{
	width: 100%;
	height: 50px;
	position: relative;
	outline: none;
	border:2px solid #ddd;
	border-radius: 5px;
	font-size: 16px;
	font-family: sans-serif,Arial;
	color: gray;
            top: 0px;
            left: 1px;
        }
.fa{
	position: absolute;
	right: 5px;
	top: 16px;
	font-size: 20px;
	color: gray;
}
input[type="text"]:focus,
input[type="password"]:focus{
	border:2px solid #0AC986;
}
input[type="submit"]{
	width: 100%;
	height: 50px;
	background: #82b928;
	font-family: sans-serif,Arial;
	font-size: 16px;
	color: #fff;
	outline: none;
	border-radius: 5px;
	border: 0px;
	cursor: pointer;
}
.error-msg{
	font-size: 16px;
	font-family: sans-serif,Arial;
	color: red;
	margin-top:50px;
	display: none;
}
.error{
	position: relative;
	animation : shake 0.2s;
}
@keyframes shake{
	0% , 100%{
		left: 0px;
	}
	20% , 80%{
		left: -15px;
	}
	40% , 60%{
		left:15px;
	}
	
	
}



        .auto-style1 {
            text-align: center;
        }



        .auto-style271 {
            text-align: center;
        }



        .auto-style272 {
            text-decoration: none;
        }



        .auto-style273 {
            color: #990000;
            font-size: small;
        }



        .auto-style274 {
            text-align: center;
        }



    </style>


</head>

    <div class="login-form">
        <div class="auto-style1">
            &nbsp;<asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/images/logobiotech.jpg" Width="164px" CssClass="auto-style271" />
            <strong>
            <br />
            <br />
            CAMBIAR CONTRASEÑA</strong></div>
	<section class="form">
        <form id="form1" runat="server">
			<div class="input uname">
                <asp:TextBox ID="txtusuario" runat="server"  placeholder="Usuario" required ></asp:TextBox>
                 <br />

                
&nbsp;<i class="fa fa-user">
      </i>

			</div>
            <div class="input pass">
                <asp:TextBox ID="txtpasswordActual" runat="server"  placeholder="Contraseña actual" TextMode="Password" required></asp:TextBox>
                &nbsp;<i class="fa fa-lock"></i></div>

      
            <div>
<div>

    <a href="#nombre_del_marcador " class="auto-style272">¿Has olvidado tu contraseña?</a>
    <asp:Label ID="lblidusu" runat="server" Visible="False"></asp:Label>
</div>

            <div class="input pass">
                <asp:TextBox ID="txtpassword1" runat="server"  placeholder="Nueva Contraseña" TextMode="Password" required ></asp:TextBox>
                &nbsp;<i class="fa fa-lock"></i></div>

      
            <div>

            <div class="input pass">
                <asp:TextBox ID="txtpassword2" runat="server"  placeholder="Confirmar Contraseña" TextMode="Password" required></asp:TextBox>
                &nbsp;<i class="fa fa-lock"></i></div>

      
            <div class="auto-style274">


                                <asp:Button ID="ButtonCambiar" runat="server" OnClick="Button2_Click" Text="Cambiar contraseña"  />
                <asp:linkbutton runat="server" PostBackUrl="~/Default.aspx" OnClick="Unnamed1_Click">Cancelar</asp:linkbutton>
&nbsp;</div>

		
		</form>
	</section>
       &nbsp;<asp:Label ID="lblmensaje" runat="server" CssClass="auto-style273"></asp:Label>
    </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <%--<script type="text/javascript">
    $(document).ready(function () {
        $("#login").click(function () {
            if ($("#username").val() == "") {
                $(".input").addClass("error");
                $("#username").css({ "border": "2px solid red" });
            }
            if ($("#password").val() == "") {
                $(".pass").addClass("error");
            }

        })
        $(".input").click(function () {
            $(".input").removeClass("error");
            $("#username").css({ "border": "2px solid #ddd" });
        })
    })
</script>--%>

</body>
</html>
