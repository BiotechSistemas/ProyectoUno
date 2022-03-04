<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenCompGeneral.aspx.cs" Inherits="biotech.bio.ventas.ResumenCompGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> Resumen Comparativo</h2>
                            
                        <ol class="breadcrumb">
      <li>
          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Principal</asp:LinkButton>
                                   </li>

      <li class="active">
          <asp:Label ID="lblsubtitulo" runat="server"> General</asp:Label></li>
  
    </ol> 
    </div>

    <div class="row">
        <asp:Button ID="Button1" CssClass="btn-success"  runat="server" Text="Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
                        <asp:DropDownList ID="ddlbMesComparativo" runat="server" AutoPostBack="True" CLASS="form-control" OnSelectedIndexChanged="ddlbMesComparativo_SelectedIndexChanged">
                            <asp:ListItem Value="1">ENERO</asp:ListItem>
                            <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                            <asp:ListItem Value="3">MARZO</asp:ListItem>
                            <asp:ListItem Value="4">ABRIL</asp:ListItem>
                            <asp:ListItem Value="5">MAYO</asp:ListItem>
                            <asp:ListItem Value="6">JUNIO</asp:ListItem>
                            <asp:ListItem Value="7">JULIO</asp:ListItem>
                            <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                            <asp:ListItem Value="9">SETIEMBRE</asp:ListItem>
                            <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                            <asp:ListItem Value="11">NOVEMBRE</asp:ListItem>
                            <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                        </asp:DropDownList>

    </div>

    <asp:Panel ID="Panel1" runat="server">

    </asp:Panel>

</asp:Content>
