<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aprobarcliente.aspx.cs" Inherits="biotech.jefatura.Aprobarcliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BIOCLIENTE</title>
      <link rel="icon" type="image/png" href="http://www.biotechcorp.com.pe/webapp/logoicono.png" />
    <style type="text/css">

       
        .auto-style1 {
           background: linear-gradient(white, #EFEFEF); /* Standard syntax */
             width: 100%;
        }
       
        .auto-style3 {
            width: 529px;
        }
       
        .auto-style4 {
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 307px;
        }
        .auto-style9 {
            width: 5px;
            font-weight: bold;
        }
        .auto-style10 {
            width: 129px;
        }
       
        .auto-style112 {
            width: 112px;
        }
        .auto-style113 {
            height: 23px;
        }
       
        .auto-style114 {
            width: 120px;
        }
        .auto-style14 {
            font-size: x-small;
        }
        .auto-style115 {
            height: 44px;
        }
        .auto-style116 {
            width: 529px;
            height: 44px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style114">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.png" Width="63px" Height="34px" />
                </td>
                <td style="text-align: center">
                    <h2 style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; APROBAR CLIENTE</h2>
                </td>
            </tr>
        </table>
            <asp:Panel ID="PanelCLIENTEAAPROB" runat="server">
                <table style="width: 600px" >
                    <tr>
                        <td class="auto-style4" colspan="3">
                            <table class="auto-style5">
                                <tr>
                                    <td class="auto-style10"><strong>RUC</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:TextBox ID="txtruc1" runat="server" ReadOnly="True" Width="300px"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/boton-pdf.png" OnClick="ImageButton1_Click" style="text-align: right" Width="110px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Razón social</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:TextBox ID="txtrazonsocial1" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Asesor Comercial</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:Label ID="lblnombrescompletos" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Condición Crédito</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="txtcondicion1" runat="server"></asp:Label>
                                                    <asp:TextBox ID="txtrtc1" runat="server" ReadOnly="True" Visible="False" Width="80px"></asp:TextBox>
                                                    <asp:Label ID="lblmoneda" runat="server" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblmonedaDescripcion" runat="server" Visible="False"></asp:Label>
                                                </td>
                                                <td style="text-align: right">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" style="color: #006600" OnClick="LinkButton1_Click">Ver Historial</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Crédito Propuesto</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:Label ID="txtcreditopropuesto1" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Represent. Legal</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:Label ID="lblrepresentLegal" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Bancos Referen.</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:Label ID="lblbancoreferenciales" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"><strong>Dirección Fiscal</strong></td>
                                    <td class="auto-style9">:</td>
                                    <td>
                                        <asp:Label ID="lblDireccionfiscal" runat="server" style="font-size: small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="3">
                            <asp:Panel ID="Panel1" runat="server" BackColor="WhiteSmoke">
                                <strong>HISTORIAL DE VENTAS</strong><br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="CODFACT" DataSourceID="SqlDataSource1" GridLines="Horizontal" PageSize="4" style="font-size: xx-small" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="CODFACT" HeaderText="CODFACT" ReadOnly="True" SortExpression="CODFACT" Visible="False" />
                                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION" />
                                        <asp:BoundField DataField="COND_PAGO" HeaderText="COND_PAGO" ReadOnly="True" SortExpression="COND_PAGO" />
                                        <asp:BoundField DataField="IMPBRUTO" HeaderText="IMPBRUTO" SortExpression="IMPBRUTO" />
                                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No presenta historial de ventas...
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="#CCCCCC" />
                                    <RowStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_FacturasUlt" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtruc1" Name="idcliente" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="3"><strong>CULTIVOS REGISTRADOS:</strong><asp:GridView ID="gvDetallefichaCliente" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" DataKeyNames="COD" DataSourceID="SqlDataSource6" GridLines="Horizontal" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="COD" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                                <asp:BoundField DataField="ZONAPRODUCCION" HeaderText="ZONA" SortExpression="ZONAPRODUCCION" />
                                <asp:BoundField DataField="RTC" HeaderText="ASESOR" SortExpression="RTC" />
                                <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA" />
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                            <RowStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <strong>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaCultivosXruc" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtruc1" Name="ruc" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="txtrtc1" Name="rtc" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">
                            <table class="auto-style1">
                                <tr>
                                    <td><strong>OBSERVACION ASESOR COMERCIAL:<asp:Label ID="lblcargo" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                                        </strong></td>
                                    <td style="text-align: right">
                                        <asp:Label ID="lblcorreortc" runat="server" style="font-size: xx-small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="3">
                            <asp:Label ID="lblObserRTC" runat="server" style="text-align: justify"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr class="auto-style1">
                        <td colspan="3"><strong style="text-align: left">
                            <div>
                                <table class="auto-style1">
                                    <tr>
                                        <td><strong>CRÉDITOS Y COBRANZAS:</strong></td>
                                        <td><strong style="text-align: right">
                                            <asp:Label ID="lblfechacreditosycobranzas" runat="server"></asp:Label>
                                            </strong></td>
                                    </tr>
                                </table>
                            </div>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="3">
                            <asp:Label ID="lblObserCreditos" runat="server" style="text-align: justify; font-size: small;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td  colspan="3" class="auto-style1">
                            <strong>GERENCIA GENERAL:</strong></td>
                    </tr>
                     <tr>
                         <td colspan="3">
                             <asp:Panel ID="pDetGenrecia" runat="server">
                                 <table>
                                     <tr>
                                         <td><strong>LINEA:</strong></td>
                                         <td>
                                             <asp:Label ID="lblgerenciaLinea" runat="server"></asp:Label>
                                             <asp:Label ID="lblDiasJefatura" runat="server"></asp:Label>
                                         </td>
                                         <td><strong>MONTO:</strong></td>
                                         <td class="auto-style112">
                                             <asp:Label ID="lblgerenciamonto" runat="server"></asp:Label>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style113" colspan="4">
                                             <asp:Label ID="lblGerenciaObservacion" runat="server" style="font-size: small"></asp:Label>
                                         </td>
                                     </tr>
                                 </table>
                             </asp:Panel>
                         </td>
                    </tr>
                    </table>
                    <table style="width: 600px" >
                     <tr>
                        <td class="auto-style4" colspan="3">
                            <asp:Label ID="lblmensaje" runat="server" style="color: #990000; font-size: small;"></asp:Label>
                         </td>
                    </tr>

                    <tr>
                        <td class="auto-style115"><strong>TIPO LINEA:</strong></td>
                        <td class="auto-style115">&nbsp;</td>
                        <td class="auto-style116">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="40px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal" Width="400px">
                                <asp:ListItem Value="10">LETRA</asp:ListItem>
                                <asp:ListItem Value="30">FACTURA</asp:ListItem>
                                <asp:ListItem Value="50">CONTADO</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>

                    <asp:Panel ID="PanelopLetra" runat="server"></asp:Panel>
                    <tr>
                        <td class="auto-style4"><strong>IMPORTE LINEA:</strong></td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtmontoLf20"  type="number" step="0.01" runat="server" placeholder="Monto" Height="30px"></asp:TextBox>
                            &nbsp;dias:
                            <asp:DropDownList ID="ddlletrasFactdias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlletrasFactdias_SelectedIndexChanged" Width="60px" Height="30px">
                                <asp:ListItem Selected="True">0</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>105</asp:ListItem>
                                <asp:ListItem>120</asp:ListItem>
                                <asp:ListItem>150</asp:ListItem>
                                <asp:ListItem>180</asp:ListItem>
                                <asp:ListItem>Otros</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtdiasLetraFact"  type="number"  runat="server" Width="50px" Visible="False">0</asp:TextBox>
                        </td>
                    </tr>
                    

                    <asp:Panel ID="Panelopfactura" runat="server"> </asp:Panel>
                   
                     

                    <tr>
                        <td class="auto-style40" colspan="3">OBSERVACIÓN:<asp:TextBox ID="txtobservación" runat="server" placeholder="Observación" Style="text-transform: uppercase" TextMode="MultiLine" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="3">
                            <asp:Button ID="Button2" runat="server" Text="APROBAR CREDITO" Height="40px" BackColor="#98B65C" BorderStyle="None" OnClick="Button2_Click" Width="40%" />
                            <asp:Button ID="Button3" runat="server" Text="OBSERVAR CREDITO" Height="40px" BackColor="Gray" BorderStyle="None" OnClick="Button3_Click" Width="40%" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="3">
                            <a href="Javascript:window.close()">Cerrar</a></td>
                    </tr>
                </table>
            </asp:Panel>
    
    </div>
    </form>
</body>
</html>
