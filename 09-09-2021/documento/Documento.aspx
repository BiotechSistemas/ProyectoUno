<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Documento.aspx.cs" Inherits="biotech.documento.Documento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 805px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style5 {
            width: 475px;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3"><strong style="text-align: center">PLANILLA&nbsp;&nbsp;&nbsp;&nbsp; Nº
                        <asp:Label ID="lblid" runat="server"></asp:Label>
                        </strong></td>
                    <td style="text-align: right">
                        <asp:Image ID="Image1" runat="server" Height="56px" ImageUrl="~/images/logobiotech.jpg" Width="124px" />
                    </td>
                </tr>
            </table>
            <hr style="font-weight: 700" />
            <strong><span class="auto-style6">Fecha:</span></strong>
            <asp:Label ID="lblfecha" runat="server" CssClass="auto-style6"></asp:Label>
            <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br class="auto-style6" />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"><strong><span class="auto-style6">Razón Social:</span></strong>
                        <asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style6"></asp:Label>
                        <span class="auto-style6">&nbsp;&nbsp; </span></td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong><span class="auto-style6">Banco:</span></strong>
                        <asp:Label ID="lblbanco" runat="server" CssClass="auto-style6"></asp:Label>
                        <span class="auto-style6">&nbsp; </span></td>
                    <td>&nbsp;<strong><span class="auto-style6">Modalidad:</span></strong>
                        <asp:Label ID="lbltipodocumento" runat="server" CssClass="auto-style6"></asp:Label>
                    </td>
                </tr>
            </table>
            N<strong><span class="auto-style6">úmero cuenta: </span></strong>
            <asp:Label ID="lblnumcuenta" runat="server" CssClass="auto-style6"></asp:Label>
            <strong>
            <br class="auto-style6" />
            <span class="auto-style6">Direcciòn:</span></strong>
            <asp:Label ID="lblempresadireccion" runat="server" CssClass="auto-style6"></asp:Label>
            <br />
            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
            <br />
            <br />
            <span class="auto-style6">Detalle de documentos en planilla:</span><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDETALLE" DataSourceID="SqlDataSource2" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" style="font-size: small" Width="100%">
                <Columns>
                    <asp:BoundField DataField="CODDETALLE" HeaderText="ID" ReadOnly="True" SortExpression="CODDETALLE" Visible="False" />
                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZON" HeaderText="RAZON" SortExpression="RAZON" />
                    <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                    <asp:BoundField DataField="NBANCO" HeaderText="NBANCO" SortExpression="NBANCO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoLetrasAnexas" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblid" Name="idletra" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
    <a href='javascript:window.print(); void 0;'>Imprimir</a> 


</body>
</html>
