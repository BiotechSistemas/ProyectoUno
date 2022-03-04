<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BioPedidos.aspx.cs" Inherits="biotech.VentasRTC.pedidos.BioPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    
    <link href="../../scripts/bootstrap/main.css" rel="stylesheet" />
    <%--<link href="../../scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" />--%>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <%--<link href="../../scripts/bootstrap/bootstrap-theme.min.css" rel="stylesheet" />--%>

	<!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <%--<script src="../../scripts/bootstrap/js/bootstrap.min.js"></script>--%>
    <style type="text/css">
 
    </style>
</head>
<body>

    <div class="container">
    
       
    <form id="form1" runat="server"  >
    
        <h3>
            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/images/logoicono.png" Width="40px" />
            NOTA DE PEDIDO N°<asp:Label ID="lblano" runat="server"></asp:Label>
            -<asp:Label ID="lblnum" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="lblIdMax" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblcodUsuario" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblPEDIDOnombre" runat="server" Visible="False"></asp:Label>
				     <asp:Label ID="lblUrlDinamico" runat="server" Visible="False"></asp:Label>
        </h3>

        <asp:Panel ID="pSincotizacion" runat="server">


        <asp:Panel ID="pmensaje" runat="server">
        <div class="alert alert-warning alert-dismissable">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  &nbsp;<asp:Label ID="lblmensajecliente" runat="server" ForeColor="#990000"></asp:Label>
</div></asp:Panel>
       
     <div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Fecha:</label>
							<div class="col-md-3">
								 <asp:TextBox ID="txtfechaEmision" runat="server"  class="form-control"  placeholder="Atención" required ReadOnly="True"></asp:TextBox>
							</div>

                            <div class="col-md-1">
                                Cliente:
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">¿Detalle?</asp:LinkButton>
                            </div>
&nbsp;<div class="col-md-6">
                                <asp:DropDownList ID="ddlCliente" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="razonsocial" DataValueField="IDRUC" AutoPostBack="True" Height="40px" Width="100%" OnSelectedIndexChanged="ddlCliente_SelectedIndexChanged">
                                </asp:DropDownList>

				                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_clientexZona" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblZonaVendedor" Name="zona" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
								
							</div>
							
	</div>
        <%--<asp:Panel ID="Panel2" runat="server" class="alert alert-danger">--%><%--</asp:Panel>--%>
       
        <asp:Panel ID="PanelDetCliente" runat="server" class="panel panel-default" Visible="False">
        <div class="panel-heading"> <strong>DETALLE DE CLIENTE:</strong> 
            <asp:Label ID="lblcliente" runat="server"></asp:Label>
            </div>
        <div class="panel-body">
        
            <div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Monto:</label>
							<div class="col-md-3">

                                <asp:Label ID="lblmonto" runat="server" style="font-weight: 700"></asp:Label>
                                <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                
							</div>
							<label for="empresa" class="col-md-1 control-label">Condición:</label>
							<div class="col-md-3">
                                <asp:Label ID="lblfacturaLetra" runat="server" style="font-weight: 700"></asp:Label>
                                &nbsp;a
                                <asp:Label ID="lbldias" runat="server" style="font-weight: 700"></asp:Label>
                                &nbsp;días
                                <asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lbloplinea" runat="server" Visible="False"></asp:Label>
							</div>

                            <label for="empresa" class="col-md-1 control-label">Estado:</label>
							<div class="col-md-3">
                                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" />
							</div>
							
	        </div>
        </div>
        </asp:Panel>
   
 

    <div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Condición:</label>
							<div class="col-md-3">
					 
                        <asp:DropDownList ID="ddlCondipago" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idcondPago" Height="30px" Width="60%" AutoPostBack="True" OnSelectedIndexChanged="ddlCondipago_SelectedIndexChanged"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedidos_condpago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>                                           
								<asp:TextBox ID="txtdias" runat="server" Height="30px" required Width="70px" placeholder="Días" TextMode="Number"></asp:TextBox>
                        &nbsp;</div>
							<label for="tel2" class="col-md-1 control-label">Moneda:</label>
							<div class="col-md-3">
                
                            <asp:RadioButtonList  ID="rblmoneda" runat="server" RepeatDirection="Horizontal" Width="100%" CellPadding="10" CellSpacing="10">
                                <asp:ListItem Selected="True" Value="D">Dolares</asp:ListItem>
                                <asp:ListItem Value="S">Soles</asp:ListItem>
                            </asp:RadioButtonList>            							
							</div>
                            <div class="col-md-4">
                                <asp:Button ID="bt_Ingresarpedido" runat="server" class="btn btn-success" Text="+ Ingresar producto" Width="100%" OnClick="bt_Ingresarpedido_Click" />                            
                            </div>
