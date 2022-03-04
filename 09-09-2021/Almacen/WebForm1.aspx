<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="biotech.Almacen.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="icon" type="image/png" href="http://www.biotechcorp.com.pe/webapp/logoicono.png" />
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bio Almacen</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    
    
    <link href="../scripts/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../scripts/jquery.dataTables.min.js"></script>


    

   


    <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/images/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

/*#gvAlmacen {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 16px;
}



#gvAlmacen tr {
  border-bottom: 1px solid #ddd;
}

#gvAlmacen tr.header, #gvAlmacen tr:hover {
  background-color: #f1f1f1;
}*/
</style>
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            background-color: #E6FFE6;
        }
        .auto-style4 {
            background-color: #F5F5F5;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
    </style>
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
                 <li ><a href="WebForm1.aspx"><span class="glyphicon glyphicon-home"></span> ALM. GENERAL</a></li>
          
            <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-zoom-out"></span> SIN STOCK<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><asp:LinkButton ID="lbsinIca" runat="server" OnClick="lbsinIca_Click">Alm.Ica</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbsinPiura" runat="server" OnClick="lbsinPiura_Click">Alm.Piura</asp:LinkButton></li>
            <li role="presentation" class="divider"></li>
            <li><asp:LinkButton ID="lbsinCentral" runat="server" OnClick="lbsinCentral_Click">Alm.Central</asp:LinkButton></li>
          </ul>
        </li>
       

        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-zoom-in"></span> STOCK<span class="caret"></span></a>
          <ul class="dropdown-menu">
           <li><asp:LinkButton ID="lbconIca" runat="server" OnClick="lbconIca_Click">Alm.Ica</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbconPiura" runat="server" OnClick="lbconPiura_Click">Alm.Piura</asp:LinkButton></li>
            <li role="presentation" class="divider"></li>
            <li><asp:LinkButton ID="lbconCentral" runat="server" OnClick="lbconCentral_Click">Alm.Central</asp:LinkButton></li>
          </ul>
        </li>
       
        <li>
            <asp:LinkButton ID="lbValorizado" runat="server" OnClick="lbValorizado_Click"><span class="glyphicon glyphicon-usd"></span> Valorizado</asp:LinkButton></li>
      
      
        <li>
            <asp:LinkButton ID="LinkButton1" runat="server"><span class="glyphicon glyphicon-user"></span>  <asp:Label ID="lblusuario" runat="server" Text="ACHAC"></asp:Label>  </asp:LinkButton>
            
            </li>
         <li><asp:LinkButton ID="lbSalirAlmacen" runat="server" OnClick="lbSalirAlmacen_Click"><span class="glyphicon glyphicon-log-in"></span> SALIR</asp:LinkButton>
             <asp:LinkButton ID="lbSalirGerencia" runat="server" OnClick="lbSalirGerencia_Click"><span class="glyphicon glyphicon-log-in"></span> SALIR</asp:LinkButton>
         </li>
             <%--<li><a href="../admin/Default.aspx"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>--%>
      </ul>
    </div>
  </div>
</nav>


    <div class="container">
      
  
  
    
        <h2><span class="glyphicon glyphicon-list-alt"></span>   <asp:Label ID="lbltitulo" runat="server"></asp:Label></h2>

        <asp:Panel ID="PGRUPO1" runat="server">


        
        <asp:Panel ID="Panel1" runat="server">
       <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Buscar producto.." title="Type in a name">

        <asp:Label ID="lblidAlmacen" runat="server" Text="ALICA" Visible="False"></asp:Label>
       
            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
            <div class="table-responsive">
                <asp:GridView ID="gvAlmacen" runat="server" AutoGenerateColumns="False" class="table table-condensed  table-hover table-sm thead-light" DataKeyNames="idProducto" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvAlmacen_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="idProducto" HeaderText="COD" SortExpression="idProducto" Visible="False" >
                        <ItemStyle Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" >
                        <ItemStyle Font-Size="XX-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CENTRAL" HeaderText="C*" SortExpression="CENTRAL">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ICA" HeaderText="I*" SortExpression="ICA">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PIURA" HeaderText="P*" SortExpression="PIURA">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA" SortExpression="PLISTA">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PV50" DataFormatString="{0:0,0.00}" HeaderText="PV. 50%" ReadOnly="True" SortExpression="PV50">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PBASE" DataFormatString="{0:0,0.00}" HeaderText="PBASE" SortExpression="PBASE" Visible="False">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PIALMACEN" HeaderText="PIALMACEN" SortExpression="PIALMACEN" Visible="False" />
                        <asp:BoundField DataField="VALORIZADOCENTRAL" HeaderText="VALORIZADOCENTRAL" ReadOnly="True" SortExpression="VALORIZADOCENTRAL" Visible="False" />
                        <asp:BoundField DataField="VALORIZADOICA" HeaderText="VALORIZADOICA" ReadOnly="True" SortExpression="VALORIZADOICA" Visible="False" />
                        <asp:BoundField DataField="VALORIZADOPIURA" HeaderText="VALORIZADOPIURA" ReadOnly="True" SortExpression="VALORIZADOPIURA" Visible="False" />
                        <asp:BoundField DataField="VALSUBTOTAL" HeaderText="VALSUBTOTAL" ReadOnly="True" SortExpression="VALSUBTOTAL" Visible="False" />
                        <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" ReadOnly="True" SortExpression="MINIMO" Visible="False" />
                        <asp:TemplateField HeaderText="COD" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("idProducto") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Width="65px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_ValTotal" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblalmacen" Name="alm" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblpresent" Name="presentacion" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            C*=Alm. Central, I*=Alm. Ica , P*= Alm. Piura</asp:Panel>
       
        <asp:Label ID="lblalmacen" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblpresent" runat="server" Visible="False"></asp:Label>
   
   
     

            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
   
   
     

            <asp:Panel ID="Panel2" runat="server">
                <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <td colspan="3" style="text-align: center; " class="auto-style4">EXISTENCIA</td>
                        <td  rowspan="2" class="auto-style4" style="text-align: center">TOTAL</td>
                        <td colspan="4" class="auto-style2" style="text-align: center"><strong>E</strong>NTRADAS</td>
                        <td colspan="4" class="auto-style5" style="text-align: center"><strong>S</strong>ALIDAS</td>
                        <td  rowspan="2" class="auto-style4" style="text-align: center"><strong>TOTAL<br /> E - S</strong></td>
                    </tr>
                    <tr>
                        <td  style="text-align: center; " class="auto-style4">C*</td>
                        <td style="text-align: center; " class="auto-style4">I*</td>
                        <td style="text-align: center; " width="50" class="auto-style4">P*</td>
                        <td class="auto-style2" style="text-align: center">C*</td>
                        <td class="auto-style2" style="text-align: center">I*</td>
                        <td class="auto-style2" style="text-align: center">P*</td>
                        <td class="auto-style2" style="text-align: center"></td>
                        <td class="auto-style5" style="text-align: center">C*</td>
                        <td class="auto-style5" style="text-align: center">I*</td>
                        <td class="auto-style5" style="text-align: center">P*</td>
                        <td class="auto-style5" style="text-align: center"></td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="lblstockCentral" runat="server" ></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblstockIca" runat="server"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblStockPiura" runat="server" ></asp:Label>
                        </td>
                        <td style="font-weight: 700; text-align: center">
                            <asp:Label ID="lbltt" runat="server"></asp:Label>
                        </td>
                        <td  style="text-align: center">
                            <asp:Label ID="lblentradaCentral" runat="server"></asp:Label>
                        </td>
                        <td  style="text-align: center">
                            <asp:Label ID="lblentradaIca" runat="server"></asp:Label>
                        </td>
                        <td  style="text-align: center">
                            <asp:Label ID="lblentradaPiura" runat="server"></asp:Label>
                        </td>
                        <td style="font-weight: 700; text-align: center">
                            <asp:Label ID="lblttEntrada" runat="server" ></asp:Label>
                        </td>
                        <td  style="text-align: center">
                            <asp:Label ID="lblsalidaCentral" runat="server"></asp:Label>
                        </td>
                        <td  style="text-align: center">
                            <asp:Label ID="lblsalidaIca" runat="server"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblsalidaPiura" runat="server" ></asp:Label>
                        </td>
                        <td  style="font-weight: 700; text-align: center">
                            <asp:Label ID="lblttSalidas" runat="server" ></asp:Label>
                        </td>
                        <td style="font-weight: 700; text-align: center">
                            <asp:Label ID="lblTTMov" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                </div>


                <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Guia de Remisión:</a></li>
  <li><a data-toggle="tab" href="#menu1">Mov. entrada y salida :</a></li>
  
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
   
      <asp:Panel ID="pGuias" runat="server">
                   <h3> Movimientos realizados:&nbsp;<asp:Label ID="lblidProducto" runat="server" Font-Size="Medium"></asp:Label>&nbsp; </h3>
                       <asp:Label ID="lblop" runat="server"></asp:Label>
                       &nbsp;<asp:Label ID="lblnmes" runat="server"></asp:Label>
                       <asp:Label ID="lblano" runat="server">2018</asp:Label>
                       <asp:DropDownList ID="ddlmes" runat="server" DataSourceID="SqlDataSourcemes" DataTextField="mes" DataValueField="idmes">
                       </asp:DropDownList>
                       <asp:Label ID="lbldesde" runat="server" Visible="False"></asp:Label>
                       <asp:SqlDataSource ID="SqlDataSourcemes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
                       <asp:Label ID="lblhasta" runat="server" Visible="False"></asp:Label>
                       <asp:Button ID="Button1" runat="server" Text="POR MES" OnClick="Button1_Click" />
                       &nbsp;<asp:TextBox ID="txtdesde" runat="server" TextMode="Date"></asp:TextBox>
                       &nbsp;hasta
                       <asp:TextBox ID="txthasta" runat="server" TextMode="Date"></asp:TextBox>
                       <asp:Button ID="Button2" runat="server" Text="GENERAR" OnClick="Button2_Click" />
                   
                    <div class="table-responsive">
                    <asp:GridView ID="gvGuias" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcexfecha" Width="100%" AllowPaging="True" OnRowDataBound="gvGuias_RowDataBound" PageSize="25" GridLines="Horizontal" OnSelectedIndexChanged="gvGuias_SelectedIndexChanged">
                        <Columns>
                           <asp:BoundField DataField="IDGUIA" HeaderText="Item" SortExpression="IDGUIA">
                            <ItemStyle ForeColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IDDETGUIA" HeaderText="**" SortExpression="IDDETGUIA">
                            <ItemStyle ForeColor="#999999" />
                            </asp:BoundField>
                            <asp:BoundField DataField="fechaemision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="fechaemision">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" ReadOnly="True" SortExpression="GUIAREM">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                            <asp:BoundField DataField="RazonSocial" HeaderText="CLIENTE" SortExpression="RazonSocial" />
                            <asp:BoundField DataField="grupoingreso" HeaderText="grupoingreso" SortExpression="grupoingreso" Visible="False" />
                            <asp:BoundField DataField="VENDEDOR" HeaderText="VEND" SortExpression="VENDEDOR" />
                            <asp:BoundField DataField="MOT" HeaderText="MOT" ReadOnly="True" SortExpression="MOT" Visible="False" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                            <asp:BoundField DataField="ALM_ORIGEN" HeaderText="A.ORIGEN" ReadOnly="True" SortExpression="ALM_ORIGEN">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ALM_FINAL" HeaderText="A.FINAL" ReadOnly="True" SortExpression="ALM_FINAL">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRODUCTO" HeaderText="COD.PROD" SortExpression="PRODUCTO" Visible="False" />
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DESC" HeaderText="DESC" ReadOnly="True" SortExpression="DESC">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SALDO" HeaderText="SALDO" ReadOnly="True" SortExpression="SALDO">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" ReadOnly="True" SortExpression="ESTADO" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourcexfecha" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_MovKardexFecha" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblidProducto" Name="idproducto" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblnmes" Name="nmes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lbldesde" DbType="Date" Name="f1" PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblhasta" DbType="Date" Name="f2" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </div>
                </asp:Panel>

  </div>
  <div id="menu1" class="tab-pane fade">
    Ingreso de producto:
                <div class="table-responsive">
                <asp:GridView CLASS="table" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceingreso" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="identradaDetalle" HeaderText="COD" SortExpression="identradaDetalle">
                        <HeaderStyle Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}">
                        <HeaderStyle Width="90px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idguia" HeaderText="idguia" SortExpression="idguia" Visible="False" />
                        <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" ReadOnly="True" SortExpression="GUIAREM">
                        </asp:BoundField>
                        <asp:BoundField DataField="IDCLIENTE" HeaderText="RUC" SortExpression="IDCLIENTE" Visible="False" />
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="asunto" HeaderText="ASUNTO" SortExpression="asunto">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="identrada" HeaderText="identrada" SortExpression="identrada" Visible="False" />
                        <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/suspen{0}.png">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                    <EmptyDataTemplate>
                        No se encontro ningun registro...
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceingreso" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="mov_ENTRADA_xProductoGeneral" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvAlmacen" Name="idproducto" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                Salidas de producto
                <div class="table-responsive">
                <asp:GridView ID="gvSalidaProducto" class="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idSalida" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnRowDataBound="gvSalidaProducto_RowDataBound" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="idSalida" HeaderText="COD" ReadOnly="True" SortExpression="idSalida">
                        <HeaderStyle Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}">
                        <HeaderStyle HorizontalAlign="Center" Width="90px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TPSALIDA" HeaderText="MOTIVO" SortExpression="TPSALIDA">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idguiarem" HeaderText="idguiarem" SortExpression="idguiarem" Visible="False" />
                        <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" ReadOnly="True" SortExpression="GUIAREM" />
                        <asp:BoundField DataField="VENDEDOR" HeaderText="ENCARGADO" SortExpression="VENDEDOR">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CLIENTE" HeaderText="RUC" SortExpression="CLIENTE" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="CLIENTE" SortExpression="RAZONSOCIAL">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                        <HeaderStyle Width="60px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/suspen{0}.png">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                    <EmptyDataTemplate>
                        No se encontro ningun registro...
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="mov_salida_xProductoGeneral" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvAlmacen" Name="codproducto" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
           </div>
                
  </div>
 
