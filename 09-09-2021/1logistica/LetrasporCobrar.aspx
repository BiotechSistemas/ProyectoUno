<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="LetrasporCobrar.aspx.cs" Inherits="biotech._1logistica.LetrasporCobrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style1 {
            font-size: x-small;
        }
        .auto-style2 {
            font-size: x-small;
        }
       
    .auto-style3 {
        text-align: left;
    }
    .auto-style4 {
        text-align: left;
        font-size: x-small;
    }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      
					<P>VENTAS REALIZADAS</P>

				
    <CENTER>


                            
                            <asp:Panel ID="Panel1" runat="server" Width="95%">
                                <asp:Panel ID="Panel2" runat="server">
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="FACTURAS POR COBRAR" Width="300px" />
                                    <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="LETRAS POR COBRAR" Width="300px" />
                                    <br />
                                    <br />
                                    <asp:Panel ID="pfacturas" runat="server">
                                        
                                        <p>  FACTURAS POR COBRAR: </p>
                                    <p>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" CssClass="auto-style1">
                                            <Columns>
                                                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                                                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                                                <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
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
                                        </p>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_FactporCobrarTP" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </asp:Panel>
                                    <asp:Panel ID="pletras" runat="server">
                                        <p>LETRAS POR COBRAR</p>
                                        <p>
                                        <asp:GridView ID="GridView2" runat="server" DataKeyNames ="COD" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="442px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CssClass="auto-style2">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" />
                                                <asp:BoundField DataField="U$$/S" HeaderText="U$$/S" ReadOnly="True" SortExpression="U$$/S" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
                                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                            <SortedDescendingHeaderStyle BackColor="#242121" />
                                        </asp:GridView>
                                            </p>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_LetrasporCobrar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        
                                        <h3><strong>Detale de letras:
                                            <asp:Label ID="lblestadoselec" runat="server" CssClass="auto-style1"></asp:Label>
                                            <asp:Label ID="lblcodcod" runat="server" CssClass="auto-style1" Visible="False"></asp:Label>
                                            </strong></h3>
                                        
                                        <p>
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" style="font-size: x-small" OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="100%">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                                <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
                                                <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="FVENCTO" HeaderText="F. VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="FEMISION" HeaderText="F. EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                                <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                                <asp:BoundField DataField="IMPORT" HeaderText="IMPORT" SortExpression="IMPORT">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                                <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" Visible="False" />
                                                <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" Visible="False" />
                                                <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" Visible="False" />
                                                <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" Visible="False" />
                                                <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                                <asp:BoundField DataField="FBANCO" HeaderText="FBANCO" SortExpression="FBANCO" Visible="False" />
                                                <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                                <asp:BoundField DataField="TRANS" HeaderText="Dias" ReadOnly="True" SortExpression="TRANS" >
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                            </Columns>
                                            <HeaderStyle BackColor="#333333" ForeColor="White" />
                                        </asp:GridView>
                                        </p>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasporestado" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="GridView2" Name="estadoletra" PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <div class="auto-style4" >
                                            * Items
                                            <asp:Label ID="lblcantidadg" runat="server"></asp:Label>
                                           
                                        </div>
&nbsp;<br />
                                        <asp:Panel ID="Panelencartera" runat="server">
                                            <table border="1" class="auto-style3">
                                                <tr>
                                                    <td>LETRA Nº:
                                                        <asp:Label ID="lblletraseleccionada" runat="server" style="font-size: large; font-weight: 700;"></asp:Label>
                                                        <asp:Label ID="lblidaceptada" runat="server"></asp:Label>
                                                        &nbsp;CLIENTE:
                                                        <asp:Label ID="lblclienteselecionado" runat="server" style="font-size: medium"></asp:Label>
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" style="font-size: medium" Text="LETRA ACEPTADA" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        <br />
                                        </strong>
                                    </asp:Panel>
                                </asp:Panel>


                                  </asp:Panel>


    </CENTER>
                  

</asp:Content>
