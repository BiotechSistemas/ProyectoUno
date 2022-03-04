<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guiaremision.aspx.cs" Inherits="biotech.informe.guiaremision" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <SCRIPT language="javascript">
        function imprimir() {
            if ((navigator.appName == "Netscape")) {
                window.print();
            }
            else {
                var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>';
                document.body.insertAdjacentHTML('beforeEnd', WebBrowser); WebBrowser1.ExecWB(6, -1); WebBrowser1.outerHTML = "";
            }
        }
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GUIA DE REMISION</title>


  


    <style type="text/css">
        .auto-style42 {
            height: 21px;
        }
        .auto-style38 {
            height: 21px;
            width: 532px;
        }
        .auto-style32 {
            width: 83px;
            height: 21px;
        }
        .auto-style30 {
            height: 21px;
            width: 693px;
        }
        .auto-style43 {
            width: 532px;
            height: 118px;
        }
        .auto-style44 {
            width: 83px;
            height: 118px;
        }
        .auto-style45 {
            height: 118px;
            width: 693px;
        }
        .auto-style49 {
            width: 100%;
        }
        .auto-style50 {
            width: 169px;
        }
        .auto-style52 {
            width: 465px;
            height: 21px;
        }
        .auto-style53 {
            width: 152px;
        }
        .auto-style56 {
            width: 134px;
        }
        .auto-style58 {
            width: 140px;
        }
        .auto-style59 {
            width: 227px;
        }
        .auto-style66 {
            width: 152px;
            height: 21px;
        }
        .auto-style67 {
            width: 140px;
            height: 21px;
        }
        .auto-style68 {
            width: 227px;
            height: 21px;
        }
        .auto-style69 {
            height: 18px;
        }
    </style>
</head>
<body onload="imprimir();">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style49" CELLSPACING=0  border="0">
                <tr>
                    <td>
                        <table  style="width: 100%">
                            <tr>
                                <td class="auto-style42"><td class="auto-style66">
                                        </td>
                                    <td class="auto-style67"></td>
                                    <td class="auto-style68">
                                        <asp:Label ID="lblcodguia" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style42" colspan="2">
                                        <asp:Label ID="lblguiaremisionn" runat="server"></asp:Label>
                                    </td>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style69" colspan="6">
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style42">FECHA EMISIÓN:
                                    <td class="auto-style66">
                                        <asp:Label ID="lblfecha" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style67">FECHA TRASLADO:</td>
                                    <td class="auto-style68">
                                        <asp:Label ID="lblfechadetraslado" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td class="auto-style42">MOTIVO DE TRAS:</td>
                                    <td class="auto-style42">
                                        <asp:Label ID="lblmotivotraslado" runat="server"></asp:Label>
                                    </td>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50">&nbsp;</td>
                                <td class="auto-style53">&nbsp;</td>
                                <td class="auto-style58">&nbsp;</td>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style56">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style50">COD. CLIENTE:</td>
                                <td class="auto-style53">
                                    <asp:Label ID="lblcodcliente" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style58">COD. VENDEDOR:</td>
                                <td class="auto-style59">
                                    <asp:Label ID="lblcodvendedor" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style56">N° ORDEN:</td>
                                <td>
                                    <asp:Label ID="lblordencompraa" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <hr />
                        <table cellspacing="0" style="width: 100%">
                            <tr>
                                <td class="auto-style52">PUNTO DE PARTIDA:</td>
                                <td class="auto-style42">PUNTO DE LLEGADA:</td>
                                <tr>
                                    <td class="auto-style52">AV.&nbsp; EL POLO NRO.401 INT. 301 URB. MONTERRICO<br /> (A 1 CDRA. DEL C.C. EL POLO)<br /> LIMA&nbsp; - LIMA - SANTIAGO DE SURCO</td>
                                    <td class="auto-style42">
                                        <asp:Label ID="lblpuntollegada" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </tr>
                        </table>
                        <hr />
                        <table cellspacing="0" style="width: 100%; height: 139px;">
                            <tr>
                                <td class="auto-style38">DESTINATARIO:</td>
                                <td class="auto-style32"></td>
                                <td class="auto-style30">UNIDAD DE TRANSPORTE / CONDUCTO:</td>
                            </tr>
                            <tr>
                                <td class="auto-style43">
                                    <asp:Label ID="lblrazonsocial" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style44"></td>
                                <td class="auto-style45">MARCA:<br /> PLACA:
                                    <br />
                                    N°CERT. DE INSCRIP:
                                    <br />
                                    LICENCIA:</td>
                            </tr>
                        </table>
                        <hr />
                        REMITIMOS EN PERFECTAS CONDICIONES LO SIGUIENTE:<br />
                        <br />
                        <CENTER>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSource1" Width="80%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" InsertVisible="False" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                <asp:BoundField DataField="idOrdenVenta" HeaderText="idOrdenVenta" SortExpression="idOrdenVenta" Visible="False" />
                                <asp:BoundField DataField="IddetalleordenVenta" HeaderText="IddetalleordenVenta" SortExpression="IddetalleordenVenta" Visible="False" />
                                <asp:BoundField DataField="Idproducto" HeaderText="COD" SortExpression="Idproducto" />
                                <asp:BoundField DataField="present" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="present" />
                                <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pv" HeaderText="PRECIO" SortExpression="pv" Visible="False" />
                                <asp:BoundField DataField="subtt" HeaderText="SUBTT" SortExpression="subtt" Visible="False" />
                                <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" Visible="False" />
                                <asp:TemplateField HeaderText="SERIE/LOTE"></asp:TemplateField>
                            </Columns>
                            <EditRowStyle BorderStyle="None" />
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle Font-Bold="True" ForeColor="Black" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        </CENTER>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalledeguiaalselec" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblcodguia" Name="param" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
