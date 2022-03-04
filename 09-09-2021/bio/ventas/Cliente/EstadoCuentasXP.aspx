  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstadoCuentasXP.aspx.cs" Inherits="biotech.bio.ventas.Cliente.EstadoCuentasXP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ESTADO CUENTA</title>

      <style type="text/css">
          
         body {
              font-family: Arial, Helvetica, sans-serif;
               font-size: x-small;
            }       
          .auto-style1 {
            width: 750px;
              height: 17px;
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
       
          .auto-style2 {
              text-align: center;
          }
       
          .auto-style3 {
              height: 15px;
          }
       
          .auto-style10 {
              height: 19px;
          }
       
          .auto-style11 {
              border-collapse: collapse;
              text-align: center;
              font-weight: bold;
              background-color: #339933;
              color: #FFFFFF;
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



</head>
<body>
    <form id="form1" runat="server">
        <center>
    <div>
    
        <%--<asp:Button ID="btnImprimir" runat="server" Text="Button" onClick="imprime()"/>--%>
   

   

        <br />
     <table class="auto-style1">
            <tr>
                <td WIDTH="130px" >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.jpg" Width="110px" Height="60px" />
                </td>
                <td class="auto-style2" >
                    <h1 class="auto-style2"><strong style="text-align: center">BIOTECH CORP S.A.C. </strong></h1>
                    <h2 class="auto-style2">ESTADO DE CUENTA&nbsp; AL <asp:Label ID="lblfecha" runat="server"></asp:Label>
                    </h2>
                    
                </td>
                
                <td class="auto-style2" >

         <input name="btnImprimir"id="btnImprimir" type="button" class="button" value="Imprimir / Exportar" onClick="imprime()"></td>
 
            </tr>
            </table>

        <br />
        <div class="borde"  style="width:750px">
            <table cellpadding="2" >
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="160">&nbsp;</td>
                    <td WIDTH="5">&nbsp;</td>
                    <td WIDTH="250">
                        &nbsp;</td>
                    <td WIDTH="180">
                        <asp:Label ID="lbltelefono" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td WIDTH="50">
                        <asp:Label ID="lblestadocliente" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>RAZÓN SOCIAL:</b></td>
                    <td WIDTH="5"><b>:</b></td>
                    <td WIDTH="" colspan="3">
                        <asp:Label ID="lblrazonsocial" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><strong>RUC</strong></td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="">
                        <asp:Label ID="lblidcliente" runat="server"></asp:Label>
                    </td>
                    <td >
                        &nbsp;</td>
                    <td WIDTH="">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td WIDTH="10" class="auto-style3"></td>
                    <td WIDTH="150" class="auto-style3"><b>DIRECCIÓN FISCAL</b></td>
                    <td WIDTH="5" class="auto-style3">:</td>
                    <td WIDTH="" class="auto-style3" colspan="3">
                        <asp:Label ID="lbldireccionfiscal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>DEPARTAMENTO</b></td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="">
                        <asp:Label ID="lblDepartamento" runat="server"></asp:Label>
                    </td>
                    <td >
                        <strong>PROVINCIA</strong>:</td>
                    <td WIDTH="">
                        <asp:Label ID="lblprovincia" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10" class="auto-style3">&nbsp;</td>
                    <td WIDTH="150" class="auto-style3"><strong>DISTRITO</strong></td>
                    <td WIDTH="5" class="auto-style3">:</td>
                    <td WIDTH="" class="auto-style3">
                        <asp:Label ID="lbldistrito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" >
                        &nbsp;</td>
                    <td WIDTH="" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td WIDTH="10" class="auto-style3"></td>
                    <td WIDTH="150" class="auto-style3"><strong>MAIL/FACT.</strong></td>
                    <td WIDTH="5" class="auto-style3">:</td>
                    <td WIDTH="" class="auto-style3">
                        <asp:Label ID="lblcorreoFact" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" >
                        <b>MONEDA:</b></td>
                    <td WIDTH="" class="auto-style3">
                        <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>COND. CRÉDITO</b></td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="">
                        <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="lbldiascred" runat="server" Text="0"></asp:Label>
&nbsp;días</td>
                    <td >
                        &nbsp;</td>
                    <td WIDTH="">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150">&nbsp;</td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="550">
&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td WIDTH="">
                        &nbsp;</td>
                </tr>
                </table>
            </div>
    
    </div>
        <br />
        <table class="auto-style1" border="1" style="border-collapse: collapse">
            <tr>
                <td class="auto-style11">LINEA DE CRÉDITO</td>
                <td class="auto-style11">DEUDA VENCIDA</td>
                <td class="auto-style11">DEUDA TOTAL</td>
                <td class="auto-style11">LINEA DISPONIBLE</td>
            </tr>
            <tr>
                <td class="auto-style2">
                        <asp:Label ID="lblmoneda1" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblimportecred" runat="server"></asp:Label>
                    <asp:Label ID="lblimportecred0" runat="server" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style2">
                    <asp:Label ID="lblmoneda2" runat="server" ForeColor="#CC3300"></asp:Label>
&nbsp;<asp:Label ID="lblimporteAtrazado" runat="server" ForeColor="#CC3300"></asp:Label>
                </td>
                <td class="auto-style2">
                        <asp:Label ID="lblmoneda3" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblimportevendido" runat="server" Text="0.00"></asp:Label>
                        </td>
                <td class="auto-style2">
                        <asp:Label ID="lblmoneda4" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblimportedisponible" runat="server" Text="0.00"></asp:Label>
                        </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
      
        <p>
            &nbsp;</p>
        <table  class="auto-style1" >
            <tr>
                <td colspan="8" style="text-align: left" class="auto-style10">
                    <h4>DETALLE DE DOCUMENTOS POR PAGAR:</h4>
                </td>
            </tr>
            </table>
             <table  class="auto-style1" style="border-collapse: collapse" border="1" >
            <tr style="border-collapse: collapse" borde="1">
                <td WIDTH="100" class="auto-style11">N° DOCUMENTO</td>
                <td WIDTH="80" class="auto-style11">F. EMISIÓN</td>
                <td WIDTH="80" class="auto-style11">F. VCTO.</td>
                <td WIDTH="140" class="auto-style11">DETALLE DOC.</td>
                <td WIDTH="100" class="auto-style11">BANCO</td>
                <td WIDTH="100" class="auto-style11">N° ÚNICO</td>
                <td WIDTH="100" class="auto-style11">IMPORTE</td>
                <td WIDTH="50" class="auto-style11">MORA</td>
            </tr>
        </table>
        <p>
            <asp:GridView ID="gvDetalledeFacturas" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSourceFACTD" Width="750px" OnRowDataBound="gvDetalledeFacturas_RowDataBound" ShowHeader="False">
                <Columns>
                    <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" >
                    </asp:BoundField>
                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCIMIENTO" SortExpression="FVENCIMIENTO">
                    <HeaderStyle Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO DOC" HeaderText="ESTADO DOC" SortExpression="ESTADO DOC" ReadOnly="True">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="140px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="140px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" >
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NUMUNICO" HeaderText="NUMUNICO" SortExpression="NUMUNICO" >
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPTT1" HeaderText="IMPTT1" SortExpression="IMPTT1" ReadOnly="True" >
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPTOTAL" HeaderText="IMPORTE TOTAL" SortExpression="IMPTOTAL" Visible="False" ReadOnly="True" >
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>

                    <asp:BoundField DataField="DMORA" HeaderText="DMORA" SortExpression="DMORA" ReadOnly="True" >
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            </p>
        <p>
            <asp:GridView ID="gvDetLetra" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDOC" DataSourceID="SqlDataSourceLetraEC" ShowHeader="False" Width="750px" OnRowDataBound="gvDetLetra_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="IDDOC" HeaderText="IDDOC" ReadOnly="True" SortExpression="IDDOC" Visible="False" />
                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION">
                    <HeaderStyle Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCIMIENTO" SortExpression="FVENCIMIENTO">
                    <HeaderStyle Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO DOC" HeaderText="ESTADO DOC" ReadOnly="True" SortExpression="ESTADO DOC">
                    <HeaderStyle Width="140px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="140px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO">
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NUMUNICO" HeaderText="NUMUNICO" SortExpression="NUMUNICO">
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPTT1" HeaderText="IMPTT1" ReadOnly="True" SortExpression="IMPTT1">
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPTOTAL" HeaderText="IMPTOTAL" SortExpression="IMPTOTAL" Visible="False">
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="DMORA" HeaderText="DMORA" SortExpression="DMORA"  ReadOnly="True" >
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            </p>
        <table  class="auto-style1">
            <tr>
                <td WIDTH="420" style="text-align: left">* ( <asp:Label ID="lbln" runat="server"></asp:Label>
                    &nbsp;) Documentos registrados.<asp:Label ID="lblCantLetramora" runat="server" Visible="False"></asp:Label>
                </td>
                <td WIDTH="100" >
                    <asp:Label ID="lblCantFactMora" runat="server" Visible="False"></asp:Label>
                </td>
                <td WIDTH="100" >
                    &nbsp;</td>
                <td WIDTH="100" style="text-align: right" >
                    <asp:Label ID="lblmoneda10" runat="server"></asp:Label>
                    <asp:Label ID="lblimportett2" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td WIDTH="50">&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:SqlDataSource ID="SqlDataSourceLetraEC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_resumenLETRAEC" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidcliente" Name="dato" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceFACTD" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_resumenFACTURASEC" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidcliente" Name="dato" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lblcantidad" runat="server" Visible="False"></asp:Label>
            </p>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <p>
                DETALLE DE LETRAS EN REFERENCIA:
                <asp:Label ID="lblttfact" runat="server"></asp:Label>
                &nbsp; ttfacturas:&nbsp; ttletras
                <asp:Label ID="lblttletras" runat="server"></asp:Label>
            </p>
            <p>
                <asp:GridView ID="gvLetras" runat="server" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSourceLETRAS" OnRowDataBound="gvLetras_RowDataBound" Width="750px">
                    <Columns>
                        <asp:BoundField DataField="idletra" HeaderText="idletra" ReadOnly="True" SortExpression="idletra" Visible="False" />
                        <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHACANJE" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. CANJE" SortExpression="FECHACANJE">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCIMIENTO" SortExpression="FVENCIMIENTO">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADOLETRA" HeaderText="ESTADO" SortExpression="ESTADOLETRA" />
                        <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                        <asp:BoundField DataField="NUMUNICO" HeaderText="NUM. ÚNICO" SortExpression="NUMUNICO" />
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceLETRAS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_ResumenLetrasxcobrar" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidcliente" Name="idcliente" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </asp:Panel>
        <p>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/_archivos/FirmasPersonal/CREDITOS.jpg" Width="250px" />
                    <br />
                    Mail: <a href="mailto:creditosycobranzas@biotechcorp.com.pe">creditosycobranzas@biotechcorp.com.pe</a> </td>
            </tr>
        </table>
</center>
         &nbsp;</form>
</body>
</html>
