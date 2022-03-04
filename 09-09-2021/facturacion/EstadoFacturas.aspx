<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="EstadoFacturas.aspx.cs" Inherits="biotech.facturacion.EstadoFacturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">FACTURAS POR COBRAR:</div>
					<div class="chart">
                        <div align ="center">
    



                                                  
                            <asp:Panel ID="Panel1" runat="server">
                                INDICAR ESTADO DE FACTURA:
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idTpVenta" Height="40px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [TIPOvENTA]"></asp:SqlDataSource>
                                <hr />
                                Detalle de Factura Registradas<br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" PageSize="30" style="font-size: small" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                        <asp:BoundField DataField="S" HeaderText="S" SortExpression="S" />
                                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                                        <asp:BoundField DataField="F.EMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="F.EMISION" />
                                        <asp:BoundField DataField="F.VENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="F.VENCTO" />
                                        <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                        <asp:BoundField DataField="COND" HeaderText="COND" SortExpression="COND" />
                                        <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" />
                                        <asp:BoundField DataField="COND1" HeaderText="COND1" SortExpression="COND1" />
                                        <asp:BoundField DataField="COD L." HeaderText="COD L." SortExpression="COD L." />
                                        <asp:BoundField DataField="GUIAS" HeaderText="GUIAS" SortExpression="GUIAS" />
                                        <asp:BoundField DataField="IMP BASE" HeaderText="IMP BASE" SortExpression="IMP BASE" />
                                        <asp:BoundField DataField="TIPO1" HeaderText="TIPO1" SortExpression="TIPO1" />
                                        <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" />
                                        <asp:BoundField DataField="IMP NETO" HeaderText="IMP NETO" SortExpression="IMP NETO" />
                                        <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" />
                                        <asp:BoundField DataField="IMP X COBRAR" HeaderText="IMP X COBRAR" SortExpression="IMP X COBRAR" />
                                        <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                        <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_FacturacionDetalle" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="tipoVenta" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
    



                                                  
             </div>
                    </div>
				</div>

			</div>
		</div>
    </div>
</asp:Content>
