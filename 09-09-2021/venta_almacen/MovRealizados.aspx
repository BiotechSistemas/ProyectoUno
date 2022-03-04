<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="MovRealizados.aspx.cs" Inherits="biotech.venta_almacen.MovRealizados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">FACTURAS POR COBRAR:</div>
					<div class="chart">
                        <div align ="center">

                            <asp:Panel ID="Panel4" runat="server">
                                <asp:Panel ID="Panel5" runat="server">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                                            <asp:BoundField DataField="factura" HeaderText="factura" SortExpression="factura" />
                                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                            <asp:BoundField DataField="fechafactura" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fechafactura" SortExpression="fechafactura" />
                                            <asp:BoundField DataField="dias" HeaderText="dias" SortExpression="dias" Visible="False" />
                                            <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" Visible="False" />
                                            <asp:BoundField DataField="fechavencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fechavencimiento" SortExpression="fechavencimiento" />
                                            <asp:BoundField DataField="observacion" HeaderText="observacion" SortExpression="observacion" />
                                            <asp:BoundField DataField="norden" HeaderText="norden" SortExpression="norden" />
                                            <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
                                            <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" />
                                            <asp:BoundField DataField="importarte" HeaderText="importarte" SortExpression="importarte" />
                                            <asp:BoundField DataField="descripcionmonto" HeaderText="descripcionmonto" SortExpression="descripcionmonto" Visible="False" />
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" ForeColor="White" />
                                        <SelectedRowStyle BackColor="#CCCCCC" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_facturasFact" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <asp:Label ID="lblcodfactura" runat="server"></asp:Label>
                                    <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                                    <asp:Label ID="lblobservacion" runat="server"></asp:Label>
                                    <asp:Label ID="lblimporte" runat="server"></asp:Label>
                                </asp:Panel>
                            </asp:Panel>

                            </div>

                        <div ALIGN=right>

                        <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000;"></asp:Label>
                        </div >
                    </div>
				</div>
			

                <asp:Panel ID="Panel3" runat="server" Visible="False">


                    <div class="widget">

                    <div class="title">GENERAR LETRA:</div>
					<div class="chart">  

                        <div align =" center">
                            <asp:Panel ID="Panel7" runat="server">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAR LETRA" />
                            </asp:Panel>
                            <asp:Panel ID="Panel8" runat="server">
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
