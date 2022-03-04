<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2/paginapresentable.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.vendedor.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 21px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Menú</h2>
    <table class="auto-style1">
        <tr>
            <td>Bienvenido,
                <asp:Label ID="lblusuario" runat="server"></asp:Label>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Salir" Width="69px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
</table>
</asp:Content>
