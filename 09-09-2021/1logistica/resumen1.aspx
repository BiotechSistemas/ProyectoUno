<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resumen1.aspx.cs" Inherits="biotech._1logistica.resumen1" %>

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
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/images/logo2017.jpg" Width="151px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <hr />
        <asp:Panel ID="Panel1" runat="server">
            <span class="auto-style2"><strong>Ventas realizadas del año</strong></span><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" style="text-align: right; font-size: medium" Width="100%">
                <Columns>
                    <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR">
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Enero" DataFormatString="{0:0,0.00}" HeaderText="Enero" ReadOnly="True" SortExpression="Enero" />
                    <asp:BoundField DataField="Febrero" DataFormatString="{0:0,0.00}" HeaderText="Febrero" ReadOnly="True" SortExpression="Febrero" />
                    <asp:BoundField DataField="Marzo" DataFormatString="{0:0,0.00}" HeaderText="Marzo" ReadOnly="True" SortExpression="Marzo" />
                    <asp:BoundField DataField="Abril" DataFormatString="{0:0,0.00}" HeaderText="Abril" ReadOnly="True" SortExpression="Abril" />
                    <asp:BoundField DataField="Mayo" DataFormatString="{0:0,0.00}" HeaderText="Mayo" ReadOnly="True" SortExpression="Mayo" />
                    <asp:BoundField DataField="Junio" DataFormatString="{0:0,0.00}" HeaderText="Junio" ReadOnly="True" SortExpression="Junio" />
                    <asp:BoundField DataField="Julio" DataFormatString="{0:0,0.00}" HeaderText="Julio" ReadOnly="True" SortExpression="Julio" />
                    <asp:BoundField DataField="Agosto" DataFormatString="{0:0,0.00}" HeaderText="Agosto" ReadOnly="True" SortExpression="Agosto" />
                    <asp:BoundField DataField="Septiembre" DataFormatString="{0:0,0.00}" HeaderText="Septiembre" ReadOnly="True" SortExpression="Septiembre" />
                    <asp:BoundField DataField="Octubre" DataFormatString="{0:0,0.00}" HeaderText="Octubre" ReadOnly="True" SortExpression="Octubre" />
                    <asp:BoundField DataField="Noviembre" DataFormatString="{0:0,0.00}" HeaderText="Noviembre" ReadOnly="True" SortExpression="Noviembre" />
                    <asp:BoundField DataField="Diciembre" DataFormatString="{0:0,0.00}" HeaderText="Diciembre" ReadOnly="True" SortExpression="Diciembre" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_VetasRealizadasporVendedor" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2017" Name="ano" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
