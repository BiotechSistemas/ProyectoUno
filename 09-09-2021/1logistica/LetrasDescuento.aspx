<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="LetrasDescuento.aspx.cs" Inherits="biotech._1logistica.LetrasDescuento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .redondeado { 
                border: 1px solid #006600;
                height: auto;
                width: 100%;
                border-radius: 5px;
         }

         .redondeadoprincipal {
              border: 0px solid #fff;
              height: auto;
              width: 100%;
              border-radius: 5px;

         }

        .centered {
             margin: 0 auto;
            text-align: left;
            width: 100%;
}
        .auto-style2 {
            font-size: x-small;
        }
        .auto-style3 {
            font-size: x-small;
        }
        .auto-style4 {
            width: 53%;
        }
        .auto-style5 {
            height: 24px;
            width: 40px;
        }
        .auto-style6 {}
        .auto-style7 {
            width: 454px;
        }
        .auto-style8 {
            height: 24px;
            width: 454px;
        }
        .auto-style9 {
            font-size: xx-small;
        }
        .auto-style10 {
            width: 500px;
        }
        .auto-style13 {
            width: 40px;
        }
        .auto-style14 {
            font-size: x-small;
        }
        .auto-style15 {
            color: #FF0000;
            font-size: x-small;
        }
        .auto-style16 {
            text-align: left;
            font-size: x-small;
        }
        .auto-style17 {
            width: 246px;
            text-align: right;
        }
        .auto-style18 {
            width: 375px;
        }
        .auto-style23 {
            height: 24px;
            width: 246px;
            text-align: right;
        }
        .auto-style24 {
            width: 535px;
        }
        .auto-style26 {
            font-size: large;
        }
        .auto-style27 {
            height: 24px;
            width: 375px;
        }
        .auto-style28 {
            font-size: x-small;
        }
        .auto-style29 {
        }
        .auto-style30 {
        }
        .auto-style31 {
            font-weight: 700;
        }
        .auto-style32 {
            font-weight: 700;
        }
        .auto-style33 {
            font-weight: 700;
        }
        .auto-style34 {
            font-weight: 700;
        }
        .auto-style35 {
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="lbltitulo" runat="server"></asp:Label>
        <asp:Label ID="lblbanco" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
    </p>
<p>
    <asp:Button ID="Button1" runat="server" Text="SCOTIABANK" Width="30%" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="BANBIF" Width="30%" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="BCP" Width="30%" OnClick="Button3_Click" />
    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageAlign="AbsMiddle" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="30px" />
</p>
    <center>
    <div ALING="center" class="redondeadoprincipal">
       &nbsp;<asp:Panel ID="Panel1" runat="server" Width="100%" >
          

           <div class="redondeado">


               <asp:Panel ID="Panelprincipal" runat="server">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"  Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                       <Columns>
                           <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                           <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                           <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                           <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                           <asp:BoundField DataField="MONEDA" HeaderText="M" SortExpression="MONEDA" />
                           <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="IMPRENOVADO" DataFormatString="{0:0,0.00}" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" Visible="False">
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="IMPAMORTIZADO" DataFormatString="{0:0,0.00}" HeaderText="IMPAMORTIZADO" SortExpression="IMPAMORTIZADO" Visible="False">
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="NUNICO" HeaderText="N.UNICO" SortExpression="NUNICO">
                           <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="PROTESTO" HeaderText="ESTADO" SortExpression="PROTESTO">
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="ESTADOBANCO1" HeaderText="ESTADOBANCO1" SortExpression="ESTADOBANCO1" Visible="False" />
                           <asp:ButtonField ButtonType="Image" CommandName="buscar" HeaderText="FACT" ImageUrl="~/images/buscarr.png" ShowHeader="True">
                           <ControlStyle Font-Bold="False" ForeColor="Red" Height="20px" Width="30px" />
                           <HeaderStyle Width="30px" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:ButtonField>
                           <asp:ButtonField ButtonType="Button" CommandName="Pagar" HeaderText="US$" ImageUrl="~/images/1pagar.png" ShowHeader="True" Text="US$">
                           <ControlStyle Font-Bold="False" ForeColor="#006600" Height="20px" Width="30px" />
                           <HeaderStyle Width="30px" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:ButtonField>
                           <asp:ButtonField ButtonType="Button" CommandName="Amortizar" HeaderText="REN" ImageUrl="~/images/1renovar.png" Text="R">
                           <ControlStyle Height="20px" Width="30px" />
                           <HeaderStyle Width="30px" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:ButtonField>
                           <asp:ButtonField ButtonType="Button" CommandName="Protestar" HeaderText="PRO" ImageUrl="~/images/1prorroga.png" ShowHeader="True" Text="P">
                           <ControlStyle Font-Bold="False" ForeColor="Red" Height="20px" Width="30px" />
                           <HeaderStyle Width="30px" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:ButtonField>
                       </Columns>
                       <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                       <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                       <SelectedRowStyle Font-Bold="True" BackColor="#CCCCCC" />
                       <SortedAscendingCellStyle BackColor="#F7F7F7" />
                       <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                       <SortedDescendingCellStyle BackColor="#E5E5E5" />
                       <SortedDescendingHeaderStyle BackColor="#242121" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDsctoxBanco" SelectCommandType="StoredProcedure">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="lblbanco" Name="banco" PropertyName="Text" Type="String" />
                           <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   <div class="auto-style16">
                       Cant. registros:<asp:Label ID="lblrow1" runat="server"></asp:Label>
                   </div>
               </asp:Panel>
            <asp:Panel ID="PanelDescuento" runat="server" CssClass="auto-style6" >
                <asp:Panel ID="PanelFactAnexas" runat="server">
                    <asp:Panel ID="PanelRENOV" runat="server">
                        <table class="auto-style10">
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="lbltradescrip" runat="server"></asp:Label>
                                    &nbsp;<asp:Label ID="lblcantt" runat="server"></asp:Label>
                                    <br />
                                    <strong>LETRA</strong></td>
                                <td>
                                    <asp:Label ID="lblfe" runat="server"></asp:Label>
                                    <br />
                                    <strong>F. Emisión</strong></td>
                                <td>
                                    <asp:Label ID="lblfv" runat="server"></asp:Label>
                                    <br />
                                    <strong>F. Vencto.</strong></td>
                                <td>
                                    <asp:Label ID="lblestadoo" runat="server" CssClass="auto-style32"></asp:Label>
                                    <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style29" colspan="4">
                                    <asp:Label ID="lblcliente" runat="server"></asp:Label>
                                    <br />
                                    <strong>Cliente </strong>
                                    <asp:Label ID="lbludletraa" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30"><strong>Número único:</strong></td>
                                <td>
                                    <asp:Label ID="lblnumu" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30"><strong>Importe por pagar:</strong></td>
                                <td>
                                    <asp:Label ID="lblm" runat="server"></asp:Label>
                                    &nbsp;<asp:Label ID="lblimportexpagar" runat="server" CssClass="auto-style31"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                             <tr>
                                <td class="auto-style30"><strong>Banco:<br /> </strong></td>
                                <td>
                                    <asp:Label ID="lblbancoo" runat="server"></asp:Label>
                                    <br />
                                 </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <asp:Panel ID="PanelREN" runat="server">

                             <tr>
                                <td class="auto-style30">
                                    <br />
                                    <asp:Label ID="lblimporteanterior" runat="server"></asp:Label>
                                    <br />
                                    <strong>Imp. anterior:</strong></td>
                                <td>
                                    <br />
                                    <asp:Label ID="lblimporteamort" runat="server"></asp:Label>
                                    <br />
                                    I<strong>mp. amortizado:</strong></td>
                                <td>
                                    <br />
                                    <asp:Label ID="lblimportrenov" runat="server"></asp:Label>
                                    <br />
                                    I<strong>mp. renovado:</strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            </asp:Panel>

                            <tr>
                                <td colspan="4">
                                    Facturas anexadas:<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style9" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                            <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                            <asp:BoundField DataField="IBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IBRUTO" SortExpression="IBRUTO">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" SortExpression="IGV">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPNETO" DataFormatString="{0:0,0.00}" HeaderText="IMPNETO" SortExpression="IMPNETO">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPRETENIDO" DataFormatString="{0:0,0.00}" HeaderText="IMPRETENIDO" SortExpression="IMPRETENIDO">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPDIPONIBLE" DataFormatString="{0:0,0.00}" HeaderText="IMPDIPONIBLE" SortExpression="IMPDIPONIBLE">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" Visible="False" />
                                            <asp:BoundField DataField="GUIAS" HeaderText="GUIAS" SortExpression="GUIAS" Visible="False" />
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
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDetFacturas" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lbludletraa" Name="idletra" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30" colspan="4">
                                    <asp:GridView ID="GridViewrenov" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style28" DataKeyNames="idrenovacion" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowDataBound="GridViewrenov_RowDataBound">
                                        <Columns>
                                            <asp:BoundField DataField="idrenovacion" HeaderText="idrenovacion" InsertVisible="False" ReadOnly="True" SortExpression="idrenovacion" Visible="False" />
                                            <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                                            <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="fecha">
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="importe" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="importe">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="renovado" DataFormatString="{0:0,0.00}" HeaderText="IMP. RENOV." SortExpression="renovado">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="amortizado" DataFormatString="{0:0,0.00}" HeaderText="I. AMORT." SortExpression="amortizado">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="femision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="femision">
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="fvencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fvencimiento">
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" Visible="False">
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_LetraRenovado] WHERE ([idletra] = @idletra)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lbludletraa" Name="idletra" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
                 <asp:Panel ID="Panelmovimientos" runat="server">
                    
                <asp:Panel ID="Panelpagar" runat="server">
                    <strong>Registrar pago</strong>
                    <asp:Label ID="lblcoddsctPagoLetra" runat="server" Visible="False"></asp:Label>
                    <br />
                    
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style13">Letra:</td>
                                <td class="auto-style7">
                                    <asp:Label ID="lblletra" runat="server"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Monto:</td>
                                <td class="auto-style8">&nbsp;<asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                    &nbsp;<asp:Label ID="lblmonto" runat="server" CssClass="auto-style34"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Importe:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtimporte"  type="number" step="0.01" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Observación</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtconcepto" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Confirmar pago" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Label ID="lblmensaje3" runat="server" CssClass="auto-style15"></asp:Label>
                                </td>
                            </tr>
                        </table>
                   
                </asp:Panel>
                <asp:Panel ID="PanelAmortizar" runat="server">
                    <strong>Registrar Renovado</strong>
                    <asp:Label ID="lblcoddsctRenovado" runat="server" Visible="False"></asp:Label>
                    <br />
                    <table class="auto-style24">
                        <tr>
                            <td class="auto-style17">Letra:</td>
                            <td class="auto-style18">
                                <asp:Label ID="lblletra1" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; F.V.:<asp:Label ID="lblfechavencto" runat="server"></asp:Label>
                                <asp:Label ID="lblfemision" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lbldiass" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Monto:</td>
                            <td class="auto-style27">&nbsp;<asp:Label ID="lblmoneda1" runat="server"></asp:Label>
                                &nbsp;<asp:Label ID="lblmonto1" runat="server" CssClass="auto-style33"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">por procentaje:</td>
                            <td class="auto-style27">
                                <asp:TextBox ID="txtporcentajerenov" type="number" runat="server" Width="80px"></asp:TextBox>
                                &nbsp;<asp:Button ID="Button7" runat="server" Text="%" Width="40px" OnClick="Button7_Click" />
                                ,&nbsp; Importe a renovar:
                                <asp:Label ID="lblimporteseria" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">por monto:</td>
                            <td class="auto-style27">
                                <asp:TextBox ID="txtimporterenov"  type="number" step="0.01" runat="server" Width="80px"></asp:TextBox>
                                <asp:Button ID="Button8" runat="server" Text="US$" Width="40px" OnClick="Button8_Click" />
                                , el % seria:
                                <asp:Label ID="lblporcetajeseria" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Nuevo monto:</td>
                            <td class="auto-style27">
                                <asp:Label ID="lblnuevoimporte" runat="server" CssClass="auto-style26"></asp:Label>
                                <asp:Label ID="lblmoneda11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Observación</td>
                            <td class="auto-style27">
                                <asp:TextBox ID="txtconcepto1" runat="server" TextMode="MultiLine" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style27">
                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="CONFIRMAR RENOVACION" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style27">
                                <asp:Label ID="lblmensaje5" runat="server" CssClass="auto-style15"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="PanelProtestar" runat="server">
                    <strong>Registrar protesto</strong>
                    <asp:Label ID="lblcoddsctProtesto" runat="server" Visible="False"></asp:Label>
                    <br />
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style13">Letra:</td>
                            <td class="auto-style7">
                                <asp:Label ID="lblletra0" runat="server"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Monto:</td>
                            <td class="auto-style8">&nbsp;<asp:Label ID="lblmoneda0" runat="server"></asp:Label>
                                &nbsp;<asp:Label ID="lblmonto0" runat="server" CssClass="auto-style35"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Importe:</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtimporte0" runat="server"  step="0.01" type="number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Observación</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtconcepto0" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="REGISTRAR PROTESTO" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:Label ID="lblmensaje4" runat="server" CssClass="auto-style15"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                     </asp:Panel>
            </asp:Panel>


           </div>
            <br>
            <div class="redondeado">
                <asp:Panel ID="Panelcancelados" runat="server">
                    <p>
                        Letras en Dscto Canceladas</p>
                    <p>
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataKeyNames="COD" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="100%" PageSize="20">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                                <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPRENOVADO" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" DataFormatString="{0:0,0.00}" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPAMORTIZADO" HeaderText="IMPAMORTIZADO" SortExpression="IMPAMORTIZADO" DataFormatString="{0:0,0.00}" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PROTESTO" HeaderText="ESTADO" SortExpression="PROTESTO" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ESTADOBANCO1" HeaderText="ESTADOBANCO1" SortExpression="ESTADOBANCO1" Visible="False" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDsctoxBanco" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblbanco" Name="banco" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="0" Name="estado" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </p>
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style14" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                <asp:BoundField DataField="IBRUTO" HeaderText="IBRUTO" SortExpression="IBRUTO" />
                                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" />
                                <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" />
                                <asp:BoundField DataField="IMPRETENIDO" HeaderText="IMPRETENIDO" SortExpression="IMPRETENIDO" />
                                <asp:BoundField DataField="IMPDIPONIBLE" HeaderText="IMPDIPONIBLE" SortExpression="IMPDIPONIBLE" />
                                <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                <asp:BoundField DataField="GUIAS" HeaderText="GUIAS" SortExpression="GUIAS" />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDetFacturas" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView2" Name="IDLETRA" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </asp:Panel>
                    <p>
                    </p>
                </asp:Panel>
            </div>
        </asp:Panel>
   
        </div>
    </center> 
   
</asp:Content>
