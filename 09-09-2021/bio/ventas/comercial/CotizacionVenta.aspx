<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CotizacionVenta.aspx.cs" Inherits="biotech.bio.ventas.comercial.CotizacionVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
     <style>
      body {
    font-family: italic;
  
}

          blockquote1 {
      padding: 3px 10px;
      border: Black 1px solid;
      border-radius: 10px;
      text-align: center;
             width: 350px;
         }
    blockquote {
      padding: 3px 10px;
      border: Black 1px solid;
      border-radius: 10px;
      text-align: center;
           
         }
  </style>
    <style type="text/css">
        .auto-style1 {
            width: 818px;
        }
     
        .auto-style2 {
            font-size: x-large;
        }
     
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: xx-large;
        }
     
        .auto-style6 {
        }
       
     
    p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
       
     
        .auto-style7 {
        }
        .auto-style12 {
        }
        .auto-style13 {
        }
        .auto-style14 {
        }
        .auto-style15 {
            width: 211px;
        }
       
     
        .auto-style16 {
            color: #808080;
        }
       
     
        .auto-style17 {
            width: 800px;
            border: 1px solid #808080;
        }
        .auto-style19 {
            width: 120px;
            font-weight: bold;
        }
        .auto-style20 {
            font-weight: bold;
        }
       
     
        .auto-style21 {
            width: 211px;
            text-align: right;
        }
       
     
    *{box-sizing:border-box}
    *{text-shadow:none!important;box-shadow:none!important}
       
     
        </style>
     <script type="text/javascript">
         function imprime() {
             //desaparece el boton
             document.getElementById("btnImprimir").style.display = 'none'
             //se imprime la pagina
             document.getElementById("btnValidar").style.display = 'none'

             window.print()
             //reaparece el boton
             document.getElementById("btnImprimir").style.display = 'inline'




         }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        



        <asp:Panel ID="Panel1" runat="server" Height="76px" Visible="False">
            <table class="auto-style4">
                <tr valign=top >
                    <td valign=top>
                        <asp:Label ID="lblidValidacion" runat="server" Visible="False"></asp:Label>
                        <asp:TextBox ID="txtCodValidacion" type="number" runat="server" Height="55px" placeholder="Codigo" ToolTip="Ingresar codigo" Width="400px" Font-Size="X-Large" MaxLength="5"></asp:TextBox>
                        <br />
                    </td>
                    <td valign="top">
                        <asp:ImageButton ID="ibtnAprobado" runat="server" Height="55px" ImageUrl="~/images/novaFalse.png" ToolTip="Aprobar pedido" Width="70px" OnClick="ibtnAprobado_Click1" />
                    </td>
                    <td valign="top">
                        <asp:ImageButton ID="ibtnobservado" runat="server" Height="55px" ImageUrl="~/images/novaTrue.png" ToolTip="Observar pedido" Width="70px" OnClick="ibtnobservado_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            <br />  <br />  <br />
        </asp:Panel>
    
       
    
          
    
    
       
    
          
    
        <table class="auto-style1">
            <tr>
                <td colspan="3" rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/images/cot-titulo.jpg" Width="500px" />
                </td>
                
                <td class="auto-style2" colspan="2" style="text-align: center">
                  
                        <span class="auto-style3">RUC: 20601613396<br />
                        </span>
                        <span class="auto-style4"><strong>COTIZACIÓN
                    </strong></span>
                        <br class="auto-style2" />
                        Nº 
                        <asp:Label ID="lblncotizacion" runat="server"></asp:Label>
              
                    </td>

                   
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="btnValidar" runat="server" BackColor="#D1F4CC" Height="40px" Text="VALIDAR" Width="100px" OnClick="btnValidar_Click1" />
                    <input id="btnImprimir" class="button" name="btnImprimir" onclick="imprime()" type="button" value="IMPRIMIR" />
                   
                </td>
            </tr>
            </table> 

        
             <table class="auto-style17">
                 <tr>
                     <td> 

        
             <table class="auto-style1">
            <tr>
                <td class="auto-style19">CLIENTE:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblcliente" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style20">FECHA:</td>
                <td class="auto-style15">
                    <asp:Label ID="lblFecha" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">RUC:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblruc" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style20">MAIL:</td>
                <td class="auto-style15">
                    <asp:Label ID="lblmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">CONTACTO:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblcontacto" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style20">TELÉFONO:</td>
                <td class="auto-style15">
                    <asp:Label ID="lbltelefono" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">DIRECCIÓN:</td>
                <td class="auto-style13" colspan="4">
                    <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                    <asp:Label ID="lblidContacto" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
                
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="lblidcotv" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
                
            <tr>
                <td class="auto-style19">FORMA PAGO:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblformapago" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14"><strong>MONEDA:</strong></td>
                <td class="auto-style15">
                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">F. ENTREGA:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblfechaentrega" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">L. ENTREGA:</td>
                <td class="auto-style13">
                    <asp:Label ID="lbllugarentrega" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
                   </table>
         
                     </td>
                 </tr>
        </table>
         
             <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblreferencia" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">Por medio de la presente enviamos cotización por productos de su interés:</td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" AutoGenerateColumns="False" DataKeyNames="idDetalle" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                            <asp:BoundField DataField="idcotv" HeaderText="idcotv" SortExpression="idcotv" Visible="False" />
                            <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" />
                            <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                            <asp:BoundField DataField="cantidad" HeaderText="CANTIDAD" SortExpression="cantidad">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="precio" DataFormatString="{0:0,0.00}" HeaderText="P. UNITARIO" SortExpression="precio">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
                            <asp:BoundField DataField="SUBTT" HeaderText="IMPORTE" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="descuento" HeaderText="DCTO %" SortExpression="descuento" Visible="False" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                            <asp:ImageField DataImageUrlField="estado" DataImageUrlFormatString="~/images/foco{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra productos a cotizar...
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#EFEFEF" Font-Bold="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_Detalle" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidcotv" Name="idcotv" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Observaciones</strong>:</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14" align=right>Sub. Total:</td>
                <td class="auto-style21">
                    <asp:Label ID="lblbase" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td valign=top class="auto-style6" colspan="2" rowspan="2">
                    <asp:Label ID="lblobservaciones" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14" align=right >IGV:(18%)</td>
                <td class="auto-style21">
                    <asp:Label ID="lbligv" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14" align=right>Total:</td>
                <td class="auto-style21">
                    <asp:Label ID="lbltotal" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="5">
                    <p >
                        Esperando que el contenido de la presente sea de su utilidad, me pongo a sus ordenes para cualquier duda o aclaración al respecto.</p>
                    <p >
                        Atte.<o:p></o:p></p>
                </td>
            </tr>

             <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="lblnombreAsesor" runat="server" Font-Bold="True" CssClass="auto-style16"></asp:Label>
                    <br />
                    <asp:Label ID="lblcargoAsesor" runat="server" CssClass="auto-style16"></asp:Label>
                    <span class="auto-style16">
                    <br />
                    Zona: </span>
                    <asp:Label ID="lblzonaAsesor" runat="server" CssClass="auto-style16"></asp:Label>
                    <br />
                    <span class="auto-style16">Movil: </span> <asp:Label ID="lbltelefonoasesor" runat="server" CssClass="auto-style16"></asp:Label>
                    <br />
                    <asp:Label ID="lblmailAsesor" runat="server" CssClass="auto-style16"></asp:Label>
                 </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14" colspan="2">
                    <asp:Image ID="Image3" runat="server" Width="200px" />
                 </td>
            </tr>

             <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="lblcorreosEncargados" runat="server" Visible="False"></asp:Label>
                 </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
            </tr>

             <tr>
                <td class="auto-style12" colspan="2">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/cot-footer.jpg" Width="800px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
