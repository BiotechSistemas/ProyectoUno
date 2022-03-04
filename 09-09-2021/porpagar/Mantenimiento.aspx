<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="biotech.porpagar.Mantenimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style8 {
        }
        .auto-style10 {
            width: 103px;
            height: 26px;
            text-align: right;
        }
        .auto-style11 {
            width: 128px;
            height: 26px;
        }
        .auto-style16 {
            width: 114px;
            height: 26px;
            text-align: right;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style19 {
            height: 376px;
            margin-right: 42px;
        }
        .auto-style21 {
            width: 103px;
            text-align: right;
        }
        .auto-style23 {
        }
        .auto-style24 {
            width: 114px;
            text-align: right;
        }
        .auto-style28 {
            width: 128px;
        }
        .auto-style29 {
            width: 633px;
        }
        .auto-style12 {
            width: 128px;
        }
        .auto-style30 {
            font-size: large;
        }
        .auto-style31 {
            width: 114px;
            text-align: right;
        }
        .auto-style32 {
            color: #CC3300;
        }
        .auto-style33 {
            color: #006600;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style33" style="text-align: center">
        <strong>MANTENIMIENTO CUENTAS POR PAGAR</strong></h2>
    <hr />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="lblidempresaA" runat="server" Visible="False"></asp:Label>
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="GENERAL" />
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="BIOTECH CORP" />
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="BIOTECH" />
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="INSUAGRO EIRL" />
        &nbsp;&nbsp; Buscar:&nbsp;<asp:TextBox ID="TextBox1" Placeholder="Codigo pago" runat="server" Width="150px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BUSCAR" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="font-size: small" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="IDPAGO" HeaderText="IDPAGO" SortExpression="IDPAGO" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="IMP." ReadOnly="True" SortExpression="M">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="MONTO" DataFormatString="{0:0,0.00}" HeaderText="CUOTAS" SortExpression="MONTO">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" />
                <asp:BoundField DataField="EMPRESA" HeaderText="EMPRESA" SortExpression="EMPRESA" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="p_listarcuentas" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="dato" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblidempresaA" Name="empresa" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        Detalle de Cuenta:<br />
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style19">
                <tr>
                    <td class="auto-style21">Cod:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtcodigo" runat="server" Enabled="False" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style24">Empresa:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtempresa" runat="server" Visible="False" Width="100%"></asp:TextBox>
                        <asp:DropDownList ID="ddlbempresa" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="empresa" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas]"></asp:SqlDataSource>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style21">Fecha Registro:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfecharegistro" runat="server" Enabled="False" Width="80%"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/caledario.png" OnClick="ImageButton1_Click" Width="20px" />
                    </td>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style28">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style8">
                        <asp:Calendar ID="Calendarfecharegistro" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendarfecharegistro_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style24">
                        </td>
                    <td class="auto-style28">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style21">Tipo:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txttipo" runat="server" Visible="False" Width="100%"></asp:TextBox>
                        <asp:DropDownList ID="ddltipo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="tipo" DataValueField="idTipo" OnSelectedIndexChanged="ddltipo_SelectedIndexChanged" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_tipo]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style24">Categoria:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtcategoria" runat="server" Visible="False" Width="100%"></asp:TextBox>
                        <asp:DropDownList ID="ddlcategoria" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="categoria" DataValueField="idCat" OnSelectedIndexChanged="ddlcategoria_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_categoria]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Titular:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txttitular" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style24">Moneda:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtmoneda" runat="server" Visible="False"></asp:TextBox>
                        <asp:DropDownList ID="ddlbmoneda" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="idmoneda" OnSelectedIndexChanged="ddlbmoneda_SelectedIndexChanged" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tipoMoneda]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Proveedor:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtproveedor" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style24">N°Doc.:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtndocumento" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Saldo Capital:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtsaldocapital" runat="server" step="0.01" type="number" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style16">Monto a pagar:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtmontoapagar" runat="server" step="0.01" type="number" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Cuotas:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtcuotas" runat="server" step="0.01" type="number" Width="40%"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Cuotas pagadas:</asp:LinkButton>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtncuotaspagadas" runat="server" Enabled="False" Width="50px"></asp:TextBox>
                        &nbsp;- <span class="auto-style32">(
                        <asp:Label ID="lblcuotaxpagar" runat="server"></asp:Label>
                        )</span></td>
                </tr>
                <tr>
                    <td class="auto-style17">

                        <strong>Cuota Actual:</strong></td>
                     <td>

                         <asp:TextBox ID="txtcuotactual" runat="server" Enabled="False" step="0.01" style="color: #003399; font-size: x-large" type="number" Width="100%"></asp:TextBox>

                    </td> 
                    <td class="auto-style31">

                        <strong>Imp. cuotas:</strong></td> 
                    <td class="auto-style28">

                        <asp:TextBox ID="txtmontocuotas" runat="server" step="0.01" type="number" Width="100%"></asp:TextBox>

                    </td>
                </tr>


                <tr>
                    <td class="auto-style21">Cuota a Vencer: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfvencimiento" runat="server" Enabled="False" Width="80%"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/caledario.png" OnClick="ImageButton2_Click" Width="20px" />
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style28">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style8">
                        <asp:Calendar ID="Calendarfechavencto" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendarfechavencto_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style21">Dias:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtndias" runat="server" step="0.01" type="number" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style24">Banco a pagar:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtbancoapagar" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Tipo de pago:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txttppago" runat="server" Visible="False" Width="100%"></asp:TextBox>
                        <asp:DropDownList ID="ddlbtipopago" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="descripcion" DataValueField="idtipopago" OnSelectedIndexChanged="ddlbtipopago_SelectedIndexChanged" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_ctatipodepago]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style24">N°Cuenta:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtncuenta" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Asunto:</td>
                    <td class="auto-style8" colspan="3">
                        <asp:TextBox ID="txtasunto" runat="server" OnTextChanged="TextBox7_TextChanged" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="2">&nbsp;</td>
                    <td class="auto-style23" colspan="2">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <table class="auto-style29">
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ACTULIZAR DATOS" Width="100%" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancelar" Width="100%" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300" Width="100%"></asp:Label>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <span class="auto-style5"><strong>Detalle de cuotas registradas:</strong></span><br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" style="font-size: small">
            <Columns>
                <asp:CheckBoxField DataField="validar" SortExpression="validar" />
                <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" SortExpression="CUOTA" />
                <asp:BoundField DataField="MEDIOPAG" HeaderText="MEDIOPAG" SortExpression="MEDIOPAG" />
                <asp:BoundField DataField="NOPERACION" HeaderText="NOPERACION" SortExpression="NOPERACION" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FPAGADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FPAGADA" SortExpression="FPAGADA">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DIASVENC" HeaderText="DIASVENC" ReadOnly="True" SortExpression="DIASVENC">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="OBSERVACION" HeaderText="OBSERVACION" SortExpression="OBSERVACION" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="p_detallepagos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtcodigo" Name="idpago" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panelmodifcuotas" runat="server">
            <hr />
            <strong><span class="auto-style30">Modificar Cuota:</span><span class="auto-style5"> </span>N°</strong><asp:Label ID="lblidcuota" runat="server" Visible="False"></asp:Label>
            <strong>&nbsp;<asp:Label ID="lblcuota" runat="server" style="font-weight: 700"></asp:Label>
            </strong>
            <table class="auto-style18">
                <tr>
                    <td>MEDIO PAGO:</td>
                    <td style="text-align: left">
                        <asp:Label ID="lblmediopago" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                        <asp:DropDownList ID="ddlmediopago" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="medioPago" DataValueField="idmediopago" OnSelectedIndexChanged="ddlmediopago_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                    </td>
                    <td>N°OPERACION:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtopracion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>IMPORTE:</td>
                    <td>
                        <asp:TextBox ID="txtimport" runat="server" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>FECHA PAGO:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtfechapago" runat="server" Enabled="False" Width="80%"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/caledario.png" OnClick="ImageButton3_Click" style="height: 20px" Width="20px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Observación:</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtobserva" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Actualizar" Width="100%" />
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Cancelar" Width="100%" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;
            <asp:Label ID="lblmensaje2" runat="server" style="color: #CC3300"></asp:Label>
            <br />
            <br />
        </asp:Panel>
    </asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>
