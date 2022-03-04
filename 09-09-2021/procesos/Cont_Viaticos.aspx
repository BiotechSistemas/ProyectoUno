<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cont_Viaticos.aspx.cs" Inherits="biotech.procesos.Cont_Viaticos" %>

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
        .auto-style63 {
            width: 600px;
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
                    <h1 style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTABILIDAD - VIÁTICOS
        <asp:Label ID="lblano" runat="server"></asp:Label>
                    </h1>
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
        <table class="auto-style63">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>PERIODO:</td>
                <td>
                    <asp:RadioButtonList ID="rblANO" runat="server" DataSourceID="SqlDataSource4VIATIC" DataTextField="idano" DataValueField="idano" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                </td>
                <td><asp:DropDownList ID="ddlMes" runat="server" DataSourceID="SqlDataSource1" DataTextField="mes" DataValueField="idmes" Width="200px" Height="40px">
        </asp:DropDownList>
                </td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERAR INFORME" Height="40px" />
                </td>
                <td>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="MODIFICAR" Height="40px" />
                </td>
                <td>
            <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Height="40px" ImageAlign="Middle" ImageUrl="~/images/Excel-Export.jpg" OnClick="ImageButton1_Click" Width="120px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4VIATIC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct idano from tb_rdRendicionGastos "></asp:SqlDataSource>
                </td>
                <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <hr />
        <asp:Panel ID="Panel1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="I_CONTASIS_Viaticos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="ddlMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            *Item(<asp:Label ID="lblcant" runat="server"></asp:Label>
            )<asp:GridView ID="GridViewVIATICOS" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="font-size: xx-small" OnRowDataBound="GridViewVIATICOS_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" ReadOnly="True" SortExpression="FEMISION" />
                    <asp:BoundField DataField="FVENCIMIENTO" HeaderText="FVENCIMIENTO" ReadOnly="True" SortExpression="FVENCIMIENTO" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" ReadOnly="True" SortExpression="TIPODOC" />
                    <asp:BoundField DataField="NºSERIE" HeaderText="NºSERIE" ReadOnly="True" SortExpression="NºSERIE" />
                    <asp:BoundField DataField="AÑO EMISION DUA O DSI" HeaderText="AÑO EMISION DUA O DSI" ReadOnly="True" SortExpression="AÑO EMISION DUA O DSI" />
                    <asp:BoundField DataField="N°COMPROBANTE PAGO" HeaderText="N°COMPROBANTE PAGO" ReadOnly="True" SortExpression="N°COMPROBANTE PAGO" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                    <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO" />
                    <asp:BoundField DataField="DENOMINACION O RAZON_SOCIAL" HeaderText="DENOMINACION O RAZON_SOCIAL" SortExpression="DENOMINACION O RAZON_SOCIAL" />
                    <asp:BoundField DataField="BASE_IMPONIBLE" HeaderText="BASE_IMPONIBLE" ReadOnly="True" SortExpression="BASE_IMPONIBLE" />
                    <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" />
                    <asp:BoundField DataField="BASE IMPONIBLE2" HeaderText="BASE IMPONIBLE2" ReadOnly="True" SortExpression="BASE IMPONIBLE2" />
                    <asp:BoundField DataField="IGV2" HeaderText="IGV2" ReadOnly="True" SortExpression="IGV2" />
                    <asp:BoundField DataField="BASE IMPONIBLE3" HeaderText="BASE IMPONIBLE3" ReadOnly="True" SortExpression="BASE IMPONIBLE3" />
                    <asp:BoundField DataField="IGV3" HeaderText="IGV3" ReadOnly="True" SortExpression="IGV3" />
                    <asp:BoundField DataField="VAL ADQUICICION NO_GRAVADAS" HeaderText="VAL ADQUICICION NO_GRAVADAS" SortExpression="VAL ADQUICICION NO_GRAVADAS" />
                    <asp:BoundField DataField="ISC" HeaderText="ISC" ReadOnly="True" SortExpression="ISC" />
                    <asp:BoundField DataField="OTROS_TRIB_CARGOS" HeaderText="OTROS_TRIB_CARGOS" ReadOnly="True" SortExpression="OTROS_TRIB_CARGOS" />
                    <asp:BoundField DataField="IMPORTE TOTAL" HeaderText="IMPORTE TOTAL" SortExpression="IMPORTE TOTAL" />
                    <asp:BoundField DataField="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" HeaderText="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" ReadOnly="True" SortExpression="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" />
                    <asp:BoundField DataField="CONST NUMERO" HeaderText="CONST NUMERO" ReadOnly="True" SortExpression="CONST NUMERO" />
                    <asp:BoundField DataField="CONST FECHA EMISION" HeaderText="CONST FECHA EMISION" ReadOnly="True" SortExpression="CONST FECHA EMISION" />
                    <asp:BoundField DataField="TIPO DE CAMBIO" HeaderText="TIPO DE CAMBIO" ReadOnly="True" SortExpression="TIPO DE CAMBIO" />
                    <asp:BoundField DataField="REF_COMPROB_FECHA" HeaderText="REF_COMPROB_FECHA" ReadOnly="True" SortExpression="REF_COMPROB_FECHA" />
                    <asp:BoundField DataField="TIPO1" HeaderText="TIPO1" ReadOnly="True" SortExpression="TIPO1" />
                    <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE" />
                    <asp:BoundField DataField="N° COMPROB PAGO" HeaderText="N° COMPROB PAGO" ReadOnly="True" SortExpression="N° COMPROB PAGO" />
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                    <asp:BoundField DataField="EQUIVALENTE DOLARES AMERICANOS" HeaderText="EQUIVALENTE DOLARES AMERICANOS" ReadOnly="True" SortExpression="EQUIVALENTE DOLARES AMERICANOS" />
                    <asp:BoundField DataField="FECHA VENCTO" HeaderText="FECHA VENCTO" ReadOnly="True" SortExpression="FECHA VENCTO" />
                    <asp:BoundField DataField="CONDICION CONT CRED" HeaderText="CONDICION CONT CRED" ReadOnly="True" SortExpression="CONDICION CONT CRED" />
                    <asp:BoundField DataField="CTA CONTABLE BASE IMPONIBLE" HeaderText="CTA CONTABLE BASE IMPONIBLE" ReadOnly="True" SortExpression="CTA CONTABLE BASE IMPONIBLE" />
                    <asp:BoundField DataField="CTA_CONTABLE OTROS TRIB_CARGOS" HeaderText="CTA_CONTABLE OTROS TRIB_CARGOS" ReadOnly="True" SortExpression="CTA_CONTABLE OTROS TRIB_CARGOS" />
                    <asp:BoundField DataField="CUENTA_CONTABLE" HeaderText="CUENTA_CONTABLE" ReadOnly="True" SortExpression="CUENTA_CONTABLE" />
                    <asp:BoundField DataField="COD_CENTRO COSTOS" HeaderText="COD_CENTRO COSTOS" ReadOnly="True" SortExpression="COD_CENTRO COSTOS" />
                    <asp:BoundField DataField="COD_CENTRO COSTOS2" HeaderText="COD_CENTRO COSTOS2" ReadOnly="True" SortExpression="COD_CENTRO COSTOS2" />
                    <asp:BoundField DataField="REGIMEN_ESPECIAL" HeaderText="REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="REGIMEN_ESPECIAL" />
                    <asp:BoundField DataField="%_REGIMEN ESPECIAL" HeaderText="%_REGIMEN ESPECIAL" ReadOnly="True" SortExpression="%_REGIMEN ESPECIAL" />
                    <asp:BoundField DataField="IMP_REGIMEN ESPECIAL" HeaderText="IMP_REGIMEN ESPECIAL" ReadOnly="True" SortExpression="IMP_REGIMEN ESPECIAL" />
                    <asp:BoundField DataField="SERIE_DOC REG_ESPECIAL" HeaderText="SERIE_DOC REG_ESPECIAL" ReadOnly="True" SortExpression="SERIE_DOC REG_ESPECIAL" />
                    <asp:BoundField DataField="NUM_DOC REGIMEN_ESPECIAL" HeaderText="NUM_DOC REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="NUM_DOC REGIMEN_ESPECIAL" />
                    <asp:BoundField DataField="FECHA_DOC REGIMEN_ESPECIAL" HeaderText="FECHA_DOC REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="FECHA_DOC REGIMEN_ESPECIAL" />
                    <asp:BoundField DataField="CODIGO_PROPUESTO" HeaderText="CODIGO_PROPUESTO" ReadOnly="True" SortExpression="CODIGO_PROPUESTO" />
                    <asp:BoundField DataField="PORCENTAJE_IGV" HeaderText="PORCENTAJE_IGV" ReadOnly="True" SortExpression="PORCENTAJE_IGV" />
                    <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                    <asp:BoundField DataField="CONDICION_PERCEPCION" HeaderText="CONDICION_PERCEPCION" ReadOnly="True" SortExpression="CONDICION_PERCEPCION" />
                    <asp:BoundField DataField="IMP_REG_ESPECIAL" HeaderText="IMP_REG_ESPECIAL" ReadOnly="True" SortExpression="IMP_REG_ESPECIAL" />
                    <asp:BoundField DataField="EMPLEADO" HeaderText="EMPLEADO" SortExpression="EMPLEADO" />
                    <asp:BoundField DataField="SUMILLA" HeaderText="SUMILLA" SortExpression="SUMILLA" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" style="font-size: x-small">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" ReadOnly="True" SortExpression="FEMISION" />
                    <asp:BoundField DataField="FVENCIMIENTO" HeaderText="FVENCIMIENTO" ReadOnly="True" SortExpression="FVENCIMIENTO" />
                    <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" ReadOnly="True" SortExpression="TIPODOC" />
                    <asp:BoundField DataField="NºSERIE" HeaderText="NºSERIE" ReadOnly="True" SortExpression="NºSERIE" />
                    <asp:BoundField DataField="AÑO EMISION DUA O DSI" HeaderText="AÑO EMISION DUA O DSI" ReadOnly="True" SortExpression="AÑO EMISION DUA O DSI" />
                    <asp:BoundField DataField="N°COMPROBANTE PAGO" HeaderText="N°COMPROBANTE PAGO" ReadOnly="True" SortExpression="N°COMPROBANTE PAGO" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                    <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO" />
                    <asp:BoundField DataField="DENOMINACION O RAZON_SOCIAL" HeaderText="DENOMINACION O RAZON_SOCIAL" SortExpression="DENOMINACION O RAZON_SOCIAL" />
                    <asp:BoundField DataField="BASE_IMPONIBLE" HeaderText="BASE_IMPONIBLE" ReadOnly="True" SortExpression="BASE_IMPONIBLE" />
                    <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" />
                    <asp:BoundField DataField="BASE IMPONIBLE2" HeaderText="BASE IMPONIBLE2" ReadOnly="True" SortExpression="BASE IMPONIBLE2" />
                    <asp:BoundField DataField="IGV2" HeaderText="IGV2" ReadOnly="True" SortExpression="IGV2" />
                    <asp:BoundField DataField="BASE IMPONIBLE3" HeaderText="BASE IMPONIBLE3" ReadOnly="True" SortExpression="BASE IMPONIBLE3" />
                    <asp:BoundField DataField="IGV3" HeaderText="IGV3" ReadOnly="True" SortExpression="IGV3" />
                    <asp:BoundField DataField="VAL ADQUICICION NO_GRAVADAS" HeaderText="VAL ADQUICICION NO_GRAVADAS" SortExpression="VAL ADQUICICION NO_GRAVADAS" />
                    <asp:BoundField DataField="ISC" HeaderText="ISC" ReadOnly="True" SortExpression="ISC" />
                    <asp:BoundField DataField="OTROS_TRIB_CARGOS" HeaderText="OTROS_TRIB_CARGOS" ReadOnly="True" SortExpression="OTROS_TRIB_CARGOS" />
                    <asp:BoundField DataField="IMPORTE TOTAL" HeaderText="IMPORTE TOTAL" SortExpression="IMPORTE TOTAL" />
                    <asp:BoundField DataField="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" HeaderText="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" ReadOnly="True" SortExpression="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" />
                    <asp:BoundField DataField="CONST NUMERO" HeaderText="CONST NUMERO" ReadOnly="True" SortExpression="CONST NUMERO" />
                    <asp:BoundField DataField="CONST FECHA EMISION" HeaderText="CONST FECHA EMISION" ReadOnly="True" SortExpression="CONST FECHA EMISION" />
                    <asp:BoundField DataField="TIPO DE CAMBIO" HeaderText="TIPO DE CAMBIO" ReadOnly="True" SortExpression="TIPO DE CAMBIO" />
                    <asp:BoundField DataField="REF_COMPROB_FECHA" HeaderText="REF_COMPROB_FECHA" ReadOnly="True" SortExpression="REF_COMPROB_FECHA" />
                    <asp:BoundField DataField="TIPO1" HeaderText="TIPO1" ReadOnly="True" SortExpression="TIPO1" />
                    <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE" />
                    <asp:BoundField DataField="N° COMPROB PAGO" HeaderText="N° COMPROB PAGO" ReadOnly="True" SortExpression="N° COMPROB PAGO" />
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                    <asp:BoundField DataField="EQUIVALENTE DOLARES AMERICANOS" HeaderText="EQUIVALENTE DOLARES AMERICANOS" ReadOnly="True" SortExpression="EQUIVALENTE DOLARES AMERICANOS" />
                    <asp:BoundField DataField="FECHA VENCTO" HeaderText="FECHA VENCTO" ReadOnly="True" SortExpression="FECHA VENCTO" />
                    <asp:BoundField DataField="CONDICION CONT CRED" HeaderText="CONDICION CONT CRED" ReadOnly="True" SortExpression="CONDICION CONT CRED" />
                    <asp:BoundField DataField="CTA CONTABLE BASE IMPONIBLE" HeaderText="CTA CONTABLE BASE IMPONIBLE" ReadOnly="True" SortExpression="CTA CONTABLE BASE IMPONIBLE" />
                    <asp:BoundField DataField="CTA_CONTABLE OTROS TRIB_CARGOS" HeaderText="CTA_CONTABLE OTROS TRIB_CARGOS" ReadOnly="True" SortExpression="CTA_CONTABLE OTROS TRIB_CARGOS" />
                    <asp:BoundField DataField="CUENTA_CONTABLE" HeaderText="CUENTA_CONTABLE" ReadOnly="True" SortExpression="CUENTA_CONTABLE" />
                    <asp:BoundField DataField="COD_CENTRO COSTOS" HeaderText="COD_CENTRO COSTOS" ReadOnly="True" SortExpression="COD_CENTRO COSTOS" />
                    <asp:BoundField DataField="COD_CENTRO COSTOS2" HeaderText="COD_CENTRO COSTOS2" ReadOnly="True" SortExpression="COD_CENTRO COSTOS2" />
                    <asp:BoundField DataField="REGIMEN_ESPECIAL" HeaderText="REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="REGIMEN_ESPECIAL" />
                    <asp:BoundField DataField="%_REGIMEN ESPECIAL" HeaderText="%_REGIMEN ESPECIAL" ReadOnly="True" SortExpression="%_REGIMEN ESPECIAL" />
                    <asp:BoundField DataField="IMP_REGIMEN ESPECIAL" HeaderText="IMP_REGIMEN ESPECIAL" ReadOnly="True" SortExpression="IMP_REGIMEN ESPECIAL" />
                    <asp:BoundField DataField="SERIE_DOC REG_ESPECIAL" HeaderText="SERIE_DOC REG_ESPECIAL" ReadOnly="True" SortExpression="SERIE_DOC REG_ESPECIAL" />
                    <asp:BoundField DataField="NUM_DOC REGIMEN_ESPECIAL" HeaderText="NUM_DOC REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="NUM_DOC REGIMEN_ESPECIAL" />
                    <asp:BoundField DataField="FECHA_DOC REGIMEN_ESPECIAL" HeaderText="FECHA_DOC REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="FECHA_DOC REGIMEN_ESPECIAL" />
                    <asp:BoundField DataField="CODIGO_PROPUESTO" HeaderText="CODIGO_PROPUESTO" ReadOnly="True" SortExpression="CODIGO_PROPUESTO" />
                    <asp:BoundField DataField="PORCENTAJE_IGV" HeaderText="PORCENTAJE_IGV" ReadOnly="True" SortExpression="PORCENTAJE_IGV" />
                    <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                    <asp:BoundField DataField="CONDICION_PERCEPCION" HeaderText="CONDICION_PERCEPCION" ReadOnly="True" SortExpression="CONDICION_PERCEPCION" />
                    <asp:BoundField DataField="IMP_REG_ESPECIAL" HeaderText="IMP_REG_ESPECIAL" ReadOnly="True" SortExpression="IMP_REG_ESPECIAL" />
                    <asp:BoundField DataField="EMPLEADO" HeaderText="EMPLEADO" SortExpression="EMPLEADO" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="I_CONTASIS_Viaticos" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET descripcion =@descripcion , Ncomprobante =@Ncomprobante , importe =@importe , IdrucProveedor =@IdrucProveedor , ImpAdquicionGrabada = ImpAdquicionGrabada 
WHERE idRGdetalle=@idRGdetalle">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="ddlMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="Ncomprobante" />
                    <asp:Parameter Name="importe" />
                    <asp:Parameter Name="IdrucProveedor" />
                    <asp:Parameter Name="idRGdetalle" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
