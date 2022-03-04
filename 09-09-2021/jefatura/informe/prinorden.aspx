<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prinorden.aspx.cs" Inherits="biotech.informe.prinorden" %>

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
    <title>ORDEN VENTA GENERADA</title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 206px;
            height: 64px;
        }
        .auto-style6 {
            height: 23px;
            text-align: left;
            width: 123px;
        }
        .auto-style7 {
            text-align: left;
            width: 123px;
        }
        .auto-style8 {
            height: 23px;
            width: 438px;
        }
        .auto-style9 {
            width: 438px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style12 {
            height: 68px;
            text-align: left;
        }
        .auto-style13 {
            font-size: x-large;
        }
        }
        .auto-style15 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style16 {
            font-weight: normal;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style18 {
            text-align: left;
        }
    </style>
</head>


<body onload="imprimir();">
    <form id="form1" runat="server">
       
    <div>
    
      
    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style12">
    
      
    
                    <img class="auto-style3" src="../images/logobio.png" /></td>
                            <td class="auto-style17"><span class="auto-style13"><strong>&nbsp;</strong></span><span style="text-align: center"><span class="auto-style13" ><strong>ORDEN &nbsp;N°: </strong></span><strong style="text-align: center" class="auto-style16">
                    <asp:Label ID="lblorden" runat="server" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                                </span>
        <hr />
    
      
    
                    <div style="font-size: large" >
                        <br />
                        <strong><span class="auto-style15">DETALLE DE ORDEN GENERADA<br />
                        </span></strong>
                    </div>
                    <br />
    
      
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Fecha Emisión:</td>
                <td class="auto-style9">
                    <asp:Label ID="lblfecha" runat="server"></asp:Label>
                </td>
                <td style="text-align: left">VENDEDOR:</td>
                <td>
                    <asp:Label ID="lblcodvendedor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Fecha entrega:</td>
                <td class="auto-style8">
                    <asp:Label ID="lblentregafechaa" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
             <tr>
                <td  colspan="4"></td>
            </tr>
             <tr>
                <td  colspan="4"><strong>
                    <br />
                    Datos del Cliente:</strong></td>
            </tr>
            <tr>
                <td class="auto-style7">Razón social:</td>
                <td class="auto-style9">
                    <asp:Label ID="lblrazonsocial" runat="server"></asp:Label>
                </td>
                <td class="auto-style18">RUC:</td>
                <td>
                    <asp:Label ID="lblruc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Condición:</td>
                <td class="auto-style9">
                    <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Lugar de entrega:</td>
                <td colspan="3" style="text-align: left">
                    <asp:Label ID="lbllugardeentrega" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
                    <br />
                    <strong>DETALLE DE PEDIDO:</strong><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetallecotizacion,idOrdenVenta" DataSourceID="SqlDataSource1" Width="551px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="iddetallecotizacion" HeaderText="iddetallecotizacion" ReadOnly="True" SortExpression="iddetallecotizacion" InsertVisible="False" Visible="False" />
                <asp:BoundField DataField="idOrdenVenta" HeaderText="idOrdenVenta" SortExpression="idOrdenVenta" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" />
                <asp:BoundField DataField="despro" HeaderText="DESCRIPCION" SortExpression="despro" ReadOnly="True" />
                <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" Visible="False" />
                <asp:BoundField DataField="pv" HeaderText="PRECIO VENTA $" SortExpression="pv" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="subtotal" HeaderText="SUB TT" SortExpression="subtotal" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="desct" HeaderText="desct" SortExpression="desct" Visible="False" />
                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False" />
                <asp:BoundField DataField="exonerado" HeaderText="exonerado" SortExpression="exonerado" Visible="False" />
                <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVenta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblorden" Name="idorden" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
      
    
    </div>
           
    </form>
</body>
</html>
