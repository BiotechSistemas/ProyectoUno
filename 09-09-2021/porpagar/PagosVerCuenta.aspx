<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagosVerCuenta.aspx.cs" Inherits="biotech.porpagar.PagosVerCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Ctaxp Biotech</title>
  

     <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
    
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
           
            text-align: right;
        }
        .auto-style5 {
           
            text-decoration: underline;
        }
        .auto-style6 {
            
            text-align: right;
        }
    </style>
</head>
<body>

       <script src="../bio/js/sweetalert.min.js" type="text/javascript"></script>
       <link href="../bio/css/sweetalert.css" rel="stylesheet" type="text/css" />
    
    <form id="form1" runat="server">


        <div class="container">
            <div class="row-fluid">
			<div class="col-md-12">
  <h2><span class="glyphicon glyphicon-edit"></span> DETALLE DE CUENTA CP-<asp:Label ID="lblidPaga" runat="server" Text="3"></asp:Label>
                </h2>
  
            <div class="form-group row">
				                                  <table class="auto-style1">
                                                      <tr>
                                                          <td WIDTH="150"><strong>PROVEDOR:</strong></td>
                                                          <td WIDTH="100" colspan="3">
                                                              <asp:Label ID="lblidproveedor" runat="server" Visible="False"></asp:Label>
                                                              <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                                                              &nbsp;/ <asp:Label ID="lblrucproveedor" runat="server"></asp:Label>
                                                          </td>
                                                          <td WIDTH="100">
                                                              &nbsp;</td>
                                                          <td WIDTH="50"><strong>TITULAR</strong></td>
                                                          <td WIDTH="100">
                                                              <asp:Label ID="lbltitular" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td WIDTH="30"><strong>ASUNTO:</strong></td>
                                                          <td WIDTH="100" colspan="6">
                                                              <asp:Label ID="lblasunto" runat="server"></asp:Label>
                                                              &nbsp;</td>
                                                      </tr>
                                                      <tr>
                                                          <td ><strong>EMISIÓN:</strong><br />
                                                          </td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblFecha" runat="server"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">&nbsp;</td>
                                                          <td class="auto-style6">
                                                              &nbsp;</td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2"><strong>N°DOC:</strong></td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lbldocumento" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="Ç"><strong>IMPORTE TOTAL:</strong><br />
                                                          </td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblimporte" runat="server" Font-Bold="True"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">I<strong>MP. ADELANTO:</strong><br />
                                                          </td>
                                                          <td class="auto-style6">
                                                              <asp:Label ID="lblimporteadelanto" runat="server" ForeColor="#006699"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2"><strong>MONEDA:</strong><br />
                                                          </td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lbltpmoneda" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>IMP. DETRACC:</td>
                                                          <td class="auto-style2">
                                                              &nbsp;<asp:Label ID="lblimportesumDetraccion" runat="server" ForeColor="#006600"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2"><B>IMP. A PAGAR:</B></td>
                                                          <td class="auto-style6">
                                                              &nbsp;<asp:Label ID="lbltotalapargar" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2"><b>INTERES ACOM:</b></td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblimpInteres" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>IMP. POR PAGAR:</td>
                                                          <td class="auto-style2">
                                                              &nbsp;<asp:Label ID="lblimporteSumsinDetraccion" runat="server" ForeColor="#006600"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">______________</td>
                                                          <td class="auto-style6">
                                                              ________</td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2"><strong>N°CUOTAS:</strong></td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblncuotas" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style2">&nbsp;</td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2">SUMATORIA:</td>
                                                          <td class="auto-style6">
                                                              <asp:Label ID="lblsumartoria1" runat="server"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2">Nº PAGOS:</td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblPagosReg" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td><b>IMP. PAGADO:</b></td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblimpCancelado" runat="server"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2"><strong>IMP. SALDO:</strong></td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblimporteSaldo" runat="server" ForeColor="#990000"></asp:Label>
                                                          </td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                          <td class="auto-style2">DOC. REF.:</td>
                                                          <td class="auto-style2">
                                                              <asp:LinkButton ID="lbtnComprobante" runat="server" OnClick="lbtnComprobante_Click"></asp:LinkButton>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td colspan="7">
        
                                                              <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">FACTURAS REGISTRADAS:</asp:LinkButton>
        
                                                              <asp:GridView ID="gvFActuras" runat="server" AutoGenerateColumns="False" DataKeyNames="iddoc" DataSourceID="SqlDataSourceFacturaListado" OnRowCommand="gvFActuras_RowCommand" Width="800px">
                            <Columns>
                               
                                <asp:BoundField DataField="iddoc" HeaderText="COD" ReadOnly="True" SortExpression="iddoc" />
                                <asp:BoundField DataField="idPago" HeaderText="idPago" SortExpression="idPago" Visible="False" />
                                <asp:BoundField DataField="NFACTURA" HeaderText="Nª FACTURA" ReadOnly="True" SortExpression="NFACTURA" >
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="base" DataFormatString="{0:0,0.00}" HeaderText="IMP. BASE" SortExpression="base">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="igv" DataFormatString="{0:0,0.00}" HeaderText="IMP. IGV" SortExpression="igv">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="neto" DataFormatString="{0:0,0.00}" HeaderText="IMP. NETO" SortExpression="neto">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="fechaEmision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISIÓN" SortExpression="fechaEmision">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tpmoneda" HeaderText="tpmoneda" SortExpression="tpmoneda" Visible="False" />
                                <asp:BoundField DataField="idtpdocumento" HeaderText="IDTPDOC" SortExpression="idtpdocumento" Visible="False" />
                                <asp:BoundField DataField="DESCRIPTPdOC" HeaderText="TP DOCUMENTO" SortExpression="DESCRIPTPdOC" />
                                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                                <asp:BoundField DataField="ESTADOdOC" HeaderText="F" ReadOnly="True" SortExpression="ESTADOdOC" Visible="False" />
                                 <asp:ButtonField CommandName="BAJARFACT" HeaderText="DOC" ShowHeader="True" Text="DESCARGAR" ButtonType="Image" ImageUrl="~/images/BAJAR.png" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <ItemStyle Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:ButtonField>
                            </Columns>
                                                                  <EmptyDataTemplate>
                                                                      No adjunta facturas correspondientes
                                                                  </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceFacturaListado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_listarFacturas" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidPaga" Name="idpago" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
        
