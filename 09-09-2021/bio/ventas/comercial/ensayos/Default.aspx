<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.bio.ventas.comercial.ensayos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sports Camp Registration Form a Flat Responsive Widget,Login form widgets, Sign up Web 	forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/jquery-ui.css"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/><!--stylesheet-css-->
<!-- //css files -->
<style type="text/css">
body,td,th {
	font-family: "PT Sans", sans-serif;
}
h1,h2,h3,h4,h5,h6 {
	font-family: "Josefin Sans", sans-serif;
}
h2 {
	font-size: 24px;
	color: #82b928;
}
    .auto-style1 {
        height: 64px;
    }
    .auto-style2 {
        height: 64px;
        width: 60px;
    }
    .btn {
        text-align: right;
    }
</style>

</head>
<body>


    <form id="form1" runat="server">
    <table border="0" align="center" style="width: 430px">
    <tr>
    <th scope="col" class="auto-style2"><img src="../../../../images/logoicono.png" width="60" height="60"></th>

    <th scope="col" class="auto-style1"><h2><strong>Solicitud de Ensayo:</strong></h2>
        <h2>N°<asp:Label ID="lblano" runat="server"></asp:Label>
        <strong>-</strong><asp:Label ID="lblnum" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="lblIdMax" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblcodUsuario" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblcorreosAdministrativos" runat="server" Visible="False"></asp:Label>
                </h2></th>


    </tr>
    </table>


    <div>
    
    </div>


        <div class="w3l-main">
  <div class="w3l-from">
        <%--<form action="#" method="post">	--%>
            
			<div class="w3l-user">
				<label class="head">Nombre / Objetivo del ensayo<span class="w3l-star"> * </span></label>
                <asp:TextBox ID="txtmonbre"  runat="server" required></asp:TextBox>
			</div>
        
			<div class="w3l-lef1">
				<h3>DETALLE DEL ENSAYO
                    <asp:Label ID="lblResponsable" runat="server" Visible="False"></asp:Label>
                </h3>
	

			<div class="w3l-num">
					<label class="head">Fecha requerida <span class="w3l-star"> * </span></label>
                    <asp:TextBox ID="txtfecharequerida" runat="server" Height="30px" TextMode="Date" Width="100%"></asp:TextBox>
					
			</div>
			<div class="w3l-sym">
			    <label class="head">Fecha a finalizar<span class="w3l-star"> * </span></label>
                 <asp:TextBox ID="txtfechaTermino" runat="server"  required Height="30px" TextMode="Date" Width="100%"></asp:TextBox>
                <%--<select class="category2" required="">
						<option value="">Grade</option>
						<option value="">Grade-1</option>
						<option value="">Grade-2</option>
						<option value="">Grade-3</option>
						<option value="">Grade-4</option>
						<option value="">Grade-5</option>
						<option value="">Grade-6</option>
						<option value="">Grade-7</option>
					</select>--%>
			</div>
			<div class="clear"></div>
            

                <div class="w3l-num">
					 <label class="head">Cliente<span class="w3l-star"> * </span></label>

                <asp:DropDownList ID="ddlCliente" class="category2" runat="server" DataSourceID="SqlDataSource1" DataTextField="razonsocial" DataValueField="IDRUC" AutoPostBack="True" Height="40px" Width="100%">
                </asp:DropDownList>

				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_clientexZona" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
					
			</div>
                <div class="w3l-sym">
                <label class="head">Cultivo<span class="w3l-star"> * </span></label>
						
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:DropDownList ID="ddlCultivo" runat="server" DataSourceID="SqlDataSource3" DataTextField="CULTIVO" DataValueField="ID" Height="40px" Width="70%"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVendClienteCultivo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlCliente" Name="idcliente" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:TextBox ID="txthectareaensayo" type="number" step="0.01" runat="server" placeholder="Ha." Width="27%" required Height="30px"></asp:TextBox>
                    </asp:Panel>  
                </div>
           

<div class="clear"></div>
      <div class="w3l-options1">
				
					<label class="head">Producto<span class="w3l-star"> * </span></label>
                    <asp:DropDownList ID="ddlProductos" runat="server" DataSourceID="SqlDataSource2" DataTextField="PRODUCTO" DataValueField="IDPRODUC" Height="40px" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVendedorProductos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
&nbsp;</div>
				<div class="w3l-sym">
                    <label class="head">Cantidad<span class="w3l-star"> * </span></label>
					<asp:TextBox ID="txtcantidad" type="number" runat="server"  Height="30px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="+" Height="35px" Width="35px" OnClick="Button1_Click"></asp:Button>
                       
					</div>
                	
			<div class="clear">
                <asp:GridView ID="GridView1" class="table" runat="server" Width="100%" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                 <asp:ButtonField CommandName="Delete" HeaderText="" ShowHeader="True" Text="Eliminar" ButtonType="Image" ImageUrl="~/images/novaTrue.png" >
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:ButtonField>
             </Columns> <HeaderStyle BackColor="#DDDDDD" />
                </asp:GridView>
                </div>
            
           

			<div class="clear"></div>

                 <div class="w3l-user">
                    <label class="head">Punto de llegada<span class="w3l-star"> * </span></label>
                <asp:TextBox ID="txtpuntollegada" runat="server" placeholder="Ingresar punto de llegada detallado" required></asp:TextBox>

                    
			</div>

                <div class="w3l-user">
                    <label class="head">Productos a competir</label>
                <asp:TextBox ID="txtcompetencia" runat="server" ></asp:TextBox>
			</div>

			<div class="w3l-user">
                <label class="head">Precios a competir</label>
                <asp:TextBox ID="txtcompePrecProductos" runat="server" ></asp:TextBox>
			</div>
			
            <div class="w3l-user">
                <label class="head">Observación<span class="w3l-star"> * </span></label>
                <asp:TextBox ID="txtObservacion" runat="server" Height="60px" required TextMode="MultiLine" Width="100%"></asp:TextBox>
			    <br />
                <asp:Label ID="lblnomVendedor" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblcargo" runat="server"></asp:Label>
                <asp:Label ID="lblzona" runat="server"></asp:Label>
                <asp:Label ID="lblcorreo" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
			</div>


          
			<div class="w3l-rem">
				
                <div class="btn">
                <asp:button id="save" runat="server" text="Registrar" onclick="save_Click" onclientclick="return confirm('SOLICITUD DE ENSAYO, los datos ingresados serán enviados al área correcpondiente, desea confirmar el registro?');" />
			        <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
			    &nbsp;|&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Actualizar Ficha Cliente</asp:LinkButton>
			    </div>
                </div>
			
                <%--</form>--%>
	</div>
</div>


    </form>

    <footer>© Biotech , formulario solicitud de ensayo </footer>
	<!---728x90--->
	<!-- Default-JavaScript --> <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<!-- Calendar -->
<script src="js/jquery-ui.js"></script>
	<script>
	    $(function () {
	        $("#datepicker,#datepicker1").datepicker();
	    });
	</script>
<!-- //Calendar -->

</body>
</html>
