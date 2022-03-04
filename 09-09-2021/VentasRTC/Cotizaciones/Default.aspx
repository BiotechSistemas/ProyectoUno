<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.VentasRTC.Cotizaciones.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>BIO COTIZACION</title>
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" />
  <link rel="stylesheet" href="style.css">
</head>
<body>
   
    
    <div class="container">
    <h1 class="brand"><span>Acme</span> Biotech</h1>
    <div class="wrapper animated bounceInLeft">
      <div class="company-info">
        <h3>Acme Web Design</h3>
        <ul>
          <li><i class="fa fa-road"></i> 44 Something st</li>
          <li><i class="fa fa-phone"></i> (555) 555-5555</li>
          <li><i class="fa fa-envelope"></i> test@acme.test</li>
        </ul>
      </div>
      <div class="contact">
        <h3>Formulario de Cotización</h3>
         <form id="form1" runat="server">

          <p>
            <label>Cliente</label>
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</p>
          <p>
            <label>Producto</label>
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</p>
          <p>
            <label>Presentación</label>
            <input type="email" name="email">
          </p>
          <p>
            <label>Precio Venta (40%)</label>
            <input type="text" name="phone">
          </p>
          <p class="full">
            <label>Cantidad</label>
            <textarea name="message" rows="5"></textarea>
          </p>
          <p class="full">
            <button>Registrar</button>
          </p>
        </form>
      </div>
    </div>
  </div>

   
   
</body>
</html>
