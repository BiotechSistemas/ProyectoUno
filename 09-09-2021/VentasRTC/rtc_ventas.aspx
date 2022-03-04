<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/vendedor.Master" AutoEventWireup="true" CodeBehind="rtc_ventas.aspx.cs" Inherits="biotech.VentasRTC.rtc_ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Ventas Realizadas
        <asp:Label ID="lblidvendedor" runat="server" style="font-weight: 700"></asp:Label>
    &nbsp; -&nbsp; Importe meta:
        <asp:Label ID="lblimportemeta" runat="server"></asp:Label>
    </p><ALING = CENTER>
    <asp:Panel ID="Panel1" runat="server" ALING ="center" style="text-align: center">
        
        <table align="Right" class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="text-align: center" Width="600px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png">
                            <ControlStyle Height="20px" Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" >
                            </asp:BoundField>
                            <asp:BoundField DataField="ANO" HeaderText="AÑO" ReadOnly="True" SortExpression="ANO" />
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPMETA" HeaderText="IMP.META" ReadOnly="True" SortExpression="IMPMETA" DataFormatString="{0:0,0.00}">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIFERENCIA" DataFormatString="{0:0,0.00}" HeaderText="DIFERENCIA" ReadOnly="True" SortExpression="DIFERENCIA" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Inf_VentasRegistradasVendedorDOLAR" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidvendedor" Name="CODVEND" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblimportemeta" Name="IMPORTENETO" PropertyName="Text" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <span class="auto-style3">(*)<strong>IMP. VENTA REG.</strong>= Importe de venta a regularizar según<strong> IMP. META</strong> - moneda: <strong>Dolares Americanos.<br /> </strong>(*)Seleccionar el mes para ver detalle de ventas registradas.<br /> </span>
                    <br />
                    <asp:Panel ID="Panel3" runat="server" style="text-align: center">
                        <asp:Label ID="lblmeslbldescripmes" runat="server"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblano" runat="server"></asp:Label>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAR INFORME" Visible="False" />
                        <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                        <br />
                    </asp:Panel>
                    <h3>Detalle de ventas realizadas:</h3>
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" style="font-size: medium" Width="100%" OnDataBound="GridView2_DataBound">
                            <Columns>
                                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TPVENTA" HeaderText="TPVENTA" SortExpression="TPVENTA" />
                                <asp:BoundField DataField="FREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREG" SortExpression="FREG" />
                                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                <ItemStyle HorizontalAlign="Right" Font-Bold="True" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Inf_VentasRegVendedorMEs" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidvendedor" Name="codvend" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <table class="auto-style2">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="400px">
                                        <Columns>
                                            <asp:BoundField DataField="Column1" HeaderText="Total en:" ReadOnly="True" SortExpression="Column1" />
                                            <asp:BoundField DataField="DOLARES" DataFormatString="{0:0,0.00}" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES">
                                            <ItemStyle HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SOLES" DataFormatString="{0:0,0.00}" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES">
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
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Inf_VentasRegistradasVendedorMONEDA" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidvendedor" Name="codvend" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td style="text-align: right">Cantidad de registros:<asp:Label ID="lblcantregistros" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;</asp:Panel>
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </asp:Panel>

    </ALING>
    <asp:Panel ID="Panel2" runat="server">
    </asp:Panel>
</asp:Content>
