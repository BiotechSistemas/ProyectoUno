<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modelo.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.modelo" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

     <link href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
   <script>
             
       function popupBT() {
         
           $("#popupdiv").dialog({
               title: "Show Modal window",
               width: 450,
               height: 600,
               modal: true,
               buttons: {
                   
                   Close: function () {
                       $(this).dialog('close');
                   }
               }
           });
       }


       function popup(a, b, c)
       {
           $("#idCat").text(a);
           $("#idtipo").text(b);
           $("#categoria").text(c);
           $("#popuptabla").dialog({
               title: "Show Modal window",
               width: 450,
               height: 600,
               modal: true,
               buttons: {
                   Close: function () {
                       $(this).dialog('close');
                   }}
           });
       }

        function alerta(numero) {
            alert('Se ha presionado el boton: ' + numero);
        }
     
        function Confirmacion() {

            var seleccion = confirm("acepta el mensaje ?");

            if (seleccion)
                alert("se acepto el mensaje");
            else
                alert("NO se acepto el mensaje");

            //usado para que no haga postback el boton de asp.net cuando 
            //no se acepte el confirm
            return seleccion;

        }

  </script>

</head>
<body>
    <form id="form1" runat="server">  
    <div class="container">

        <table>
            <tr>
                <td>
                    <asp:Button ID="btnConfirmacion1" runat="server" Text="Confirmacion 1" OnClientClick="return Confirmacion();"/>
                </td>
                <td>
                    <asp:Button ID="btnConfirmacion2" runat="server" Text="Confirmacion 2"  />
                </td>
                <td>
                    <asp:Button ID="btnConfirmacion3" runat="server" Text="Confirmacion 3"
                            OnClientClick="return confirm('hacer el postback del control ?');"   />
                </td>
            </tr>
        </table>

         <table>
            <tr>
                <td>
                    <input id="btnMensaje1" type="button" value="Mensaje 1" onclick="alert('Se ha presionado el boton: 1');" />
                </td>
                <td>
                    <asp:Button ID="btnMensaje2" runat="server" Text="Mensaje 2" OnClientClick="alert('Se ha presionado el boton: 2');"  />
                </td>
                <td>
                    <asp:Button ID="btnMensaje3" runat="server" Text="Mensaje 3" OnClientClick="alert('Se ha presionado el boton: 3'); return false;"  />
                </td>
                <td>
                    <asp:Button ID="btnMensaje4" runat="server" Text="Mensaje 4" />
                </td>
             </tr>
             <tr>
                <td>
                    <asp:Button ID="btnMensaje5" runat="server" Text="Mensaje 5"
                        onclick="btnMensaje5_Click" />
                </td>
                <td>
                    <asp:Button ID="btnMensaje6" runat="server" Text="Mensaje 6"
                        onclick="btnMensaje6_Click" />
                </td>
                <td>
                    <asp:Button ID="btnMensaje7" runat="server" Text="Mensaje 7"
                        onclick="btnMensaje7_Click" />
                </td>
                <td>
                    <asp:Button ID="btnMensaje8" runat="server" Text="Mensaje 8"
                        onclick="btnMensaje8_Click"  />
                </td>
            </tr>
        </table>  


        <%--+++++++++++REFERENTE AL MENSAJE PROFESIONAL +++++++++++++++++++++++--%>

  <h2>Modal Example</h2>
      
        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Button" OnClick="Button1_Click" />      
  



    </div>
        <%--DIV EJECUTADO EVENTO CONTADOR--%>
         <div id="popupdiv" style="display:normal">
            CONTADOR: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>

        <%--//en el div llamado popu tabla--%>
        <div id="popuptabla" title="JQUERY MODAL" style="display:none">
            id:<label id="idCat"></label><br />
             cod tipo:<label id="idtipo"></label><br />
             categoria:<label id="categoria"></label><br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idTipo" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="idTipo" HeaderText="idTipo" ReadOnly="True" SortExpression="idTipo" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_tipo]"></asp:SqlDataSource>
        </div>

        
        <%--tabla en el cual va el selec y llama  al popup--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCat" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idCat" HeaderText="idCat" ReadOnly="True" SortExpression="idCat" />
                <asp:BoundField DataField="idtipo" HeaderText="idtipo" SortExpression="idtipo" />
                <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" />
            <asp:TemplateField>
                <ItemTemplate>
                    <a href="#" onclick='popup("<%# Eval("idCat") %>","<%# Eval("idtipo") %>","<%# Eval("categoria") %>")'>Check</a>
                </ItemTemplate>
            </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_categoria]"></asp:SqlDataSource>
    </form>
    
    
</body>
</html>
