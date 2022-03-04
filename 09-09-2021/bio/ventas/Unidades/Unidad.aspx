<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unidad.aspx.cs" Inherits="biotech.bio.ventas.Unidades.Unidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Unidades Biotech</title>
     
    <style type="text/css">
         body {
  	/*font-family: Verdana;*/
    width:95%;font-family:Verdana;font-size:9px;
}

        .auto-style1 {
            width: 98%;
        }
        .auto-style3 {
            width: 4px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 4px;
            height: 23px;
            font-weight: bold;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 16px;
        }
        .auto-style8 {
            width: 4px;
            height: 16px;
        }
        .auto-style9 {
            width: 4px;
            height: 16px;
            font-weight: bold;
        }
        .auto-style10 {
            height: 16px;
            font-weight: bold;
        }
        .auto-style11 {
            width: 4px;
            font-weight: bold;
        }
        .auto-style12 {
            height: 23px;
            font-weight: bold;
        }

       
/** {box-sizing: border-box;}

        img.zoom {
            width: 350px;
            height: 200px;
            -webkit-transition: all .2s ease-in-out;
            -moz-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            -ms-transition: all .2s ease-in-out;
        }
 
        .transition {
            -webkit-transform: scale(3); 
            -moz-transform: scale(3);
            -o-transform: scale(3);
            transform: scale(3);
        }*/

        .auto-style13 {
            width: 90%;
        }
        .auto-style14 {
            width: 352px;
        }

        </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
            $('.zoom').hover(function () {
                $(this).addClass('transition');
            }, function () {
                $(this).removeClass('transition');
            });
        });
