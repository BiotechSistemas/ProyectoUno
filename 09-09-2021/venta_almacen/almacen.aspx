<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="almacen.aspx.cs" Inherits="biotech.venta_almacen.almacen" %>
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
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" PageSize="30">
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" DeleteImageUrl="~/images/eliminar.png" EditImageUrl="~/images/editar.png" />
                                            <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" />
                                            <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                                            <asp:BoundField DataField="presentacion" HeaderText="PRESENT" SortExpression="presentacion" />
                                            <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="preciolista" HeaderText="PRECIO" SortExpression="preciolista" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="preciodistribuidor" HeaderText="P. DISTRIB" SortExpression="preciodistribuidor" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE FROM [tb_producto] WHERE [idProducto] = @idProducto" InsertCommand="INSERT INTO [tb_producto] ([idProducto], [producto], [presentacion], [cantidad], [preciolista], [preciodistribuidor]) VALUES (@idProducto, @producto, @presentacion, @cantidad, @preciolista, @preciodistribuidor)" SelectCommand="SELECT [idProducto], [producto], [presentacion], [cantidad], [preciolista], [preciodistribuidor] FROM [tb_producto] WHERE ([suspendido] = @suspendido) ORDER BY [idcategoria]" UpdateCommand="UPDATE [tb_producto] SET [producto] = @producto, [presentacion] = @presentacion, [cantidad] = @cantidad, [preciolista] = @preciolista, [preciodistribuidor] = @preciodistribuidor WHERE [idProducto] = @idProducto">
                                        <DeleteParameters>
                                            <asp:Parameter Name="idProducto" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="idProducto" Type="String" />
                                            <asp:Parameter Name="producto" Type="String" />
                                            <asp:Parameter Name="presentacion" Type="String" />
                                            <asp:Parameter Name="cantidad" Type="Int32" />
                                            <asp:Parameter Name="preciolista" Type="Decimal" />
                                            <asp:Parameter Name="preciodistribuidor" Type="Decimal" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="suspendido" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="producto" Type="String" />
                                            <asp:Parameter Name="presentacion" Type="String" />
                                            <asp:Parameter Name="cantidad" Type="Int32" />
                                            <asp:Parameter Name="preciolista" Type="Decimal" />
                                            <asp:Parameter Name="preciodistribuidor" Type="Decimal" />
                                            <asp:Parameter Name="idProducto" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                </asp:Panel>
                                <br />
                            </asp:Panel>

                            </div>
                    </div>
				</div>

			</div>
		</div>

</asp:Content>
