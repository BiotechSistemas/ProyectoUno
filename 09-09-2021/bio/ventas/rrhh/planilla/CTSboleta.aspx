<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CTSboleta.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.CTSboleta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BOLETA CTS</title>
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

            .auto-style1 {
             width: 800px;
         }
                      


         .auto-style3 {
             text-align: center;
         }
                 
         .auto-style6 {
             text-align: right;
            
         }
                  
            .auto-style13 {
             text-align: center;
             color: #7cc76a;
         }
            .auto-style15 {
            width: 100%;
        }
        .auto-style25 {
            text-decoration: underline;
        }
            .auto-style26 {
            width: 333px;
        }
        .auto-style27 {
            width: 34px;
        }
        .auto-style30 {
            width: 261px;
        }
        .auto-style31 {
            width: 154px;
            text-align: right;
        }
        .auto-style32 {
            width: 154px;
        }
            </style>
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
                    <h2 class="auto-style13">COMPENSACIÓN POR TIEMPO
                        <br />
                    DE SERVICIOS
                        
                        <br /><asp:Label ID="lblTituloPeriodo" runat="server" ForeColor="#7CC76A"></asp:Label>
                        </h2>
                    
                </td>
                <td class="auto-style32" style="text-align: right">
                    <asp:Label ID="lblidcts" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblfechareg" runat="server" Visible="False"></asp:Label>
                    <input id="btnImprimir" class="button" name="btnImprimir" onclick="imprime()" type="button" value="IMPRIMIR" /></td>
            </tr>
        </table>
    
        <table align="center" class="auto-style1">
            <tr>
                <td WIDTH="200" colspan="3"><strong>NOMBRE</strong>:<asp:Label ID="lblidPersonal" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblnombre" runat="server"></asp:Label>
                    <br />
                </td>
                <td></td>
                <td><strong>DNI</strong>:<br />
                    <asp:Label ID="lblDNI" runat="server"></asp:Label>
                    <br />
                  
                </td>
                <td>&nbsp;</td>
                <td><strong>ESTADO</strong>:<br />
                    <asp:Label ID="lblsituacion" runat="server">Activo</asp:Label>
                    <br />
                   
                </td>
            </tr>
            <tr>
                <td WIDTH="200" colspan="3"><strong>CARGO:<br />
                    </strong><asp:Label ID="lblIdCargo" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblcargo" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>F. INGRESO</strong>:<br />
                    <asp:Label ID="lblfechaingreso" runat="server"></asp:Label>
                  
                </td>
                <td>&nbsp;</td>
                <td><strong>SUELDO BÁSICO</strong>:<br />
                    <asp:Label ID="lblsueldobasico" runat="server"></asp:Label>
                   
                </td>
            </tr>
            <tr>
                <td WIDTH="200" colspan="3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                
                
                <td><strong>BANCO:<br />
                    </strong>
                    <asp:Label ID="lblbanco" runat="server"></asp:Label>
                </td>
                <td></td>
                <td><strong>Nº CUENTA</strong>:<br />
                    <asp:Label ID="lblncuentacts" runat="server"></asp:Label>
                    <br />
                    </td>
                <td></td>
                <td><br />
                </td>
                <td></td>
                <td>
                    <strong>ONP / AFP</strong>:<br />
                    <asp:Label ID="lblONPAFP" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                
                
                <td><strong>PERIODO</strong>:<br />
                    <asp:Label ID="lblPeriodo" runat="server"></asp:Label>
                   
                </td>
                <td>&nbsp;</td>
                <td colspan="5"><strong>PERIODO QUE SE CANCELA</strong>:<br />
                    <asp:Label ID="lblperidoDescripcion" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td colspan="7"><hr /></td>
            </tr>
        </table>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style25" colspan="3"><strong>REMUNERACIÓN COMPUTABLE MENSUAL</strong></td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">REMUNERACIÓN BÁSICA</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblremBasica" runat="server"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">ASIGNACIÓN FAMILIAR</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblasigFam" runat="server"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">GRATIFICACIÓN</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblGratificacion" runat="server"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style26">Total computable:</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblsumsub" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">DEPÓSITO</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblimpTT" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">INTERESES ( 
                    <asp:Label ID="lblndiasInteres" runat="server"></asp:Label>
&nbsp;) DÍAS</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblimpinteres" runat="server"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style26">Total:</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="lblimpAcumuladoCTS" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <table class="auto-style15">
                        <tr>
                            <td style="text-align: center">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                -----------------------------------------<br />
                    Firma del Trabajador</td>
                            <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/_archivos/FirmasPersonal/DANNY.jpg" Width="250px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            </table>
    
        <p style="margin-left: 40px">
            <br />
    
        <br />
    
        </p>
    
    </div>
    </form>
</body>
</html>