</div>
        <hr>
        <asp:Panel ID="ppedidos" runat="server" Visible="False">
<div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Producto:</label>
							<div class="col-md-3">
				
					
                        <asp:DropDownList ID="ddlProductos" runat="server" DataSourceID="SqlDataSource5"  DataTextField="producto" DataValueField="idProducto" Height="25px" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlProductos_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productosListarVenta" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                 
                           	</div>
							

                            <label for="empresa" class="col-md-1 control-label">Litros:</label>
							<div class="col-md-2">
                                <asp:TextBox ID="txtcantidad" class="form-control" type="number"  step="0"  runat="server"  Height="25px" ToolTip="Cantidad Solicitada"></asp:TextBox>
                            
							</div>

                            <label for="empresa" class="col-md-1 control-label">P.Venta:</label>
							<div class="col-md-2">
                                <asp:TextBox ID="txtprecioaventa" class="form-control"  type="number" step="0.01"   runat="server"  Height="25px" ToolTip="Precio de venta por litros"></asp:TextBox>
                       
							</div>

                         <div class="col-md-2">
                            <asp:Button ID="btIngresoProducto" runat="server" class="btn btn-success" Text="+ Agregar" Width="100%" OnClick="btIngresoProducto_Click" />   
							</div>
							
	        </div>
            <asp:Panel ID="PanelDetallePerecio" runat="server">
        <div class="alert alert-success alert-dismissable">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
            &nbsp;<asp:Label ID="lblstockactual" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
            &nbsp; P. VENTA : por Litro: <asp:Label ID="lblplitro" runat="server" style="font-weight: 700"></asp:Label>
            ,&nbsp;&gt; 20 Litros: <asp:Label ID="lblp20litros" runat="server" style="font-weight: 700"></asp:Label>
            , &gt; 200 Litros: <asp:Label ID="lblp200litros" runat="server" style="font-weight: 700"></asp:Label>
            &nbsp;DOLARES<asp:Label ID="lblprecioLista" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="plVenta" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lbldetexonerado" runat="server"></asp:Label>
                &nbsp;PHC:<asp:Label ID="lblprecioHistorialCliente" runat="server"></asp:Label>
                </div></asp:Panel>




            <%--<ul class="list-group">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Morbi leo risus</li>
    <li class="list-group-item">Porta ac consectetur ac</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>--%>
            
        </asp:Panel>



    <%-- <div class="panel panel-default">
        <div class="panel-heading"> <h3 class="panel-title">Deta</h3></div>
        <div class="panel-body">
        Panel content
        </div>
    </div>--%>
        <asp:Panel ID="PanelDetpro"  runat="server">
            
            <asp:GridView ID="GridView1"  runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="IDDET" DataSourceID="SqlDataSourceProducto" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" Width="100%">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="22px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                    <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" >
                    <HeaderStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                    <HeaderStyle HorizontalAlign="Right" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" HeaderText="P. VENTA" SortExpression="PVENTA" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="75px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTT" HeaderText="SUB. TT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="80px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                    <asp:BoundField DataField="APROBACION" HeaderText="APROBACION" SortExpression="APROBACION" Visible="False" />
                    <asp:BoundField DataField="ESTADOGERENCIA" HeaderText="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False" />
                    <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
                    <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="DESCTO" HeaderText="DSCTO" SortExpression="DESCTO" >
                    


                    <HeaderStyle ForeColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    <ItemStyle ForeColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    


                </Columns>
                <HeaderStyle BackColor="#E9E9E9" />
            </asp:GridView>
            TOTAL BASE:
            <asp:Label ID="lblTotal" runat="server" style="font-weight: 700"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I.G.V.(18%):<asp:Label ID="lbligv" runat="server" style="font-weight: 700"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TOTAL:
            <asp:Label ID="lblTotalpagar" runat="server" style="font-weight: 700"></asp:Label>
            <asp:Label ID="lblmonedatt" runat="server"></asp:Label>
            <br /><br />
            <asp:SqlDataSource ID="SqlDataSourceProducto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_DetPEdidos1" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblIdMax" Name="idpedido" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
           
         <div class="form-group row">
             <label for="txtLugarEntrega" class="col-md-2 control-label">Lugar Entrega:</label>
							<div class="col-md-10">
                                <asp:TextBox ID="txtLugarEntrega" placeholder="Dirección de entrega..." class="form-control" runat="server" MaxLength="300" Rows="3" ></asp:TextBox>
                                <asp:ListBox ID="lblugaresEntrega" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceLugaresCliente" DataTextField="puntoLlegada" DataValueField="puntoLlegada" OnSelectedIndexChanged="lblugaresEntrega_SelectedIndexChanged" Rows="5" Width="100%"></asp:ListBox>
				                <asp:SqlDataSource ID="SqlDataSourceLugaresCliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct puntoLlegada from tb_guiaRem where idcliente = @idcliente">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlCliente" Name="idcliente" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ver lugares de entrega</asp:LinkButton>
				            </div>  
         </div>

             <div class="row">
                 
             <label for="RadioButtonList1" class="col-md-2 control-label">Tipo entrega:</label>
							<div class="col-md-4">
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server"   RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="TOTAL">TOTAL</asp:ListItem>
                                    <asp:ListItem>PARCIAL</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                  </div>
                 <asp:Panel ID="PanelTOTAL" runat="server" class="row">
                  <label for="txtLugarEntrega" class="col-md-2 control-label">Fecha entrega:</label>
							<div class="col-md-4">
                             
                                  <asp:TextBox ID="txtfechaTotal"  class="form-control" runat="server" TextMode="Date" ></asp:TextBox>
				            
				            </div> </asp:Panel>
                  
        
            <asp:Panel ID="PanelPARCIAL" runat="server">

              <div class="form-group row">

                  
					                            							
	        
							<label for="txtfechaentrega" class="col-md-1 control-label">*(<asp:Label ID="lblCantEntrega" runat="server">0</asp:Label>)
                               
                            </label>
                            <div class="col-md-3">
                                  <asp:TextBox ID="txtfechaentrega"  class="form-control" runat="server" TextMode="Date" ></asp:TextBox>
				            </div>
                            
                            <div class="col-md-4">
                            <asp:DropDownList ID="ddlbProductoEntrega"  class="form-control" runat="server" DataSourceID="SqlDataSourceProEntregar" DataTextField="DESATENDER" DataValueField="IDPRODUCTO"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceProEntregar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select pdet.idDetalle IDDET,pdet.idProducto IDPRODUCTO,CONCAT((pdet.cantidad - pdet.entregado),'L	-', pro.producto) DESATENDER,pdet.entregado , (pdet.cantidad - pdet.entregado) XENTREGAR
