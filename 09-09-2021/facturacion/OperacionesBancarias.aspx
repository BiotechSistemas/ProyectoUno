<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="OperacionesBancarias.aspx.cs" Inherits="biotech.facturacion.OperacionesBancarias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .right {
            text-align: center;
        }
        .auto-style1 {
            color: #666666;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Cobranza de letras</div>
                    <div class="container2">
                            <div class="right">
                                <asp:Button ID="Button15" runat="server" Height="40px" OnClick="Button15_Click" PostBackUrl="~/facturacion/DocPresentadosDesCobra.aspx" Text="LETRAS EN TRANSICIÓN" Width="200px" />
                                <asp:Button ID="Button9" runat="server" Height="40px" OnClick="Button9_Click" Text="COBRANZA LIBRE" Width="200px" />
                                <asp:Button ID="Button8" runat="server" Height="40px" OnClick="Button8_Click" Text="DESCUENTO" Width="200px" />
                                <asp:Button ID="Button7" runat="server" Height="40px" OnClick="Button7_Click" Text="LETRAS COBRADAS" Width="200px" />
                                <br />
                                <hr style="margin-top: 0px" />

                            </div>
                            <div class="center">

                            </div>
                    </div>

					<div class="chart">
                        <asp:Panel ID="Panel2" runat="server">
                            <br />
                            <strong><span class="auto-style2">LETRAS EN COBRANZA LIBRE:</span></strong><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="COD" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" style="font-size: small">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" />
                                    <asp:BoundField DataField="CODLETRA" HeaderText="CODLETRA" SortExpression="CODLETRA" Visible="False" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" ReadOnly="True" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="FVENCTO" HeaderText="F.VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" />
                                    <asp:BoundField DataField="IMPORTETT" HeaderText="IMPORTETT" SortExpression="IMPORTETT" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                    <asp:BoundField DataField="IMPRENOVADO" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" Visible="False" />
                                    <asp:BoundField DataField="AMORTIZADO" HeaderText="AMORTIZADO" SortExpression="AMORTIZADO" Visible="False" />
                                    <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                    <asp:BoundField DataField="cadenaFact" HeaderText="cadenaFact" SortExpression="cadenaFact" Visible="False" />
                                    <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                    <asp:BoundField DataField="OBSERV" HeaderText="OBSERV" SortExpression="OBSERV" />
                                </Columns>
                                <HeaderStyle BackColor="#333333" ForeColor="White" />
                                <SelectedRowStyle Font-Bold="True" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="A_LetrasEstadoOperaciones" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="CBRAL" Name="idestado" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Panel ID="Panel5" runat="server">
                                <strong>
                                <br />
                                REALIZAR OPERACION<br /> Letra seleccionada: </strong>
                                <asp:Label ID="lblletra1" runat="server"></asp:Label>
                                <asp:Label ID="lblcod1" runat="server" Visible="False"></asp:Label>
                                <br />
                                <br />
                                OBSERVACION:<br />
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR PAGO" Height="40px" />
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="PASAR A PROTESTO" Height="40px" />
                                <asp:Button ID="Button13" runat="server" Height="40px" OnClick="Button13_Click" Text="RENOVAR LETRA" />
                                <br />
                                <br />
                                <asp:Label ID="lblmensaje1" runat="server" style="color: #FF0000"></asp:Label>
                                <br />
                            </asp:Panel>
                            <br />
                            <br />
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel1" runat="server">
                            <strong><span class="auto-style2">LETRAS EN DESCUENTO POR CONFIRMAR PAGO:</span></strong><br />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="COD" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="font-size: small" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" />
                                    <asp:BoundField DataField="CODLETRA" HeaderText="CODLETRA" SortExpression="CODLETRA" Visible="False" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" ReadOnly="True" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="FVENCTO" HeaderText="F.VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" />
                                    <asp:BoundField DataField="IMPORTETT" HeaderText="IMPORTETT" SortExpression="IMPORTETT" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                    <asp:BoundField DataField="IMPRENOVADO" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" Visible="False" />
                                    <asp:BoundField DataField="AMORTIZADO" HeaderText="AMORTIZADO" SortExpression="AMORTIZADO" Visible="False" />
                                    <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                    <asp:BoundField DataField="cadenaFact" HeaderText="cadenaFact" SortExpression="cadenaFact" Visible="False" />
                                    <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                    <asp:BoundField DataField="OBSERV" HeaderText="OBSERV" SortExpression="OBSERV" />
                                </Columns>
                                <HeaderStyle BackColor="#333333" ForeColor="White" />
                                <SelectedRowStyle Font-Bold="True" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="A_LetrasEstadoOperaciones" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="DSCTO" Name="idestado" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Panel ID="Panel6" runat="server">
                                <strong>REALIZAR OPERACION<br /> Letra seleccionada:</strong><asp:Label ID="lblletra2" runat="server"></asp:Label>
                                <asp:Label ID="lblcod2" runat="server" Visible="False"></asp:Label>
                                <strong>
                                <br />
                                <br />
                                OBSERVACION:<br />
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="REGISTRAR PAGO" Height="40px" />
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="PASAR A PROTESTO" Height="40px" />
                                <asp:Button ID="Button14" runat="server" Height="40px" OnClick="Button14_Click" Text="RENOVAR LETRA" />
                                <br />
                                <br />
                                <br />
                                </strong>
                                <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000"></asp:Label>
                            </asp:Panel>
                            <br />
                            <br />


                        </asp:Panel>
                        

                         <asp:Panel ID="Panel7" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
                                <hr />
                                <strong><span class="auto-style2">
                                REALIZAR RENOVACION DE LETRA</span><br /> Letra seleccionada:</strong><asp:Label ID="lblletra3" runat="server"></asp:Label>
                                <asp:Label ID="lblcod3" runat="server" Visible="False"></asp:Label>
                                <br />
                                <br />
                                IMPORTE:
                                <asp:TextBox ID="txtimporte" runat="server" Enabled="False"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AMORTIZAR:<asp:TextBox ID="txtval" runat="server" style="color: #000000" Width="92px"></asp:TextBox>
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="%" Width="50px" />
                                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="$" Width="50px" />
                                &nbsp; <span class="auto-style1">Ejm.(55%)<br /> </span>
                                <br />
                                MONTO AMORTIZADO:&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtamortizado" runat="server" Enabled="False"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                IMPORTE RENOVADO:&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtresta" runat="server" Enabled="False"></asp:TextBox>
                                <br />
                                <br />
                                OBSERVACION:<br />
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="REALIZAR UNA RENOVACION" Height="40px" />
                                <br />
                                <br />
                                <asp:Label ID="lblmensaje3" runat="server" style="color: #FF0000"></asp:Label>
                            </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server">
                            <strong><span class="auto-style2">
                            <br />
                            <br />
                            LETRAS PROTESTADAS:</span></strong><br />
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="COD" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" style="font-size: small" OnRowDataBound="GridView3_RowDataBound" ShowFooter="True">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" />
                                    <asp:BoundField DataField="CODLETRA" HeaderText="CODLETRA" SortExpression="CODLETRA" Visible="False" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" ReadOnly="True" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="FVENCTO" HeaderText="F.VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" />
                                    <asp:BoundField DataField="IMPORTETT" HeaderText="IMPORTETT" SortExpression="IMPORTETT" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                    <asp:BoundField DataField="IMPRENOVADO" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" />
                                    <asp:BoundField DataField="AMORTIZADO" HeaderText="AMORTIZADO" SortExpression="AMORTIZADO" />
                                    <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                    <asp:BoundField DataField="cadenaFact" HeaderText="cadenaFact" SortExpression="cadenaFact" Visible="False" />
                                    <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                    <asp:BoundField DataField="OBSERV" HeaderText="OBSERV" SortExpression="OBSERV" />
                                </Columns>
                                <HeaderStyle BackColor="#333333" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="A_LetrasEstadoOperacionesPROTESTADAS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <asp:Panel ID="Panel8" runat="server">
                                <asp:Button ID="Button6" runat="server" Height="40px" OnClick="Button6_Click" Text="REALIZAR PAGO" />
                                <br />
                            </asp:Panel>
                            <hr />
                           
                            <br />
                        </asp:Panel>

                        <br />
                        <br />
                        <asp:Panel ID="Panel4" runat="server">
                            <strong><span class="auto-style2">LETRAS CANCELADAS</span></strong><br />
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" DataKeyNames="COD" ForeColor="#333333" style="font-size: small">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" />
                                    <asp:BoundField DataField="CODLETRA" HeaderText="CODLETRA" SortExpression="CODLETRA" Visible="False" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" ReadOnly="True" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="FVENCTO" HeaderText="F.VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" />
                                    <asp:BoundField DataField="IMPORTETT" HeaderText="IMPORTETT" SortExpression="IMPORTETT" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                    <asp:BoundField DataField="IMPRENOVADO" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AMORTIZADO" HeaderText="AMORTIZADO" SortExpression="AMORTIZADO" DataFormatString="{0:0,0.00}" >
                                    <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                    <asp:BoundField DataField="cadenaFact" HeaderText="cadenaFact" SortExpression="cadenaFact" Visible="False" />
                                    <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" />
                                    <asp:BoundField DataField="OBSERV" HeaderText="OBSERV" SortExpression="OBSERV" />
                                </Columns>
                                <HeaderStyle BackColor="#333333" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="A_LetrasEstadoOperacionesCANCELADAS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <br />
                            <br />
                        </asp:Panel>
                        <br />
                    </div>
				</div>

			</div>
		</div>
    </div>
</asp:Content>
