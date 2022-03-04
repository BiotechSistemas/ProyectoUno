<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrarLetra.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.AdministrarLetra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ADMINISTRACION DE LETRAS BIOTECH<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAL" />
        <asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BUSCAR" />
        <br />
        <asp:Label ID="lblop" runat="server" Text="10" Visible="False"></asp:Label>
        <asp:Label ID="lblidletra" runat="server" Text="0" Visible="False"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            &nbsp;<table class="auto-style1">
                <tr>
                    <td>FECHAE MISION:<br />
                        <asp:TextBox ID="txtfechareg" runat="server"></asp:TextBox>
                    </td>
                    <td>FECHA VENCIMIENTO:<br />
                        <asp:TextBox ID="txtfechaVencimiento" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ACTUALIZAR" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>IMPORETE<br />
                        <asp:TextBox ID="txtimporte" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblidletraModifica" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="ACTUALIZAR IMPORTE" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">DESCRIPCION<br />
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:GridView ID="gvLetras" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idletra" DataSourceID="SqlDataSourceLetra" Font-Size="X-Small" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvLetras_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idletra" HeaderText="idletra" ReadOnly="True" SortExpression="idletra" />
                <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" />
                <asp:BoundField DataField="letra" HeaderText="letra" SortExpression="letra" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" />
                <asp:BoundField DataField="razon" HeaderText="razon" SortExpression="razon" />
                <asp:BoundField DataField="moneda" HeaderText="moneda" SortExpression="moneda" />
                <asp:BoundField DataField="tt" HeaderText="tt" SortExpression="tt" />
                <asp:BoundField DataField="imprenv" HeaderText="imprenv" SortExpression="imprenv" />
                <asp:BoundField DataField="impamortizado" HeaderText="impamortizado" SortExpression="impamortizado" />
                <asp:BoundField DataField="escritura" HeaderText="escritura" SortExpression="escritura" />
                <asp:BoundField DataField="estadoletra" HeaderText="estadoletra" SortExpression="estadoletra" />
                <asp:BoundField DataField="protestada" HeaderText="protestada" SortExpression="protestada" />
                <asp:BoundField DataField="fechaVencimiento" HeaderText="fechaVencimiento" SortExpression="fechaVencimiento" />
                <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                <asp:BoundField DataField="NumeroUnico" HeaderText="NumeroUnico" SortExpression="NumeroUnico" />
                <asp:BoundField DataField="Banco" HeaderText="Banco" SortExpression="Banco" />
                <asp:BoundField DataField="descuento" HeaderText="descuento" SortExpression="descuento" />
                <asp:BoundField DataField="importeNeto" HeaderText="importeNeto" SortExpression="importeNeto" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="fechabanco" HeaderText="fechabanco" SortExpression="fechabanco" />
                <asp:BoundField DataField="estadoCancel" HeaderText="estadoCancel" SortExpression="estadoCancel" />
                <asp:BoundField DataField="cadenaFact" HeaderText="cadenaFact" SortExpression="cadenaFact" />
                <asp:BoundField DataField="LugarPago" HeaderText="LugarPago" SortExpression="LugarPago" />
                <asp:BoundField DataField="idClienteRuc" HeaderText="idClienteRuc" SortExpression="idClienteRuc" />
                <asp:BoundField DataField="CancelacionFecha" HeaderText="CancelacionFecha" SortExpression="CancelacionFecha" />
                <asp:BoundField DataField="CancelacionMonto" HeaderText="CancelacionMonto" SortExpression="CancelacionMonto" />
                <asp:BoundField DataField="protestoFecha" HeaderText="protestoFecha" SortExpression="protestoFecha" />
                <asp:BoundField DataField="renovadafecha" HeaderText="renovadafecha" SortExpression="renovadafecha" />
                <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" />
                <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                <asp:BoundField DataField="Distrito" HeaderText="Distrito" SortExpression="Distrito" />
                <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceLetra" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Letras_listado" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblidletra" Name="idletra" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
