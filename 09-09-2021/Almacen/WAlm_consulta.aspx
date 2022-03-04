<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WAlm_consulta.aspx.cs" Inherits="biotech.Almacen.WAlm_consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bio </title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
     <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">
          <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/images/logobio3.png" Width="170px" /></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     
       
        <%--<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>--%>
        <ul class="nav navbar-nav navbar-right">
             <%--class="active"--%>
                 <li ><a href="WebForm1.aspx"><span class="glyphicon glyphicon-home"></span> Stock real</a></li>
          
            <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-zoom-out"></span> SIN STOCK<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Pagos_ctaporpagar.aspx">Ica</a></li>
            <li><a href="PagosRegistrar.aspx">Piura</a></li>
            <li role="presentation" class="divider"></li>
            <li><a href="../admin/Proveedor.aspx">Central</a></li>
          </ul>
        </li>
       

        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-zoom-in"></span> CON STOCK<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Pagos_ctaporpagar.aspx">Ica</a></li>
            <li><a href="PagosRegistrar.aspx">Piura</a></li>
            <li role="presentation" class="divider"></li>
            <li><a href="../admin/Proveedor.aspx">Central</a></li>
          </ul>
        </li>
       
        <li><a href="Pagos_ctaporpagar.aspx"><span class="glyphicon glyphicon-usd"></span> VALORIZADO</a></li>
      
      
        <li>
            <asp:LinkButton ID="LinkButton1" runat="server"><span class="glyphicon glyphicon-user"></span>  <asp:Label ID="lblusuario" runat="server" Text="ACHAC"></asp:Label>  </asp:LinkButton>
            
            </li>
         <li><asp:LinkButton ID="lbSalir" runat="server" OnClick="lbSalir_Click"><span class="glyphicon glyphicon-log-in"></span> SALIR</asp:LinkButton></li>
             <%--<li><a href="../admin/Default.aspx"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>--%>
      </ul>
    </div>
  </div>
</nav>


    <div class="container">
    <div class="col-md-12">
			<h2><span class="glyphicon glyphicon-edit"></span> <asp:Label ID="lblTitulo" runat="server"></asp:Label></h2>
        </div>
        <div class="form-group row">
            <div class="table-responsive">
            <asp:GridView ID="gvConsulta" runat="server" class="table" AutoGenerateColumns="False" DataKeyNames="idDetalleAlmacen,ALMACEN,idProducto" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idDetalleAlmacen" HeaderText="idDetalleAlmacen" ReadOnly="True" SortExpression="idDetalleAlmacen" />
                    <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" ReadOnly="True" SortExpression="ALMACEN" />
                    <asp:BoundField DataField="idProducto" HeaderText="idProducto" ReadOnly="True" SortExpression="idProducto" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" />
                    <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" ReadOnly="True" SortExpression="MINIMO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_consultaAlmacen" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidalmacen" Name="idalmacen" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lblidalmacen" runat="server"></asp:Label>
            <asp:Label ID="lblop" runat="server"></asp:Label>
                </div>
            </div>
    </div>
    </form>
</body>
</html>
