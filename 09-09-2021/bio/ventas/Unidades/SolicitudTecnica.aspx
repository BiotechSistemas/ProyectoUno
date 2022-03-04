<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudTecnica.aspx.cs" Inherits="biotech.bio.ventas.Unidades.SolicitudTecnica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
     <style type="text/css">
          body {
  	/*font-family: Verdana;*/
    width:98%;font-family:Verdana;font-size:9px;
}
        .auto-style1 {
            width: 98%;
        }
        
         .auto-style3 {
         }
         .auto-style5 {
             height: 16px;
             width: 100%;
         }
         .auto-style7 {
             width: 10px;
         }
         .auto-style11 {
             height: 16px;
             width: 10px;
         }
         .auto-style12 {
             height: 16px;
             width: 371px;
         }
         .auto-style13 {
         }
         .auto-style18 {
             width: 119px;
         }
         .auto-style19 {
             width: 515px;
         }
        
         .auto-style23 {
             width: 371px;
         }
        
         .auto-style24 {
             width: 180px;
             height: 26px;
         }
         .auto-style25 {
             height: 26px;
         }
         .auto-style26 {
             width: 150px;
             height: 26px;
         }
         .auto-style27 {
             width: 180px;
             height: 16px;
         }
         .auto-style28 {
             height: 16px;
         }
         .auto-style29 {
             width: 150px;
             height: 16px;
         }
        
         .auto-style30 {
             font-size: small;
             color: #990000;
         }
         .auto-style31 {
             font-size: small;
             color: #006600;
         }
         .auto-style32 {
             font-size: x-large;
         }
                 
         .auto-style34 {
             text-align: left;
             font-size: medium;
         }
        
         </style>
    <title>Solicitud Téc.</title>


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
                <td class="auto-style18">
                    <asp:Image ID="Imagebiotech" alt="" runat="server" Height="61px" Width="119px" />
                
                </td>
                <td class="auto-style19">
                    <h1 style="text-align: center">SOLICITUD TÉCNICA :
                        <asp:Label ID="lblSolicitud" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblidSolTec" runat="server" Visible="False"></asp:Label>
                    </h1>
                
                </td>
                <td style="text-align: right" class="auto-style32">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
        <hr />

        <table class="auto-style5">
                      
        <span style="text-align: center">
            <tr>
                <td class="auto-style24">
          
        <span style="text-align: center">
                    <strong>SOLICITA:</strong></span></td>
                <td WIDTH="500" class="auto-style25">
          
        <span style="text-align: center">
                    <asp:Label ID="lblnomsolicita" runat="server"></asp:Label>
                    <asp:Label ID="lblidsolicita" runat="server" Visible="False"></asp:Label>
            </span>
       
                </td>
                <td WIDTH="30" class="auto-style25">
          
                   </td>
                <td class="auto-style26" ><strong>ESTADO:</strong></td>
                <td class="auto-style25" >
          
       
                    <asp:Label ID="lblestadosolicitud" runat="server" style="font-size: large"></asp:Label>
      
                    <asp:Label ID="lblidestado" runat="server" Visible="False"></asp:Label>
                </span>
       
                </td>
            </tr>
            <tr>
                <td class="auto-style27"><strong>UNIDAD:</strong></td>
                <td class="auto-style28">
                    <asp:Label ID="lblUnidadv" runat="server" Visible="False"></asp:Label>
                    <asp:LinkButton ID="lbtnUnidadSol" runat="server" OnClick="lbtnUnidadSol_Click"></asp:LinkButton>
                    <asp:Label ID="lblIdUnidad" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style29"><strong>KM. INGRESO:</strong></td>
                <td class="auto-style12">
          
        <span style="text-align: center">
                    <asp:Label ID="lblKilometraje" runat="server"></asp:Label>
                       
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>TIPO SOLICITUD:</strong></td>
                <td>
                    <asp:Label ID="lbltiposolicitud" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13"><strong>F.SOLICITA:</strong></td>
                <td class="auto-style7">
                      
        <span style="text-align: center">
                    <asp:Label ID="lblfechaSolicita" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="5">
                      
        <span style="text-align: center">
                    <strong>ASUNTO/ DESCRIPCIÓN:</strong><br />
                    <asp:Label ID="lblSolicitudDetalle" runat="server"></asp:Label>
                </td>
            </tr>
        
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
        
        <span style="text-align: center">
            <tr>
                <td colspan="5">
                    DETALLES EJECUTADOS:<asp:GridView ID="gvSolGastos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" OnRowDataBound="gvSolGastos_RowDataBound" ShowFooter="True">
                        <Columns>
                            <asp:BoundField DataField="idsolicitud" HeaderText="idsolicitud" SortExpression="idsolicitud" Visible="False" />
                            <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" Visible="False" />
                            <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                            <asp:BoundField DataField="ORDENCOMPRA" HeaderText="OC" ReadOnly="True" SortExpression="ORDENCOMPRA" />
                            <asp:BoundField DataField="KM" HeaderText="KM" SortExpression="KM" />
                            <asp:BoundField DataField="unidmed" HeaderText="unidmed" SortExpression="unidmed" Visible="False" />
                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" DataFormatString="{0:0,0}">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRECIO" DataFormatString="{0:0,0.00}" HeaderText="PRECIO" SortExpression="PRECIO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" SortExpression="SUBTOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" SortExpression="IGV">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra atención....
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_SolGastos_Sol" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidSolTec" Name="idsolicitud" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Imagen referencial de INGRESO:</td>
                <td>
                    <asp:LinkButton ID="lbtnimagenref" runat="server" OnClick="lbtnimagenref_Click"></asp:LinkButton>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="5">
                    <hr />

                </td>
            </tr>
             <tr>
                <td class="auto-style34" colspan="3"><strong>CONFORMIDAD DEL SOLICITANTE</strong></td>
                <td class="auto-style13" colspan="2">
                      
        <span style="text-align: center">
                    <asp:Panel ID="Panel0" runat="server">
                        <span style="text-align: center">
                        <asp:Image ID="Image7" runat="server" Height="10px" ImageUrl="~/images/Z0.png" Width="10px" />
                        &nbsp;<span class="auto-style30">REGISTRA OBSERVACIÓN</span></span></asp:Panel>
            <asp:Panel ID="Panel1" runat="server">
                            <span style="text-align: center">
                            <asp:Image ID="Image8" runat="server" Height="10px" ImageUrl="~/images/Z1.png" Width="10px" />
                            &nbsp;<span class="auto-style31">REGISTRA CONFORMIDAD</span></span></asp:Panel>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">Imagen refenrecial:</td>
                <td>
                      
        <span style="text-align: center">
                    <asp:LinkButton ID="lbtnimagenrefCONNFIRMACION" runat="server" OnClick="lbtnimagenrefCONNFIRMACION_Click"></asp:LinkButton>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">Km. Finaliza:</td>
                <td class="auto-style23">
                    <asp:Label ID="lbl1klconformidad" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Detalle descripción:</td>
                <td colspan="4">
                    <asp:Label ID="lbl1descripcion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="5">
                      
        <span style="text-align: center">
                    <hr />

                </td>
            </tr>
            <tr>
                <td class="auto-style34" colspan="3"><strong>RESUMEN TÉCNICO</strong></td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="5">
                      
        <span style="text-align: center">
                    <asp:Label ID="lblObservacion" runat="server" ForeColor="#006600" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
        </table>






    </div>




    </form>
            </span>
       
        </body>
</html>
