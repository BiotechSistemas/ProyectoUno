<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdenCotizacion.aspx.cs" Inherits="biotech.bio.ventas.compras.OrdenCotizacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

      

        .auto-style1 {
            width: 98%;
        }
        .auto-style3 {
            width: 119px;
        }
        .auto-style9 {
            height: 23px;
            width: 44%;
        }
        .auto-style28 {
            font-weight: bold;
            height: 23px;
            width: 130px;
        }

        .auto-style21 {
            width: 42%;
            text-align: right;
        }
        .auto-style26 {
            height: 30px;
        }
        .auto-style27 {
            width: 85px;
            height: 23px;
        }
                
       body {
  	/*font-family: Verdana;*/
    width:98%;font-family:Verdana;font-size:9px;
}
       
        .auto-style51 {
            width: 130px;
            height: 17px;
        }
        .auto-style52 {
            width: 40%;
            height: 17px;
        }
     

     
        .auto-style53 {
            width: 42%;
            height: 16px;
        }
             

     
        .auto-style55 {
            width: 40%;
        }
        .auto-style56 {
            width: 170px;
        }
        .auto-style57 {
            height: 23px;
            width: 40%;
        }
        .auto-style60 {
            font-weight: bold;
            width: 135px;
        }
        .auto-style61 {
            width: 135px;
        }
        .auto-style62 {
            width: 135px;
            height: 16px;
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
    <form id="form2" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Imagebiotech" runat="server" Height="61px" ImageUrl="~/images/logobiotech.jpg" Width="119px" />
                
                </td>
                <td style="text-align: right">
                    <asp:Label ID="lblfechareg" runat="server"></asp:Label>
                   <h2><asp:Label ID="lblestadoJef" runat="server"></asp:Label></h2> 
                </td>
            </tr>
        </table>
        <strong style="text-align: center">
        <hr />
        <div>
            <u><h1>COTIZACIÓN:
                <asp:Label ID="lblcot" runat="server"></asp:Label>
                <asp:Label ID="lblidcot" runat="server" Visible="False"></asp:Label>
            </h1>
            </u>
        </div>
        </strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style60">PROVEEDOR:</td>
                <td colspan="3">
                    <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style60">RUC/DNI:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblruc" runat="server"></asp:Label>
                </td>
                <td class="auto-style56" ><strong>F. EMISIÓN:</strong></td>
                <td class="auto-style57">
                    <asp:Label ID="lblFechaExpira" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblfCotizacion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style60">DIRECCIÓN:</td>
                <td colspan="3">
                    <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style60">CONTACTO:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblcontacto" runat="server"></asp:Label>
                </td>
                <td class="auto-style56" ><strong>TELEFONO:</strong></td>
                <td class="auto-style57">
                    <asp:Label ID="lbltelefono" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">ZONA:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblzona" runat="server"></asp:Label>
                </td>
                <td class="auto-style56" ><strong>MONEDA:</strong></td>
                <td class="auto-style57">
                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    Detalle de productos / servicios:</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                   <asp:GridView ID="gvDetcotselec" class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,COD,DESCRIPCION,CANT,PUNIT" DataSourceID="SqlDataSourceDetCotSelec" Font-Size="X-Small" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                                            <asp:BoundField DataField="idCompraCot" HeaderText="idCompraCot" SortExpression="idCompraCot" Visible="False" />
                                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PUNIT" HeaderText="P.UNIT" SortExpression="PUNIT" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DSCTO" HeaderText="DSCTO" SortExpression="DSCTO" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            Seleccionar cotización...<br />
                                        </EmptyDataTemplate>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceDetCotSelec" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasCot_ListDetalle" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidcot" Name="idcot" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource></td>
            </tr>
            <tr>
                <td class="auto-style61">#
                    <asp:Label ID="lblnumregistros" runat="server"></asp:Label>
                &nbsp;(items)</td>
                <td class="auto-style55">
                    &nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style21" rowspan="4">Valor de venta:&nbsp;
                    <asp:Label ID="lblsubtotal" runat="server"></asp:Label>
                    <br />
                    Impuesto 18% :
                    <asp:Label ID="lbligv" runat="server" ForeColor="Maroon"></asp:Label>
                    <br />
                    Total:&nbsp;
                    <asp:Label ID="lbltotal" runat="server" style="font-weight: 450"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style62">C. de Costo:</td>
                <td class="auto-style53">
                    <asp:Label ID="lblIdCentroCosto" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblCentrocosto" runat="server"></asp:Label>
                </td>
                <td class="auto-style56"></td>
            </tr>
            <tr>
                <td class="auto-style61"><strong>ASUNTO:</strong></td>
                <td class="auto-style14" colspan="2" rowspan="2" valign=top>
                    <asp:Label ID="lblasunto" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style62"></td>
            </tr>
            <asp:Panel ID="PUNIDAD" runat="server">
            <tr>
                <td class="auto-style26"><strong>UNIDAD:</strong></td>
                <td class="auto-style13">
                    <asp:Label ID="lblplaca" runat="server"></asp:Label>
                    <asp:Label ID="lblidunidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style27"><strong>ESTADO:</strong></td>
                <td class="auto-style9">
                    <asp:Label ID="lblestadocot" runat="server"></asp:Label>
                </td>
            </tr>
                </asp:Panel>
            <tr>
                <td class="auto-style61"><strong>&nbsp;DETALLE:</strong></td>
                <td colspan="3">
                    <asp:Label ID="lblDetUObservación" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">&nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2"><strong>CONDICIÓN DE COMPRA</strong></td>
                <td class="auto-style56">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style61">Forma de pago:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                </td>
                <td class="auto-style56">Tipo :</td>
                <td >
                    <asp:Label ID="lbltipo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style61">Detalle :</td>
                <td class="auto-style55">
                    <asp:Label ID="lblDetCondicion" runat="server"></asp:Label>
                </td>
                <td class="auto-style56"></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style61">F. estimada de pago:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblFechaExpira0" runat="server"></asp:Label>
                </td>
                <td class="auto-style56">Doc. Proveedor:</td>
                <td >
                    <asp:LinkButton ID="lbtadjunto" runat="server" OnClick="lbtadjunto_Click"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style61">&nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style12" colspan="2"><strong>DET. REGISTRO</strong></td>
                <td class="auto-style56">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
          
             <tr>
                <td class="auto-style61">Solicitado por:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblsolicitadopor" runat="server"></asp:Label>
                </td>
                <td class="auto-style56">Autorizado por:</td>
                <td class="auto-style55">
                    <asp:Label ID="lblautorizadopor" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="auto-style51">Elabora por:</td>
                <td class="auto-style52">
                    <asp:Label ID="lblelaboradopor" runat="server"></asp:Label>
                </td>
                <td class="auto-style56">F.Registrada:</td>
                <td >
                    <asp:Label ID="lblfReg" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style61">&nbsp;</td>
                <td class="auto-style55">
                    &nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style61">
                    <asp:Label ID="lblestadoJef2" runat="server" Font-Bold="True"></asp:Label>
                    :</td>
                <td class="auto-style29" colspan="3">
                    <asp:Label ID="lblobservacion" runat="server" ForeColor="Maroon"></asp:Label>
                    -<asp:Label ID="lblidAprueba" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>

               </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    </form>
   <input name="btnImprimir" id="btnImprimir" type="button" class="button" value="IMPRIMIR" onClick="imprime()">
</body>
</html>
