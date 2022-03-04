<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="VentasPersonales.aspx.cs" Inherits="biotech.VentasRTC.VentasPersonales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    ESTADO DE CUENTA<asp:Label ID="lblcodvendedor" runat="server" Visible="False"></asp:Label>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        OP:
        <asp:Label ID="lbl1op" runat="server"></asp:Label>
        &nbsp;, idasesor:
        <asp:Label ID="lbl1idasesor" runat="server"></asp:Label>
        &nbsp;cliente:
        <asp:Label ID="lbl1cliente" runat="server"></asp:Label>
    </asp:Panel>
    <table class="auto-style1">
        <tr>
            <td>CLIENTE:</td>
            <td>
                <asp:TextBox ID="txt1cliente" runat="server" placeholder="RUC ó Razón social" Width="320px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="BUSCAR" Height="35px" />
            </td>
        </tr>
    </table>
    <div class="table-hover">
    <asp:GridView ID="GridViewCliente" runat="server" DataSourceID="SqlDataSourcecliente" AutoGenerateColumns="False" Width="600px" DataKeyNames="idclienteRUC" OnRowCommand="GridViewCliente_RowCommand" OnRowDataBound="GridViewCliente_RowDataBound" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="idclienteRUC" HeaderText="RUC" SortExpression="idclienteRUC">
            <HeaderStyle Width="120px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="RazonSocial" HeaderText="RAZÓN SOCIAL" SortExpression="RazonSocial" >
            
                        <HeaderStyle Width="300px" />
            </asp:BoundField>
            
                        <asp:ButtonField CommandName="idclienteRUC"  HeaderText="ESTADO DE CUENTA" ShowHeader="True" Text="print" ImageUrl="~/images/cuentasestado.png" ButtonType="Image" >
                     <ControlStyle Height="26px" Width="24px" />
                     <HeaderStyle Width="40px" Font-Size="XX-Small" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

        </Columns>
        <FooterStyle BackColor="#82C525" />
        <HeaderStyle BackColor="#CCCCCC" />
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSourcecliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Cliente.clientesxacesor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbl1op" Name="op" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="lbl1idasesor" Name="idasesor" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lbl1cliente" Name="cliente" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="Panelxcobrar" runat="server" Visible="False">
        <h3>CLIENTES FACTURADOS</h3>
        FACTURAS POR COBRAR:<asp:GridView ID="gvFacturasxCobrar" runat="server">
        </asp:GridView>
        LETRAS POR COBRAR:<asp:GridView ID="gcLetrasporcobrar" runat="server">
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="PanelCobradas" runat="server" Visible="False">
        <h3>VENTAS COBRADAS<br /> </h3>
        <br />
    </asp:Panel>
</asp:Content>
