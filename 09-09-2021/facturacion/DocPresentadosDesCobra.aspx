<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="DocPresentadosDesCobra.aspx.cs" Inherits="biotech.facturacion.DocPresentadosDesCobra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
             width: 700px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 151px;
        }
        .auto-style6 {
            width: 358px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Documentos presentados DESCUENTO / COBRANZA LIBRE</div>
					<div class="chart">
                        <asp:Panel ID="Panel7" runat="server">
                            <br />
                            <asp:Button ID="Button5" runat="server" Height="40px" OnClick="Button5_Click" Text="OPERACIONES POR CONFIRMAR" />
                            <asp:Button ID="Button4" runat="server" Text="OPERACIONES CONFIRMADAS" Height="40px" OnClick="Button4_Click" />
                            <br />
                            <hr />


                        </asp:Panel>

                        <asp:Panel ID="Panel5" runat="server">
                            <br />
                            <strong>OPERACIONES BANCARIAS CONFIRMADAS:<br /> </strong>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="OP" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" AllowPaging="True" PageSize="15" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="font-size: medium">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                    <ControlStyle Height="20px" Width="20px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="OP" HeaderText="OP" ReadOnly="True" SortExpression="OP" />
                                    <asp:BoundField DataField="OPERACION" HeaderText="OPERACION" ReadOnly="True" SortExpression="OPERACION" />
                                    <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" Visible="False">
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                    <asp:BoundField DataField="NCUENTA" HeaderText="NCUENTA" SortExpression="NCUENTA" />
                                    <asp:BoundField DataField="IMPBASE" HeaderText="IMPBASE" SortExpression="IMPBASE" />
                                    <asp:BoundField DataField="DESEMB" HeaderText="DESEMB" SortExpression="DESEMB" />
                                    <asp:BoundField DataField="TASA" HeaderText="TASA" SortExpression="TASA" />
                                    <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.BANCO" SortExpression="FBANCO" />
                                    <asp:BoundField DataField="DOCUMENTOS" HeaderText="DOCUMENTOS" SortExpression="DOCUMENTOS" />
                                    <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                    <asp:BoundField DataField="OP1" HeaderText="OP1" SortExpression="OP1" Visible="False" />
                                    <asp:CheckBoxField DataField="OP2" SortExpression="OP2" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle Font-Bold="False" ForeColor="Black" BackColor="#CCCCCC" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoDoc1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <asp:Panel ID="Panel6" runat="server">
                                <br />
                                Detalle letras anexadas&nbsp;
                                <asp:Label ID="lbloperacion" runat="server" style="font-weight: 700"></asp:Label>
                                <br />
                                <br />
                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDETALLE" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="80%">
                                    <Columns>
                                        <asp:BoundField DataField="CODDETALLE" HeaderText="CODDETALLE" ReadOnly="True" SortExpression="CODDETALLE" />
                                        <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                        <asp:BoundField DataField="RAZON" HeaderText="RAZON" SortExpression="RAZON" />
                                        <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" />
                                        <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" />
                                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                                        <asp:BoundField DataField="NBANCO" HeaderText="NBANCO" SortExpression="NBANCO" />
                                    </Columns>
                                    <HeaderStyle BackColor="Gray" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoLetrasAnexas" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="GridView3" Name="idletra" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Panel ID="Panel8" runat="server">
                                    <br />
                                    LETRA Nº:
                                    <asp:Label ID="lblletra" runat="server" style="font-weight: 700"></asp:Label>
                                    <asp:Label ID="lblcodletra" runat="server" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NUMERO UNICO:
                                    <asp:TextBox ID="txtnumunico" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="REGISTRAR" />
                                    &nbsp;</asp:Panel>
                                <br />
                                <br />
                            </asp:Panel>
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel1" runat="server">
                            <strong>
                            <br />
                            OPERACIONES BANCARIAS POR CONFIRMAR:</strong><br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar.png" ShowSelectButton="True">
                                    <ControlStyle Height="20px" Width="20px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="COD" HeaderText="NºOPERACION" ReadOnly="True" SortExpression="COD" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" >
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CUENTA" HeaderText="CUENTA" SortExpression="CUENTA">
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IMPORACUM" HeaderText="IMPORTE.TT" ReadOnly="True" SortExpression="IMPORACUM">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="moneda" HeaderText="M" SortExpression="moneda" />
                                    <asp:BoundField DataField="DOC" HeaderText="DOCUMENTOS" SortExpression="DOC" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle ForeColor="Black" Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoDoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <br />
                            <asp:Panel ID="Panel2" runat="server">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Print" />
                                &nbsp; Detalle de letras anexadas <strong>OPERACION:<asp:Label ID="lblcodigo" runat="server"></asp:Label>
                                &nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDETALLE" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="CODDETALLE" HeaderText="COD" ReadOnly="True" SortExpression="CODDETALLE" />
                                        <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                        <asp:BoundField DataField="RAZON" HeaderText="RAZON" SortExpression="RAZON" />
                                        <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" />
                                        <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="FVENCTO" HeaderText="F.VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                                        <asp:BoundField DataField="NBANCO" HeaderText="NBANCO" SortExpression="NBANCO" />
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoLetrasAnexas" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="GridView1" Name="idletra" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
                                <br />
                                <asp:Panel ID="Panel9" runat="server">
                                    Letra:
                                    <asp:Label ID="lblletradoc" runat="server" style="font-weight: 700"></asp:Label>
                                    <asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    Ingresar NUMERO UNICO:
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Registrar" Width="71px" />
                                    &nbsp;,&nbsp;
                                    <asp:Label ID="lblcoddoc" runat="server" Visible="False"></asp:Label>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Quitar de planilla</asp:LinkButton>
                                    <br />
                                </asp:Panel>
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server">
                                <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="CONFIRMAR APROBACION BANCARIA" />
                            </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server">
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style2">Nº de operación:</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblcoddoc2" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            F.Emisión:<asp:Label ID="lblfechareg" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Num. cuenta
                                            <asp:Label ID="lblbanco" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblnumcuenta" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td class="auto-style6">Importe TT:<asp:Label ID="lblimportett" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Moneda:</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style6">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style6">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="txtmontoadesembolsar" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="txttasainteres" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">Monto a desembolsar</td>
                                        <td class="auto-style6">Tasa de interes</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" colspan="3">
                                            <br />
                                            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" style="font-weight: 700" Text="REGISTRAR OPERACION" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                            <br />
                            <br />
                            <br />


    </asp:Panel>
                    </div>
				</div>

			</div>
		</div>
    </div>

</asp:Content>
