<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="AlmacenCentral.aspx.cs" Inherits="biotech._1logistica.AlmacenCentral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ALMACEN CENTRAL</p>
    <asp:Panel ID="PanelIngresoProductos" runat="server">
        
        <fieldset style="min-height:100px;">
 <legend><b>INGRESO DE PRODUCTOS</b> </legend>
            <table class="auto-style1">
                <tr>
                    <td WIDTH="120px">&nbsp;</td>
                    <td WIDTH="8px">&nbsp;</td>
                    <td WIDTH="200px">&nbsp;</td>
                    <td WIDTH="50px">&nbsp;</td>
                    <td WIDTH="120px">&nbsp;</td>
                    <td WIDTH="8px">&nbsp;</td>
                    <td WIDTH="200px">&nbsp;</td>
                    <td WIDTH="50px">&nbsp;</td>
                    <td WIDTH="120px">&nbsp;</td>
                    <td WIDTH="8px">&nbsp;</td>
                    <td WIDTH="200px">&nbsp;</td>
                </tr>
                <tr>
                    <td width="120px">Orden de compra</td>
                    <td width="8px">:</td>
                    <td width="200px">
                        <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">Documento Compra</td>
                    <td width="8px">:</td>
                    <td width="200px">
                        <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                </tr>
                <tr>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                </tr>
                <tr>
                    <td width="120px">Tipo:</td>
                    <td width="8px">:</td>
                    <td width="200px">
                        <asp:DropDownList ID="ddlTipo" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="id" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OdenCompraCentro]"></asp:SqlDataSource>
                    </td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">Unidades</td>
                    <td width="8px">:</td>
                    <td width="200px">
                        <asp:DropDownList ID="ddlCategoria" runat="server" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="idund" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [a_unidadMedida]"></asp:SqlDataSource>
                    </td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                </tr>
                <tr>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                    <td width="50px">&nbsp;</td>
                    <td width="120px">&nbsp;</td>
                    <td width="8px">&nbsp;</td>
                    <td width="200px">&nbsp;</td>
                </tr>
            </table>
            </fieldset>
    </asp:Panel>
    <p>
    </p>
</asp:Content>
