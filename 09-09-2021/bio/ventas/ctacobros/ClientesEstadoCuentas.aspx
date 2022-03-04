<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ClientesEstadoCuentas.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.ClientesEstadoCuentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>ESTADO CUENTAS CLIENTE</h2>
<asp:Panel ID="dato" runat="server">
    dato:
    <asp:Label ID="lblvalor" runat="server"></asp:Label>
</asp:Panel>
<p>
</p>

    <asp:GridView ID="GridViewtt" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcett">
        <Columns>
            <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" />
            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
            <asp:BoundField DataField="IMPBRUTO" HeaderText="IMPBRUTO" ReadOnly="True" SortExpression="IMPBRUTO" />
        </Columns>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSourcett" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_resumenxcobrar_TT" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblvalor" Name="dato" PropertyName="Text" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>

    <asp:Panel ID="Panel1" runat="server">


    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server"></asp:Panel>
</asp:Content>
