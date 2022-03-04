<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="inventario.aspx.cs" Inherits="biotech.venta_almacen.inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Detalle de Almacen:</div>
					<div class="chart">
                        <div align ="center">

                            <asp:Panel ID="Panel4" runat="server">
                                <asp:Panel ID="Panel5" runat="server">
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="15" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" />
                                            <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                                            <asp:BoundField DataField="presentacion" HeaderText="PRESENT" SortExpression="presentacion" />
                                            <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                            <asp:BoundField DataField="preciolista" HeaderText="PRECIO" SortExpression="preciolista" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="preciodistribuidor" HeaderText="PD" SortExpression="preciodistribuidor" />
                                            <asp:BoundField DataField="exonerado" HeaderText="EXO" SortExpression="exonerado" />
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" ForeColor="White" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idProducto], [producto], [presentacion], [cantidad], [preciolista], [preciodistribuidor], [exonerado] FROM [tb_producto]"></asp:SqlDataSource>
                                    <br />
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ordenes de Ingreso Registradas</asp:LinkButton>
                                </asp:Panel>
                                <br />
                            </asp:Panel>

                            </div>
                        <br />

                        <div ALIGN=right>

                        <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000;"></asp:Label>
                        </div >
                    </div>
				</div>

                <asp:Panel ID="Panel1" runat="server">
				<div class="widget">
					<div class="title">Movimientos realizados:</div>
					<div class="chart">                     
                        <DIV > 

                            <asp:Panel ID="Panel6" runat="server">

                                <asp:Panel ID="PanelENTRADAS" runat="server">
                                    <strong>INGRESOS DEL PRODUCTO:</strong><asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="identrada" DataSourceID="SqlDataSource4">
                                        <Columns>
                                            <asp:BoundField DataField="identrada" HeaderText="ORDEN" ReadOnly="True" SortExpression="identrada" />
                                            <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fechareg" />
                                            <asp:BoundField DataField="proveedor" HeaderText="PROVEEDOR" SortExpression="proveedor" />
                                            <asp:BoundField DataField="folio_factura" HeaderText="N°DOC" SortExpression="folio_factura" />
                                            <asp:BoundField DataField="solicitado" HeaderText="SOLICITADO" SortExpression="solicitado" />
                                            <asp:BoundField DataField="CodProducto" HeaderText="PRODUC" SortExpression="CodProducto" />
                                            <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                        </Columns>
                                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productosingresados" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="param" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <asp:Panel ID="PanelSALIDAS" runat="server">
                                    <strong>
                                    <br />
                                    SALIDAS DEL PRODUCTO:</strong><asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                                        <Columns>
                                            <asp:BoundField DataField="guiarem" HeaderText="GUIA REM" SortExpression="guiarem" />
                                            <asp:BoundField DataField="fechaemision" HeaderText="FECHA GUIA" SortExpression="fechaemision" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="motivotraslado" HeaderText="MOTIVO" SortExpression="motivotraslado" />
                                            <asp:BoundField DataField="Idproducto" HeaderText="PRODUCT" SortExpression="Idproducto" />
                                            <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                            <asp:BoundField DataField="descliente" HeaderText="CLIENTE" SortExpression="descliente" />
                                            <asp:BoundField DataField="IdordenVenta" HeaderText="ORDEN" SortExpression="IdordenVenta" />
                                        </Columns>
                                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productosSalidasDetallada" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="param" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <br />
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Label ID="lblaviso" runat="server" style="color: #FF0000"></asp:Label> 
                          </div>
                                
                        <div ALIGN="CENTER">
                        </div>
                       
                       </div>
				</div>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">


                    <div class="widget">

                    <div class="title">ingresos de productos:</div>
					<div class="chart">  

                        <div align =" center">
                            <asp:Panel ID="Panel7" runat="server">
                                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="identrada" DataSourceID="SqlDataSource3" PageSize="5">
                                    <Columns>
                                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="identrada" HeaderText="ORDEN" ReadOnly="True" SortExpression="identrada">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="INGRESO" SortExpression="fechareg" />
                                        <asp:BoundField DataField="proveedor" HeaderText="PROV" SortExpression="proveedor" />
                                        <asp:BoundField DataField="folio_factura" HeaderText="N°DOC" SortExpression="folio_factura" />
                                        <asp:BoundField DataField="fecha_Factura" HeaderText="FECHA DOC" SortExpression="fecha_Factura" Visible="False" />
                                        <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" Visible="False" />
                                        <asp:BoundField DataField="solicitado" HeaderText="AUTORIZADO" SortExpression="solicitado" />
                                        <asp:BoundField DataField="asunto" HeaderText="asunto" SortExpression="asunto" Visible="False" />
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_entradaProducto]"></asp:SqlDataSource>
                                <strong>Detalle de orden ingresada:<br />
                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="idEntrada" HeaderText="ORDEN" SortExpression="idEntrada" />
                                        <asp:BoundField DataField="descrip" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="descrip" />
                                        <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="preciocomrpra" HeaderText="PC" SortExpression="preciocomrpra">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="igv" SortExpression="igv">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>
                                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoEntDetalle" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="GridView3" Name="param" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </strong>
                                <br />
                            </asp:Panel>
                            <br />
                        </div>


                        <br />

                    </div>
                    </div>


                </asp:Panel>
			</div>
		</div>


</asp:Content>
