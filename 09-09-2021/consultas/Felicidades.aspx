<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Felicidades.aspx.cs" Inherits="biotech.consultas.Felicidades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>




    </head>



<body>
    <form id="form1" runat="server">
        <center>
    <div>
        
     <MARQUEE > 
                   <h1><asp:Label ID="lblmensajeTitulo" runat="server"></asp:Label></h1></MARQUEE>
       
      
                    <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl="" Width="480px" />
             

                    <asp:Label ID="lblmensajeNombre" runat="server" Font-Bold="True" ></asp:Label>
                     <br />
                    <asp:Label ID="lblmensajecargo" runat="server" Font-Size="Small" ForeColor="Gray"></asp:Label>
                    <br />
                    <br />
                    -----
                    <asp:Label ID="lblmensajeFecha" runat="server" Font-Bold="False" Font-Size="Large"></asp:Label>
                     &nbsp;-----               <br />     <asp:Label ID="lblmensajeConcepto" runat="server"></asp:Label>
                   
                    <asp:Label ID="lblmensajeCodUsu" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
               
    
    </div>

            </center>
    </form>
</body>
</html>
