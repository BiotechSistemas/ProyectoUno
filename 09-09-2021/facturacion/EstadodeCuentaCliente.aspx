<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="EstadodeCuentaCliente.aspx.cs" Inherits="biotech.facturacion.EstadodeCuentaCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">ESTADO DE CUENTA - CLIENTE</div>
					<div class="chart">
                        <div align ="">
    




                                               
                            <asp:Panel ID="Panel1" runat="server">
                                <br />
                                <br />
                                <CENTER>
                                <asp:Panel ID="Panel4" runat="server">
                                    <table align="center" class="auto-style1">
                                        <tr>
                                            <td class="auto-style2">Ing. Cliente</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAR" Width="107px" />
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="clienteid" DataSourceID="SqlDataSource1" Width="400px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="clienteid" HeaderText="COD" ReadOnly="True" SortExpression="clienteid" />
                                            <asp:BoundField DataField="ruc" HeaderText="RUC" SortExpression="ruc" />
                                            <asp:BoundField DataField="razonsocial" HeaderText="RAZON SOCIAL" SortExpression="razonsocial" />
                                        </Columns>
                                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [clienteid], [ruc], [razonsocial] FROM [tb_cliente] WHERE (([ruc] LIKE '%' + @ruc + '%') OR ([razonsocial] LIKE '%' + @razonsocial + '%'))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="ruc" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox1" Name="razonsocial" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                                    <br />
                                    <hr />
                                </asp:Panel>
                                </CENTER>


                                <asp:Panel ID="Panel2" runat="server">
                                    <asp:Panel ID="Panel3" runat="server" style="text-align: left">
                                        <strong><span class="auto-style3">RAZÓN&nbsp; SOCIAL:&nbsp; </span>
                                        <asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style3"></asp:Label>
                                        <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RUC:</span><asp:Label ID="lblruc" runat="server" CssClass="auto-style3"></asp:Label>
                                        </strong>
                                        <br />
                                        <br />
                                        Facturas por cancelar:<br />
                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                                                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" />
                                                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                                <asp:BoundField DataField="IMPNETO" HeaderText="IMP.NETO" SortExpression="IMPNETO" />
                                                <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" />
                                                <asp:BoundField DataField="MONTODISPONIBLE" HeaderText="MONTODISPONIBLE" SortExpression="MONTODISPONIBLE" />
                                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                                            </Columns>
                                            <HeaderStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_ESTADODECUENTASXCLIENTEFACTURA" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="GridView1" Name="CLIENTE" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <asp:Panel ID="Panel5" runat="server">
                                            <hr />
                                            Letras existentes por cancelar:<br />
                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" ShowFooter="True" Width="600px">
                                                <Columns>
                                                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                                                    <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" />
                                                    <asp:BoundField DataField="Nº UNICO" HeaderText="Nº UNICO" SortExpression="Nº UNICO" />
                                                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                                                </Columns>
                                                <HeaderStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_ESTADODECUENTASLETRAXCLIENTE" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="GridView1" Name="CLIENTE" PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <br />
                                            Detalle de letras registradas y facturas anexas:<br />
                                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" style="font-size: small" Width="600px">
                                                <Columns>
                                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                                                    <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" Visible="False" />
                                                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                                    <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                                    <asp:BoundField DataField="IMP NETO" HeaderText="IMP NETO" SortExpression="IMP NETO" />
                                                    <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False" />
                                                    <asp:BoundField DataField="MONTO DISPONIBLE" HeaderText="MONTO DISPONIBLE" SortExpression="MONTO DISPONIBLE" Visible="False" />
                                                    <asp:BoundField DataField="Nº UNICO" HeaderText="Nº UNICO" SortExpression="Nº UNICO" Visible="False" />
                                                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" Visible="False" />
                                                </Columns>
                                                <HeaderStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_ESTADODECUENTASXCLIENTELETRA" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="GridView1" Name="CLIENTE" PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <br />
                                            <br />
                                        </asp:Panel>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        Atte. Biotech Corp S.A.C.</asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
    




                                               
             </div>
                    </div>
				</div>

			</div>
		</div>
  
</asp:Content>
