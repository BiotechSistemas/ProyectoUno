<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2/paginapresentable.Master" AutoEventWireup="true" CodeBehind="estadoClientes.aspx.cs" Inherits="biotech.vendedor.estadoClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ESTADO DE CLIENTE</p>
    <asp:Panel ID="Panel2" runat="server" style="text-align: center">
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="122px" style="text-align: center" Width="181px">
        </asp:GridView>
        <br />
    </asp:Panel>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
