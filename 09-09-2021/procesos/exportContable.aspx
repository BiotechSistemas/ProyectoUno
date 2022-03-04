<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exportContable.aspx.cs" Inherits="biotech.procesos.exportContable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">



        .auto-style1 {
            width: 100%;
            background: linear-gradient(white, #EFEFEF); /* Standard syntax */
              font-size: x-small;
        }
        .auto-style3 {
            width: 70px;
            height: 59px;
        }
        .auto-style62 {
           
            text-align: center;
            width: 70%;
        }
        .auto-style60 {
            height: 59px;
            text-align: right;
        }
        </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="55px" ImageUrl="~/images/logoicono.png" Width="70px" />
                </td>
                <td class="auto-style62">
                    <h1 style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTABILIDAD - VENTAS</h1>
                </td>
                <td class="auto-style60">
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#006600" OnClick="LinkButton2_Click" Font-Size="Medium">VENTAS</asp:LinkButton>
                &nbsp;|
                        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#006600" OnClick="LinkButton3_Click" Font-Size="Medium">VIÁTICOS</asp:LinkButton>
                &nbsp;|&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#006600" OnClick="LinkButton1_Click" Font-Size="Medium">SALIR</asp:LinkButton>
                        &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
        <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="Panel3" runat="server">
                <br />
                Desde:<asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
                &nbsp;<span class="auto-style2">-
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAR FACTURAS" Height="40px" />
                &nbsp;</span><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="GENERAR NOTAS DE CREDITO" Height="40px" />
                <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#006600" Height="40px" ImageUrl="~/images/Excel-Export.jpg" OnClick="ImageButton1_Click" Width="120px" ImageAlign="Middle" />
                <asp:ImageButton ID="ImageButtonFACTURA" runat="server" BorderColor="#006600" Height="40px" ImageUrl="~/images/Excel-Export.jpg" OnClick="ImageButtonFACTURA_Click" Width="120px" ImageAlign="Middle" />
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                Notas de credito registradas:<br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="font-size: small">
                    <Columns>
                        <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" ReadOnly="True" SortExpression="FEMISION" />
                        <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" ReadOnly="True" SortExpression="FVENCTO" />
                        <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" ReadOnly="True" SortExpression="TIPODOC" />
                        <asp:BoundField DataField="NºSERIE" HeaderText="NºSERIE" SortExpression="NºSERIE" />
                        <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" ReadOnly="True" SortExpression="NUMERO" />
                        <asp:BoundField DataField="TPDOC" HeaderText="TPDOC" ReadOnly="True" SortExpression="TPDOC" />
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                        <asp:BoundField DataField="RAZON SOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZON SOCIAL" />
                        <asp:BoundField DataField="VALOR DE LA EX" HeaderText="VALOR DE LA EX" ReadOnly="True" SortExpression="VALOR DE LA EX" />
                        <asp:BoundField DataField="BASE IMPONIBLE" HeaderText="BASE IMPONIBLE" ReadOnly="True" SortExpression="BASE IMPONIBLE" />
                        <asp:BoundField DataField="EXONERADA" HeaderText="EXONERADA" ReadOnly="True" SortExpression="EXONERADA" />
                        <asp:BoundField DataField="INAFECTA" HeaderText="INAFECTA" ReadOnly="True" SortExpression="INAFECTA" />
                        <asp:BoundField DataField="ISC" HeaderText="ISC" ReadOnly="True" SortExpression="ISC" />
                        <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" />
                        <asp:BoundField DataField="OTROS TRIBUTOS" HeaderText="OTROS TRIBUTOS" ReadOnly="True" SortExpression="OTROS TRIBUTOS" />
                        <asp:BoundField DataField="IMPORTE TOTAL" HeaderText="IMPORTE TOTAL" ReadOnly="True" SortExpression="IMPORTE TOTAL" />
                        <asp:BoundField DataField="TP CAMBIO" HeaderText="TP CAMBIO" SortExpression="TP CAMBIO" />
                        <asp:BoundField DataField="F.DOC MODIFICA" HeaderText="F.DOC MODIFICA" ReadOnly="True" SortExpression="F.DOC MODIFICA" />
                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                        <asp:BoundField DataField="SERIE" HeaderText="SERIE" SortExpression="SERIE" />
                        <asp:BoundField DataField="N°ComproPagoDocumento" HeaderText="N°ComproPagoDocumento" ReadOnly="True" SortExpression="N°ComproPagoDocumento" />
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                        <asp:BoundField DataField="EQUIVALENTE EN U$$" HeaderText="EQUIVALENTE EN U$$" ReadOnly="True" SortExpression="EQUIVALENTE EN U$$" />
                        <asp:BoundField DataField="FVENCTO1" HeaderText="FVENCTO1" ReadOnly="True" SortExpression="FVENCTO1" />
                        <asp:BoundField DataField="COND CONT/CRED" HeaderText="COND CONT/CRED" ReadOnly="True" SortExpression="COND CONT/CRED" />
                        <asp:BoundField DataField="COD CENTRO COSTO" HeaderText="COD CENTRO COSTO" ReadOnly="True" SortExpression="COD CENTRO COSTO" />
                        <asp:BoundField DataField="COD CENTRO COSTO2" HeaderText="COD CENTRO COSTO2" ReadOnly="True" SortExpression="COD CENTRO COSTO2" />
                        <asp:BoundField DataField="CTA CONTABLE" HeaderText="CTA CONTABLE" ReadOnly="True" SortExpression="CTA CONTABLE" />
                        <asp:BoundField DataField="CTA CONT BASE IMPONIBLE" HeaderText="CTA CONT BASE IMPONIBLE" ReadOnly="True" SortExpression="CTA CONT BASE IMPONIBLE" />
                        <asp:BoundField DataField="CTA CONT TOTAL" HeaderText="CTA CONT TOTAL" ReadOnly="True" SortExpression="CTA CONT TOTAL" />
                        <asp:BoundField DataField="REGIMEN ESPECIAL" HeaderText="REGIMEN ESPECIAL" ReadOnly="True" SortExpression="REGIMEN ESPECIAL" />
                        <asp:BoundField DataField="% REG ESPECIAL" HeaderText="% REG ESPECIAL" ReadOnly="True" SortExpression="% REG ESPECIAL" />
                        <asp:BoundField DataField="IMP REG ESPECIAL" HeaderText="IMP REG ESPECIAL" ReadOnly="True" SortExpression="IMP REG ESPECIAL" />
                        <asp:BoundField DataField="SERIE DOC REG ESPECIAL" HeaderText="SERIE DOC REG ESPECIAL" ReadOnly="True" SortExpression="SERIE DOC REG ESPECIAL" />
                        <asp:BoundField DataField="NUM DOC REG ESPECIAL" HeaderText="NUM DOC REG ESPECIAL" ReadOnly="True" SortExpression="NUM DOC REG ESPECIAL" />
                        <asp:BoundField DataField="FECHA DOC REG ESPECIAL" HeaderText="FECHA DOC REG ESPECIAL" ReadOnly="True" SortExpression="FECHA DOC REG ESPECIAL" />
                        <asp:BoundField DataField="COD PROPUESTO" HeaderText="COD PROPUESTO" ReadOnly="True" SortExpression="COD PROPUESTO" />
                        <asp:BoundField DataField="% IGV" HeaderText="% IGV" ReadOnly="True" SortExpression="% IGV" />
                        <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                        <asp:BoundField DataField="MEDIO PAGO" HeaderText="MEDIO PAGO" ReadOnly="True" SortExpression="MEDIO PAGO" />
                        <asp:BoundField DataField="COND DE PERCEPCION" HeaderText="COND DE PERCEPCION" ReadOnly="True" SortExpression="COND DE PERCEPCION" />
                        <asp:BoundField DataField="IMP. CALC. REGIMEN" HeaderText="IMP. CALC. REGIMEN" ReadOnly="True" SortExpression="IMP. CALC. REGIMEN" />
                    </Columns>
                    <HeaderStyle BackColor="Silver" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="I_CONTASIS_NOTACREDITO" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="f1" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="f2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                &nbsp;Detale de facturas registradas:<br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="font-size: small">
                    <Columns>
                        <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" ReadOnly="True" SortExpression="FEMISION" />
                        <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" ReadOnly="True" SortExpression="FVENCTO" />
                        <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" ReadOnly="True" SortExpression="TIPODOC" />
                        <asp:BoundField DataField="NºSERIE" HeaderText="NºSERIE" SortExpression="NºSERIE" />
                        <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" ReadOnly="True" SortExpression="NUMERO" />
                        <asp:BoundField DataField="TPDOC" HeaderText="TPDOC" ReadOnly="True" SortExpression="TPDOC" />
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                        <asp:BoundField DataField="RAZON SOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZON SOCIAL" />
                        <asp:BoundField DataField="VALOR DE LA EX" HeaderText="VALOR DE LA EX" ReadOnly="True" SortExpression="VALOR DE LA EX" />
                        <asp:BoundField DataField="BASE IMPONIBLE" HeaderText="BASE IMPONIBLE" ReadOnly="True" SortExpression="BASE IMPONIBLE" />
                        <asp:BoundField DataField="EXONERADA" HeaderText="EXONERADA" ReadOnly="True" SortExpression="EXONERADA" />
                        <asp:BoundField DataField="INAFECTA" HeaderText="INAFECTA" ReadOnly="True" SortExpression="INAFECTA" />
                        <asp:BoundField DataField="ISC" HeaderText="ISC" ReadOnly="True" SortExpression="ISC" />
                        <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" />
                        <asp:BoundField DataField="OTROS TRIBUTOS" HeaderText="OTROS TRIBUTOS" ReadOnly="True" SortExpression="OTROS TRIBUTOS" />
                        <asp:BoundField DataField="IMPORTE TOTAL" HeaderText="IMPORTE TOTAL" ReadOnly="True" SortExpression="IMPORTE TOTAL" />
                        <asp:BoundField DataField="TP CAMBIO" HeaderText="TP CAMBIO" SortExpression="TP CAMBIO" />
                        <asp:BoundField DataField="F.DOC MODIFICA" HeaderText="F.DOC MODIFICA" ReadOnly="True" SortExpression="F.DOC MODIFICA" />
                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                        <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE" />
                        <asp:BoundField DataField="N°ComproPagoDocumento" HeaderText="N°ComproPagoDocumento" ReadOnly="True" SortExpression="N°ComproPagoDocumento" />
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                        <asp:BoundField DataField="EQUIVALENTE EN U$$" HeaderText="EQUIVALENTE EN U$$" SortExpression="EQUIVALENTE EN U$$" />
                        <asp:BoundField DataField="FVENCTO1" HeaderText="FVENCTO1" ReadOnly="True" SortExpression="FVENCTO1" />
                        <asp:BoundField DataField="COND CONT/CRED" HeaderText="COND CONT/CRED" ReadOnly="True" SortExpression="COND CONT/CRED" />
                        <asp:BoundField DataField="COD CENTRO COSTO" HeaderText="COD CENTRO COSTO" ReadOnly="True" SortExpression="COD CENTRO COSTO" />
                        <asp:BoundField DataField="COD CENTRO COSTO2" HeaderText="COD CENTRO COSTO2" ReadOnly="True" SortExpression="COD CENTRO COSTO2" />
                        <asp:BoundField DataField="CTA CONTABLE" HeaderText="CTA CONTABLE" ReadOnly="True" SortExpression="CTA CONTABLE" />
                        <asp:BoundField DataField="CTA CONT BASE IMPONIBLE" HeaderText="CTA CONT BASE IMPONIBLE" ReadOnly="True" SortExpression="CTA CONT BASE IMPONIBLE" />
                        <asp:BoundField DataField="CTA CONT TOTAL" HeaderText="CTA CONT TOTAL" ReadOnly="True" SortExpression="CTA CONT TOTAL" />
                        <asp:BoundField DataField="REGIMEN ESPECIAL" HeaderText="REGIMEN ESPECIAL" ReadOnly="True" SortExpression="REGIMEN ESPECIAL" />
                        <asp:BoundField DataField="% REG ESPECIAL" HeaderText="% REG ESPECIAL" ReadOnly="True" SortExpression="% REG ESPECIAL" />
                        <asp:BoundField DataField="IMP REG ESPECIAL" HeaderText="IMP REG ESPECIAL" ReadOnly="True" SortExpression="IMP REG ESPECIAL" />
                        <asp:BoundField DataField="SERIE DOC REG ESPECIAL" HeaderText="SERIE DOC REG ESPECIAL" ReadOnly="True" SortExpression="SERIE DOC REG ESPECIAL" />
                        <asp:BoundField DataField="NUM DOC REG ESPECIAL" HeaderText="NUM DOC REG ESPECIAL" ReadOnly="True" SortExpression="NUM DOC REG ESPECIAL" />
                        <asp:BoundField DataField="FECHA DOC REG ESPECIAL" HeaderText="FECHA DOC REG ESPECIAL" ReadOnly="True" SortExpression="FECHA DOC REG ESPECIAL" />
                        <asp:BoundField DataField="COD PROPUESTO" HeaderText="COD PROPUESTO" ReadOnly="True" SortExpression="COD PROPUESTO" />
                        <asp:BoundField DataField="% IGV" HeaderText="% IGV" ReadOnly="True" SortExpression="% IGV" />
                        <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" ReadOnly="True" SortExpression="GLOSA" />
                        <asp:BoundField DataField="MEDIO PAGO" HeaderText="MEDIO PAGO" ReadOnly="True" SortExpression="MEDIO PAGO" />
                        <asp:BoundField DataField="COND DE PERCEPCION" HeaderText="COND DE PERCEPCION" ReadOnly="True" SortExpression="COND DE PERCEPCION" />
                        <asp:BoundField DataField="IMP. CALC. REGIMEN" HeaderText="IMP. CALC. REGIMEN" ReadOnly="True" SortExpression="IMP. CALC. REGIMEN" />
                    </Columns>
                    <HeaderStyle BackColor="#999999" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="I_CONTASIS" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="f1" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="f2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="idalmacen" DataSourceID="SqlDataSource3" Visible="False">
                <Columns>
                    <asp:BoundField DataField="idalmacen" HeaderText="idalmacen" ReadOnly="True" SortExpression="idalmacen" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="sucursal" HeaderText="sucursal" SortExpression="sucursal" />
                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [almacen]"></asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
