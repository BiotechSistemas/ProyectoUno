<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="ctapagadas.aspx.cs" Inherits="biotech.porpagar.ctapagadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            font-weight: bold;
            text-align: left;
        }
        .auto-style6 {
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        p<a title="Imprimir" href='javascript:window.print(); void 0;'><img src="../images/images.png" alt="Imprimir" style="height: 27px; width: 44px" /></a>&nbsp; CUENTAS SALDADAS</p>
    <hr />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id_porcobrar" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="id_porcobrar" HeaderText="N°REG" InsertVisible="False" ReadOnly="True" SortExpression="id_porcobrar" />
                <asp:BoundField DataField="fechavencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechavencimiento" />
                <asp:BoundField DataField="fechaemision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="fechaemision" />
                <asp:BoundField DataField="idtipo" HeaderText="TIPO" SortExpression="idtipo" />
                <asp:BoundField DataField="categoria" HeaderText="CATEGORIA" SortExpression="categoria" />
                <asp:BoundField DataField="proveedor" HeaderText="PROVEEDOR" SortExpression="proveedor" />
                <asp:BoundField DataField="ndocumento" HeaderText="N°DOC" SortExpression="ndocumento" />
                <asp:BoundField DataField="monto" HeaderText="MONTO" SortExpression="monto" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ncuotas" HeaderText="CUOTAS" SortExpression="ncuotas" />
                <asp:BoundField DataField="ncuotaspagadas" HeaderText="CP" SortExpression="ncuotaspagadas" />
                <asp:BoundField DataField="montocuotas" HeaderText="MONTO C" SortExpression="montocuotas" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DIASVENCIDOS" HeaderText="DIASVENCIDOS" SortExpression="DIASVENCIDOS" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="tpmoneda" HeaderText="M" SortExpression="tpmoneda" />
                <asp:BoundField DataField="glosa" HeaderText="OBSERB" SortExpression="glosa" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cuentasPagadasORDENDV" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="estadocomer" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <span class="auto-style6">Detalle de pagos realizados: </span>&nbsp;CTA N°:
        <asp:Label ID="lblcod" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp; N° DE CUOTAS;
        <asp:Label ID="lblncuotas" runat="server"></asp:Label>
        &nbsp;&nbsp; CUOTAS CANCELADAS:
        <asp:Label ID="lblncuotaspagadas" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp; IMPORTE:
        <asp:Label ID="lblimportettcuotaspagadas" runat="server"></asp:Label>
        <br />
        <hr />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idpagodetalle" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idpagodetalle" HeaderText="idpagodetalle" InsertVisible="False" ReadOnly="True" SortExpression="idpagodetalle" Visible="False" />
                <asp:BoundField DataField="idctapago" HeaderText="N°REG" SortExpression="idctapago" />
                <asp:BoundField DataField="idmediopago" HeaderText="MEDIO PAGO" SortExpression="idmediopago" />
                <asp:BoundField DataField="noperacion" HeaderText="COMPROBANTE" SortExpression="noperacion" />
                <asp:BoundField DataField="fechapagada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.PAGO" SortExpression="fechapagada">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="importepagado" HeaderText="IMPORTE" SortExpression="importepagado">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="observacion" HeaderText="OBSERVACION" SortExpression="observacion" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_ctaPagosDetalle] WHERE ([idctapago] = @idctapago)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idctapago" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>
