<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="TipoCambio.aspx.cs" Inherits="biotech.bio.ventas.Admin.TipoCambio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="page-header"><i class="glyphicon fa-money"></i> TIPO DE CAMBIO<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        </h2>


    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblfecha" runat="server" Width="120px" style="text-align: center; font-size: large;"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcompra"  type="number" step="0.001" runat="server" Width="150px" placeholder="Compra" Font-Size="Large" Height="30px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtventa" type="number" step="0.001" runat="server" Width="150px" placeholder="Venta" Font-Size="Large" Height="30px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/agre.png" Width="30px" OnClick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
            </td>
        </tr>
    </table>
   



    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="15" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:dd/MM/yyyy}" >
                <HeaderStyle Width="120px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Compra" HeaderText="Compra" SortExpression="Compra" DataFormatString="{0:0,0.000}" >
                <HeaderStyle Width="150px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Venta" HeaderText="Venta" SortExpression="Venta" DataFormatString="{0:0,0.000}" >
                <HeaderStyle Width="150px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField ShowEditButton="True">
                <HeaderStyle Width="150px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT TOP 31 * FROM [tipoCambio] ORDER BY [id] DESC" DeleteCommand="DELETE FROM [tipoCambio] WHERE [id] = @id" InsertCommand="INSERT INTO [tipoCambio] ([id], [Fecha], [Compra], [Venta]) VALUES (@id, @Fecha, @Compra, @Venta)" UpdateCommand="UPDATE [tipoCambio] SET [Fecha] = @Fecha, [Compra] = @Compra, [Venta] = @Venta WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Fecha" />
                <asp:Parameter Name="Compra" Type="Decimal" />
                <asp:Parameter Name="Venta" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Fecha" />
                <asp:Parameter Name="Compra" Type="Decimal" />
                <asp:Parameter Name="Venta" Type="Decimal" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <br />
    <a href="https://e-consulta.sunat.gob.pe/cl-at-ittipcam/tcS01Alias" target="_blank">CONSULTAR SUNAT</a>

</asp:Content>
