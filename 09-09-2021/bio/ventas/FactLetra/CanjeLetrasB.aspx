<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CanjeLetrasB.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.CanjeLetrasB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=3">

    <title></title>

    <style type="text/css">


BODY{
   	font-family: verdana;
}


</style>


     <script type="text/javascript">




         function imprime() {
             //desaparece el boton
             document.getElementById("btnImprimir").style.display = 'none'
             //se imprime la pagina
             window.print()
             //reaparece el boton
             document.getElementById("btnImprimir").style.display = 'inline'
         }

</script>


    <style type="text/css">
        .auto-style111 {
            width: 700px;
             height: 300px;
            font-size: x-small;
             background-image: url('../../../images/bioletras.jpg');
              /* OKAY */
       
       background-size: 100% 100%;

        /*background-size: 25px 50px;
       background-size: 100% 100%;*/
        }
        .auto-style1 {
            width: 700px;
            font-size: x-small;
            
        }

        .auto-style3 {
        }
        .DerechaNegrita {
            text-align: right;
        }
        .auto-style4 {
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style9 {
            width: 110px;
            height: 22px;
        }
        .auto-style10 {
            color: #006600;
        }
        .auto-style11 {
            width: 162px;
        }
        .auto-style13 {
            text-decoration: underline;
        }
        .auto-style14 {
            height: 22px;
            text-align: right;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 30px;
        }
        .auto-style17 {
            height: 22px;
            width: 30px;
        }
      
        </style>
</head>
<body>
    <form id="form1" runat="server">
        
<input name="btnImprimir" id="btnImprimir" type="button" class="button" value="IMPRIMIR / EXPORTAR" 

onClick="imprime()">
        

        <table class="auto-style111" >
            <tr>
                <td WIDTH="140" HEIGHT="85">&nbsp;</td>
                <td WIDTH="70">&nbsp;</td>
                <td WIDTH="80">&nbsp;</td>
                <td WIDTH="55">&nbsp;</td>
                <td WIDTH="65">&nbsp;</td>
                <td WIDTH="80">&nbsp;</td>
                <td WIDTH="100">&nbsp;</td>
                <td WIDTH="110">
                    <asp:Label ID="lbltotal01" runat="server"></asp:Label>
                </td>
                <td WIDTH="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td valign=top colspan="2" style="text-align: left">
                    <asp:Label ID="letra0" runat="server" style="font-weight: 700; font-size: x-small;"></asp:Label>
                    <asp:Label ID="lblnRenov" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td valign=top colspan="2" style="text-align: left">
                    <asp:Label ID="lblfcanje0" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td valign=top style="text-align: left" >
                    <asp:Label ID="lblLugar" runat="server" style="font-weight: 700" ></asp:Label>
                </td>
                <td valign=top style="text-align: center">
                    <asp:Label ID="lblFVenc0" runat="server" style="font-weight: 700" ></asp:Label>
                </td>
                <td valign=top style="text-align: right">
                    <asp:Label ID="m0" runat="server"></asp:Label>
                    <asp:Label ID="lblTotalCanje0" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td valign=top style="text-align: right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td HEIGHT="26">&nbsp;</td>
                <td >&nbsp;</td>
                <td colspan="6" >
                    <asp:Label ID="lblFactanexas0" runat="server" style="font-size: x-small"></asp:Label>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td HEIGHT="8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="6">
                    <asp:Label ID="lblDescripcionL0" runat="server" style="font-size: xx-small"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td HEIGHT="30">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td HEIGHT="40">&nbsp;</td>
                <td colspan="4" valign=top>
                    <asp:Label ID="lblcliente0" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td HEIGHT="40">&nbsp;</td>
                <td colspan="4" valign=top>
                    <asp:Label ID="lbldireccionCliente" runat="server" style="font-size: xx-small"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lblruc0" runat="server"></asp:Label>
                </td>
                <td colspan="2" style="text-align: right">
                    <asp:Label ID="lbltelefono0" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: right">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: right">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: right">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: right">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: right">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: right">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
            </table>

        <p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.jpg" Width="150px" CssClass="auto-style10" />
                    </td>
                    <td style="font-size: small" class="auto-style15"><span class="auto-style10"><strong>BIOTECH CORP S.A.C&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; RUC: <strong>20601613396</strong> </span>
                        <br class="auto-style10" />
                        <span class="auto-style10">AV. EL POLO NRO. 401 INT. 1 URB. MONTERRICO 
                        <br />
                        (A 1 CDRA. DEL C. C. EL POLO) LIMA - LIMA - SANTIAGO DE SURCO 
                        <br />
                        <a href="mailto:ventas@biotechcorp.com.pe">ventas@biotechcorp.com.pe</a></span></td>
                </tr>
                <tr>
                    <td class="" colspan="2">
                        <hr /></td>
                </tr>
                <tr>
                    <td class="" colspan="2">
                        <h2 style="text-align: center" class="auto-style13">REPORTE DE CANJE DE DOCUMENTOS</h2> </td>
                </tr>
            </table>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"  ><strong>CLIENTE</strong> </td>
                <td class="auto-style6">:</td>
                <td class="auto-style7" colspan="4">
                    <asp:Label ID="lblcliente" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" colspan="2" style="text-align: right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>RUC</strong></td>
                <td>:</td>
                <td class="auto-style4" colspan="4">
                    <asp:Label ID="lblruc" runat="server"></asp:Label>
            <asp:Label ID="lblIdLetra" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td style="text-align: right">
                    <asp:Label ID="lblestadop" runat="server" Text="PENDIENTE" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="8">
                    <h4 class="auto-style13">PLANILLA DE CANJE</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>F. DE CANJE</strong></td>
                <td>:</td>
                <td class="auto-style4" colspan="3">
                    <asp:Label ID="lblfcanje" runat="server"></asp:Label>
                </td>
                <td style="text-align: right"><strong>MONEDA</strong></td>
                <td class="auto-style16">:</td>
                <td>
                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="8">
                    <h4 class="auto-style13">DOCUMENTOS CANJEADOS</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td colspan="4" align=right>
                    <asp:GridView ID="gvFacturas" runat="server" ShowFooter="True" Width="300px" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceFACTURAS" GridLines="None" OnRowDataBound="gvFacturas_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="N° DE DOC." ReadOnly="True" SortExpression="FACTURA" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" Visible="False" />
                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" Visible="False" />
                            <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPNETO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RETENIDO" DataFormatString="{0:0,0.00}" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PORCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="PORCOBRAR" SortExpression="PORCOBRAR" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" Visible="False" />
                        </Columns>
                        <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceFACTURAS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_facturasporLETRA" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIdLetra" Name="idletra" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="8">
                    <asp:Label ID="lblDescripcionL1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="8">
                    <h4 class="auto-style13">LETRAS CANJEADAS</h4>
                </td>
            </tr>
            <tr >
                <td class="auto-style3"><strong>Nº DOC.</strong></td>
                <td colspan="4"><strong>REFERENCIA</strong></td>
                <td WIDTH="100" style="text-align: right"><strong>IMPORTE</strong></td>
                <td class="auto-style16" ><b></b></td>
                <td WIDTH="100" style="text-align: right"><strong>VENCIMIENTO</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblletra" runat="server"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:Label ID="lblFactanexas" runat="server" style="font-size: x-small"></asp:Label>
                </td>
                <td class="DerechaNegrita">
                    <asp:Label ID="lblimpAcumL" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td style="text-align: right">
                    <asp:Label ID="lblFVenc" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="DerechaNegrita">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7" colspan="2">DETRACCIÓN (1.50%)</td>
                <td class="auto-style6">:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblDetraccion" runat="server">0.00</asp:Label>
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4" colspan="2">RETENCIÓN (3.00%)</td>
                <td>:</td>
                <td class="DerechaNegrita">
                    <asp:Label ID="lblretension" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4" colspan="2"><strong>TOTAL CANJE DE LETRA</strong></td>
                <td>:</td>
                <td class="DerechaNegrita">
                    <asp:Label ID="lblTotalCanje" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td>
                    <asp:Label ID="lblnRenov1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">
        <asp:Label ID="lblmensaje" runat="server" style="color: #990000; font-size: small"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="8">
                    <asp:Label ID="lblDescripcionL2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
        
    </form>
</body>
</html>
