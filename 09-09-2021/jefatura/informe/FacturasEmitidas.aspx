<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacturasEmitidas.aspx.cs" Inherits="biotech.informe.FacturasEmitidas" %>

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
                    <td class="auto-style4">FACTURAS EMITIDAS</td>
                </tr>
            </table>
            <br />
        DETALLE DE FACTURAS REALIZADAS<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="factura" HeaderText="FACTURA" SortExpression="factura" />
                <asp:BoundField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                <asp:BoundField DataField="fechafactura" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fechafactura" />
                <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" />
                <asp:BoundField DataField="condicion" HeaderText="CONDICION" SortExpression="condicion" />
                <asp:BoundField DataField="fechavencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA VENC" SortExpression="fechavencimiento" />
                <asp:BoundField DataField="observacion" HeaderText="OBSER" SortExpression="observacion" />
                <asp:BoundField DataField="norden" HeaderText="ORDEN" SortExpression="norden" />
                <asp:BoundField DataField="subtotal" HeaderText="SUBTT" SortExpression="subtotal" />
                <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" />
                <asp:BoundField DataField="importarte" HeaderText="TOTAL" SortExpression="importarte" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [id], [factura], [estado], [fechafactura], [dias], [condicion], [fechavencimiento], [observacion], [norden], [subtotal], [igv], [importarte] FROM [tb_factura] ORDER BY [id] DESC"></asp:SqlDataSource>
        GUIAS ANEXAS:<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                <asp:BoundField DataField="guiarem" HeaderText="N° GUIA" SortExpression="guiarem" />
                <asp:BoundField DataField="idtransporte" HeaderText="idtransporte" SortExpression="idtransporte" Visible="False" />
                <asp:BoundField DataField="fechaemision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="EMISION" SortExpression="fechaemision" />
                <asp:BoundField DataField="motivotraslado" HeaderText="ESTADO" SortExpression="motivotraslado" />
                <asp:BoundField DataField="IdordenVenta" HeaderText="ORDEN" SortExpression="IdordenVenta" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_facturaGuias" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