</script>


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
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Imagebiotech" alt="" runat="server" Height="42px" Width="80px" ImageUrl="~/images/logobiotech.png" />
                
                </td>
                <td class="auto-style6">
                   <h1>FICHA DE UNIDAD</h1>  </td>
                <td style="text-align: right" class="auto-style32">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                    <input name="btnImprimir" id="btnImprimir" type="button" class="button" value="IMPRIMIR" onClick="imprime()"></td>
            </tr>
        </table>
      
        <hr />



    
        <table class="auto-style1">
            <tr>
                <td WIDTH="100" ><strong>RESPONSABLE</strong></td>
                <td WIDTH="20" ><strong>:</strong></td>
                <td colspan="5">
                    <asp:Label ID="lblResponsable" runat="server" ForeColor="#006600" style="font-size: 9pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td WIDTH="90" ><b>Fecha a cargo</b></td>
                <td WIDTH="20" ><b>:</b></td>
                <td>
                    <asp:Label ID="lblfechaacargo" runat="server"></asp:Label>
                </td>
                <td WIDTH="50" >&nbsp;</td>
                <td WIDTH="120" >&nbsp;</td>
                <td WIDTH="20" >&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td WIDTH="90" >&nbsp;</td>
                <td WIDTH="20" >&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td WIDTH="50" >&nbsp;</td>
                <td WIDTH="150" >&nbsp;</td>
                <td WIDTH="20" >&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td WIDTH="90" ><b>Placa</b></td>
                <td WIDTH="20" ><b>:</b></td>
                <td>
                    <asp:Label ID="lblplaca" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblidUnidad" runat="server" Visible="False"></asp:Label>
                </td>
                <td WIDTH="50" >&nbsp;</td>
                <td WIDTH="150" ><b>Fecha Ingreso</b></td>
                <td WIDTH="20" ><b>:</b></td>
                <td>
                    <asp:Label ID="lblfechaingreso" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Marca</td>
                <td class="auto-style5">:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblmarca" runat="server"></asp:Label>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style12">Modelo</td>
                <td class="auto-style12">:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblmodelo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><b>Condición</b></td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblorigen" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>Propietario</b></td>
                <td><b>:</b></td>
                <td>
                    <asp:Label ID="lbltitular" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Km. Último Mantenimiento</strong></td>
                <td class="auto-style9">:</td>
                <td class="auto-style7">
                    <asp:Label ID="lblKmultMantenimiento" runat="server"></asp:Label>
                &nbsp;Km.</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7"><strong>Ult. Km. Registrado </strong>(Recorrido)</td>
                <td class="auto-style7">:</td>
                <td class="auto-style7">
                        <asp:Label ID="lblkilometrajeActual" runat="server" style="font-size: 11pt"></asp:Label>
                    &nbsp;Km.</td>
            </tr>
            <tr>
                <td class="auto-style10">Km. Próximo Mantenimiento</td>
                <td class="auto-style9">:</td>
                <td class="auto-style7" colspan="2">
                    <asp:Label ID="lblkmproxMant" runat="server"></asp:Label>
                    <asp:Label ID="lblrecorridoActual" runat="server" style="font-size: 11pt" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Imagekm2" runat="server" Height="12px" ImageUrl="~/images/2.png" Width="12px" Visible="False" />
                </td>
                <td class="auto-style7" colspan="3">
                    <asp:Image ID="Imagekm3" runat="server" Height="12px" ImageUrl="~/images/3.png" Width="12px" />
                    <asp:Image ID="Imagekm1" runat="server" Height="12px" ImageUrl="~/images/1.png" Width="12px" />
                &nbsp;
                    <asp:Label ID="lblKMmensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Detalle</td>
                <td class="auto-style8">:</td>
                <td class="auto-style7" colspan="5">
                    <asp:Label ID="lbldescripcion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7"><h3>DETALLES TÉCNICOS:</h3></td>
            </tr>
            <tr>
                <td><b>N° Motor</b></td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblmotor" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>Año de Fabricación</b></td>
                <td><b>:</b></td>
                <td>
                    <asp:Label ID="lblano" runat="server"></asp:Label>
                </td>
            </tr>
           <tr>
                <td><b>N° Chasis</b></td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblchasis" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>Combustible</strong></td>
                <td>:</td>
                <td>
                    <asp:Label ID="lbltpcombustible" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><b>Llantas / Aro</b></td>
                <td class="auto-style11">:</td>
                <td colspan="5">
                    <asp:Label ID="lblllantasAro" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Motor Cilindrada</strong></td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblmotorCilindrada" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>Nro. Clilindros</strong></td>
                <td>:</td>
                <td>
                    <asp:Label ID="lblnCilindros" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Tracción</strong></td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblTraccion" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><strong>Tipo Transmisión</strong></td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblTransmision" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Tipo de timón</strong></td>
                <td class="auto-style9">:</td>
                <td class="auto-style7">
                    <asp:Label ID="lblTpTimon" runat="server"></asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7"><strong>Nº puertas</strong></td>
                <td class="auto-style7">:</td>
                <td class="auto-style7">
                    <asp:Label ID="lblnPuertas" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td><b>Fecha ingreso</b></td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblFechaREgistro" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>Km. de ingreso</b></td>
                <td><b>:</b></td>
                <td>
                    <asp:Label ID="lblkilomertrajeRecorrido" runat="server"></asp:Label>
                &nbsp;Km.</td>
            </tr>
            <tr>
                <td>Mant. según&nbsp; fabricante</td>
                <td class="auto-style11">:</td>
                <td>
                    <asp:Label ID="lblRecorridoMantenimiento" runat="server"></asp:Label>
                &nbsp;Km.</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lbli1" runat="server"></asp:Label>
                    <asp:Label ID="lbli2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbli3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbli4" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="3">
                    <h3>Servicios registrados:
                       <small><asp:Label ID="lblt1" runat="server" Text="ACTIVOS"></asp:Label></small> 
                    </h3>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:LinkButton ID="lbt_servActivo" runat="server" OnClick="lbt_servActivo_Click">ACTIVOS</asp:LinkButton>
                &nbsp;|
                    <asp:LinkButton ID="lbt_servBaja" runat="server" OnClick="lbt_servBaja_Click">DE BAJA</asp:LinkButton>
                    <asp:Label ID="lblestadoServicio" runat="server" Text="1" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7">
                    <asp:GridView ID="gvServicios" runat="server" AutoGenerateColumns="False" DataKeyNames="idServicios" DataSourceID="SqlDataSourceServ" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="idServicios" HeaderText="idServicios" ReadOnly="True" SortExpression="idServicios" Visible="False" />
                            <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                            <asp:BoundField DataField="idServAcce" HeaderText="idServAcce" SortExpression="idServAcce" Visible="False" >
                            </asp:BoundField>
                            <asp:BoundField DataField="SERVICIO" HeaderText="SERVICIO" SortExpression="SERVICIO" />
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_E" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISIÓN" SortExpression="FECHA_E">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_V" HeaderText="F.VENCTO" SortExpression="FECHA_V" DataFormatString="{0:dd/MM/yyyy}" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" Visible="False" />
                            <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceServ" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_listarServAccexUnidad" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidUnidad" Name="idUnidad" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblestadoServicio" Name="estado" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="10" Name="grupo" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <h3>Accesorios registrados:<small> <asp:Label ID="lblt2" runat="server">ACTIVOS</asp:Label></small> </h3>
                </td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="lbt_AcceActivo" runat="server" OnClick="lbt_AcceActivo_Click">ACTIVOS</asp:LinkButton>
                &nbsp;|
                    <asp:LinkButton ID="lbt_AcceBaja" runat="server" OnClick="lbt_AcceBaja_Click">DE BAJA</asp:LinkButton>
                    <asp:Label ID="lblEstadoAccesorios" runat="server" Text="1" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7">
                    <asp:GridView ID="gvAccesorios" runat="server" AutoGenerateColumns="False" DataKeyNames="idServicios" DataSourceID="SqlDataSourceAcce" style="margin-right: 0px" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="idServicios" HeaderText="idServicios" ReadOnly="True" SortExpression="idServicios" Visible="False" />
                            <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                            <asp:BoundField DataField="idServAcce" HeaderText="idServAcce" SortExpression="idServAcce" Visible="False" >
                            </asp:BoundField>
                            <asp:BoundField DataField="SERVICIO" HeaderText="ACCESORIO" SortExpression="SERVICIO" />
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_E" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="FECHA_E">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_V" HeaderText="FECHA_V" SortExpression="FECHA_V" Visible="False" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" >
                            </asp:BoundField>
                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICIÓN" SortExpression="CONDICION" />
                            <asp:BoundField DataField="grupo" HeaderText="CI" SortExpression="grupo" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceAcce" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_listarServAccexUnidad" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidUnidad" Name="idUnidad" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblEstadoAccesorios" Name="estado" PropertyName="Text" Type="Int32" />
                                    <asp:Parameter DefaultValue="20" Name="grupo" Type="Int32" />
                                </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="7"><h3>Imágenes referenciales:
                    </h3></td>
            </tr>
            <tr>
                <td colspan="7" style="text-align: center">

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>
                        

                    <asp:Panel ID="Panel1" runat="server">
                        <center>
                        <table class="auto-style13">
                            <tr>
                                <td>
                                    <asp:Image ID="img1" runat="server" Alt="No registra" Height="90px" Width="150px" />
                                </td>
                                <td class="auto-style14">
                                    <asp:Image ID="img2" runat="server" Alt="No registra" Height="90px" Width="150px" />
                                </td>
                                <td>
                                    <asp:Image ID="img3" runat="server" Alt="No registra" Height="90px" Width="150px" />
                                </td>
                                <td>
                                    <asp:Image ID="img4" runat="server" Alt="No registra" Height="90px" Width="150px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="IMAGEN Nº 1" Width="100%" />
                                </td>
                                <td class="auto-style14">
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="IMAGEN Nº 2" Width="100%" />
                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="IMAGEN Nº 3" Width="100%" />
                                </td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="IMAGEN Nº 4" Width="100%" />
                                </td>
                            </tr>
                        </table>
                            </center>
                    </asp:Panel>
                    <asp:Image ID="Image1" runat="server" Height="380px" Alt="No registra" class="zoom" Width="600px" />

                          </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            </table>



    
        <br />



    
    </div>
    </form>
</body>
</html>
