<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="ctaporpagar.aspx.cs" Inherits="biotech.porpagar.ctaporpagar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
                
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: left;
        }
        
    .auto-style6 {
        font-size: large;
        font-weight: bold;
    }
        
        .auto-style7 {
            text-align: center;
            height: 24px;
            width: 1143px;
        }
        
        .auto-style9 {
            height: 23px;
            width: 72px;
        }
        .auto-style11 {
            height: 23px;
            width: 200px;
        }
        .auto-style12 {
            text-align: left;
            height: 23px;
        }
                
        .auto-style14 {
            text-align: right;
            height: 23px;
            width: 185px;
        }
        
        .auto-style15 {
            text-align: center;
            font-size: xx-large;
            width: 100%;
            font-weight: bold;
            color: #006666;
            background-color: #FFFFFF;
        }
        
        .auto-style17 {
            width: 200px;
            text-align: left;
            height: 22px;
        }
        .auto-style18 {
            text-align: left;
            height: 22px;
            width: 215px;
        }
        .auto-style19 {
            height: 22px;
            width: 185px;
        }
        .auto-style20 {
            width: 574px;
        }
        .auto-style21 {
            text-align: left;
            height: 23px;
            width: 215px;
        }
        .auto-style22 {
            width: 200px;
            text-align: left;
        }
        .auto-style23 {
            width: 72px;
        }
        .auto-style26 {
            text-align: left;
            height: 22px;
            width: 185px;
        }
        .auto-style27 {
            text-align: left;
            height: 23px;
            width: 185px;
        }
                
        .auto-style30 {
            height: 23px;
        }
        
        .auto-style32 {
            height: 23px;
            width: 185px;
        }
        .auto-style35 {
            width: 185px;
        }
        .auto-style37 {
            height: 23px;
        }
        
    </style>--%>
    <style type="text/css">
        .auto-style27 {
            text-align: right;
        }
        .auto-style15 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style22 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>REGISTRO DE CUENTAS POR PAGAR</strong></p>
    <asp:Panel ID="Panel1" runat="server">
        <table align="center" class="auto-style20">
            <tr>
                <td style="text-align: left" class="auto-style35" >N°REGISTRO:&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblid" runat="server" style="font-size: large; font-weight: 700"></asp:Label>
                    <br />
                </td>
                <td style="text-align: right" >
                    
                    EMPRESA:</td>
                <td>
                    <asp:DropDownList ID="ddlempresa" runat="server" style="font-size: medium" Width="200px">
                        <asp:ListItem Value="5">BIOTECH</asp:ListItem>
                        <asp:ListItem Value="1">BIOTECH PERU</asp:ListItem>
                        <asp:ListItem Value="2">INSUAGRO SAC</asp:ListItem>
                        <asp:ListItem Value="3">INSUAGRO EIRL</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style22">
                    FECHA:</td>
                <td style="text-align: right" class="auto-style23" >
                    <asp:TextBox ID="txtfecha" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                    <br /> </td> 
            </tr> 
            <tr>
                <td class="auto-style35">
                    <asp:DropDownList ID="ddltipo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="tipo" DataValueField="idTipo" OnSelectedIndexChanged="ddltipo_SelectedIndexChanged" Width="150px">
                    </asp:DropDownList>
                    <br />
                    Tipo:<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="SELECT * FROM [c_tipo]" ProviderName="<%$ ConnectionStrings:CorporacionAgroConnectionString2.ProviderName %>"></asp:SqlDataSource>
                </td>
                <td class="auto-style35">
                    <asp:DropDownList ID="ddlcategoria" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoria" DataValueField="idCat" Width="150px">
                    </asp:DropDownList>
                    <br />
                    Categoria:<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_categoria] WHERE ([idtipo] = @idtipo)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddltipo" Name="idtipo" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="txtprovedor" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    Proveedor:<asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnundocumento" runat="server" Width="120px"></asp:TextBox>
                    <br />
                    Nº Doc:</td>
                <td>
                    <asp:TextBox ID="txttitular" runat="server"></asp:TextBox>
                    <br />
                    Titular<br />
                </td>
            </tr>

            <tr>
                <td style="text-align: right" class="auto-style37" colspan="5">
                    <hr />
                </td>
            </tr>

            <tr>
                <td class="auto-style35">
                    <asp:TextBox ID="txtsaldocapital" runat="server" type="number" step="0.01" Font-Size="Medium" style="color: #000000; background-color: #FFFFCC" Width="150px" OnTextChanged="txtsaldocapital_TextChanged"></asp:TextBox>
                    <br />
                    SALDO CAPITAL:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtmonto" runat="server" type="number" step="0.01" BackColor="#FFFFCC" Font-Size="Medium" OnTextChanged="txtmonto_TextChanged" style="color: #003366" Width="150px"></asp:TextBox>
                    <br />
                    SALDO A PAGAR:</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlmoneda" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idmoneda" Height="25px" Width="200px">
                    </asp:DropDownList>
                    <br />
                    Moneda:<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tipoMoneda]"></asp:SqlDataSource>
                </td>
                <td class="auto-style11" >
                    &nbsp;</td>
                 <td style="text-align: right" class="auto-style9" >
                     &nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style35" >
                    <asp:TextBox ID="txtncuotas" runat="server" BackColor="#FFFFCC" TextMode="Number" Width="120px"></asp:TextBox>
                    <br />
                    N° CUOTAS:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtndias" runat="server" BackColor="#FFFFCC" TextMode="Number" Width="100px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    DIAS:</td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="text-align: right" Text="IMPORTE" />
                    <asp:TextBox ID="txtmontocuotas" type="number" step="0.01" runat="server" BackColor="#FFFFCC" style="color: #003366" Width="100px"></asp:TextBox>
                    <br />
                    Importe a pagar</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtfechareg1ERPAGO" runat="server" style="text-align: left; color: #000000; background-color: #FFFFCC;" Width="100px"></asp:TextBox>
                    <br />
                    Fecha 1er pago:<br />
                    </td>
            </tr>


            <tr>
                <td class="auto-style26">
                    <asp:DropDownList ID="ddlTipoPago" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="idtipopago" Width="150px">
                    </asp:DropDownList>
                    <br />
                    Tipo pago:<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_ctatipodepago]"></asp:SqlDataSource>
                    </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtbancoapagar" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    Banco :</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtctanununico" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    Nº cuenta/Numero único:</td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtcuotasplazo" type="number" step="0.01" runat="server" Width="60px">0</asp:TextBox>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="..." />
                    <br />
                    Cuotas plazo:</td>

            </tr>





            <tr>
                <td class="auto-style14">Asunto:</td>
                <td colspan="4" class="auto-style30">
                    <asp:TextBox ID="txtglosa" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style7" colspan="5">
                    <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="NUEVO" Width="200px" />
                    <asp:Button ID="Button1" runat="server" Height="40px" style="text-align: center" Text="REGISTRAR OPERACION" Width="300px" OnClick="Button1_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style27" colspan="5">
                    <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <span class="auto-style6">
        <br />
        DETALLE DE CUENTAS POR PAGAR REGISTRADAS </span>
        <asp:Label ID="lblxpagar" runat="server" Text="0" Visible="False"></asp:Label>
        <asp:Label ID="lbldv" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small" ForeColor="Black" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" >
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" >
                </asp:BoundField>
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" >
                </asp:BoundField>
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" >
                </asp:BoundField>
                <asp:BoundField DataField="DOCUMENTO" SortExpression="DOCUMENTO" HeaderText="DOCUMENTO">
                </asp:BoundField>
                <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" >
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="NCUOTAS" HeaderText="NCUOTAS" SortExpression="NCUOTAS" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="MCUOTAS" HeaderText="MCUOTAS" SortExpression="MCUOTAS" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="DIASVENCIDOS" HeaderText="DIASVENCIDOS" SortExpression="DIASVENCIDOS" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DEPOSITO" HeaderText="DEPOSITO" SortExpression="DEPOSITO" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRO" SortExpression="FREGISTRO" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cuentasPorPagar" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblxpagar" Name="estadocomer" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Panel ID="Panel3" runat="server">
            <br />
            Eliminar Registro N°:
            <asp:Label ID="lblidreg" runat="server"></asp:Label>
            ,
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Eliminar Registro</asp:LinkButton>
            &nbsp;|
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Cancelar</asp:LinkButton>
        </asp:Panel>
        <br />
