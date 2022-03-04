<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Det.aspx.cs" Inherits="biotech.bio.ventas.compras.Product_Det" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td WIDTH="100" >
                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/images/logoicono.png" Width="50px" />
                </td>
                <td class="auto-style3"><span class="auto-style2"><strong>PROVEEDOR PRODUCTO / SERVICIO</strong></span><br />
                    <asp:Label ID="lblidproducto" runat="server"></asp:Label>
&nbsp;-
                    <asp:Label ID="lblproducto" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">POR O.C. DE COMPRA/SERVICIO:</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Size="X-Small" Width="100%" AllowPaging="True" PageSize="6">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="CONTACTO" HeaderText="CONTACTO" SortExpression="CONTACTO" />
                            <asp:BoundField DataField="CORREO" HeaderText="CORREO" SortExpression="CORREO" />
                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Producto_proveedor" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="op" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidproducto" DefaultValue="" Name="idProducto" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">POR COTIZACIÒN:</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Font-Size="X-Small" Width="100%" AllowPaging="True" PageSize="6">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="CONTACTO" HeaderText="CONTACTO" SortExpression="CONTACTO" />
                            <asp:BoundField DataField="CORREO" HeaderText="CORREO" SortExpression="CORREO" />
                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Producto_proveedor" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="20" Name="op" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidproducto" DefaultValue="" Name="idProducto" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
