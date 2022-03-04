<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="pagosrealiz.aspx.cs" Inherits="biotech.porpagar.pagosrealiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            color: #006600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style7">
        <strong style="text-align: center">OPERACIONES REALIZADAS</strong></h2>
    <asp:Panel ID="Panel1" runat="server">
        Indicar mes:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="mes" DataValueField="idmes" Width="200px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <span class="auto-style6">Detalle de operaciones realizazas:</span><asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" style="font-size: small" Width="100%">
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                <asp:BoundField DataField="FPAGOREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.PAGOREG" SortExpression="FPAGOREG" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO">
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" Visible="False" />
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" Visible="False" />
                <asp:BoundField DataField="OBSERVACION" HeaderText="OBSERVACION" SortExpression="OBSERVACION" />
                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" />
                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="MCUOTAS" DataFormatString="{0:0,0.00}" HeaderText="MCUOTAS" SortExpression="MCUOTAS" Visible="False">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="MEDIOPAGO" HeaderText="MEDIOPAGO" SortExpression="MEDIOPAGO">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="NOPERACION" HeaderText="NOPERACION" SortExpression="NOPERACION" />
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPORTEPAGADO" DataFormatString="{0:0,0.00}" HeaderText="IMP.PAGADO" SortExpression="IMPORTEPAGADO">
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="EMPRESA" HeaderText="EMPRESA" ReadOnly="True" SortExpression="EMPRESA">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ctapagaFecha" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="fecha1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <span class="auto-style6">
        <br />
        Acumulado General:</span><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="400px">
            <Columns>
                <asp:BoundField DataField="CUENTAS" HeaderText="CUENTAS" ReadOnly="True" SortExpression="CUENTAS" />
                <asp:BoundField DataField="DOLARES U$$." HeaderText="DOLARES U$$." ReadOnly="True" SortExpression="DOLARES U$$." DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLES S/." HeaderText="SOLES S/." ReadOnly="True" SortExpression="SOLES S/." DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_PIVOTMES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