</asp:Panel>
<asp:Panel ID="Panel4" runat="server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id_porCobrar" DataSourceID="SqlDataSource7" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" >
            </asp:CommandField>
            <asp:BoundField DataField="id_porCobrar" HeaderText="id_porCobrar" ReadOnly="True" SortExpression="id_porCobrar" />
            <asp:BoundField DataField="proveedor" HeaderText="proveedor" SortExpression="proveedor" />
            <asp:BoundField DataField="nDocumento" HeaderText="nDocumento" SortExpression="nDocumento" />
            <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
            <asp:BoundField DataField="fechaEmision" HeaderText="fechaEmision" SortExpression="fechaEmision" />
            <asp:BoundField DataField="ncuotas" HeaderText="ncuotas" SortExpression="ncuotas" />
            <asp:BoundField DataField="ndias" HeaderText="ndias" SortExpression="ndias" />
            <asp:BoundField DataField="fechaVencimiento" HeaderText="fechaVencimiento" SortExpression="fechaVencimiento" />
            <asp:BoundField DataField="montocuotas" HeaderText="montocuotas" SortExpression="montocuotas" />
            <asp:BoundField DataField="tpmoneda" HeaderText="tpmoneda" SortExpression="tpmoneda" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="saldocapital" HeaderText="saldocapital" SortExpression="saldocapital" />
            <asp:BoundField DataField="pagarbanco" HeaderText="pagarbanco" SortExpression="pagarbanco" />
            <asp:BoundField DataField="pagarTipoDeposito" HeaderText="pagarTipoDeposito" SortExpression="pagarTipoDeposito" />
            <asp:BoundField DataField="pagarCTAunico" HeaderText="pagarCTAunico" SortExpression="pagarCTAunico" />
            <asp:BoundField DataField="glosa" HeaderText="glosa" SortExpression="glosa" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [c_ctaPagos] WHERE [id_porCobrar] = @id_porCobrar" InsertCommand="INSERT INTO [c_ctaPagos] ([id_porCobrar], [proveedor], [nDocumento], [monto], [fechaEmision], [ncuotas], [ndias], [fechaVencimiento], [montocuotas], [tpmoneda], [fecha], [saldocapital], [pagarbanco], [pagarTipoDeposito], [pagarCTAunico], [glosa]) VALUES (@id_porCobrar, @proveedor, @nDocumento, @monto, @fechaEmision, @ncuotas, @ndias, @fechaVencimiento, @montocuotas, @tpmoneda, @fecha, @saldocapital, @pagarbanco, @pagarTipoDeposito, @pagarCTAunico, @glosa)" SelectCommand="SELECT [id_porCobrar], [proveedor], [nDocumento], [monto], [fechaEmision], [ncuotas], [ndias], [fechaVencimiento], [montocuotas], [tpmoneda], [fecha], [saldocapital], [pagarbanco], [pagarTipoDeposito], [pagarCTAunico], [glosa] FROM [c_ctaPagos] WHERE ([id_porCobrar] = @id_porCobrar) ORDER BY [id_porCobrar] DESC" UpdateCommand="UPDATE [c_ctaPagos] SET [proveedor] = @proveedor, [nDocumento] = @nDocumento, [monto] = @monto, [fechaEmision] = @fechaEmision, [ncuotas] = @ncuotas, [ndias] = @ndias, [fechaVencimiento] = @fechaVencimiento, [montocuotas] = @montocuotas, [tpmoneda] = @tpmoneda, [fecha] = @fecha, [saldocapital] = @saldocapital, [pagarbanco] = @pagarbanco, [pagarTipoDeposito] = @pagarTipoDeposito, [pagarCTAunico] = @pagarCTAunico, [glosa] = @glosa WHERE [id_porCobrar] = @id_porCobrar">
        <DeleteParameters>
            <asp:Parameter Name="id_porCobrar" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_porCobrar" Type="Int32" />
            <asp:Parameter Name="proveedor" Type="String" />
            <asp:Parameter Name="nDocumento" Type="String" />
            <asp:Parameter Name="monto" Type="Decimal" />
            <asp:Parameter Name="fechaEmision" DbType="Date" />
            <asp:Parameter Name="ncuotas" Type="Int32" />
            <asp:Parameter Name="ndias" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fechaVencimiento" />
            <asp:Parameter Name="montocuotas" Type="Decimal" />
            <asp:Parameter Name="tpmoneda" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="saldocapital" Type="Decimal" />
            <asp:Parameter Name="pagarbanco" Type="String" />
            <asp:Parameter Name="pagarTipoDeposito" Type="String" />
            <asp:Parameter Name="pagarCTAunico" Type="String" />
            <asp:Parameter Name="glosa" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id_porCobrar" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="proveedor" Type="String" />
            <asp:Parameter Name="nDocumento" Type="String" />
            <asp:Parameter Name="monto" Type="Decimal" />
            <asp:Parameter Name="fechaEmision" DbType="Date" />
            <asp:Parameter Name="ncuotas" Type="Int32" />
            <asp:Parameter Name="ndias" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fechaVencimiento" />
            <asp:Parameter Name="montocuotas" Type="Decimal" />
            <asp:Parameter Name="tpmoneda" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="saldocapital" Type="Decimal" />
            <asp:Parameter Name="pagarbanco" Type="String" />
            <asp:Parameter Name="pagarTipoDeposito" Type="String" />
            <asp:Parameter Name="pagarCTAunico" Type="String" />
            <asp:Parameter Name="glosa" Type="String" />
            <asp:Parameter Name="id_porCobrar" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Panel>
</asp:Content>
