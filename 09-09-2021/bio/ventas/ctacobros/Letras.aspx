<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Letras.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.Letras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            height: 90px;
        }

        
BODY{
   	font-family: verdana;
}

    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

        <br />
        <asp:Panel ID="PanelLETRA" runat="server">
            <br />
            <asp:Image ID="Image1" runat="server" CssClass="auto-style10" ImageUrl="http://www.biotechcorp.com.pe/images/logobiotech.jpg" Width="150px" />
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>LETRA</td>
                    <td>FECHA DE GIRO</td>
                    <td>LUGAR DE GIRO</td>
                    <td>F. VENCIMIENTO</td>
                    <td>MONEDDA</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            HOLA SOY&nbsp; RIUCARD
            <br />
            QUE&nbsp; TAL COMM O</asp:Panel>
        <br />
        <br />

    </div>
    </form>
</body>
</html>
