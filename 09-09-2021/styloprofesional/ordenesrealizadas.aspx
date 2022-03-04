<%@ Page Title="" Language="C#" MasterPageFile="~/styloprofesional/Site1.Master" AutoEventWireup="true" CodeBehind="ordenesrealizadas.aspx.cs" Inherits="biotech.styloprofesional.ordenesrealizadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Ordenes a Autorizar</div>
					<div class="chart">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idcotizacion" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="172px" Width="70%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                <ControlStyle Height="30px" Width="30px" />
                </asp:CommandField>
                <asp:BoundField DataField="idcotizacion" HeaderText="COD" ReadOnly="True" SortExpression="idcotizacion" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="idvendedor" HeaderText="VEND" SortExpression="idvendedor" />
                <asp:BoundField DataField="idcliente" HeaderText="CLIENTE" SortExpression="idcliente" />
                <asp:BoundField DataField="autorizacion" HeaderText="autorizacion" SortExpression="autorizacion" Visible="False" />
                <asp:BoundField DataField="Condiconpago" HeaderText="CONDPAG" SortExpression="Condiconpago" />
                <asp:BoundField DataField="FechaEntrega" HeaderText="FechaEntrega" SortExpression="FechaEntrega" Visible="False" />
                <asp:BoundField DataField="Lugarentrega" HeaderText="Lugarentrega" SortExpression="Lugarentrega" Visible="False" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" Visible="False" />
                <asp:BoundField DataField="recepcion" HeaderText="recepcion" SortExpression="recepcion" Visible="False" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ordenesSinAprobacion" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    </div>
				</div>


                <asp:Panel ID="Panel2" runat="server">
				<div class="widget">
					<div class="title">Detalle pedido: Nº <asp:Label ID="lblorden" runat="server" Text="Label"></asp:Label>
                                
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Aprobar" />
                                
                        <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
                                 </div>
					<div class="chart">                     
                        <asp:Panel ID="Panel1" runat="server">
                            <ul>
                                <li><strong>Fecha:  </strong><asp:Label ID="lblfecha" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li><strong>Vendedor:   </strong><asp:Label ID="lblvendedor" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li><strong>Cliente:    </strong><asp:Label ID="lblcliente" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li><strong>Condición pago: </strong><asp:Label ID="lblcondpago" runat="server" Text="Label"></asp:Label>
                                </li>
                            </ul>
                        </asp:Panel>
                        <center>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetallecotizacion" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="iddetallecotizacion" HeaderText="iddetallecotizacion" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" Visible="False" />
                                <asp:BoundField DataField="idOrdenVenta" HeaderText="idOrdenVenta" SortExpression="idOrdenVenta" Visible="False" />
                                <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                <asp:BoundField DataField="despro" HeaderText="despro" ReadOnly="True" SortExpression="despro" />
                                <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" Visible="False" />
                                <asp:BoundField DataField="pv" HeaderText="pv" SortExpression="pv" />
                                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                                <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" Visible="False" />
                                <asp:BoundField DataField="desct" HeaderText="desct" SortExpression="desct" />
                                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False" />
                            </Columns>
                            <HeaderStyle BackColor="#666666" ForeColor="White" />
                        </asp:GridView>
                            </center>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVenta" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="idorden" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       </div>
				</div>

                </asp:Panel>
			</div>
		</div>

        </asp:Content>
