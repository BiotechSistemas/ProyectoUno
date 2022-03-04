<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="pagosRealizados.aspx.cs" Inherits="biotech.porpagar.pagosRealizados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-weight: bold;
            font-size: xx-large;
            color: #000000;
        }
        .auto-style6 {
            color: #006600;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style6">
        OPERACIONES REALIZADAS</h2>
    <asp:Panel ID="Panel1" runat="server">
        INDICAR MES :
        <asp:DropDownList ID="DropDownList1MES" runat="server" DataSourceID="SqlDataSource4" DataTextField="mes" DataValueField="idmes" Width="200px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
        <asp:Button ID="Button4" runat="server" Text="FILTRAR" OnClick="Button4_Click" />
        &nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <br />
            PAGOS REALIZADO:<asp:GridView ID="GridView1" DataKeyNames ="COD" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="font-size: small" Width="100%">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                    <asp:BoundField DataField="FPAGOREG" HeaderText="FPAGOREG" SortExpression="FPAGOREG" >
                    </asp:BoundField>
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                    <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                    <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" />
                    <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
                    <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" />
                    <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                    <asp:BoundField DataField="MCUOTAS" HeaderText="MCUOTAS" SortExpression="MCUOTAS" />
                    <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" />
                    <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" ReadOnly="True" />
                    <asp:BoundField DataField="MEDIOPAGO" SortExpression="MEDIOPAGO" HeaderText="MEDIOPAGO" >
                    </asp:BoundField>
                    <asp:BoundField DataField="NOPERACION" HeaderText="NOPERACION" SortExpression="NOPERACION" >
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTEPAGADO" HeaderText="IMPORTEPAGADO" SortExpression="IMPORTEPAGADO"></asp:BoundField>
                    <asp:BoundField DataField="EMPRESA" HeaderText="EMPRESA" SortExpression="EMPRESA" ReadOnly="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ctapagaFecha" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" DbType="Date" Name="fecha1" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" style="font-size: small">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                    <asp:BoundField DataField="FPAGOREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FPAGOREG" SortExpression="FPAGOREG" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                    <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                    <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" />
                    <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
                    <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" />
                    <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                    <asp:BoundField DataField="MCUOTAS" HeaderText="MCUOTAS" SortExpression="MCUOTAS" />
                    <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" />
                    <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                    <asp:BoundField DataField="MEDIOPAGO" HeaderText="MEDIOPAGO" SortExpression="MEDIOPAGO" />
                    <asp:BoundField DataField="NOPERACION" HeaderText="NOPERACION" SortExpression="NOPERACION" />
                    <asp:BoundField DataField="IMPORTEPAGADO" HeaderText="IMPORTEPAGADO" SortExpression="IMPORTEPAGADO" />
                    <asp:BoundField DataField="EMPRESA" HeaderText="EMPRESA" ReadOnly="True" SortExpression="EMPRESA" />
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ctapagaFecha" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="fecha1" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server">
            N°REG:
            <asp:Label ID="lblcod" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<strong>PROVEEDOR:&nbsp; </strong>
            <asp:Label ID="lblproveedor" runat="server"></asp:Label>
            <br />
            <strong>ASUNTO:</strong>
            <asp:Label ID="lblasunto" runat="server"></asp:Label>
            <br />
            <strong>F.EMISION:</strong>
            <asp:Label ID="lblfemision" runat="server"></asp:Label>
            <br />
            <br />
            <strong>MONTO ORIGINAL A PAGAR:</strong>
            <asp:Label ID="lblmonto" runat="server"></asp:Label>
            <br />
            <strong>SALDO DEUDOR:</strong><asp:Label ID="lblsaldodeudor" runat="server"></asp:Label>
            <br />
            <br />
            <strong>IMP. ACOMULADO:</strong>
            <asp:Label ID="lblimportettcuotaspagadas" runat="server"></asp:Label>
            &nbsp;<br /> <strong>CUOTAS:</strong>&nbsp;<asp:Label ID="lblncuotas" runat="server"></asp:Label>
            &nbsp;-&nbsp;&nbsp;<asp:Label ID="lblncuotaspagadas" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp; <strong>VALOR CUOTA:</strong><asp:Label ID="lblvalorcuota" runat="server"></asp:Label>
            <br />
            &nbsp;
            <hr />
            <br />
            Movimientos realizados:<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idpagodetalle" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="ncuota" HeaderText="Nº" SortExpression="ncuota" />
                <asp:BoundField DataField="idpagodetalle" HeaderText="idpagodetalle" SortExpression="idpagodetalle" ReadOnly="True" Visible="False">
                </asp:BoundField>
                <asp:BoundField DataField="idctapago" HeaderText="idctapago" SortExpression="idctapago" Visible="False" />
                <asp:BoundField DataField="idmediopago" HeaderText="MEDIO P" SortExpression="idmediopago" />
                <asp:BoundField DataField="noperacion" HeaderText="N OPERACION" SortExpression="noperacion">
                </asp:BoundField>
                <asp:BoundField DataField="fechapagada" HeaderText="F REGISTRO" SortExpression="fechapagada" DataFormatString="{0:dd/MM/yyyy}">
                </asp:BoundField>
                <asp:BoundField DataField="importepagado" HeaderText="IMPORTE" SortExpression="importepagado" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fechavencto" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="fechavencto" />
                <asp:BoundField DataField="observacion" HeaderText="Observacion" SortExpression="observacion" Visible="False" />
                <asp:CheckBoxField DataField="validar" SortExpression="validar" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_ctaPagosDetalle] WHERE ([idctapago] = @idctapago)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="idctapago" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Horizontal" ForeColor="Black" Width="301px">
            <Columns>
                <asp:BoundField DataField="CUENTAS" HeaderText="CUENTAS" SortExpression="CUENTAS" ReadOnly="True" />
                <asp:BoundField DataField="DOLARES U$$." HeaderText="DOLARES U$$." ReadOnly="True" SortExpression="DOLARES U$$." DataFormatString="{0:0,0.00}">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLES S/." DataFormatString="{0:0,0.00}" HeaderText="SOLES S/." ReadOnly="True" SortExpression="SOLES S/.">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_PIVOTMES" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>
