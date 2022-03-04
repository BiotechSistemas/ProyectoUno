<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteRelacionDoc.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.ClienteRelacionDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
<meta name="viewport" content="width=extend-to-zoom initial-scale=1, maximum-scale=5">

    <title>RELACION DOCUMENTOS</title>
        <script type="text/javascript" language="javascript">

            function Reload() {
                window.opener.document.location.reload()
            }

</script> 
        <style type="text/css">
         body {
  font-family: Arial, Helvetica, sans-serif;
   font-size: x-small;
}
        .auto-style1 {
            width: 750px;
        }
        
        .borde {
        border-radius: 13px 13px 13px 13px;
        -moz-border-radius: 13px 13px 13px 13px;
        -webkit-border-radius: 13px 13px 13px 13px;
        border: 1px solid #000000;
        }

         .bordeCUADRA {
        border-radius: 0px 0px 0px 0px;
        -moz-border-radius: 0px 0px 0px 0px;
        -webkit-border-radius: 0px 0px 0px 0px;
        border: 1px solid #000000;
        }

* {
margin:0;
padding:0;
}

*, *:before, *:after {
  -webkit-border-sizing: border-box;
  -moz-border-sizing: border-box;
  border-sizing: border-box;
}  
        .auto-style3 {
            text-align: center;
                width: 400px;
            }           
        table {
  /*border-collapse: separate;*/
  border-spacing:  5px ;
}
            .auto-style4 {
                text-align: right;
                width: 270px;
            }
            .auto-style5 {
                width: 270px;
            }
    </style>


     <script type="text/javascript">
         function imprSelec(muestra)
         { var ficha = document.getElementById(muestra); var ventimp = window.open(' ', 'popimpr'); ventimp.document.write(ficha.innerHTML); ventimp.document.close(); ventimp.print(); ventimp.close(); }
</script>

</head>
<body>
    <form id="form1" runat="server">
         <center>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td WIDTH="150px" >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.jpg" Width="110px" Height="60px" />
                </td>
                <td WIDTH="450px" >
                    <h2 class="auto-style3"><strong style="text-align: center">BIOTEC CORP S.A.C.</strong></h2>
                    <p class="auto-style3"><strong>AV. EL POLO&nbsp; Nro. 401 INT.301 URB. MONTERRICO</strong></p>
                    <p class="auto-style3">(A1 CDRA DEL C.C. EL POLO)
                    LIMA - LIMA - SANTIAGO DE SURCO</p>
                    <p style="text-align: center">ventas@biotechcorp.com.pe / www.biotechcorp.com.pe</p>
                    
                </td>
                <td class="auto-style4">
                    
                    Fecha:<br />
                    <asp:Label ID="lblfecha" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Visible="False" />
                </td>
            </tr>
            <tr>
                <td WIDTH="130px" >
                    &nbsp;</td>
                <td WIDTH="350px" >
                    &nbsp;</td>
                <td class="auto-style5">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3" >
                    <h1>RELACIÓN DE DOCUMENTOS</h1>
                </td>
            </tr>
            </table>
    
    </div>
        <div class="borde"  style="width:750px">
        <table class="auto-style1">
            <tr>
                <td WIDTH="10px" ></td>
                <td WIDTH="80" ></td>
                <td WIDTH="5" ></td>
                <td WIDTH="250" ></td>
                <td WIDTH="80" ></td>
                <td WIDTH="5" ></td>
                <td WIDTH="100" >
                    <asp:Label ID="lblidestadoLetra" runat="server" CssClass="auto-style42" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td><b>RUC</b></td>
                <td class="auto-style54">:</td>
                <td class="auto-style56">
                    <asp:Label ID="lblidcliente" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
                <td>CONDICIÓN:</td>
                <td class="auto-style54">&nbsp;</td>
                <td>
                    <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td><b>RAZÓN SOCIAL</b></td>
                <td class="auto-style55">:</td>
                <td class="auto-style57" colspan="4">
                    <asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            </table>
             
              </div>

        <br />
             <asp:GridView ID="gvdocumentos" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceFactuRElacion" Width="750px" OnRowDataBound="gvdocumentos_RowDataBound" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ShowFooter="True" Font-Size="Small">
                 <Columns>
                     <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                     <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FEMISION" HeaderText="F. EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FVENCTO" HeaderText="F. VENCTO" ReadOnly="True" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" Visible="False" />
                     <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                     <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" HeaderText="MONEDA" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" Visible="False" />
                     <asp:BoundField DataField="XCOBRAR" HeaderText="IMPORTE" ReadOnly="True" SortExpression="XCOBRAR" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RETND" HeaderText="RETND" SortExpression="RETND" Visible="False" />
                     <asp:BoundField DataField="GUIASR" HeaderText="GUIASR" SortExpression="GUIASR" Visible="False" />
                     <asp:BoundField DataField="NOTACREDITO" HeaderText="NOTACREDITO" SortExpression="NOTACREDITO" Visible="False" />
                     <asp:BoundField DataField="RET" HeaderText="RET" ReadOnly="True" SortExpression="RET" Visible="False" />
                      <asp:BoundField DataField="DMORA" HeaderText="D. EMISIÓN" ReadOnly="True" SortExpression="DMORA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 </Columns>
                 <FooterStyle BackColor="White" ForeColor="#000066" />
                 <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                 <RowStyle ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#007DBB" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#00547E" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourceFactuRElacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Facturas_RelacionCliente" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="VENTA" Name="TIPOVENTA" Type="String" />
                     <asp:ControlParameter ControlID="lblidcliente" DefaultValue="" Name="idCliente" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDOC" DataSourceID="SqlDataSourceletra" Width="750px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Small" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="IDDOC" HeaderText="IDDOC" ReadOnly="True" SortExpression="IDDOC" Visible="False" />
                <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCIMIENTO" SortExpression="FVENCIMIENTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ESTADO DOC" HeaderText="CONDICIÓN" ReadOnly="True" SortExpression="ESTADO DOC" Visible="False">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" Visible="False" />
                <asp:BoundField DataField="NUMUNICO" HeaderText="Nº UNICO" SortExpression="NUMUNICO" Visible="False" />
                <asp:BoundField DataField="IMPTT1" HeaderText="IMPTT1" ReadOnly="True" SortExpression="IMPTT1" Visible="False" />
                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPTOTAL" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPTOTAL">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DMORA" HeaderText="D. EMISIÓN" ReadOnly="True" SortExpression="DMORA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#333333" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceletra" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Letra_RelacionCliente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidcliente" Name="idcliente" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="lblidestadoLetra" Name="estado" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
             <br />
             <br />
             <br />
             <asp:Label ID="lblmensaje" runat="server"></asp:Label>
             <br />
             <br />
             <br />
             <br />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/_archivos/FirmasPersonal/CREDITOS.jpg" Width="250px" />
                    <br />
                    Mail: <a href="mailto:creditosycobranzas@biotechcorp.com.pe">creditosycobranzas@biotechcorp.com.pe</a>
             <br />
        <br />


          
       </center>
    </form>
</body>
</html>
