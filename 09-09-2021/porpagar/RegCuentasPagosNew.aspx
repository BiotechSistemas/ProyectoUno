<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegCuentasPagosNew.aspx.cs" Inherits="biotech.porpagar.RegCuentasPagosNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">




        .auto-style1 {
            width: 100%;

background: linear-gradient(white, #EFEFEF); /* Standard syntax */
        }
        .auto-style3 {
            width: 1181px;
        }
        .auto-style5 {
            color: #006600;
        }
        .auto-style6 {
            font-weight: normal;
            font-size: medium;
            text-align: right;
        }
        .auto-style7 {
            width: 64px;
        }
        .auto-style21 {
        }
        .auto-style24 {
            width: 42px;
        }
        .auto-style25 {
            width: 13px;
        }
        .auto-style36 {
            width: 158px;
        }
        .auto-style37 {
            width: 100px;
        }
        .auto-style2454 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>
            <table class="auto-style1" style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#cc0000', startColorstr='#FFFFFF', gradientType='0'); background-color: #F2F2F2;">
                <tr>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logoicono.png" Width="64px" Height="54px" />
                    </td>
                    <td><span class="auto-style5">CUENTAS POR PAGAR
                        </span>&nbsp; 
     
                        </td>
                    <td class="auto-style6">&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" style="color: #006600" OnClick="LinkButton3_Click">REND. REGISTRADAS</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="color: #006600">PRINCIPAL</asp:LinkButton>
                    </td>
                </tr>
                </table>
        </h2>
        <table class="auto-style3">
            <tr>
                <td class="auto-style21">Empresa:<asp:Label ID="lblid" runat="server" style="font-size: large; font-weight: 700"></asp:Label>
     
                    <br />
                    <asp:DropDownList ID="ddlempresa" runat="server" style="font-size: medium" Width="300px" DataSourceID="SqlDataSource3" DataTextField="empresa" DataValueField="id" Height="30px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [id], [empresa] FROM [tb_empresas] WHERE ([estado] = @estado)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style21">Tipo:<br />
                    <asp:DropDownList ID="ddltipo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="tipo" DataValueField="idTipo" OnSelectedIndexChanged="ddltipo_SelectedIndexChanged" Width="200px" Height="30px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="SELECT * FROM [c_tipo]" ProviderName="<%$ ConnectionStrings:CorporacionAgroConnectionString2.ProviderName %>"></asp:SqlDataSource>
                </td>
                <td class="auto-style21">Categoria:<br />
                    <asp:DropDownList ID="ddlcategoria" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoria" DataValueField="idCat" Width="200px" Height="30px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_categoria] WHERE ([idtipo] = @idtipo)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddltipo" Name="idtipo" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style21">Titular:<br />
                    <asp:TextBox ID="txttitular" runat="server" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style36">N° Documento:<br />
                    <asp:TextBox ID="txtnundocumento" runat="server" Width="150px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:TextBox ID="txtprovedor" runat="server" Width="300px" Height="30px" placeholder="Proveedor"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtruc" runat="server" Width="200px" Height="30px" placeholder="RUC"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtsaldocapital" placeholder="Saldo Capital" runat="server" type="number" step="0.01" Font-Size="Medium" style="color: #000000; background-color: #FFFFCC" Width="200px"  Height="30px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtmonto" placeholder="Saldo a pagar" runat="server" type="number" step="0.01" BackColor="#FFFFCC" Font-Size="Medium"  style="color: #003366" Width="200px" Height="30px"></asp:TextBox>
                    </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtfecha" runat="server" placeholder="F. Emisión" TextMode="Date" Width="150px" Height="30px"></asp:TextBox>
                    </td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:TextBox ID="txtncuotas" runat="server" Width="145px" placeholder="Cantidad cuotas" Height="30px"></asp:TextBox>
                    <asp:TextBox ID="txtndias" runat="server" Width="145px" placeholder="DIAS" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style2454">
                    Tipo de pago:</td>
                <td class="auto-style21">
                    <asp:DropDownList ID="ddlTipoPago" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="idtipopago" Width="200px" Height="35px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_ctatipodepago]"></asp:SqlDataSource>
                    </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtbancoapagar" runat="server" Width="200px" Height="30px" placeholder="Banco"></asp:TextBox>
                    </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtctanununico" runat="server" Width="150px" Height="30px" placeholder="Nº cuenta/N° único"></asp:TextBox>
                    </td>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">Moneda:<asp:RadioButtonList ID="rblMoneda" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idmoneda" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tipoMoneda]"></asp:SqlDataSource>
                </td>
                <td class="auto-style21" colspan="3">
                    <asp:TextBox ID="txtglosa" runat="server" TextMode="MultiLine" Width="100%" placeholder="Asunto"></asp:TextBox>
                </td>
                <td class="auto-style36">
                    <asp:Button ID="Button1" runat="server" Text="REGISTRAR CUENTA" Width="150px" Height="40px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">Fecha Vencimiento:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtFechaVencto" runat="server" TextMode="Date" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtnomtoApagar" runat="server" Width="200px" placeholder="Monto" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/agre.png" Width="30px" />
                </td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="lblxpagar" runat="server" Visible="False">0</asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small" ForeColor="Black" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" >
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" >
                </asp:BoundField>
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" >
                </asp:BoundField>
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" >
                </asp:BoundField>
                <asp:BoundField DataField="DOCUMENTO" SortExpression="DOCUMENTO" HeaderText="DOCUMENTO">
                </asp:BoundField>
                <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" >
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="NCUOTAS" HeaderText="NCUOTAS" SortExpression="NCUOTAS" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="MCUOTAS" HeaderText="MCUOTAS" SortExpression="MCUOTAS" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="DIASVENCIDOS" HeaderText="DIASVENCIDOS" SortExpression="DIASVENCIDOS" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DEPOSITO" HeaderText="DEPOSITO" SortExpression="DEPOSITO" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRO" SortExpression="FREGISTRO" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="WhiteSmoke" />
            <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cuentasPorPagar" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblxpagar" Name="estadocomer" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
