<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="segLetras.aspx.cs" Inherits="biotech.procesos.segLetras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">INFORME DETALLADO DE LETRAS POR COBRAR</div>
					<div class="chart">
                        <div align ="center">
                               
                            <asp:Panel ID="Panel1" runat="server">
                                <br />
                                <asp:Panel ID="Panel2" runat="server">
                                    INGRESAR ESTADO DE LETRA:
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idcondestadoletra" Width="200px">
                                    </asp:DropDownList>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAR" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="LETRAS CANCELADAS" Width="200px" />
                                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [LetraConEstado] WHERE ([estado] = @estado)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <asp:Panel ID="Panel3" runat="server">
                                    <br />
                                    Detalle de letras:
                                    <asp:Label ID="lbldet1" runat="server"></asp:Label>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                            <asp:BoundField DataField="IMPORT" HeaderText="IMPORT" SortExpression="IMPORT" />
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                            <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" />
                                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" ReadOnly="True" SortExpression="BANCO" />
                                            <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" />
                                            <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" />
                                            <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                            <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FBANCO" SortExpression="FBANCO" />
                                            <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                            <asp:BoundField DataField="TRANS" HeaderText="TRANS" ReadOnly="True" SortExpression="TRANS" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasporestado" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="estadoletra" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <br />
                                <asp:Panel ID="Panel4" runat="server">
                                    Detalle de letras cobradas:<br />
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" style="font-size: small" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="MIMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="MIMPORTE">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                            <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" />
                                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" ReadOnly="True" SortExpression="BANCO" />
                                            <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" />
                                            <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" />
                                            <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                            <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FBANCO" SortExpression="FBANCO" />
                                            <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                            <asp:BoundField DataField="TRANS" HeaderText="TRANS" ReadOnly="True" SortExpression="TRANS" Visible="False" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasCobradas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </asp:Panel>
                            </asp:Panel>
                               
                            </div>
                    </div>
				</div>

			</div>
		</div>

</asp:Content>
