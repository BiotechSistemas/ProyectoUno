<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuiaRemision.aspx.cs" Inherits="biotech.documento.GuiaRemision" %>

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
             height: 203px;
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
        
    
   

    
       
       
        table {
  /*border-collapse: separate;*/
  border-spacing:  5px ;
}
    
       
       
         .auto-style4 {
             width: 100%;
         }
    
       
       
         .auto-style5 {
             text-align: right;
         }
    
       
       
         .auto-style6 {
             text-align: center;
             background-color: #e2dfdf;
         }
    
       
       
         #btnImprimir {
             height: 42px;
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
                       
                       
                       
                        <h2 >
                            GUÍA DE REMISIÓN</h2>
                        <h2 >
                            &nbsp;ELECTRÓNICA</h2>                       
                       <h2 >                     
                        <asp:Label ID="lblGrupoGuia" runat="server"></asp:Label>
                        &nbsp;N°                       
                        <asp:Label ID="lblserieGuia" runat="server"></asp:Label>
                       </h2>
                            <br />   <br />
   
                </td>
            </tr>
            </table>

          <br /> <br />
        <div class="borde"  style="width:750px">
            <table cellpadding="2" class="auto-style4">
                <tr>
                    <td WIDTH="10">&nbsp;</td>
                    <td WIDTH="150"><b>FECHA DE TRASLADO:</b></td>
                    <td WIDTH="5"><b>:</b></td>
                    <td WIDTH="550">
                        <asp:Label ID="lblFechatraslado" runat="server"></asp:Label>
                        <asp:Label ID="lblIdGuia" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnumguia" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>RUC</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblruc_cliente" runat="server"></asp:Label>
                        <asp:Label ID="lbltpdoc_cliente" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>DESTINATARIO</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblrazonsocial_cliente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>RUC</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblruc_Transportista" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>TRANSPORTISTA</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lbl_razonsocial_transportista" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>N° COD. IDENT.</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblndocidentidad" runat="server">-</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>PROVEEDOR</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblproveedor" runat="server">-</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>PUNTO DE PARTIDA</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblDirecpuntoPartida_emisor" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="lblDetUbigeoPartida" runat="server"></asp:Label>
&nbsp;
                        <asp:Label ID="lblUbigeoPartida" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>PUNTO DE LLEGADA</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblDirecpuntoLlegada_cliente" runat="server"></asp:Label>
                        <asp:Label ID="lblDetUbigeoLlegada" runat="server"></asp:Label>
                        <asp:Label ID="lblubigeoLlegada" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>TIPO DE TRANSPORTE</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblTipoTransporte_emisor" runat="server"></asp:Label>
                        <asp:Label ID="lblIdTpTransporte" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><b>MOTIVO DE TRASLADO</b></td>
                    <td><b>:</b></td>
                    <td>
                        <asp:Label ID="lblmotivotraslado" runat="server"></asp:Label>
                        <asp:Label ID="lblidmotivotraslado" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                </table>
            </div>
        <br />
        <strong>  DATOS DEL(LOS) BIEN(ES) A TRANSPORTAR:</strong> 

        <asp:GridView ID="GridView1" runat="server" Width="750px" BorderStyle="Solid" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSourceDetalle" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                <asp:BoundField DataField="Row" HeaderText="Nro." ReadOnly="True" SortExpression="Row" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CODPRODUCTO" HeaderText="Código" SortExpression="CODPRODUCTO" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PRODUCTO" HeaderText="Descripción" ReadOnly="True" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="UNDMED" HeaderText="Und. de Medida" SortExpression="UNDMED" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTIDAD" HeaderText="Cantidad" SortExpression="CANTIDAD" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="LightGray" BorderStyle="None" Height="25px" />
            <RowStyle BorderStyle="None" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_detalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblIdGuia" Name="idguia" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                <td WIDTH="550">&nbsp;</td>
                <td WIDTH="100" class="auto-style6">Peso Total (Kg)</td>
                <td WIDTH="100">
                    <asp:Label ID="lblpesototal" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td WIDTH="350"><strong>Datos del(los) Vehículo(s)</strong></td>
                <td WIDTH="50">&nbsp;</td>
                <td WIDTH="350"><strong>Datos del(los) Conductor(es)</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvVehiculo" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVehi">
                        <Columns>
                            <asp:BoundField DataField="ITEM" HeaderText="Item" ReadOnly="True" SortExpression="ITEM">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idtransporte" HeaderText="Nro de Placa" SortExpression="idtransporte">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tpdocConductor" HeaderText="tpdocConductor" SortExpression="tpdocConductor" Visible="False" />
                            <asp:BoundField DataField="idConductor" HeaderText="idConductor" SortExpression="idConductor" Visible="False" />
                        </Columns>
                        <EmptyDataTemplate>
                            No especifica.
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceVehi" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiaDatosTransporta" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIdGuia" Name="idguia" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="gvConductores" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVehi">
                        <Columns>
                            <asp:BoundField DataField="ITEM" HeaderText="Item" ReadOnly="True" SortExpression="ITEM">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idtransporte" HeaderText="idtransporte" SortExpression="idtransporte" Visible="False" />
                            <asp:BoundField DataField="tpdocConductor" HeaderText="Tipo Documento" SortExpression="tpdocConductor">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idConductor" HeaderText="Nro Documento" SortExpression="idConductor">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No especifica.
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblplaca" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lbltpdoc_conductor" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblncodconductor" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">___________________<br />
                    DESPACHADO POR</td>
                <td>&nbsp;</td>
                <td style="text-align: center">__________________<br />
                    RECIBIDO POR</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" ><strong>OBSERVACIONES :&nbsp;</strong>&nbsp;&nbsp;
                    <asp:Label ID="lblObservaciones" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" >&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" > <hr /></td>
            </tr>
        </table>
            <br />
            <asp:Panel ID="PanelFacturacionElectronica" runat="server" Visible="False">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" valign="bottom">
                            <asp:Panel ID="PanelbOTON" runat="server">
                                <input id="btnImprimir" class="button" name="btnImprimir" onclick="imprime()" style="width:200px; height:50px" type="button" value="IMPRIMIR"> </input>
                            </asp:Panel>
                        </td>
                        <td class="auto-style5" valign="bottom">Representación impresa de la Guía de Remisión Electrónica
                            <br />
                            Autorizado mediante resolución N° 0340050005820/SUNAT<br /> Consulte su documento electrónico en:
                            <asp:LinkButton ID="LinkButton1" runat="server">www.biotechcorp.com.pe/consulta</asp:LinkButton>
                            <br />
                            <asp:Label ID="lblcadenaQr" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td style="text-align: right" width="100">
                            <asp:Image ID="imagenQR" runat="server" Height="80px" Width="80px" />
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="Panel1" runat="server" BackColor="#E6E6E6" Width="750px">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" BorderWidth="1px" Height="40px" ImageUrl="~/images/btSunat.jpg" OnClick="ImageButton1_Click" Width="250px" />
                            </td>
                            <td>&nbsp;</td>
                            <td style="text-align: right">
                                <asp:Button ID="Button6" runat="server" Height="40px" OnClick="Button6_Click1" Text="IMPRIMIR" Visible="False" Width="200px" />
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="lblenviadoAnalisis" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFE6" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </asp:Panel>
                <br />
            </asp:Panel>

            </div>

    </div>
    </form>
</body>
</html>