<hr />
                                             <strong>DETALLE DE PAGOS REALIZADOS:<br />
                                                              </strong>
                                                              <asp:Panel ID="ppagos" runat="server">
                                                                  <asp:GridView ID="gvDetPAgoCorto" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle" DataSourceID="SqlDataSource2" OnRowDataBound="gvDetPAgoCorto_RowDataBound" OnRowCommand="gvDetPAgoCorto_RowCommand">
                                                                      <Columns>
                                                                          <asp:BoundField DataField="idDetalle" HeaderText="COD" ReadOnly="True" SortExpression="idDetalle" >
                                                                          <HeaderStyle BackColor="#CCCCCC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" >
                                                                          <HeaderStyle BackColor="#CCCCCC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="ncuota" HeaderText="Nº CUOTA" SortExpression="ncuota">
                                                                          <HeaderStyle BackColor="#CCCCCC" />
                                                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="PorcentPago" HeaderText="% PAGO" SortExpression="PorcentPago" >
                                                                          <HeaderStyle BackColor="#CCCCCC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="moneda1" HeaderText="MONEDA" SortExpression="moneda1" Visible="False" >
                                                                          <HeaderStyle BackColor="#CCCCCC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" Visible="False" >
                                                                          <HeaderStyle BackColor="#CCCCCC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FFVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" SortExpression="FFVENCIMIENTO">
                                                                          <HeaderStyle BackColor="#9FDCC3" />
                                                                          <ItemStyle HorizontalAlign="Center" BackColor="#E2F5EC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="POR PAGAR" SortExpression="FIMPORTE">
                                                                          <HeaderStyle BackColor="#9FDCC3" />
                                                                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#E2F5EC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FMEDIODEPAGO" HeaderText="F MED. PAGO" SortExpression="FMEDIODEPAGO" Visible="False" >
                                                                          <HeaderStyle BackColor="#98DCBA" />
                                                                          <ItemStyle BackColor="#E2F5EC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FSERIE" HeaderText="F. SERIE" SortExpression="FSERIE" Visible="False" >
                                                                          <HeaderStyle BackColor="#98DCBA" />
                                                                          <ItemStyle BackColor="#E2F5EC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FOPERACION" HeaderText="F. OPERACION" SortExpression="FOPERACION" Visible="False" >
                                                                          <HeaderStyle BackColor="#98DCBA" />
                                                                          <ItemStyle BackColor="#E2F5EC" VerticalAlign="Top" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FFPAGADA" HeaderText="F. FECHA PAGADO" SortExpression="FFPAGADA" DataFormatString="{0:dd/MM/yyyy}" >
                                                                          <HeaderStyle BackColor="#98DCBA" />
                                                                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#DEF2EE" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FIMPPAGADO" HeaderText="F. IMP. PAGADO" SortExpression="FIMPPAGADO" DataFormatString="{0:0,0.00}" >
                                                                          <HeaderStyle BackColor="#98DCBA" />
                                                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E2F5EC" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="FESTADO" HeaderText="F. ESTADO" visible="False" SortExpression="FESTADO" >
                                                                          <HeaderStyle BackColor="#98DCBA" />
                                                                          <ItemStyle BackColor="#98DCBA" />
                                                                          </asp:BoundField>
                                                                          <asp:ImageField DataImageUrlField="FESTADO" DataImageUrlFormatString="~/images/z{0}.png">
                                                                              <ControlStyle Height="15px" Width="15px" />
                                                                              <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#98DCBA" />
                                                                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#98DCBA" />
                                                                          </asp:ImageField>
                                                                          <asp:BoundField DataField="doc" HeaderText="DOC" SortExpression="doc" >
                                                                          <HeaderStyle BackColor="#9FDCC3" />
                                                                          <ItemStyle BackColor="#A5DCCB" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETRACCION" DataFormatString="{0:0,0.00}" HeaderText="DETRACC. PAGAR" SortExpression="DETRACCION">
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFDDDD" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETRACSOLES" DataFormatString="{0:0,0.00}" HeaderText="DETRACC. SOLES" SortExpression="DETRACSOLES">
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFDDDD" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETIDMEDIOPAGO" HeaderText="DET. MEDIO PAGO" SortExpression="DETIDMEDIOPAGO" Visible="False" >
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle BackColor="#FFEAEA" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETIDBANCO" HeaderText="DET. ID BANCO" SortExpression="DETIDBANCO" Visible="False" >
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle BackColor="#FFEAEA" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETNOPERACION" HeaderText="DET N OPERACION" SortExpression="DETNOPERACION" Visible="False" >
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle BackColor="#FFEAEA" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETCONSTANCIA" HeaderText="DET CONSTANCIA" SortExpression="DETCONSTANCIA" Visible="False" >
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle BackColor="#FFEAEA" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETPAGOREALIZADOS" HeaderText="DETRACC. PAGADO" SortExpression="DETPAGOREALIZADOS" DataFormatString="{0:0,0.00}" >
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFEAEA" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="DETESTADO" HeaderText="DETRACC. ESTADO" Visible="false" SortExpression="DETESTADO" >
                                                                          <HeaderStyle BackColor="#FFDDDD" />
                                                                          <ItemStyle BackColor="#FFEAEA" />
                                                                          </asp:BoundField>
                                                                          <asp:ImageField DataImageUrlField="DETESTADO" DataImageUrlFormatString="~/images/z{0}.png">
                                                                              <ControlStyle Height="15px" Width="15px" />
                                                                              <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#F7DDE1" />
                                                                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F7DDE1" />
                                                                          </asp:ImageField>
                                                                          <asp:BoundField DataField="detracc_doc" HeaderText="DOC DETRACC" SortExpression="detracc_doc" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <HeaderStyle BackColor="#F7DDE1" Height="14px" Width="14px" />
                                                                          <ItemStyle BackColor="#F7DDE1" Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:BoundField>

                                                                           <asp:ButtonField CommandName="BAJARFACT" HeaderText="DOC" ShowHeader="True" Text="DESCARGAR" ButtonType="Image" ImageUrl="~/images/BAJAR.png" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <ItemStyle Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:ButtonField>
                                                                          <asp:ButtonField CommandName="BAJARFACTDET" HeaderText="DOC DETRACC" ShowHeader="True" Text="Mofidicar" ButtonType="Image" ImageUrl="~/images/BAJAR.png" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <ItemStyle Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:ButtonField>
                                                                      </Columns>
                                                                  </asp:GridView>
                                                                  Por pagar:
                        <asp:Image ID="Image12" runat="server" Height="10px" ImageUrl="~/images/Z0.png" Width="10px" />
                        &nbsp;| Pago realizado:
                        <asp:Image ID="Image13" runat="server" Height="10px" ImageUrl="~/images/Z1.png" Width="10px" />
                        &nbsp;|&nbsp; Sin efecto:
                        <asp:Image ID="Image14" runat="server" Height="10px" ImageUrl="~/images/Z4.png" Width="10px" />
                                                              </asp:Panel>
                        
                                                           <asp:Panel ID="PanelPagosRealizados" runat="server" Visible="False">
                        <asp:GridView ID="gvDetPAgo" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idDetalle" DataSourceID="SqlDataSource2" Font-Size="Small" ForeColor="Black" GridLines="Vertical" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="idDetalle" HeaderText="COD" ReadOnly="True" SortExpression="idDetalle" >
                                <HeaderStyle BackColor="#E5EBF2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                                <asp:BoundField DataField="PorcentPago" HeaderText="% PAGO" SortExpression="PorcentPago" Visible="False">
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:BoundField>
                                <asp:BoundField DataField="moneda1" HeaderText="MONEDA" SortExpression="moneda1" Visible="False">
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" Visible="False">
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ncuota" HeaderText="Nº CUOTA" SortExpression="ncuota">
                                <HeaderStyle BackColor="#E5EBF2" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FFVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" SortExpression="FFVENCIMIENTO" Visible="False">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="POR PAGAR" SortExpression="FIMPORTE" Visible="False">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FMEDIODEPAGO" HeaderText="F MED. PAGO" SortExpression="FMEDIODEPAGO">
                                <HeaderStyle BackColor="#9FDCC3" />
                                </asp:BoundField>
                                <asp:BoundField DataField="BANCO" HeaderText="FACT. BANCO" SortExpression="BANCO">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  
                              
                                <asp:BoundField DataField="FOPERACION" HeaderText="F. NÚM. OPERACION" SortExpression="FOPERACION">
                                <HeaderStyle BackColor="#9FDCC3" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FFPAGADA" HeaderText="F. FECHA PAGADA" SortExpression="FFPAGADA" DataFormatString="{0:dd/MM/yyyy}">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FIMPPAGADO" HeaderText="F. IMP. PAGADO" SortExpression="FIMPPAGADO" DataFormatString="{0:0,0.0000}">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="TPCOMPROBANTE" HeaderText="TP. COMPROBANTE" SortExpression="TPCOMPROBANTE">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  <asp:BoundField DataField="NUMFACT" HeaderText="NUM. FACT" SortExpression="NUMFACT">
                                <HeaderStyle BackColor="#9FDCC3" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="FACFECHA" HeaderText="FACTURA F. EMISIÓN" SortExpression="FACFECHA" DataFormatString="{0:dd/MM/yyyy}">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  <asp:ImageField DataImageUrlField="FESTADO"  HeaderText="FACT. ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="14px" Width="14px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#A5DCCB" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                                <asp:BoundField DataField="DETRACCION" DataFormatString="{0:0,0.00}" HeaderText="DET. PAGAR" SortExpression="DETRACCION" Visible="false">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETRACSOLES" DataFormatString="{0:0,0.00}" HeaderText="DET. SOLES" SortExpression="DETRACSOLES" Visible="false">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETIDMEDIOPAGO" HeaderText="DET. MEDIO PAGO" SortExpression="DETIDMEDIOPAGO">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="BANCODET" HeaderText="DETRACC. BANCO" SortExpression="BANCODET">
                                <HeaderStyle BackColor="#F7DDE1" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETNOPERACION" HeaderText="DETRACC. Nº OPERACION" SortExpression="DETNOPERACION">
                                <HeaderStyle BackColor="#F7DDE1" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETCONSTANCIA" HeaderText="DETRACC. CONSTANCIA" SortExpression="DETCONSTANCIA">
                                <HeaderStyle BackColor="#F7DDE1" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETPAGOREALIZADOS" HeaderText="DETRACC. PAGO REALIZADO" SortExpression="DETPAGOREALIZADOS" DataFormatString="{0:0,0.0000}">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                              <asp:BoundField DataField="DETRACFECHA" HeaderText="DETRACC. FECHA PAGADA" SortExpression="DETRACFECHA" DataFormatString="{0:dd/MM/yyyy}">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  <asp:ImageField DataImageUrlField="DETESTADO"  HeaderText="DETRACC. ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="14px" Width="14px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#FFDFDF" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                                <asp:BoundField DataField="detracc_doc" HeaderText="detracc_doc" SortExpression="detracc_doc" Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" Font-Size="X-Small" ForeColor="Black" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        Por pagar:
                        <asp:Image ID="Image9" runat="server" Height="10px" ImageUrl="~/images/Z0.png" Width="10px" />
                        &nbsp;| Pago realizado:
                        <asp:Image ID="Image10" runat="server" Height="10px" ImageUrl="~/images/Z1.png" Width="10px" />
                        &nbsp;|&nbsp; Sin efecto:
                        <asp:Image ID="Image11" runat="server" Height="10px" ImageUrl="~/images/Z4.png" Width="10px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagosDet_listar" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidPaga" Name="idpago" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                        
                    </asp:Panel>
