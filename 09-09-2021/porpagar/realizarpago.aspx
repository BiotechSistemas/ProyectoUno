<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="realizarpago.aspx.cs" Inherits="biotech.porpagar.realizarpago" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
        text-align: center;
        font-size: x-large;
            color: #006666;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            font-size: x-large;
            font-weight: bold;
        }
    .auto-style14 {
        height: 28px;
        width: 185px;
    }
    .auto-style15 {
        text-align: right;
        width: 151px;
        height: 44px;
    }
    .auto-style16 {
        width: 185px;
        height: 44px;
    }
    .auto-style23 {
        height: 44px;
        width: 112px;
        text-align: right;
    }
    .auto-style24 {
        height: 28px;
        width: 112px;
    }
    .auto-style27 {
        text-align: right;
        width: 151px;
    }
    .auto-style28 {
        height: 28px;
        width: 151px;
    }
    .auto-style29 {
        width: 151px;
        height: 25px;
    }
    .auto-style34 {
        width: 601px;
    }
    .auto-style36 {
        height: 25px;
        text-align: right;
    }
    .auto-style40 {
        text-align: right;
        width: 151px;
        height: 40px;
    }
    .auto-style41 {
        height: 40px;
    }
    .auto-style45 {
        width: 185px;
    }
    .auto-style47 {
        width: 112px;
        text-align: right;
    }
    .auto-style50 {
        width: 36px;
    }
    .auto-style51 {
        width: 36px;
        height: 44px;
    }
        .auto-style52 {
            color: #006600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style52">
        CUENTAS POR PAGAR DETALLADAS</h2>
<asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="1" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small" Width="100%" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
            </asp:BoundField>
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
            <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
            <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" />
            <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
            <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO">
            <ItemStyle HorizontalAlign="Right" Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" Visible="False" />
            <asp:BoundField DataField="NCUOTAS" HeaderText="NCUOTAS" SortExpression="NCUOTAS" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CUOTASPAGADAS" HeaderText="CPAG" SortExpression="CUOTASPAGADAS" >
            </asp:BoundField>
            <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
            </asp:BoundField>
            <asp:BoundField DataField="MCUOTAS" HeaderText="CUOTAS" SortExpression="MCUOTAS" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="DIASVENCIDOS" HeaderText="DVEN" SortExpression="DIASVENCIDOS" ReadOnly="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="FREGISTRO" HeaderText="FREGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" >
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" BorderStyle="Dotted" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" BorderStyle="None" />
        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cuentasPorPagarORDENDV" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="estadocomer" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Buttonrealizarpago" runat="server" OnClick="Buttonrealizarpago_Click" Text="REALIZAR PAGO" Width="282px" BorderColor="#006666" Height="40px" />
    &nbsp;</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table align="center" class="auto-style34">
             <tr>
                <td class="auto-style27">
                    N° Cuota:</td>
                <td class="auto-style45">
                    <asp:Label ID="lblncuota" runat="server"></asp:Label>
                 </td>
                <td class="auto-style47">PROVEEDOR:</td>
                <td class="auto-style50">
                   
                    <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                   
                    <asp:Label ID="idmayordetalle" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblfechavencto" runat="server" Visible="False"></asp:Label>
                 </td>
            </tr>
            
            <tr>
                <td class="auto-style15">MEDIO PAGO</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="medioPago" DataValueField="idmediopago" Width="150px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                </td>
                <td class="auto-style23">N°OPERACION:</td>
                <td class="auto-style51">
                    <asp:TextBox ID="txtnoperacion" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">FECHA PAGADA:</td>
                <td class="auto-style45">
                    <asp:TextBox ID="txtfecharegistrada" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style47">IMPORTE:</td>
                <td class="auto-style50">
                    <asp:TextBox ID="txtimporte" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">OBSERVACION:</td>
                <td colspan="3" class="auto-style41">
                    <asp:TextBox ID="txtobservacion" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="REGISTRAR PAGO" Width="150px" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="CANCELAR" />
                </td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style29">
                    </td>
                <td class="auto-style36" colspan="3">
                    <asp:Label ID="lblmensaje" runat="server" style="color: #339933"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <hr __designer:mapid="145" />
<asp:Panel ID="PanelDetPagos" runat="server">
    <span class="auto-style9">Detalle REG N° : </span>
    <asp:Label ID="lblcod" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblproveedor0" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;N° cuotas:
    <asp:Label ID="lblncuotas" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cuotas pagadas:
    <asp:Label ID="lblncuotaspagadas" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Importe pagado:
    <asp:Label ID="lblimportettcuotaspagadas" runat="server"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idpagodetalle" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowPaging="True" ForeColor="Black" style="font-size: small">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="idpagodetalle" HeaderText="COD" ReadOnly="True" SortExpression="idpagodetalle" >
            </asp:BoundField>
            <asp:BoundField DataField="idctapago" HeaderText="idctapago" SortExpression="idctapago" Visible="False" />
            <asp:BoundField DataField="idmediopago" HeaderText="idmediopago" SortExpression="idmediopago" Visible="False" />
            <asp:BoundField DataField="noperacion" HeaderText="noperacion" SortExpression="noperacion" Visible="False" >
            </asp:BoundField>
            <asp:BoundField DataField="fechapagada" HeaderText="P REALIZADO" SortExpression="fechapagada" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="importepagado" HeaderText="IMPORTE" SortExpression="importepagado" DataFormatString="{0:0,0.00}" >
            </asp:BoundField>
            <asp:BoundField DataField="ncuota" HeaderText="ncuota" SortExpression="ncuota" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="fechavencto" HeaderText="fechavencto" SortExpression="fechavencto" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="observacion" HeaderText="OBSERVACION" SortExpression="observacion" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_ctaPagosDetalle] WHERE ([idctapago] = @idctapago)  ORDER BY idpagodetalle desc">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="idctapago" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Panel ID="Panel3" runat="server">
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Eliminar importe</asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False">
        Desea eliminar el ultimo importe registrado,
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Eliminar Importe</asp:LinkButton>
        &nbsp;|
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Cancelar</asp:LinkButton>
    </asp:Panel>
    <br />
    <br />
</asp:Panel>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/porpagar/pagosRealizados.aspx">Ver pagos realizados</asp:LinkButton>
<br />
    <br />
<br />
</asp:Content>
