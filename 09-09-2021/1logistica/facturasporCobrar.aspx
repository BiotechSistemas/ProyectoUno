<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/logistica.Master" AutoEventWireup="true" CodeBehind="facturasporCobrar.aspx.cs" Inherits="biotech._1logistica.facturasporCobrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">FACTURAS POR COBRAR

					</div>
					<div class="chart">
                        <div align ="center">



                            
                            <asp:Panel ID="Panel1" runat="server">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                                        <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" />
                                        <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                        <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" />
                                        <asp:BoundField DataField="RETND" HeaderText="RETND" SortExpression="RETND" />
                                        <asp:BoundField DataField="XCOBRAR" HeaderText="XCOBRAR" SortExpression="XCOBRAR" />
                                        <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                                        <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" />
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>



                            
                            </div>
                    </div>
				</div>

			</div>
		</div>
</asp:Content>
