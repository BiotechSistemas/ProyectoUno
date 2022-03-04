<%@ Page Title="" Language="C#" MasterPageFile="~/jefatura/clientes.Master" AutoEventWireup="true" CodeBehind="Planilla_Trabajadores.aspx.cs" Inherits="biotech.jefatura.Planilla_Trabajadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-small;
        }
        .auto-style4 {
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <h2><strong>TRABAJADORES REGISTRADOS</strong></h2><strong>Empresa Biotech</strong><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style3">
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                <asp:BoundField DataField="NCUENTA" HeaderText="N.CUENTA" SortExpression="NCUENTA" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_PlanillaTrabajadoresCuenta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="A" Name="grupo" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <strong>Empresa E.I.R.L.</strong><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style4">
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                <asp:BoundField DataField="NCUENTA" HeaderText="N.CUENTA" SortExpression="NCUENTA" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_PlanillaTrabajadoresCuenta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="B" Name="grupo" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
