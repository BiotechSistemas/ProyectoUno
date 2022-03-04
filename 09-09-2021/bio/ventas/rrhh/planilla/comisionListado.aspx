<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="comisionListado.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.comisionListado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>TABLA DE COMISIONES</h1>
    <br />
        Ingresar producto: <asp:TextBox ID="txtproducto" runat="server" OnTextChanged="txtproducto_TextChanged"></asp:TextBox>
        <asp:Button ID="btnbuscarProducto" runat="server" Text="BUSCAR" OnClick="btnbuscarProducto_Click" />
        

    

<asp:Label ID="lblproductoselec" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblop" runat="server" Text="0"></asp:Label>
        <asp:Button ID="btntodos" runat="server" OnClick="btntodos_Click" Text="VER TODOS" />
<br />
<asp:GridView ID="gvComisiones" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSource1" OnRowUpdating="gvComisiones_RowUpdating" OnRowCommand="gvComisiones_RowCommand">
    <Columns>
          <asp:CommandField ShowEditButton="True" />
          <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" />
        <asp:BoundField DataField="producto" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="producto" />
        <asp:BoundField DataField="idcomision" HeaderText="idcomision" ReadOnly="True" SortExpression="idcomision" Visible="False" />
        <asp:BoundField DataField="detalle" HeaderText="COMISION" ReadOnly="True" SortExpression="detalle" >
        </asp:BoundField>
        <asp:BoundField DataField="porcentaje" HeaderText="%" ReadOnly="True" SortExpression="porcentaje" DataFormatString="{0:0,0.00}" >
          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
        </asp:BoundField>
          <asp:BoundField DataField="rangocomisional" HeaderText="RANGO COMISIONAL" SortExpression="rangocomisional" DataFormatString="{0:0,0.00}" >
          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
          </asp:BoundField>
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="comi_listar" SelectCommandType="StoredProcedure" UpdateCommand="update tb_proComisionado set valrango = @rangocomisional,a1=@rangocomisional*-5,a2=@rangocomisional*-4,a3=@rangocomisional*-3,a4=@rangocomisional*-2,a5=@rangocomisional*-1,a6=@rangocomisional*-0,a7=@rangocomisional*1,a8=@rangocomisional*2,a9=@rangocomisional*3,a10=@rangocomisional*4 
where idproducto = @idproducto">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="lblproductoselec" Name="comision" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="rangocomisional" Type="Decimal" />
            <asp:Parameter Name="idproducto" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        

        <asp:Label ID="lblErrorMessage" runat="server" Text="Label"></asp:Label>
        

    </div>

</asp:Content>
