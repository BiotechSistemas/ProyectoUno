<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="a_comprasrealizadas.aspx.cs" Inherits="biotech._1logistica.a_comprasrealizadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Compras realizadas</p>
    <asp:Panel ID="Panel3" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" style="font-size: x-small" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                <asp:BoundField DataField="OC" HeaderText="OC" ReadOnly="True" SortExpression="OC" />
                <asp:BoundField DataField="FCOMPRA" HeaderText="FCOMPRA" SortExpression="FCOMPRA" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" SortExpression="FACTURA" />
                <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" />
                <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" />
                <asp:BoundField DataField="OBSERVACION" HeaderText="OBSERVACION" SortExpression="OBSERVACION" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ADELANTO" HeaderText="ADELANTO" SortExpression="ADELANTO" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="XPAGAR" HeaderText="XPAGAR" SortExpression="XPAGAR" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" />
                <asp:BoundField DataField="FPAGO" HeaderText="FPAGO" SortExpression="FPAGO" />
                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" Visible="False" />
                <asp:BoundField DataField="FINANZAS" HeaderText="FINANZAS" SortExpression="FINANZAS" ReadOnly="True" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_OCComprasRealizadas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <span class="auto-style1">Orden de compra:</span>
        <asp:Label ID="lblidoc" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lbloc" runat="server" style="font-weight: 700; font-size: x-large"></asp:Label>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver OC</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div style="text-align: center">
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
        </div>
    </asp:Panel>
</asp:Content>
