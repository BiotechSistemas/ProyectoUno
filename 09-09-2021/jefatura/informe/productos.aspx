<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="biotech.informe.productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
            height: 80px;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style4 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <img class="auto-style2" src="../images/logobio.png" />
                    </td>
                    <td class="auto-style4">INVENTARIO VALORIZADO DE PRODUCTO</td>
                </tr>
            </table>
            COSTO TOTAL: U$$
            <asp:Label ID="lblttcosto" runat="server"></asp:Label>
            <br />
            <br />
            <strong>DETALLE LISTADO:</strong><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="___">
                        <ControlStyle Width="20px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" />
                    <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                    <asp:BoundField DataField="presentacion" HeaderText="PRESENT" SortExpression="presentacion" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="preciolista" HeaderText="PRECIO" SortExpression="preciolista">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="COSTO" HeaderText="COSTO" ReadOnly="True" SortExpression="COSTO">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoInventario" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
