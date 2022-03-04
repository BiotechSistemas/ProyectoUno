<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstadoCuentasXPB.aspx.cs" Inherits="biotech.bio.ventas.Cliente.EstadoCuentasXPB" %>

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
       
          .auto-style4 {
              width: 300px;
          }
       
          .auto-style5 {
              text-align: right;
          }
          .auto-style6 {
              text-decoration: underline;
          }
          .auto-style7 {
              color: #808080;
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
    <div>
    
        <br />
     <table class="auto-style1">
            <tr>
                <td WIDTH="130px" >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.jpg" Width="110px" Height="60px" />
                </td>
                <td class="auto-style2" >
                    <h1 class="auto-style2"><strong style="text-align: center">BIOTECH CORP S.A.C. </strong></h1>
                    <h2 class="auto-style2">ESTADO DE CUENTA&nbsp; <asp:Label ID="lblfecha" runat="server"></asp:Label>
                    </h2>
                    
                </td>
                
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
                        &nbsp;</td>
                    <td WIDTH="50">
                        &nbsp;</td>
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
                        ESTADO DE CLIENTE:</td>
                    <td WIDTH="">
                        <asp:Label ID="lblestadocliente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>REPRESENTANTE LEGAL</b></td>
                    <td WIDTH="5">::</td>
                    <td WIDTH="">
                        <asp:Label ID="lblrepresentanteLegal" runat="server"></asp:Label>
                    </td>
                    <td >
                        <strong>TELEFONO</strong>:</td>
                    <td WIDTH="">
                        <asp:Label ID="lbltelefono" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>DIRECCIÓN FISCAL</b></td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="" colspan="3">
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
                    <td WIDTH="150" class="auto-style3"><strong>MAIL/FACT.:</strong></td>
                    <td WIDTH="5" class="auto-style3">:</td>
                    <td WIDTH="" class="auto-style3">
                        <asp:Label ID="lblcorreoFact" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" >
                        &nbsp;</td>
                    <td WIDTH="" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td WIDTH="10" class="auto-style3">&nbsp;</td>
                    <td class="auto-style3" colspan="4"></td>
                    <td WIDTH="" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>LINEA APROBADA:</b></td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="">
                        <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="lbldiascred" runat="server" Text="0"></asp:Label>
&nbsp;días</td>
                    <td >
                        <b>MONEDA:</b></td>
                    <td WIDTH="">
                        <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>IMPORTE APROBADO</b></td>
                    <td WIDTH="5">:</td>
                    <td WIDTH="550">
                        <asp:Label ID="lblimportecred" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblimportecred0" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td WIDTH="">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td WIDTH="10" class="auto-style3">&nbsp;</td>
                    <td WIDTH="150" class="auto-style3">IMPORTE UTILIZADO</td>
                    <td WIDTH="5" class="auto-style3">:</td>
                    <td WIDTH="" class="auto-style3">
                        <asp:Label ID="lblimportevendido" runat="server" ForeColor="#990000" Text="0.00"></asp:Label>
                        </td>
                    <td class="auto-style3" >
                        IMPORTE DISPONIBLE:</td>
                    <td WIDTH="" class="auto-style3">
                        <asp:Label ID="lblimportedisponible" runat="server" Text="0.00"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150">&nbsp;</td>
                    <td WIDTH="5">&nbsp;</td>
                    <td WIDTH="">
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td WIDTH="">
                        &nbsp;</td>
                </tr>
                </table>
            </div>
    
    </div>
        <br />
        <H2>
            RESUMEN GENERAL</H2>
        <p>
            <asp:GridView ID="GridViewTT" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceTT" Width="750px">
                <Columns>
                    <asp:BoundField DataField="IDCLIENTE" HeaderText="RUC" SortExpression="IDCLIENTE" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                    <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL BRUTO" ReadOnly="True" SortExpression="IMPBRUTO">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="TOTAL IGV" ReadOnly="True" SortExpression="IGV">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NETO" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL A PAGAR" ReadOnly="True" SortExpression="NETO">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceTT" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_resumenxcobrar_TT" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidcliente" Name="dato" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
      
           <p class="auto-style7">
           <small>  *Resumen general expresado en dólares según tipo de cambio facturado.</small></p>
        <p>
            &nbsp;</p>
        <H2>
            RESUMEN DETALLADO DE FACTURACIÓN:</H2>
        <p>
            <asp:GridView ID="gvDetalledeFacturas" runat="server" AutoGenerateColumns="False" DataKeyNames="IDFACTURA" DataSourceID="SqlDataSourceFACTD" Width="750px" OnRowDataBound="gvDetalledeFacturas_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="IDFACTURA" HeaderText="IDFACTURA" ReadOnly="True" SortExpression="IDFACTURA" Visible="False" />
                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                    <asp:BoundField DataField="TIPO VENTA" HeaderText="TIPO VENTA" SortExpression="TIPO VENTA" Visible="False" />
                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCIMIENTO" SortExpression="FVENCIMIENTO">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CONDPAGO" HeaderText="COND.PAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                    <asp:BoundField DataField="DCREDITO" HeaderText="DÍAS" ReadOnly="True" SortExpression="DCREDITO" />
                    <asp:BoundField DataField="CODASESOR" HeaderText="COD. ASESOR" SortExpression="CODASESOR" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDLETRA" HeaderText="IDLETRA" SortExpression="IDLETRA" Visible="False" />
                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                      <asp:BoundField DataField="ESTADOLETRA" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADOLETRA" Visible="False" />
                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" ReadOnly="True" SortExpression="BANCO" Visible="False" />
                    <asp:BoundField DataField="NUMUNICO" HeaderText="NUM. UNICO" ReadOnly="True" SortExpression="NUMUNICO" Visible="False" />
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                    <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP. BASE" ReadOnly="True" SortExpression="IMPBASE" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPTOTAL" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="IMPTOTAL">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    No registra facturas por cobrar.
                </EmptyDataTemplate>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceFACTD" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_resumenFACTURAS" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidcliente" Name="dato" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceDETFACT" runat="server"></asp:SqlDataSource>
            (*
            <asp:Label ID="lblcantidad" runat="server"></asp:Label>
            ) Facturas registradas.</p>
        <p>
            &nbsp;</p>
        <p>
            DETALLE DE LETRAS EN REFERENCIA:</p>
        <p>
            <asp:GridView ID="gvLetras" runat="server" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSourceLETRAS" OnRowDataBound="gvLetras_RowDataBound" Width="600px">
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
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style6"><strong>RESUMEN FACTURADO:</strong></td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>IMPORTE FACT. VENCIDO:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblimporteVencido" runat="server" ForeColor="#990000" Text="0.00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>IMPORTE FACT. POR VENCER:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblimportexvender" runat="server" Text="0.00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>IMPORTE TOTAL A PAGAR:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblimportettpagar" runat="server" Text="0.00"></asp:Label>
                </td>
            </tr>
        </table>
        <p class="auto-style7">
           <small>*Resumen facturado expresado en dólares.</p></small> 
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
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">----------------------------------------------------<br />
                    <strong>CRÉDITOS Y COBRANZAS</strong><asp:Label ID="lblcreditosnombre" runat="server" Visible="False"></asp:Label>
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
