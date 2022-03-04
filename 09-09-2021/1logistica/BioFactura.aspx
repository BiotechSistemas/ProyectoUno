<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BioFactura.aspx.cs" Inherits="biotech._1logistica.BioFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

   

    <title>FACTURA</title>
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
    
       
       
    </style>


     <script type="text/javascript">
         function imprSelec(muestra)
         { var ficha = document.getElementById(muestra); var ventimp = window.open(' ', 'popimpr'); ventimp.document.write(ficha.innerHTML); ventimp.document.close(); ventimp.print(); ventimp.close(); }
</script>


</head>
<body>
    <form id="form1" runat="server">
   
    
        <br />
    <div id="muestra"> 
        
        <table class="auto-style1">
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
         <br /> <br />
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
                <td><b></b></td>
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
        <br />
        <asp:Label ID="lblnombredoc" runat="server"></asp:Label>
        <br />
        <br /><br />
        <br /><br />
        <br /><br />
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
                <td colspan="3" style="width: 350px; font-weight: 700;">SON:<asp:Label ID="lblImporteEscritura" runat="server" style="font-weight: 700"></asp:Label>
                    .</td>
               
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Representación impresa de la Factura Electrónica</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Autorizado mediante resolución N° 0340050005820/SUNAT</td>
                <td>&nbsp;</td>
                
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="636px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btcrear1" runat="server" OnClick="btcrear1_Click" Text="CREAR XML" />
            <asp:Button ID="btFirmar" runat="server" OnClick="btFirmar_Click" Text="FIRMAR XML" />
            <asp:Button ID="bt_enviarSunat" runat="server" OnClick="bt_enviarSunat_Click" Text="EMITIR SUNAT" />
            <asp:Button ID="bt_rptaSunat" runat="server" OnClick="bt_rptaSunat_Click" Text="RESPUESTA SUNAT" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:Panel ID="pDetalle" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style69" colspan="6">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style47" style="text-align: left">&nbsp;</td>
                    <td class="auto-style72"><strong style="text-align: right">IMPORTE RETENIDO:</strong></td>
                    <td class="auto-style73" style="text-align: center">
                        <asp:Label ID="lblimporteRetenido" runat="server" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style21">IMPORTE<br /> DISPONIBLE:</td>
                    <td class="auto-style20">
                        <asp:Label ID="lblimporteDisponible" runat="server" CssClass="auto-style42" style="font-weight: 700; font-size: x-large;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style74">&nbsp;</td>
                    <td class="auto-style64">&nbsp;</td>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style45">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style68"><a href="javascript:imprSelec('muestra')">Imprimir Tabla</a></td>
                    <td class="auto-style74">&nbsp;</td>
                    <td class="auto-style64" colspan="3"><a href="javascript:window.print();" style="text-align: right">IMPRIMIR</a></td>
                    <td class="auto-style45"><a href="Javascript:window.close()">Cerrar</a></td>
                </tr>
            </table>
            <br />
            <span class="auto-style42"><strong>SEGUIMIENTO DE COBRANZA / COMPROMISO DE PAGO </strong></span>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceComentarios" GridLines="Horizontal" style="font-size: x-small" Width="750px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="COD" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="IdFactura" HeaderText="IdFactura" SortExpression="IdFactura" Visible="False" />
                    <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="comentario" HeaderText="CONCEPTO" SortExpression="comentario" />
                    <asp:BoundField DataField="importe" DataFormatString="{0:0,0.00}" HeaderText="IMP.PAGADO" SortExpression="importe">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fechasistema" HeaderText="fechasistema" SortExpression="fechasistema" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    No registra...
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceComentarios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from Facturacion_comentario where IdFactura = @idfactura order by id desc">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidfactura" Name="idfactura" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <span class="auto-style42"><strong>ADELANTO O NOTA DE CREDITO</strong></span><asp:GridView ID="gvNotaCredito" runat="server" AutoGenerateColumns="False" DataKeyNames="idnodcred" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="font-size: x-small" Width="750px">
                <Columns>
                    <asp:BoundField DataField="idnodcred" HeaderText="idnodcred" ReadOnly="True" SortExpression="idnodcred" Visible="False" />
                    <asp:BoundField DataField="notacredito" HeaderText="NOTA CRED." SortExpression="notacredito">
                    <HeaderStyle HorizontalAlign="Center" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                    <asp:BoundField DataField="factura" HeaderText="FACTURA" SortExpression="factura" />
                    <asp:BoundField DataField="motivo" HeaderText="ASUNTO" SortExpression="motivo" />
                    <asp:BoundField DataField="importe" HeaderText="IMP.PAGADO" SortExpression="importe" />
                </Columns>
                <EmptyDataTemplate>
                    No registra...
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [NotaCredito] WHERE ([idfactura] = @idfactura)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidfactura" Name="idfactura" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
&nbsp;<br />
       
                    
    </form>
</body>
</html>
