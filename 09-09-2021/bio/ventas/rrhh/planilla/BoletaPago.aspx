<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoletaPago.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.BoletaPago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Boleta de Pago</title>

<%--    <style type="text/css" media="all">
td {
border:hidden;
}
table {
border: 1px solid #0000FF;
}
</style>--%>

     <style type="text/css">
         body {
  	/*font-family: Verdana;*/
    width:95%;font-family:Verdana;font-size:9px;
}
            .auto-style1 {
             width: 800px;
         }
            .auto-style2 {
             width: 100%;
             border: 1px solid #7cc76a;

         }
          


         .auto-style3 {
             text-align: center;
         }
         .auto-style4 {
             text-align: right;
         }
        
         .auto-style6 {
             text-align: right;
            
         }
         .auto-style9 {
           
             text-align: center;
         }
            .auto-style10 {
             width: 190px;
         }
         .auto-style11 {
           
             width: 190px;
         }
         
            .auto-style13 {
             text-align: center;
             color: #7cc76a;
         }
            .auto-style14 {
             text-align: center;
             width: 107px;
         }
            .auto-style15 {
             height: 16px;
         }
         .auto-style16 {
             text-align: right;
             height: 16px;
         }
            .auto-style17 {
             height: 28px;
         }
         .auto-style18 {
             text-align: right;
             height: 28px;
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
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Imagebiotech" runat="server" alt="" Height="60px" ImageUrl="~/images/logobiotech.png" Width="110px" />
                    <br />
                    RUC: 20601613396</td>
                <td class="auto-style6">
                    <h1 class="auto-style13">BOLETA DE PAGO DEL TRABAJADOR
                        
                        <br /><asp:Label ID="lblTituloPeriodo" runat="server" ForeColor="#7CC76A"></asp:Label>
                        </h1>
                    
                </td>
                <td class="auto-style32" style="text-align: right">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                    <input id="btnImprimir" class="button" name="btnImprimir" onclick="imprime()" type="button" value="IMPRIMIR" /></td>
            </tr>
        </table>
        <br />
    
        <table align="center" class="auto-style1">
            <tr>
                <td WIDTH="200"><strong>NOMBRE</strong>:<asp:Label ID="lblidPersonal" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblnombre" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>DNI</strong>:<br />
                    <asp:Label ID="lblDNI" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>F. INGRESO</strong>:<br />
                    <asp:Label ID="lblfechaingreso" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>CUSPP</strong>:<br />
                    <asp:Label ID="lblCUSPP" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>SITUACIÓN</strong>:<br />
                    <asp:Label ID="lblsituacion" runat="server">Activo</asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>CARGO</strong>:<asp:Label ID="lblIdCargoPlanilla" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblcargo" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>BANCO</strong>:<br />
                    <asp:Label ID="lblbanco" runat="server"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td><strong>ESSALUD</strong>:<br />
                    SI</td>
                <td>&nbsp;</td>
                <td><strong>ONP / AFP</strong>:<br />
                    <asp:Label ID="lblONPAFP" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>SUELDO BÁSICO</strong>:<br />
                    <asp:Label ID="lblsueldobasico" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7"><strong>DIRECCIÓN</strong>:<br />
                    <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td><br />
                </td>
            </tr>
        </table>
    
        <table align="center" class="auto-style1">
            <tr>
                <td WIDTH="250">
                            <table align="center" class="auto-style2">
                                <tr>
                                    <td class="auto-style3" colspan="2"><strong>INGRESOS</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">CONCEPTO</td>
                                    <td class="auto-style3">IMPORTE</td>
                                </tr>
                            </table>
                        </td>
                <td>&nbsp;</td>
                <td  WIDTH="250">
                <table align="center" class="auto-style2">
                    <tr>
                        <td class="auto-style3" colspan="2"><strong>DESCUENTOS</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">CONCEPTO</td>
                        <td class="auto-style3">IMPORTE</td>
                    </tr>
                </table>
                </td>
                <td>&nbsp;</td>
                <td WIDTH="250">
                <table align="center" class="auto-style2">
                    <tr>
                        <td class="auto-style3" colspan="2"><strong>APORTES EMPRESA</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">CONCEPTO</td>
                        <td class="auto-style14">IMPORTE</td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td>
                <table align="center" class="auto-style2">
                    <tr>
                        <td>Remuneración</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl1sueldobasico" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Asignación familiar</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl1asifFamiliar" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Remuneración vacacional</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl1RemVacacional" runat="server"></asp:Label>
                        </td>
                    </tr>
                      <tr>
                        <td class="auto-style17">Remuneración por subsidio</td>
                        <td class="auto-style18">
                            <asp:Label ID="lblisubsidio" runat="server"></asp:Label>
                        </td>
                    </tr>
                      <asp:Panel ID="Panelsupeditada" runat="server">

                    <tr>
                        <td>
                            Movilidad supeditada</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl1bonoMovSubpeditada" runat="server"></asp:Label></td>
                    </tr>
                   
                    </asp:Panel>

                     <asp:Panel ID="Panelcontrato" runat="server">
                    <tr>
                        <td>Bono por contrato</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl1bonoContrato" runat="server"></asp:Label>
                        </td>
                    </tr>
                         <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>

                    </asp:Panel>
                     <asp:Panel ID="PanelProductividad" runat="server">
                    <tr>
                        <td>Bono por productividad</td>
                        <td class="auto-style4">
                           <asp:Label ID="lbl1bonoProductividad" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>

                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>
                          <tr>
                        <td></td>
                            <td>
                            </td>
                    </tr>

                    </asp:Panel>
                   
                    <tr>
                        <td>
                            <asp:Panel ID="pb11" runat="server">
                                Bonificación por cumplimiento</asp:Panel>
                        </td>
                        <td class="auto-style4">
                            <asp:Panel ID="pb12" runat="server">
                                <asp:Label ID="lbl1bonocumplimiento" runat="server"></asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="pb21" runat="server">
                                Bonificación Extraordinaria</asp:Panel>
                        </td>
                        <td class="auto-style4">
                            <asp:Panel ID="pb22" runat="server">
                                <asp:Label ID="lbl1bonoExtra" runat="server"></asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="pd1" runat="server">
                                Incentivo por desempeño</asp:Panel>
                            </td>
                        <td class="auto-style4">
                            <asp:Panel ID="pd2" runat="server">
                                <asp:Label ID="lbl1insemtivoDesempeno" runat="server"></asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>




                  
                    <tr>
                        <td>
                            <asp:Panel ID="Panel1comision" runat="server">
                                Bono por comisión</asp:Panel>
                        </td>
                        <td class="auto-style4">
                            <asp:Panel ID="Panel2comision" runat="server">
                                <asp:Label ID="lbl1Comision" runat="server"></asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                   


                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                   


                    <tr>
                        <td>
                            <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl1CTS" runat="server" Visible="False">0.00</asp:Label>
                        </td>
                    </tr>
                </table>
                </td>
                <td>&nbsp;</td>
                <td>
                <table align="center" class="auto-style2">
                    <tr>
                        <td class="auto-style5">AFP Fondo</td>
                        <td class="auto-style6">
                            <asp:Label ID="lbl2afpfondo" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>AFP comisión</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl2afpComision" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>AFP Seguro</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl2AfpSeguro" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>ONP</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl2impONP" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Imp. dias no laborados</td>
                        <td class="auto-style4">
                            <asp:Label ID="lb2lfaltas" runat="server" ForeColor="Maroon"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style15">Descuentos</td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl2Desccuentos" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>EPS Sanitas</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl2EPS" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Impuesto a la Renta</td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl2Rentaquinta" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Label ID="lbldescuentojudicialDescripcion" runat="server" Text="Descuento judicial"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="lbldescuentoJudicial" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                </td>
                <td>&nbsp;</td>
                <td>
                <table align="center" class="auto-style2">
                    <tr>
                        <td class="auto-style10">ESSALUD
                            <asp:Label ID="lblporcenESSALUD" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="lbl3essalud" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">ESP SALUD
                            <asp:Label ID="lblProcentEPS" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="lbl3eps" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td>
                <table align="center" class="auto-style2">
                    <tr>
                        <td><strong>Total Ingresos:</strong></td>
                        <td style="text-align: right">
                            <asp:Label ID="lbltotalingresos" runat="server" style="font-weight: 700">0</asp:Label>
                        </td>
                    </tr>
                </table>
                </td>
                <td>&nbsp;</td>
                <td>
                <table align="center" class="auto-style2">
                    <tr>
                        <td><strong>Total Descuentos:</strong></td>
                        <td style="text-align: right">
                            <asp:Label ID="lbltotalDescuento" runat="server" style="font-weight: 700" ForeColor="Maroon">0</asp:Label>
                        </td>
                    </tr>
                </table>
                </td>
                <td>&nbsp;</td>
                <td>
                <table align="center" class="auto-style2">
                    <tr>
                        <td><strong>Total Aportes:</strong></td>
                        <td style="text-align: right">
                            <asp:Label ID="lbltotalAportes" runat="server" style="font-weight: 700">0</asp:Label>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
        <table align="center" class="auto-style1">
            <tr>
                <td WIDTH="100" >Días trabajados</td>
                <td WIDTH="20">:</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl4diastrabajados" runat="server">0</asp:Label>
                </td>
                <td class="auto-style12"></td>
                <td WIDTH="100" class="auto-style12">Vacaniones</td>
                <td WIDTH="20">:</td>
                <td class="auto-style12">
                    <asp:Label ID="lbldiasVacaciones" runat="server"></asp:Label>
                </td>
                <td class="auto-style12"></td>
                <td WIDTH="100" class="auto-style12">Horas trabajadas</td>
                <td WIDTH="20">:</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl4horasTrabajadas" runat="server">0</asp:Label>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style5">Días no laborados</td>
                <td class="auto-style5">:</td>
                <td class="auto-style5">
                    <asp:Label ID="lbl4diasnoLaborados" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5">Días subsidiados</td>
                <td class="auto-style5">:</td>
                <td class="auto-style5">
                    <asp:Label ID="lbl4DiasSubsidios" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5">Neto a pagar</td>
                <td class="auto-style5">:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblnetoPagar" runat="server" style="font-weight: 700" Text="0"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <table align="center" class="auto-style1">
            <tr>
                <td valign=bottom  class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Width="198px" Height="150px" Visible="False" />
                    <br />
                    -----------------------------------------<br />
                    Firma del Trabajador</td>
                <td valign=bottom class="auto-style3">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/_archivos/FirmasPersonal/DANNY.jpg" Width="250px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
        
    </form>
    </body>
</html>