</div>








               
           
                </asp:Panel>

            </div>
            </asp:Panel>

        <asp:Panel ID="PGRUPO2" runat="server">
            <input type="button" value="Imprimir" onclick="javascript: window.print()" />
           
            
            <asp:Label ID="lblAlmacenG2" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblopG2" runat="server" Visible="False"></asp:Label>
            <div class="table-responsive">
            <asp:GridView ID="gvConsultaAlmacen" class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalleAlmacen,ALMACEN,idProducto" DataSourceID="SqlDataSourceGRUPO2" OnRowDataBound="gvConsultaAlmacen_RowDataBound">
                <Columns>
                    <asp:TemplateField HeaderText="COD" ShowHeader="False" Visible="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("idProducto") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="65px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idDetalleAlmacen" HeaderText="idDetalleAlmacen" ReadOnly="True" SortExpression="idDetalleAlmacen" Visible="False" />
                    <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" ReadOnly="True" SortExpression="ALMACEN" Visible="False" />
                    <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" >
                    <HeaderStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MINIMO" HeaderText="*" ReadOnly="True" SortExpression="MINIMO" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceGRUPO2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_consultaAlmacen" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblAlmacenG2" Name="idalmacen" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblopG2" Name="op" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                </div>
        </asp:Panel>

        <asp:Panel ID="PGRUPO3" runat="server">

            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">RESUMEN GENERAL</a></li>
                <li><a data-toggle="tab" href="#menu1">DETALLE GENERAL</a></li>
            </ul>

            <div class="tab-content">
              <div id="home" class="tab-pane fade in active">
                  <br />
                 <div class="form-horizontal" role="form">
                     
                              <div class="form-group">
                                <label for="LabelICA" class="col-md-2 control-label text-success">ALM. ICA :</label>                                                                 
                                <asp:Label ID="LabelICA" runat="server" class="col-md-2 form-control-static"></asp:Label>                            
                              </div>

                            <div class="form-group">
                                <label for="LabelPIURA" class="col-md-2 control-label text-success">ALM. PIURA :</label>
                                <asp:Label ID="LabelPIURA" runat="server" class="col-md-2 form-control-static"></asp:Label>
                              </div>   
                     
                             <div class="form-group">
                                <label for="LabelCENTRAL" class="col-md-2 control-label text-success">ALM. (I + P) :</label>
                                <strong><asp:Label ID="lblSumaIP" runat="server" class="col-md-2 form-control-static"></asp:Label></strong>
                              </div>    

                            <div class="form-group">
                                <label for="LabelCENTRAL" class="col-md-2 control-label text-success">ALM. CENTRAL :</label>
                                <asp:Label ID="LabelCENTRAL" runat="server" class="col-md-2 form-control-static"></asp:Label>
                              </div>
                        
                            <div class="form-group">
                                <label for="LabelGENERAL" class="col-md-2 control-label text-success">TT. GENERAL:</label>
                                <strong><asp:Label ID="LabelGENERAL" runat="server" class="col-md-2 form-control-static"></asp:Label></strong>
                              </div>
                     </div>
                  <p class="text-success">* Valorizado general según PI ALM.(precio ingreso a almacen) expresado en DOLARES</p>
              </div>
              <div id="menu1" class="tab-pane fade">               
                

                  <div class="table-responsive">
            <asp:GridView ID="gvAlmacenValorizado" class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  HorizontalAlign="Center" OnRowDataBound="gvAlmacenValorizado_RowDataBound" ShowFooter="True" style="font-size: x-small" Width="100%" DataKeyNames="idProducto,MINIMO" OnSelectedIndexChanged="gvAlmacen_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField ShowHeader="False" Visible="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" style="color: #006600" Text='<%# Bind("idProducto") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idProducto" HeaderText="COD" SortExpression="idProducto" >
                    <HeaderStyle Width="50px" />
                    <ItemStyle ForeColor="Black" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" >
                    <ItemStyle ForeColor="Black" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CENTRAL" HeaderText="C*" SortExpression="CENTRAL">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ICA" HeaderText="I*" SortExpression="ICA">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PIURA" HeaderText="P*" SortExpression="PIURA">
                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA" SortExpression="PLISTA">
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PV50" DataFormatString="{0:0,0.00}" HeaderText="P.V. 50%" ReadOnly="True" SortExpression="PV50">
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PBASE" DataFormatString="{0:0,0.00}" HeaderText="P. BASE" SortExpression="PBASE">
                    <HeaderStyle Width="50px" />
                    <ItemStyle ForeColor="Maroon" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PIALMACEN" DataFormatString="{0:0,0.00}" HeaderText="P.I. ALM." SortExpression="PIALMACEN">
                    <HeaderStyle Width="50px" />
                    <ItemStyle BackColor="#E6E6E6" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="VALORIZADOCENTRAL" DataFormatString="{0:0,0.00}" HeaderText="VAL. CENTRAL" ReadOnly="True" SortExpression="VALORIZADOCENTRAL" Visible="False">
                    <HeaderStyle Width="50px" />
                    <ItemStyle BackColor="#E6E6E6" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="VALORIZADOICA" DataFormatString="{0:0,0.00}" HeaderText="VAL. ICA" ReadOnly="True" SortExpression="VALORIZADOICA" Visible="False">
                    <HeaderStyle Width="50px" />
                    <ItemStyle BackColor="#E6E6E6" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="VALORIZADOPIURA" DataFormatString="{0:0,0.00}" HeaderText="VAL. PIURA" ReadOnly="True" SortExpression="VALORIZADOPIURA" Visible="False">
                    <HeaderStyle Width="50px" />
                    <ItemStyle BackColor="#E6E6E6" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="VALSUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB.TOTAL" ReadOnly="True" SortExpression="VALSUBTOTAL">
                    <HeaderStyle Width="50px" />
                    <ItemStyle BackColor="#E6E6E6" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MINIMO" HeaderText="MIN*" ReadOnly="True" SortExpression="MINIMO" Visible="False" >
                    <HeaderStyle Width="10px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="MINIMO" DataImageUrlFormatString="~/images/foco{0}.png" Visible="False">
                        <ControlStyle Height="10px" Width="10px" />
                    </asp:ImageField>
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
                
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_ValTotal" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblalmacen" Name="alm" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblpresent" Name="presentacion" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                </div>

              </div>
              
            </div>

            
        </asp:Panel>
    </div>
    </form>

    <%-- <script>

         $(document).ready(function () {
             $('#gvAlmacen').DataTable();
         });

    </script>--%>

    <script>
        function myFunction() {
            var input, filter, table, tr, td, i;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("gvAlmacen");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                    if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
</script>

</body>
</html>
