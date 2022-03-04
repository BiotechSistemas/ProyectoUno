<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productosnohay.aspx.cs" Inherits="biotech.informe.Productosnohay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style2 {
            width: 197px;
            height: 80px;
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
    
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <img class="auto-style2" src="../images/logobio.png" />
                    </td>
                    <td class="auto-style4">PRODUCTOS SIN STOCK</td>
                </tr>
            </table>
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSource1" Height="133px" Width="463px">
            <Columns>
                <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" />
                <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                <asp:BoundField DataField="presentacion" HeaderText="PRESENT" SortExpression="presentacion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idProducto], [producto], [presentacion] FROM [tb_producto] WHERE ([cantidad] = @cantidad)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="cantidad" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