&nbsp;*Item <asp:Label ID="lblItem" runat="server"></asp:Label>
                                                              .<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ver más</asp:LinkButton>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>ORDEN C/S:<asp:Label ID="lblidoc" runat="server" Visible="False"></asp:Label>
                                                          </td>
                                                          <td colspan="3">
                                                              <asp:LinkButton ID="lbtnOC" runat="server" OnClick="lbtnOC_Click"></asp:LinkButton>
                                                          </td>
                                                          <td>&nbsp;</td>
                                                          <td>ESTADO OC:</td>
                                                          <td class="auto-style2">
                                                              <asp:Label ID="lblestadooc" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>COTIZACIÒN:<asp:Label ID="lblidCotizacion" runat="server" Visible="False"></asp:Label>
                                                          </td>
                                                          <td colspan="3">
                                                              <asp:LinkButton ID="lbtnCotizacion" runat="server" OnClick="lbtnCotizacion_Click"></asp:LinkButton>
                                                          </td>
                                                          <td>
                                                              <asp:LinkButton ID="lbtnDocCodtizacion" runat="server" Visible="False"></asp:LinkButton>
                                                          </td>
                                                          <td colspan="2">
                                                              <asp:LinkButton ID="lbtncotProveedor" runat="server" OnClick="lbtncotProveedor_Click">Ver cotización proveedor</asp:LinkButton>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>&nbsp;</td>
                                                          <td colspan="3">&nbsp;</td>
                                                          <td>&nbsp;</td>
                                                          <td>&nbsp;</td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                      </tr>
                                                      
                                                      <tr>
                                                          <td><strong>DETRACCIÓN:</strong></td>
                                                          <td colspan="3">
                                                             

                                                              <asp:Label ID="lbldetaccion" runat="server" Visible="False"></asp:Label>
                                                             

                                                              <asp:Label ID="lblDetalleDetraccion" runat="server"></asp:Label>
                                                             

                                                          </td>
                                                          <td>&nbsp;</td>
                                                          <td><b>CTA. DETRACC:</b></td>
                                                          <td class="auto-style2">
                                                             

                                                          <asp:Label ID="lblctadetraccion" runat="server"></asp:Label>
                                                             

                                                          </td>
                                                      </tr>
                                                      <br />
                                                      <tr>
                                                          <td><strong>CONTACTO:</strong></td>
                                                          <td colspan="3">
                                                              <asp:Label ID="lblcontacto" runat="server"></asp:Label>
                               
                                                          </td>
                                                          <td>
                                                              &nbsp;</td>
                                                          <td><strong>TELEF:</strong></td>
                                                          <td>
                                                             <asp:Label ID="lbltelefono" runat="server"></asp:Label></td>
                                                      </tr>


                                                      <tr>
                                                          <td><strong>CORREO:</strong></td>
                                                          <td colspan="3">
                                                              <asp:Label ID="lblcorreo" runat="server"></asp:Label></td>
                                                          <td>
                                                              &nbsp;</td>
                                                          <td>&nbsp;</td>
                                                          <td>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">ver más</asp:LinkButton>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td><strong>NºCUENTAS:</strong></td>
                                                          <td colspan="3"><asp:Label ID="lblbanco" runat="server" Visible="False"></asp:Label>
                                &nbsp;
                                                              <asp:Label ID="lblbanconcuenta" runat="server"></asp:Label>&nbsp;
                                                           <asp:Label ID="lblCCI" runat="server" Visible="False"></asp:Label>
                                                           </td>
                                                          <td>&nbsp;</td>
                                                          <td>&nbsp;</td>
                                                          <td class="auto-style2">
                                                              &nbsp;</td>
                                                      </tr>

                                                      <tr>
                                                          <td colspan="7">
                      <asp:GridView ID="gbcuentasBancarias" runat="server" AutoGenerateColumns="False" DataKeyNames="idProveedor,idbanco,NcuentasDolares,cciDolares,NcuentaSoles,cciSoles" DataSourceID="SqlDataSourcecuentas" Width="800px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                              <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" ReadOnly="True" SortExpression="idProveedor" Visible="False" />
                              <asp:BoundField DataField="idbanco" HeaderText="idbanco" ReadOnly="True" SortExpression="idbanco" Visible="False" />
                              <asp:BoundField DataField="banco" HeaderText="BANCO" SortExpression="banco" />
                              <asp:BoundField DataField="NcuentasDolares" HeaderText="CTA. DOLARES" SortExpression="NcuentasDolares" />
                              <asp:BoundField DataField="cciDolares" HeaderText="CCI DOLARES" SortExpression="cciDolares" />
                              <asp:BoundField DataField="NcuentaSoles" HeaderText="CTA. SOLES" SortExpression="NcuentaSoles" />
                              <asp:BoundField DataField="cciSoles" HeaderText="CCI SOLES" SortExpression="cciSoles" />
                          </Columns>
                          <EmptyDataTemplate>
                              No registra cuenta bancaria....
                          </EmptyDataTemplate>
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecuentas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proveedor_Listadocuentas" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblidproveedor" Name="idproveedor" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                                                          </td>
                                                      </tr>


                                                      <tr>
                                                          <td>&nbsp;</td>
                                                          <td colspan="3">
                                                              &nbsp;</td>
                                                          <td>
                                                              &nbsp;</td>
                                                          <td>&nbsp;</td>
                                                          <td>
                                                              &nbsp;</td>
                                                      </tr>


                                                      <tr>
                                                          <td>
                                                              <a href="Javascript:window.close()">CERRAR</a>
                                                          </td>
                                                          <td colspan="3">
                                                              &nbsp;</td>
                                                          <td>
                                                              &nbsp;</td>
                                                          <td>&nbsp;</td>
                                                          <td>
                                                              &nbsp;</td>
                                                      </tr>


                                                      </table>
				 
            </div>


                <asp:Panel ID="Panel2" runat="server" Visible="False">
            <div class="form-group row">
        

				                                  <table class="auto-style1">
                                                                           
                                                      <tr>
                                                          <td class="auto-style2">&nbsp;</td>
                                                          <td class="auto-style2"></td>
                                                          <td class="auto-style2"></td>
                                                          <td class="auto-style2"></td>
                                                          <td class="auto-style2"></td>
                                                          <td class="auto-style2"></td>
                                                      </tr>
                      
                                                      <asp:Panel ID="Panel1"  runat="server" Width="100%">
                                                     
                                                      <tr>
                                                          <td colspan="2" class="auto-style5"></td>
                                                          <td><b>TIPO</b></td>
                                                          <td>
                                                              <asp:Label ID="lbltipo" runat="server"></asp:Label>
                                                          </td>
                                                          <td><b>CATEGORIA</b></td>
                                                          <td>
                                                              <asp:Label ID="lblcategoria" runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                          </asp:Panel>
                                                  </table>
				  




                                                  <asp:Label ID="lblmensaje" runat="server"></asp:Label>
				  




    
              
    </div>

</asp:Panel>

</div>

</div>
 </div>        


</div>
 
    


    </form>
</body>
</html>
