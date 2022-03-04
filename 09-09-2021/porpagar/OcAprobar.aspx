<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="OcAprobar.aspx.cs" Inherits="biotech.porpagar.OcAprobar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 58px;
    }
    .auto-style9 {
        text-align: right;
        width: 151px;
    }
    .auto-style10 {
        width: 58px;
        height: 23px;
    }
    .auto-style11 {
        text-align: right;
        width: 151px;
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: left">
    Ordenes Compra por aprobar<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblIDusuario" runat="server" Visible="False"></asp:Label>
    </h1>
<hr />
<asp:Panel ID="pprincipal" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
            <asp:BoundField DataField="ORDEN" HeaderText="ORDEN" ReadOnly="True" SortExpression="ORDEN" />
            <asp:BoundField DataField="FECHAREG" HeaderText="FECHAREG" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="CENTRO" HeaderText="CENTRO" SortExpression="CENTRO" />
            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
            <asp:BoundField DataField="MONEDA" HeaderText="M" SortExpression="MONEDA" />
            <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL" />
            <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" />
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" />
            <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_OCESTADOxautorizar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Panel>
<asp:Panel ID="porden" runat="server">
    <asp:Label ID="lblidoc" runat="server"></asp:Label>
    <br />
    <strong>Orden Compra:&nbsp; <asp:Label ID="lbloc" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </strong>
    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Ver OC</asp:LinkButton>
    <br />
    <strong>Fecha Reg:</strong><asp:Label ID="lblfechareg" runat="server"></asp:Label>
    <br />
    <strong>Centro Costo:</strong><asp:Label ID="lblcentrocosto" runat="server"></asp:Label>
    <br />
    <strong>Razón Social:</strong><asp:Label ID="lblrazonsocial" runat="server"></asp:Label>
    <br />
    <strong>Solicita:</strong><asp:Label ID="lblsolicita" runat="server"></asp:Label>
    <br />
    <strong>Elaborado por:</strong>&nbsp;<asp:Label ID="lblelabpor" runat="server"></asp:Label>
    <asp:HiddenField ID="hfidoc" runat="server" />
    &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleoc" DataSourceID="SqlDataSource2" Width="500px">
        <Columns>
            <asp:BoundField DataField="iddetalleoc" HeaderText="iddetalleoc" ReadOnly="True" SortExpression="iddetalleoc" Visible="False" />
            <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
            <asp:BoundField DataField="unidmed" HeaderText="UND" SortExpression="unidmed" />
            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
            <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion">
            <ItemStyle Font-Size="X-Small" />
            </asp:BoundField>
            <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
            <asp:BoundField DataField="precio" DataFormatString="{0:0,0.00}" HeaderText="PRECIO" SortExpression="precio">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="subtotal" DataFormatString="{0:0,0.00}" HeaderText="SUBTT" SortExpression="subtotal">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
        </Columns>
        <HeaderStyle BackColor="Black" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompraDetalle] WHERE ([idoc] = @idoc)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="idoc" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="Panel2" runat="server" style="text-align: right">
        <div style="width: 494px">
            <table align="right">
                <tr>
                    <td class="auto-style7">SubTotal:</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblmoneda0" runat="server"></asp:Label>
                        <asp:Label ID="lblsubtotal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">IGV:</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblmoneda1" runat="server" style="color: #CC3300"></asp:Label>
                        <asp:Label ID="lbligv" runat="server" style="color: #CC3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Total:</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblmoneda2" runat="server"></asp:Label>
                        <asp:Label ID="lbltotal" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
    </asp:Panel>
    <asp:Button ID="Button1" runat="server" Height="40px" Text="APROBAR OC" Width="300px" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Height="40px" Text="CANCELAR" OnClick="Button2_Click" />
    <br />
    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    <br />
</asp:Panel>
<p>
</p>
</asp:Content>
