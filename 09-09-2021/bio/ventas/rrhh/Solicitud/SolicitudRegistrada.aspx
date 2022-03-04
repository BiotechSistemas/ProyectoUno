<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudRegistrada.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Solicitud.SolicitudRegistrada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SOLICITUD REGISTRADA</title>
     <style type="text/css">
      

        .auto-style1 {
            width: 800px;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            height: 23px;
            font-weight: bold;
        }
        .auto-style9 {
            height: 23px;
            width: 44%;
        }
        .auto-style10 {
            height: 23px;
            width: 150px;
            font-weight: bold;
        }
        .auto-style13 {
            height: 23px;
         }
        .auto-style19 {
            font-weight: bold;
        }
        
        body {
  	/*font-family: Verdana;*/
    width:800px;font-family:Verdana;font-size:12px;
             text-align: center;
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
    <center>
    <form id="form1" runat="server">
    <div>
     <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Imagebiotech" alt="" runat="server" Height="61px" Width="119px" />
                
                </td>
                <td style="text-align: right" class="auto-style32">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <strong style="text-align: center">
        <hr />
        <div>
            <u><h1><strong style="text-align: center">SOLICITUD GDH:
                <asp:Label ID="lblnsolicitud" runat="server"></asp:Label>
                <asp:Label ID="lblidSolicitud" runat="server" Visible="False"></asp:Label>
               
            </h1>
            </strong></u>
        </div>
        </strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">SOLICITA:</td>
                <td class="auto-style7" colspan="3">
                    <asp:Label ID="lblidSolicita" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblnombreSolicita" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">FECHA A EJECUTAR / INICIO:</td>
                <td class="auto-style13">
                    <asp:Label ID="lbFechaSolicita" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">FECHA REGISTRA:</td>
                <td class="auto-style9">
                    <asp:Label ID="lblFechaRegistra" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">TIPO DE SOLICITUD:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblDescripcionTipoSolicitud" runat="server"></asp:Label>
                    <asp:Label ID="lblidTipoSolicitud" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">DETALLE / ASUNTO:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblDetalle" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">IMPORTE:</td>
                <td class="auto-style13">
                    <asp:Label ID="txtimporte" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblMoneda" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">CUOTAS:</td>
                <td class="auto-style9">
                    <asp:Label ID="txtCuotas" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style8">A. EVALUACIÓN GDH:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblgdhEstado" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">DETALLE GDH:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblgdhDetalle" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style8">B. RESP. EVAL. SOLICTANTE:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblAsesorEstado" runat="server"></asp:Label>
                    <asp:Label ID="lblidAsesorEstado" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">DETALLE SOLICITANTE:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblasesorDetalle" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">DOC. CONVENIO:</td>
                <td class="auto-style13" colspan="3">
                    <asp:LinkButton ID="lbtdocAdjunto" runat="server" OnClick="lbtdocAdjunto_Click"></asp:LinkButton>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style8">EVALUACIÓN FINAL:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblSolicitudEstado" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style8">ULTIMA ACT.:</td>
                <td class="auto-style13" colspan="2">
                    <asp:Label ID="lblultusuario" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblFechaUltActualizacion" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13" colspan="2">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <asp:Panel ID="pPanelDeposito" runat="server">
            <tr>
                <td class="auto-style8" colspan="4">DETALLE DE DEPOSITO, PRESTAMO REALIZADO:</td>
            </tr>

            <tr>
                <td class="auto-style8">DEPOSITO REALIZADO:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblEstadoDeposito" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblEstadoDepositoFecha" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">ESTADO DE PAGO:</td>
                <td class="auto-style13" colspan="3">
                    <asp:Label ID="lblEstadoCobro" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblEstadoCobroFecha" runat="server"></asp:Label>
                </td>
            </tr>
                </asp:Panel>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13" colspan="2">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>

            </table>
    </div>
    </form>

    </center>
    
</body>
</html>
