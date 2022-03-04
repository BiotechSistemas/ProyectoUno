<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="facturarporcobrar.aspx.cs" Inherits="biotech.facturacion.facturarporcobrar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

					
                        <div align ="CENTER" style="background-color:white;">
    


                            
                            <asp:Panel ID="Panel1" runat="server">
                                <br />
                                <br />
                               <h2> <strong>
                                DETALLE DE FACTURAS POR COBRAR</strong><asp:Label ID="lblnivel" runat="server" Text="Label" Visible="False"></asp:Label>
                                   <br /></h2>
                                <asp:Panel ID="Panel3" runat="server">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA">
                                            <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                                            <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                            <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                            <ItemStyle HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="RETND" DataFormatString="{0:0,0.00}" HeaderText="RET/ DET" SortExpression="RETND">
                                            <ItemStyle HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="A COBRAR" SortExpression="XCOBRAR">
                                            <ItemStyle HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="M" HeaderText="MONEDA" ReadOnly="True" SortExpression="M" />
                                            <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" />
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <div style="width: 400px; ">
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
                                            <Columns>
                                                <asp:BoundField DataField="M" HeaderText="MONEDA" ReadOnly="True" SortExpression="M">
                                                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                                                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="RET / DET" DataFormatString="{0:0,0.00}" HeaderText="RET / DET" ReadOnly="True" SortExpression="RET / DET">
                                                <ItemStyle HorizontalAlign="Right" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="XCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="A COBRAR" ReadOnly="True" SortExpression="XCOBRAR">
                                                <ItemStyle HorizontalAlign="Right" />
                                                </asp:BoundField>
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
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="c_facturatt" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </div>
                                </asp:Panel>
                                <br />
                                <asp:Panel ID="Panel2" runat="server">
                                    <table style="width: 429px">
                                        <tr>
                                            <td style="text-align: left;" class="auto-style1">FACTURA:
                                                <asp:Label ID="lblfactura1" runat="server"></asp:Label>
                                                <br />
                                                CLIENTE:&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblcliente1" runat="server"></asp:Label>
                                                <br />
                                                IMPORTE:
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                                <asp:Label ID="lblcodfactura" runat="server" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;" class="auto-style1">DETALLE PAGO:&nbsp;<asp:TextBox ID="txtdetallepago" runat="server" Width="300px" Height="42px" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;" class="auto-style1">
                                                <br />
                                                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" style="text-align: center" Text="REGISTRAR PAGO" Width="250px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;" class="auto-style1">&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <br />
                            </asp:Panel>
    


        
		</div>
  
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 233px;
        }
    </style>
</asp:Content>

