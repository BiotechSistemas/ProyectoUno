<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="biotech.documento.Factura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
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
            border-radius: 13px 13px 13px 13px;
            -moz-border-radius: 13px 13px 13px 13px;
            -webkit-border-radius: 13px 13px 13px 13px;
            border: 1px solid #000000;
            text-align: center;
        }
        
    
   

    
       
       
        .auto-style3 {
            text-align: center;
        }
        
    
   

    
       
       
        .auto-style5 {
            text-align: right;
        }
                
    
   

    
       
       
        .auto-style6 {
            font-weight: bold;
            background-color: #E9E9E9;
        }
        .auto-style7 {
            background-color: #E9E9E9;
        }
                
    
   

    
       
       
        .auto-style8 {
            height: 15px;
        }
                
    
   
        table {
  /*border-collapse: separate;*/
  border-spacing:  5px ;
}
    
       
       
         .auto-style9 {
             font-weight: bold;
         }
         .auto-style10 {
             text-align: left;
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
    
        <img alt="" src="" /><table class="auto-style1">
            <tr>
                <td WIDTH="130px" >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.jpg" Width="110px" Height="60px" />
                </td>
                <td WIDTH="350px" >
                    <h2 class="auto-style3"><strong style="text-align: center">BIOTEC CORP S.A.C.</strong></h2>
                    <p class="auto-style3"><strong>AV. EL POLO&nbsp; Nro. 401 INT.301 URB. MONTERRICO</strong></p>
                    <p class="auto-style3">(A1 CDRA DEL C.C. EL POLO)
                    LIMA - LIMA - SANTIAGO DE SURCO</p>
                    <br />
                    <p >Av. Ayabaca Nro.1095(pasanndo el Hosp. Regional) ICA-ICA-ICA</p>
                    <p>Car. Piura - Sullana Km.1010 Z.I.1010.5 Piura-Sullana-Sullana</p>
                    <br />
                    <p>ventas@biotechcorp.com.pe / www.biotechcorp.com.pe</p>
                    
                </td>
                <td WIDTH="270">
                    
                    <div class="auto-style2"  style="width:270px">
                        <br /><br />
                        
                        <h2 >RUC: 20601613396</h2>
                       
                       
                       
                        <h1 >
                        <asp:Label ID="lbltipoconprobante" runat="server"></asp:Label>
                        </h1>
                        
                       <h2 >
                        
                           N°
                        
                        <asp:Label ID="lblnumerocomprobante" runat="server"></asp:Label>
                        <asp:Label ID="lblidfactura" runat="server" Visible="False"></asp:Label>
                       </h2>
                            <br />   <br />
                         
                     
                   
                </td>
            </tr>
            </table>
    <div id="muestra"> 
        
        <div class="borde"  style="width:750px">
            <br />
        <table class="auto-style1">
            <tr>
                <td WIDTH="10px" ></td>
                <td WIDTH="80" ></td>
                <td WIDTH="5" ></td>
                <td WIDTH="250" ></td>
                <td WIDTH="80" ></td>
                <td WIDTH="5" ></td>
                <td WIDTH="100" >
                    <asp:Label ID="lblVendedor" runat="server" CssClass="auto-style42" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td><b>RUC</b></td>
                <td class="auto-style54">:</td>
                <td class="auto-style56">
                    <asp:Label ID="lblruc" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
                <td><b>FECHA EMISIÓN</b></td>
                <td class="auto-style54">:</td>
                <td>
                    <asp:Label ID="lblfechaemision" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td><b>RAZÓN SOCIAL</b></td>
                <td class="auto-style55">:</td>
                <td class="auto-style57">
                    <asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
                <td><b>FECHA VENC.</b></td>
                <td class="auto-style55">:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblfechavencimiento" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style8"><b>DIRECCIÓN:</b></td>
                <td class="auto-style8">:</td>
                <td class="auto-style8">
                    <asp:Label ID="lbldireccion" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
                <td class="auto-style8"><b>GUÍA REMISIÓN</b></td>
                <td class="auto-style8">:</td>
                <td class="auto-style8">
                    <asp:Label ID="lblguiarem" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td><b>COND. DE PAGO</b></td>
                <td class="auto-style54">:</td>
                <td class="auto-style56">
                    <asp:Label ID="lblconpago" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
                <td><b>ORDEN COMPRA</b></td>
                <td class="auto-style54">:</td>
                <td>
                    <asp:Label ID="lblordendecompra" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td><b>T.MONEDA</b></td>
                <td class="auto-style10">:</td>
                <td class="auto-style57">
                    <asp:Label ID="lblmoneda" runat="server" CssClass="auto-style42"></asp:Label>
                    <asp:Label ID="lblMonedaSunat" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
           <br />
            </div><br />
         
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="750px" OnRowDataBound="GridView1_RowDataBound" BorderStyle="Solid" GridLines="Horizontal" >
                            <Columns>
                                <asp:BoundField DataField="ITEM" ReadOnly="True" SortExpression="ITEM" Visible="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="CANT" HeaderText="Cant" SortExpression="CANT" >
                                <HeaderStyle Width="30px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>

                                 <asp:BoundField DataField="BS" HeaderText="B/S" SortExpression="BS" >
                                <HeaderStyle Width="40px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="UNID" HeaderText="Unid" SortExpression="UNID" >
                                <HeaderStyle Width="55px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CODPRO" HeaderText="Cod" SortExpression="CODPRO" >
                                <HeaderStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="Descripción" SortExpression="DESCRIPCION" ReadOnly="True" />
                                <asp:BoundField DataField="PV" HeaderText="V.Unitario" SortExpression="PV" DataFormatString="{0:0,0.00}" >
                                <HeaderStyle Width="60px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" Visible="False" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DSCTO" HeaderText="DSCTO" SortExpression="DSCTO" DataFormatString="{0:0,0.00}" Visible="False" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" Visible="False" />

                                 <asp:BoundField DataField="DESCUENTO" HeaderText="Descuento" SortExpression="DESCUENTO" DataFormatString="{0:0,0.00}" >
                                <HeaderStyle Width="60px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                                <HeaderStyle Width="60px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="IMPORTE" HeaderText="Importe" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                                <HeaderStyle Width="60px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>

                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                            <RowStyle BorderColor="#CCCCCC" BorderStyle="None" />
                        </asp:GridView> 
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_FacturaListarPedidos" DeleteCommand="DELETE FROM [FacturacionDetalle] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO [FacturacionDetalle] ([idDetalle], [idfactura], [idproducto], [precioVenta], [cantidad], [subtotal], [idPedido], [dsto]) VALUES (@idDetalle, @idfactura, @idproducto, @precioVenta, @cantidad, @subtotal, @idPedido, @dsto)" UpdateCommand="UPDATE [FacturacionDetalle] SET [idfactura] = @idfactura, [idproducto] = @idproducto, [precioVenta] = @precioVenta, [cantidad] = @cantidad, [subtotal] = @subtotal, [idPedido] = @idPedido, [dsto] = @dsto WHERE [idDetalle] = @idDetalle" SelectCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:Parameter Name="idDetalle" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="idDetalle" Type="Int32" />
                                <asp:Parameter Name="idfactura" Type="Int32" />
                                <asp:Parameter Name="idproducto" Type="String" />
                                <asp:Parameter Name="precioVenta" Type="Decimal" />
                                <asp:Parameter Name="cantidad" Type="Int32" />
                                <asp:Parameter Name="subtotal" Type="Decimal" />
                                <asp:Parameter Name="idPedido" Type="Int32" />
                                <asp:Parameter Name="dsto" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidfactura" Name="idfact" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="idfactura" Type="Int32" />
                                <asp:Parameter Name="idproducto" Type="String" />
                                <asp:Parameter Name="precioVenta" Type="Decimal" />
                                <asp:Parameter Name="cantidad" Type="Int32" />
                                <asp:Parameter Name="subtotal" Type="Decimal" />
                                <asp:Parameter Name="idPedido" Type="Int32" />
                                <asp:Parameter Name="dsto" Type="Decimal" />
                                <asp:Parameter Name="idDetalle" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>



        </div>

        <br />
        <asp:Label ID="lblnombredoc" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblruta" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <img alt="" src="" style="height: 40px; width: 76px" /><br />
        <br />
        <br />
        <br /><br />
        <br />

        <div class="bordeCUADRA"  style="width:750px">
        <table class="auto-style1">
            <tr>
                <td >
                    *
                    <asp:Label ID="lblitems" runat="server" CssClass="auto-style42"></asp:Label>
                &nbsp;Items.</td>
                <td></td>
                <td ></td>
                <td class="auto-style6" >OP. GRAVADA</td>
                <td ></td>
                <td class="auto-style5" >
                    <asp:Label ID="lblimportebase" runat="server" CssClass="auto-style42" Visible="False"></asp:Label>
                    <asp:Label ID="lblimportebase0" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            <tr>
                <td ><b></b></td>
                <td >&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6"> OP. INAFECTA</td>
                <td >&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="0.00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td ><b>BENEFICIARIO:</b></td>
                <td>
                    BIOTECH CORP S.A.C.</td>
                <td</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">OP. EXPORTACIÓN</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    0.00</td>
            </tr>
            <tr>
                <td ><b></b></td>
                <td></td>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    OP. GRATUITA</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    0.00</td>
            </tr>
            <tr>
                <td><b>CUENTA CORRIENTE:</b></td>
                <td>
                    BCP SOLES CTA. CTE.194-2388777-0-58</td>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    TOT. DSCTO</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    0.00</td>
            </tr>
            <tr>
                <td ><b></b></td>
                <td>
                    CCI. 002-194-002388777057-96</td>
                <td></td>
                <td class="auto-style7">
                    <strong>I.S.C.</strong></td>
                <td >&nbsp;</td>
                <td class="auto-style5" >
                    0.00</td>
            </tr>
            <tr>
                <td ><b></b></td>
                <td>
                    BCP DOLARES CTA. CTE. 194-2374371-1-54</td>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    I.G.V.(18.0%)</td>
                <td >&nbsp;</td>
                <td class="auto-style5" >
                    <asp:Label ID="lbligv" runat="server" CssClass="auto-style42" Visible="False"></asp:Label>
                    <asp:Label ID="lbligv0" runat="server" CssClass="auto-style42"></asp:Label>
                </td>
            </tr>
            <tr>
                <td ><b></b></td>
                <td>
                    CCI. 002-194-002374371154-93</td>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    OTROS CARGOS</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    0.00</td>
            </tr>
            <tr>
                <td><b>COMENTARIOS LEGALES:</b></td>
                <td>
                    &nbsp;</td>
                <td >&nbsp;</td>
                <td class="auto-style6" >
                    OTROS TRIBUTOS</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    0.00</td>
            </tr>
            <tr>
                <td><b>OBSERVACIONES:</b></td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6" >
                    IMPORTE TOTAL</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblimportetotal" runat="server" Visible="False" ></asp:Label>
                    <asp:Label ID="lblimportetotal0" runat="server" ></asp:Label>
                </td>
            </tr>
            </table>
            </div>

&nbsp;<table class="auto-style1">
            <tr>
               
                <td valign=bottom class="auto-style10" colspan="3">






                    <b>SON: </b><asp:Label ID="lblImporteEscritura" runat="server" CssClass="auto-style9"></asp:Label>
                    &nbsp;</td>
              
            </tr>
            
            <tr>
               
                <td valign=bottom class="auto-style5">






                    <asp:Panel ID="PanelbOTON" runat="server" Visible="False">

                         <input id="btnImprimir" class="button" name="btnImprimir" onclick="imprime()" style="width:200px; height:50px" type="button" value="IMPRIMIR"> </input>
                    </asp:Panel>
                </td>
              
                <td valign=bottom class="auto-style5">Representación impresa de la Factura Electrónica 
                    <br />
                    Autorizado mediante resolución N° 0340050005820/SUNAT<br />
                    Consulte su documento electrónico en:
                    <asp:LinkButton ID="LinkButton1" runat="server">www.biotechcorp.com.pe/consulta</asp:LinkButton>
                    <br />
                    <asp:Label ID="lblcadenaQr" runat="server" Visible="False"></asp:Label>
                </td>
                <td WIDTH="100"  style="text-align: right"  >
                    <asp:Image ID="imagenQR" runat="server" Height="80px" Width="80px" />
                </td>
               
            </tr>
            
        </table>

       

        <asp:Panel ID="Panel1" runat="server" BackColor="#E6E6E6" Width="750px">
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>E-MAIL:</td>
                    <td>
                        <asp:TextBox ID="txtcorreo" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>IMPORT. RETENIDO:
                        <asp:Label ID="lblimporteRetenido" runat="server"></asp:Label>
                        &nbsp;IMPORT. DISPONIBLE:
                        <asp:Label ID="lblimporteDisponible" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="btcrear1" runat="server" Height="30px" OnClick="btcrear1_Click" Text="CREAR XML" Width="150px" Visible="False" />
                        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#000001" BorderWidth="1px" ForeColor="#000001" Height="28px" ImageUrl="~/images/btSunat.jpg" OnClick="ImageButton1_Click" Width="150px" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="bt_rptaSunat" runat="server" Enabled="False" Height="30px" OnClick="bt_rptaSunat_Click" Text="RESPUESTA SUNAT" Width="150px" />
                    </td>
                    <td style="text-align: right">
                        <asp:Button ID="btOcultarcontroles" runat="server" Height="40px" OnClick="btOcultarcontroles_Click" Text="IMPRIMIR" Visible="False" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFEA" Height="66px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
