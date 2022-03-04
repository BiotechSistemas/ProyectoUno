<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra/zonajefatura.Master" AutoEventWireup="true" CodeBehind="inventario.aspx.cs" Inherits="biotech.jefatura.inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <H2>
        Stock valorizado</H2>
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="producto" HeaderText="producto" SortExpression="producto" />
                <asp:BoundField DataField="presentacion" HeaderText="presentacion" SortExpression="presentacion" />
                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                <asp:BoundField DataField="preciolista" HeaderText="preciolista" SortExpression="preciolista" />
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" ReadOnly="True" SortExpression="MONTO" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoInventario" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
    </asp:Panel>
    <p>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
