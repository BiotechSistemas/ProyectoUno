<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocumentosDeIngreso.aspx.cs" Inherits="biotech.bio.ventas.rrhh.FichaPersonal.DocumentosDeIngreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
    </style>
</head>
<body>
     <div class="container">
    <form id="form1" runat="server">
 
   

        <asp:Image ID="Image10" runat="server" ImageAlign="Middle" ImageUrl="~/images/baner1.PNG" Width="100%" />
    
      
 


<%--        <div class="page-header">
          <h3 class="text-success">
    <span class="glyphicon glyphicon-leaf"></span>
    Documentos requicitos de ingreso:<asp:Label ID="lblIdEmpleado" runat="server" Visible="False"></asp:Label>
            </h3>
      </div>--%>
   <div class="panel panel-default">
    <div class="panel-heading">
      <h4> <span class="glyphicon glyphicon-leaf"></span>
    LISTA DE DOCUMENTOS PARA INGRESO:</h4> 
    </div>
    <div class="panel-body">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" BorderStyle="None" GridLines="None" ShowHeader="False">
            <RowStyle BorderStyle="None" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select descripcion from rrhh.PerDocAdmDescripcion WHERE idDocAdministrativos =40 and estado=1  order by descripcion 
"></asp:SqlDataSource>
        <br />
        <P class="text-right">
        La recepción de los documentos tiene como fecha límite 10 dias hábiles del envio del la FICHA DEL PERSONAL.
            </P>
            </div>
       <asp:Panel ID="Panel1" runat="server" Visible="False">
     <div class="panel-heading">
       <h4>  <span class="glyphicon glyphicon-leaf"></span>
    Documentos obligatorios: <small>(documentos a presentar con firma personal)</small></h4> 
    </div>
    <div class="panel-body">
        <asp:GridView ID="gvdocObligatorios" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="id" GridLines="None" ShowHeader="False" OnRowCommand="gvdocObligatorios_RowCommand" Width="600px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                <asp:BoundField DataField="idgrupo" HeaderText="idgrupo" SortExpression="idgrupo" Visible="False" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:ButtonField CommandName="BAJARFACT" HeaderText="" ShowHeader="True" Text="Bajar" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >                     
                        <ControlStyle Height="16px" Width="16px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
            </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.ListadoDocObligatorios" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="idgrupo" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idestado" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
           </asp:Panel>
  </div>  

       

    </form>
         </div>
</body>
</html>
