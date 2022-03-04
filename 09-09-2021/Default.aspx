<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="icon" type="image/png" href="http://www.biotechcorp.com.pe/webapp/logoicono.png" />
    <link rel="shortcut icon" href="../images/icono.ico">
<head runat="server">
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
	height: auto;
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
	width: 200px;
	height: 100px;
	position: relative;
	background: #ffffff;
	border-radius: 100px;
	margin: 0 auto;
	margin-top: 80px;
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



    </style>


</head>
    <div id="particles-js">
    <div class="login-form">
	<div class="login-face"><asp:Image ID="Image1" runat="server" Height="105px" ImageUrl="~/images/logobiotech.jpg" Width="220px" />
        </div> <form id="form1" runat="server">
	<section class="form">
       
			<div class="input uname">
                <asp:TextBox ID="TextBox1" runat="server"  placeholder="Usuario" ></asp:TextBox>
                 <br />

                
&nbsp;<i class="fa fa-user">
      </i>

			</div>
            <div class="input pass">
                <asp:TextBox ID="TextBox2" runat="server"  placeholder="Password" TextMode="Password" ></asp:TextBox>
                &nbsp;<i class="fa fa-lock"></i></div>

      
            <div>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ingresar" />
&nbsp;</div>

		
		
	</section>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/CambiarPassword.aspx" ForeColor="#73A323">Cambiar contraseña</asp:LinkButton>
        </form>
    </div>
    </div>
    <script src="http://www.biotechcorp.com.pe/js2/particles.js"></script>
<script src="http://www.biotechcorp.com.pe/js2/app.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
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
</script>

</body>
</html>
