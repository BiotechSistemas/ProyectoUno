<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="AtenderOrden.aspx.cs" Inherits="biotech.venta_almacen.AtenderOrden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background-color: #666666;
        }
        #Button1 {
            width: 175px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

    

    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title"><i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>
Ordenes por atender:</div>

                     <asp:Panel ID="Panelprincipal" runat="server">
					<div class="chart">
                        <div align ="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idcotizacion" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" >
                                <ControlStyle Height="20px" Width="20px" />
                                </asp:CommandField>
                                <asp:BoundField DataField="idcotizacion" HeaderText="ID" ReadOnly="True" SortExpression="idcotizacion" />
                                <asp:BoundField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                                <asp:BoundField DataField="fecha" HeaderText="FECHA" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField DataField="idvendedor" HeaderText="idvendedor" SortExpression="idvendedor" />
                                <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" >
                                </asp:BoundField>
                                <asp:BoundField DataField="autorizacion" HeaderText="autorizacion" SortExpression="autorizacion" Visible="False" />
                                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" Visible="False" />
                                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False">
                                </asp:BoundField>
                                <asp:BoundField DataField="Condiconpago" HeaderText="Condiconpago" SortExpression="Condiconpago" Visible="False">
                                </asp:BoundField>
                                <asp:BoundField DataField="dias" HeaderText="dias" SortExpression="dias" Visible="False" />
                            </Columns>
                            <HeaderStyle BackColor="#333333" ForeColor="White" />
                            <SelectedRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>

                            
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ordenesxatender" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                <asp:Panel ID="Panel2" runat="server">
                            Nº de Ordenes Autorizadas:
                            <asp:Label ID="lblcantautrizadas" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; Sin autorizar:
                            <asp:Label ID="lblsinautorizar" runat="server"></asp:Label>
                            <br />
                        </asp:Panel>

                            <asp:Panel ID="Panel4" runat="server">
                                <asp:Button ID="btguia" runat="server" Height="40px" OnClick="Button10_Click" Text="GUIA REMISION" Width="195px" />
                            </asp:Panel>

                            </div>
                       
                        </asp:Panel>
                        <br />
                        <br />

                        <div ALIGN=right>

                        <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000;"></asp:Label>
                        </div >
                    </div>
				</div>

            <asp:Panel ID="Panel25" runat="server">
				<div class="widget">
					<div class="title">Detalle pedido: Nº <asp:Label ID="lblorden" runat="server"></asp:Label>
                     </div>
					<div class="chart">                     
                        <asp:Panel ID="Panel1" runat="server">
                            <ul>
                                <li><strong>Fecha:  </strong><asp:Label ID="lblfecha" runat="server"></asp:Label>
                                </li>
                                <li><strong>Vendedor:   </strong><asp:Label ID="lblvendedor" runat="server"></asp:Label>
                                </li>
                                <li><strong>Cliente:    </strong><asp:Label ID="lblcliente" runat="server"></asp:Label>
                                </li>
                                <li><strong>Condición pago: </strong><asp:Label ID="lblcondpago" runat="server"></asp:Label>
                                    <asp:Label ID="lnlndias" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblestadoorden2" runat="server" Visible="False"></asp:Label>
                                    &nbsp;-
                                    <asp:Label ID="lblmotivo" runat="server"></asp:Label>
                                </li>
                            </ul>
                       <%-- </asp:Panel>--%>
                        <div align ="center">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetallecotizacion,ORDEN" DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%">
                            <Columns>
                                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                                <ControlStyle Height="20px" Width="20px" />
                                </asp:CommandField>
                                <asp:BoundField DataField="iddetallecotizacion" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" >
                                </asp:BoundField>
                                <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                <asp:BoundField DataField="DESCRIPPRO" HeaderText="DESCRIPPRO" ReadOnly="True" SortExpression="DESCRIPPRO" />
                                <asp:BoundField DataField="PEDIDO" HeaderText="PEDIDO" SortExpression="PEDIDO" >
                                </asp:BoundField>
                                <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" >
                                </asp:BoundField>
                                <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" Visible="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="ORDEN" HeaderText="ORDEN" SortExpression="ORDEN" Visible="False" ReadOnly="True" />
                                <asp:BoundField DataField="faltan" HeaderText="ATN" SortExpression="faltan">
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#666666" ForeColor="White" />
                            <SelectedRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoComprarPedidoStock" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblorden" Name="nordenveta" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                            <hr />
                            <br />
                            <asp:Button ID="Button10" runat="server" Height="32px" OnClick="Button10_Click2" Text="ATENDER PEDIDO" Width="186px" />
                        <DIV ALIGN=right> <asp:Label ID="lblaviso" runat="server" style="color: #FF0000"></asp:Label> 
                          </div>
                       
                      </asp:Panel>
                        
                                 
                        <div ALIGN="CENTER">
                            <asp:Panel ID="Panelpedidos" runat="server">
                                <table class="auto-style8" style="border-style: solid; border-width: inherit; border-color: #000000; padding: 0px;">
                                    <tr>
                                        <td class="auto-style1" style="color: #FFFFFF">PRODUCTO</td>
                                        <td class="auto-style1" style="color: #FFFFFF">PEDIDO</td>
                                        <td class="auto-style1" style="color: #FFFFFF">CANT VENDER</td>
                                        <td class="auto-style14" style="background-color: #666666; color: #FFFFFF"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblproductocargar" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblcantpedido" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:TextBox ID="txtcantavender" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style15">
                                            <asp:Button ID="Button6" runat="server" Text="Cargar pedido" OnClick="Button6_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="lblpedidocargar" runat="server" style="background-color: #CCCCCC"></asp:Label>
                                            <asp:Label ID="lblcodproductocargar" runat="server"></asp:Label>
                                            <asp:Label ID="lblstockactual" runat="server"></asp:Label>
                                            <asp:Label ID="lblatendidos" runat="server"></asp:Label>
                                            <asp:Label ID="lblsumarpedido" runat="server"></asp:Label>
                                            <asp:Label ID="lblprecioventaob" runat="server"></asp:Label>
                                            <asp:Label ID="lblexoneradoob" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </div>
                       
                       </div>
				</div>



                </asp:Panel>









                <asp:Panel ID="Panel3" runat="server">


                    <div class="widget">

                    <div class="title">GUIA DE REMISION</div>
					<div class="chart">  

                        <div align =" center">
                            <strong>
                            <asp:Panel ID="PanelGUIAREM" runat="server">
                                <strong>NºGUIA:</strong>
                                <asp:TextBox ID="txtguiaremision" runat="server" Width="100px"></asp:TextBox>
                                <strong>&nbsp;&nbsp; Nª ORDEN:</strong>
                                <asp:Label ID="lblorden2" runat="server"></asp:Label>
                                <strong>&nbsp;&nbsp; TRANSPORTE:</strong>
                                <asp:TextBox ID="txttransporte" runat="server" Width="100px">---</asp:TextBox>
                                <strong>
                                <br />
                                MOTIVO TRASLADO:</strong><asp:Label ID="lblmotivo2" runat="server"></asp:Label>
                                <strong>&nbsp;&nbsp;&nbsp; FECHA:</strong>
                                <asp:TextBox ID="txtfecha" runat="server" Width="100px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblidguia" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lblgrupo" runat="server" Visible="False"></asp:Label>
                                <br />
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSource3">
                                    <Columns>
                                        <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" InsertVisible="False" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                                        <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                        <asp:BoundField DataField="idOrdenVenta" HeaderText="N° ORDEN" SortExpression="idOrdenVenta" />
                                        <asp:BoundField DataField="IddetalleordenVenta" HeaderText="IddetalleordenVenta" SortExpression="IddetalleordenVenta" Visible="False" />
                                        <asp:BoundField DataField="Idproducto" HeaderText="PRODUCTO" SortExpression="Idproducto" />
                                        <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                </asp:GridView>
                            </asp:Panel>
                            </strong>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_guiaRemDetalle] WHERE ([idguia] = @idguia)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidguia" Name="idguia" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                            <br />
                            <asp:Button ID="Button8" runat="server" Height="30px" OnClick="Button8_Click" Text="NUEVA GR" />
                            <asp:Button ID="Button9" runat="server" Height="30px" OnClick="Button9_Click" Text="ANULAR GUIA REM" />
                            <asp:Button ID="Button5" runat="server" Height="30px" OnClick="Button5_Click" Text="ANULAR GUIA" Width="34%" />
                            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click1" Text="FINALIZAR GUIA" Height="30px" Width="50%" />
                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/informe/guiaremision.aspx" Target="_blank">Imprimir</asp:HyperLink>
                            &nbsp;<br />
                            <br />
                        </div>


                        <br />

                    </div>
                    </div>


                </asp:Panel>
			</div>
		</div>




</asp:Content>
