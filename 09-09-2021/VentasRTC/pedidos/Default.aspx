<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.VentasRTC.pedidos.Default" %>

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
<link href="http://localhost:3095/fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://localhost:3095/fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">

<!-- //css files -->
<style type="text/css">
    body,td,th {
	font-family: "PT Sans", sans-serif;
}
h1,h2,h3,h4,h5,h6 {
	font-family: "Josefin Sans", sans-serif;
        color: #82B928;
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
    .auto-style3 {
        width: 100%;
        margin-right: 1px;
    }
    .auto-style4 {
        font-size: x-small;
        text-align: center;
    }
    .auto-style5 {
        width: 95px;
    }
    .auto-style6 {
        width: 113px;
    }
    .auto-style9 {
        width: 59px;
        text-align: right;
    }
    .auto-style10 {
        width: 110px;
        text-align: center;
    }
    .auto-style13 {
    }
    .auto-style14 {
        color: #999999;
    }
    .auto-style16 {
        width: 30px;
    }
    .auto-style18 {
        width: 93px;
    }
</style>

</head>
<body>


    <form id="form1" runat="server">
    <table border="0" align="center" style="width: 430px">
    <tr>
    <th scope="col" class="auto-style2"><img src="../../images/logoicono.jpg" width="60" height="60"></th>

    <th scope="col" class="auto-style1"><h2>NOTA DE PEDIDO<strong>:</strong></h2>
        <h2>N°<asp:Label ID="lblano" runat="server"></asp:Label>
        <strong>-</strong><asp:Label ID="lblIdMax" runat="server"></asp:Label>
                <asp:Label ID="lblcodUsuario" runat="server"></asp:Label>
                <asp:Label ID="lblzonaAl" runat="server" Visible="False"></asp:Label>
                </h2></th>


    </tr>
    </table>


        <div class="w3l-main">
  <div class="w3l-from">
        <%--<form action="#" method="post">	--%>
			<div class="w3l-lef1">
				<h3>REGISTRAR PEDIDO<asp:Label ID="lblmax2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblcorreoTrabajador" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblvalDolar" runat="server" Text="3.23" Visible="False"></asp:Label>
                </h3>
                </div>
			<div class="w3l-num">
					<label class="head">Fecha de atención <span class="w3l-star"> * 
                 <asp:TextBox ID="txtfecharequerida" runat="server"  required Height="30px" TextMode="Date" Width="100%"></asp:TextBox>
                    </span></label>
					
			</div>
			<div class="w3l-sym">
			    <label class="head">Cliente<span class="w3l-star"> * 

                <asp:DropDownList ID="ddlCliente" class="category2" runat="server" DataSourceID="SqlDataSource1" DataTextField="razonsocial" DataValueField="IDRUC" AutoPostBack="True" Height="40px" Width="100%" OnSelectedIndexChanged="ddlCliente_SelectedIndexChanged">
                </asp:DropDownList>

				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_clientexRTC" SelectCommandType="StoredProcedure" OnSelecting="SqlDataSource1_Selecting">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblcodUsuario" Name="venddor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
					
                </span></label>
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
			<div class="clear">
                <asp:Label ID="lblmensajecliente" runat="server" ForeColor="#990000"></asp:Label>
                <br />
                </div>
              <div class="w3l-user">
                    <div class="w3l-user">
                        <asp:Panel ID="PanelDetCliente" runat="server" class="auto-style3" Visible="False" Width="100%">
                        <table style="width: 100%" >
                            <tr>
                                <td class="auto-style13" colspan="3">Linea Biotech:<asp:Label ID="lblmonto" runat="server" style="font-weight: 700"></asp:Label>
                                    &nbsp;<asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                    &nbsp;,
                                    <asp:Label ID="lblfacturaLetra" runat="server"></asp:Label>
                                    &nbsp;a
                                    <asp:Label ID="lbldias" runat="server"></asp:Label>
                                    &nbsp;dias&nbsp;&nbsp;<asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lbloplinea" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Image ID="Image1" runat="server" Width="20px" />
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/apro2.png" Width="20px" Visible="False" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            </table>
                            </asp:Panel>
                    </div>
			</div>

                <div class="w3l-num">
					 <label class="head">Forma de pago<span class="w3l-star"> * </span>
						
                    <asp:Panel ID="Panel1" runat="server" Width="100%">
                        <asp:DropDownList ID="ddlCondipago" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idcondPago" Height="40px" Width="70%" AutoPostBack="True" OnSelectedIndexChanged="ddlCondipago_SelectedIndexChanged"></asp:DropDownList>
                        <asp:TextBox ID="txtdias" runat="server" Height="30px" placeholder="Dias" required="" step="0.01" type="number" Width="25%"></asp:TextBox>
                       
                        
                        </label>
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from [dbo].[TipocondPago] where orden in (1,2,6) "></asp:SqlDataSource>
                        
                        </label>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVendClienteCultivo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlCliente" Name="idcliente" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>  
                     </label>

			</div>
                <div class="w3l-sym">
                <label class="head">Moneda<span class="w3l-star"> * </span>
                    <asp:RadioButtonList ID="rblmoneda" runat="server" RepeatDirection="Horizontal" Width="100%">
                        <asp:ListItem Selected="True" Value="D">Dolares</asp:ListItem>
                        <asp:ListItem Value="S">Soles</asp:ListItem>
                    </asp:RadioButtonList>
                    </label>
						
                </div>


<div class="clear">
    <br />
                </div>

                
              
                 <div class="w3l-rem">
				
                <div class="btn">
                <asp:button id="bt_Ingresarpedido" runat="server" text="Ingresar pedido" onclick="bt_Ingresarpedido_Click"  />
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:Label ID="lblidmaxDetalle" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblcodpro" runat="server" Visible="False"></asp:Label>

                    </asp:Panel>   
                    
			    </div>
                </div>

                <asp:Panel ID="Panel2" runat="server">

                    <div class="w3l-lef1">
				<h4>DETALLE DE PEDIDO</h4>
                      
                </div>
                      <asp:Panel ID="Panelsacaringprodt" runat="server">
                        

      <div class="w3l-options1">
				
					<label class="head">Producto <span class="w3l-star">*</span><asp:Panel ID="Panel3" runat="server" Width="100%">
                        <label class="head">
                        <asp:DropDownList ID="ddlProductos" runat="server" DataSourceID="SqlDataSource2" DataTextField="producto" DataValueField="producto" Height="40px" Width="67%" AutoPostBack="True" OnSelectedIndexChanged="ddlProductos_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlpresentacion" runat="server" DataSourceID="SqlDataSource6" DataTextField="presentacion" DataValueField="idProducto" Height="40px" Width="30%" AutoPostBack="True" OnSelectedIndexChanged="ddlpresentacion_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idProducto], [presentacion] FROM [tb_producto] WHERE ([producto] = @producto)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlProductos" Name="producto" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </label>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct producto  from tb_producto order by producto"></asp:SqlDataSource>
                    </asp:Panel>
                    </label></div>
				<div class="w3l-sym">
                    
                    <table class="auto-style3">
                        <tr>
                            <td><label class="head">P. Venta<asp:TextBox ID="txtpventa" type="number" step="0.01"  runat="server"  Height="30px" Width="100%"></asp:TextBox>
                        
                                </label></td>
                            <td><label class="head">Cantidad<asp:TextBox ID="txtcantidad" type="number" runat="server"  Height="30px" Width="100%"></asp:TextBox>
                        
                                </label></td>
                            <td>
                                <br />
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/agre.png" OnClick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                    
                    </label>
                       
					</div>
         </asp:Panel>
            </asp:Panel>
           

			<div class="clear">
                <asp:Label ID="lblmensajeproduct" runat="server"></asp:Label>
                <asp:Label ID="lblmesajeproducto" runat="server" style="color: #990000"></asp:Label>
                &nbsp;<asp:Label ID="lblidPedido" runat="server" Visible="False"></asp:Label>
        </div>
                <asp:Panel ID="PanelDetpro" runat="server" class="w3l-user" Visible="False">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="lblExistencia" runat="server"></asp:Label>
                                <br />
                                <span class="auto-style4">Stock </span>
                                <asp:Label ID="lblstockzona" runat="server" Font-Size="XX-Small"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="lblpreciolista40" runat="server"></asp:Label>
                                <br />
                                <span class="auto-style4">P.V. Dscto 40%:</span></td>
                            <td class="auto-style6">
                                <asp:Label ID="lblpreciolista50" runat="server"></asp:Label>
                                <br />
                                <span class="auto-style4">P.V. Dscto 50%:</span></td>
                            <td>
                                <asp:Label ID="lblexonerado" runat="server" style="color: #990000" Visible="False"></asp:Label>
                                <asp:Label ID="lbldetexonerado" style="color: #990000" runat="server"></asp:Label>
                                <asp:Label ID="lblPrecioBase" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lblaprobacion" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lblpl" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
           
           
                    </asp:Panel>

                <asp:Panel ID="PanelPedidos" runat="server" >
                    <div class="w3l-user">
                    <asp:GridView ID="GridViewPedidos" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET" DataSourceID="SqlDataSource8" Width="100%" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridViewPedidos_RowDataBound" OnSelectedIndexChanged="GridViewPedidos_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                            <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PVENTA" HeaderText="PVENTA" SortExpression="PVENTA" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="APROBACION" HeaderText="APROBACION" SortExpression="APROBACION" Visible="False" />
                            <asp:BoundField DataField="ESTADOGERENCIA" HeaderText="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False" />
                            <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
                            <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png">
                                <ControlStyle Height="20px" Width="20px" />
                                <HeaderStyle Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="WhiteSmoke" />
                        <SelectedRowStyle Font-Bold="False" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_DetPEdidos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <br />
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="lblTotal" runat="server">0.00</asp:Label>
                                    <br />
                                    <span class="auto-style4">Total:</span></td>
                                <td class="auto-style10">
                                    <asp:Label ID="lbligv" runat="server" style="color: #990000; text-align: center;">0.00</asp:Label>
                                    <br />
                                    <span class="auto-style4">IGV:</span></td>
                                <td>
                                    <asp:Label ID="lblTotalpagar" runat="server">0.00</asp:Label>
                                    <asp:Label ID="lblitem" runat="server" Visible="False"></asp:Label>
                                    <br />
                                     <span class="auto-style4">Total a pagar:</span></td>
                            </tr>
                        </table>
                        <br />
                    </div>

                </asp:Panel>
                <asp:Panel ID="PanelGRUPO2" runat="server">
			<div class="w3l-user">
                <label class="head">Lugar de entrega<span class="w3l-star"> * </span></label>
                <asp:TextBox ID="txtLugarEntrega" Style="text-transform: uppercase" runat="server" MaxLength="300" ></asp:TextBox>
			</div>
			
            <div class="w3l-user">
                <label class="head">Detalle<span class="w3l-star"> * </span></label>
                <asp:TextBox ID="txtDetalle" runat="server" Height="60px"  TextMode="MultiLine" Style="text-transform: uppercase" Width="100%" MaxLength="300"></asp:TextBox>
			    <br />
                <asp:Label ID="lblmensaje" runat="server" style="color: #990000; font-size: x-small;"></asp:Label>
			</div>


          
			<div class="clear"></div>
			
			<div class="w3l-rem">
				
                <div class="btn">
                <asp:button id="save2" runat="server" text="FINALIZAR PEDIDO" onclick="save2_Click" onclientclick="return confirm('FINALIZAR PEDIDO - ORDEN DE COMPRA, los datos ingresados serán enviados al área correcpondiente, desea confirmar el registro?');" />
			      <asp:button id="Button1" runat="server" text="NUEVO PEDIDO" OnClick="Button1_Click2" />
			    
			    </div>
                </div>
			</asp:Panel>
                 <br />
                 <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
        <%--</form>--%>
	
</div>


        </div>

    </form>

    <footer class="auto-style14">© Biotech: sTOCK SEGÚN ZONA, <!-- Default-JavaScript --> <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<!-- Calendar -->
<script src="js/jquery-ui.js"></script>
	<script>
	    $(function () {
	        $("#datepicker,#datepicker1").datepicker();
	    });
	</script>
<!-- //Calendar -->

        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/GCOMERCIAL.png" Width="15px" />
&nbsp;Aprob. Gerencia Comercial,
        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/GGENERAL.png" Width="15px" />
&nbsp;Aprob. Gerencia general</form>.

    </body>
</html>
