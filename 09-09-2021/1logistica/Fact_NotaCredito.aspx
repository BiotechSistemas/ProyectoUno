<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="Fact_NotaCredito.aspx.cs" Inherits="biotech._1logistica.Fact_NotaCredito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style4 {
            width: 8px;
        }
        .auto-style5 {
        }
     
        .auto-style8 {
            font-size: x-small;
            color: #999999;
        }
        .auto-style9 {
            text-align: left;
            font-size: medium;
        }
        .auto-style13 {
            width: 2px;
        }
        .auto-style14 {
            font-size: x-small;
            color: #999999;
            width: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelNotaCredito" runat="server">
        <h2>NOTA DE CREDITO</h2>
        <table align="center">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtnotadecredito" runat="server" Height="30px" TabIndex="1" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style2">DOCUMENTO
                    <br />
                    QUE MODIFICA:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtserie" runat="server" CssClass="auto-style4" Height="30px" TabIndex="2" Width="50px"></asp:TextBox>
                    &nbsp;<strong><span class="auto-style2">-</span></strong>
                    <asp:TextBox ID="txtnumfac" runat="server" CssClass="auto-style4" Height="30px" TabIndex="3" Width="100px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" TabIndex="4" Text="BUSCAR" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr _="">
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">Nº NOTA CREDITO</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8" style="text-align: left">&nbsp;</td>
                <td class="auto-style8" style="font-size: x-small">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtfechaa" runat="server" Height="30px" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtfactura" runat="server" Height="30px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtcliente" runat="server" Height="30px" ReadOnly="True" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtmonto" runat="server" Height="30px" ReadOnly="True" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="font-size: x-small">&nbsp;</td>
                <td class="auto-style8" style="font-size: x-small">FECHA(dd/mm/aaaa)</td>
                <td class="auto-style8">FACTURA</td>
                <td class="auto-style8" style="text-align: left">CLIENTE</td>
                <td class="auto-style8" style="text-align: left; font-size: x-small; color: #808080;">MONTO:
                    <asp:Label ID="lblmoneda" runat="server" style="color: #000000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>Fecha Emisión:<br />
                    <asp:TextBox ID="txtfechamodfica" runat="server" TabIndex="5" TextMode="Date" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style6">Importe:<br />
                    <asp:TextBox ID="txtimportedevol" runat="server" Height="30px" step="0.01" TabIndex="6" type="number"></asp:TextBox>
                </td>
                <td colspan="2">Asunto:<br />
                    <asp:TextBox ID="txtmotivo" runat="server" TabIndex="7" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="NUEVO" Width="100%" />
                </td>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" TabIndex="8" Text="REGISTRAR" Width="100%" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5" colspan="4">
                    <asp:Label ID="lblmensaje" runat="server" style="color: #990000"></asp:Label>
                    <asp:Label ID="lblidfactura" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblnotadecredito" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <p class="auto-style9">
                <strong>NOTAS DE CREDITOS REGISTRADAS:</strong></p>
            <center>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idnodcred" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="idnodcred" HeaderText="COD" ReadOnly="True" SortExpression="idnodcred" Visible="False" />
                        <asp:BoundField DataField="notacredito" HeaderText="NOTA CRED" ReadOnly="True" SortExpression="notacredito" />
                        <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="fecha" />
                        <asp:BoundField DataField="idfactura" HeaderText="idfactura" ReadOnly="True" SortExpression="idfactura" Visible="False" />
                        <asp:BoundField DataField="factura" HeaderText="FACTURA" ReadOnly="True" SortExpression="factura" />
                        <asp:BoundField DataField="motivo" HeaderText="MOTIVO" SortExpression="motivo" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [NotaCredito] WHERE [idnodcred] = @idnodcred" InsertCommand="INSERT INTO [NotaCredito] ([idnodcred], [notacredito], [fecha], [idfactura], [factura], [motivo]) VALUES (@idnodcred, @notacredito, @fecha, @idfactura, @factura, @motivo)" SelectCommand="SELECT [idnodcred], [notacredito], [fecha], [idfactura], [factura], [motivo] FROM [NotaCredito] ORDER BY [idnodcred] DESC" UpdateCommand="UPDATE [NotaCredito] SET [notacredito] = @notacredito, [fecha] = @fecha, [idfactura] = @idfactura, [factura] = @factura, [motivo] = @motivo WHERE [idnodcred] = @idnodcred">
                    <DeleteParameters>
                        <asp:Parameter Name="idnodcred" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="idnodcred" Type="Int32" />
                        <asp:Parameter Name="notacredito" Type="String" />
                        <asp:Parameter DbType="Date" Name="fecha" />
                        <asp:Parameter Name="idfactura" Type="Int32" />
                        <asp:Parameter Name="factura" Type="String" />
                        <asp:Parameter Name="motivo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="notacredito" Type="String" />
                        <asp:Parameter DbType="Date" Name="fecha" />
                        <asp:Parameter Name="idfactura" Type="Int32" />
                        <asp:Parameter Name="factura" Type="String" />
                        <asp:Parameter Name="motivo" Type="String" />
                        <asp:Parameter Name="idnodcred" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </center>
        </asp:Panel>
    </asp:Panel>
                            <br />
   
                            <br />
</asp:Content>
