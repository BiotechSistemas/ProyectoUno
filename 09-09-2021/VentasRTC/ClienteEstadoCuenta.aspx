<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="ClienteEstadoCuenta.aspx.cs" Inherits="biotech.VentasRTC.ClienteEstadoCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    CLIENTE - ESTADO DE CUENTA
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">NUEVO REGISTRO</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">CLIENTES REGISTRADOS</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
    <%--<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton3_Click">REG. INF. BASICA</asp:LinkButton>--%>
    <asp:LinkButton ID="EstadoCuenta" runat="server">VER ESTADO DE CUENTA</asp:LinkButton>
    <br />
    <br />
        <br />
       <div class="control-group">
    <label class="control-label">Razón social/RUC :<span class="required">*</span></label>
    <div class="controls">
        </div>
           </div>
     
           </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