from tb_Pedido ped join tb_PedidoDetalle pdet on ped.idPedido = pdet.idPedido join tb_producto pro on pdet.idProducto = pro.idProducto where ped.idPedido = @idproducto and  pdet.entregado &lt; pdet.cantidad">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblIdMax" Name="idproducto" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                            <div class="col-md-3">
                                <asp:TextBox ID="txtcantidadentrega" class="form-control"  runat="server" type="number" step="0" ></asp:TextBox>
                                
				            </div>
                            <div class="col-md-1">
                                <asp:ImageButton ID="ibtLugarEntrega" runat="server" Height="30px" ImageAlign="Middle" ImageUrl="~/images/agre.png" OnClick="ibtLugarEntrega_Click" ToolTip="Más lugares" Width="30px" />
                               
				            </div>
                           
                            </div>
                
                <asp:Panel ID="pEntregas" runat="server" class="form-group row">
                       
                                        <label for="txtLugarEntrega" class="col-md-1 control-label">
                                        
                                        </label>
                    
                    <div class="col-md-3">
                        <asp:ListBox ID="lbEntregaFechas"  class="form-control" runat="server" DataSourceID="SqlDataSourceFechasEntrega" DataTextField="CANTIDADFECHA" DataValueField="FECHA" AutoPostBack="True" OnSelectedIndexChanged="lbEntregaFechas_SelectedIndexChanged"></asp:ListBox>
                                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                        <asp:SqlDataSource ID="SqlDataSourceFechasEntrega" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="st_pedido_orderFecha" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblIdMax" Name="idpedido" PropertyName="Text" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                    </div>
                    
                    <div class="col-md-8">
                                            <asp:GridView ID="gvLugarEntrega" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id,CANTIDAD,idproducto" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="gvLugarEntrega_SelectedIndexChanged1" PageSize="4" ShowHeader="False" Width="100%">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                                                    <HeaderStyle Width="120px" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" Visible="False" />
                                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                                                    <ControlStyle Height="20px" Width="20px" />
                                                    <HeaderStyle Width="25px" />
                                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                    </asp:CommandField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_entrega" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label1" DbType="Date" Name="fecha" PropertyName="Text" />
                                                    <asp:ControlParameter ControlID="lblIdMax" Name="idpedido" PropertyName="Text" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                        
                </asp:Panel>
                </asp:Panel>
            <div class="form-group row">
					        <label for="txtDetalle" class="col-md-2 control-label">* Asunto :</label>
							<div class="col-md-10">
                                <asp:TextBox ID="txtDetalle"  class="form-control" runat="server" MaxLength="300" Rows="2" TextMode="MultiLine"></asp:TextBox>
				            </div>                      							
	        </div>

            <div class="form-group row">
					        <label for="txtDetalle" class="col-md-2 control-label">Cargar O.C.:</label>
							<div class="col-md-5">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
				                <asp:Label ID="lblrutatt" runat="server" Visible="False"></asp:Label>
				            </div>		
                
                <div class="col-md-5">
                     <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="FINALIZAR PEDIDO" OnClick="Button1_Click" Width="400px" />
				 </div>					
	    </div>


            
            

        </asp:Panel>
       
        <a href="Javascript:window.close()">Cerrar</a>
         

        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Label ID="lblmensajeproduct" runat="server"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblp501" runat="server"></asp:Label>
            <asp:Label ID="lblp5020" runat="server"></asp:Label>
            <asp:Label ID="lblp50200" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblp601" runat="server"></asp:Label>
            <asp:Label ID="lblp6020" runat="server"></asp:Label>
            <asp:Label ID="lblp60100" runat="server"></asp:Label>
            <br />
            COD PRODUCTO:
            <asp:Label ID="lblcodproducto" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblaprobacion" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblidPedido" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblvalDolar" runat="server" Text="3.25"></asp:Label>
            <br />
            <asp:Label ID="lblmesajeproducto" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblexonerado" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblcorreoTrabajador" runat="server"></asp:Label>
            <br />
            ZONA<asp:Label ID="lblZonaVendedor" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblzonaAl" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblmax2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblstockzona" runat="server"></asp:Label>
            <br />
            <br />
            idmaxDetalle:<asp:Label ID="lblidmaxDetalle" runat="server"></asp:Label>
        </asp:Panel>
            </asp:Panel>
    </form>

    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
</body>
</html>
