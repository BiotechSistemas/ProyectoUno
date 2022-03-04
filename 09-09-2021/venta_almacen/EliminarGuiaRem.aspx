<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="EliminarGuiaRem.aspx.cs" Inherits="biotech.venta_almacen.EliminarGuiaRem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Detalle de Ordenes:</div>
					<div class="chart">
                        <div align ="center">

                            <asp:Panel ID="Panel4" runat="server">
                                <asp:Panel ID="Panel5" runat="server">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idcotizacion" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="idcotizacion" HeaderText="idcotizacion" ReadOnly="True" SortExpression="idcotizacion" />
                                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                            <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fecha" SortExpression="fecha" />
                                            <asp:BoundField DataField="idvendedor" HeaderText="idvendedor" SortExpression="idvendedor" />
                                            <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" />
                                            <asp:BoundField DataField="autorizacion" HeaderText="autorizacion" SortExpression="autorizacion" Visible="False" />
                                            <asp:BoundField DataField="Condiconpago" HeaderText="Condiconpago" SortExpression="Condiconpago" />
                                            <asp:BoundField DataField="FechaEntrega" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FechaEntrega" SortExpression="FechaEntrega" />
                                            <asp:BoundField DataField="Lugarentrega" HeaderText="Lugarentrega" SortExpression="Lugarentrega" />
                                            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                                            <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" />
                                            <asp:BoundField DataField="dias" HeaderText="dias" SortExpression="dias" />
                                            <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                            <asp:BoundField DataField="motivo" HeaderText="motivo" SortExpression="motivo" />
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_OrdenVenta]"></asp:SqlDataSource>
                                    <br />
                                </asp:Panel>
                                <br />
                            </asp:Panel>

                            </div>
                        <asp:Panel ID="Panel6" runat="server">
                            <br />
                            Detalle:<br />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetallecotizacion,idOrdenVenta" DataSourceID="SqlDataSource2" style="text-align: center">
                                <Columns>
                                    <asp:BoundField DataField="iddetallecotizacion" HeaderText="iddetallecotizacion" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" />
                                    <asp:BoundField DataField="idOrdenVenta" HeaderText="idOrdenVenta" ReadOnly="True" SortExpression="idOrdenVenta" />
                                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" />
                                    <asp:BoundField DataField="despro" HeaderText="despro" ReadOnly="True" SortExpression="despro" />
                                    <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" />
                                    <asp:BoundField DataField="pv" HeaderText="pv" SortExpression="pv" />
                                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                                    <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
                                    <asp:BoundField DataField="desct" HeaderText="desct" SortExpression="desct" />
                                    <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" />
                                    <asp:BoundField DataField="exonerado" HeaderText="exonerado" SortExpression="exonerado" />
                                    <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" />
                                </Columns>
                                <HeaderStyle BackColor="#333333" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVenta" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="idorden" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                        <br />

                        <div ALIGN=right>

                        <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000;"></asp:Label>
                        </div >
                    </div>
				</div>
                   </div>
				</div>

</asp:Content>
