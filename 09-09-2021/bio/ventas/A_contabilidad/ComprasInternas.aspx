
<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/A_contabilidad/contabilidad.Master" AutoEventWireup="true" CodeBehind="ComprasInternas.aspx.cs" Inherits="biotech.bio.ventas.A_contabilidad.ComprasInternas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width:1000px;
        }
        .auto-style2 {
            width: 128px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>RENDICIÓN DE GASTOS - INTERNOS</h2>
    <asp:Panel ID="Panelprincipal" runat="server">
         <table class="auto-style1">
        <tr>
            <td>DESDE:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtf1" placeholder ="dd-mm-yyyy" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>-</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtf2" placeholder ="dd-mm-yyy" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnGenerar" runat="server" OnClick="btnGenerar_Click" Text="GENERAR" />
            </td>
            <td>
                <asp:ImageButton ID="ibtnEportar" runat="server" Height="25px" ImageUrl="~/images/excel.png" OnClick="ibtnEportar_Click" Width="25px" />
            </td>
        </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="payuda" runat="server" Visible="False">
        <asp:Label ID="idctaDet" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp; cod tipodoc:
        <asp:Label ID="lbl1tipodoc" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ,&nbsp; num documento :
        <asp:Label ID="lbl1numdocumento" runat="server"></asp:Label>
        &nbsp;,&nbsp;&nbsp; ctacuentas
        <asp:Label ID="lbl1ctacuentasconcar" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp; ,&nbsp; importebase:
        <asp:Label ID="lbl1importebase" runat="server"></asp:Label>
        &nbsp;&nbsp; igv:
        <asp:Label ID="lbl1igv" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp; idcentro cosot:
        <asp:Label ID="lblidcentroCosto" runat="server"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <HR/>
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <strong>GLOSA:</strong><br />
                    <asp:Label ID="lbl1glosa" runat="server"></asp:Label>
                </td>

                 <td>
                     &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr> <td>
                    <asp:DropDownList ID="ddlCtaGasto" runat="server" DataSourceID="SqlDataSource2" DataTextField="CODGASTOSDESCRIPCION" DataValueField="idCentroDetalle" Height="28px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="CONCAR_CTAGASTOSDESCRIPCION" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    Cuenta gasto:</td>
                <td>
                    <asp:DropDownList ID="ddlTpdocumento" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="ID" Height="28px" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    Tipo de documento:</td>
                <td>
                    <asp:TextBox ID="txtnumdocumento" runat="server"></asp:TextBox>
                    <br />
                    Nº Documento:</td>
               
                <td>
                    <asp:TextBox ID="txtigv" runat="server"></asp:TextBox>
                    <br />
                    IGV:</td>
                <td>
                    <asp:TextBox ID="txtimportebase" runat="server"></asp:TextBox>
                    <br />
                    Importe Total:</td>
                <td>
                    <asp:DropDownList ID="ddlCentroCosto" runat="server" DataSourceID="SqlDataSourceidcentocosto" DataTextField="Descripcion" DataValueField="idCentroCosto">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceidcentocosto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idCentroCosto,Descripcion from gastos.CentroCosto

"></asp:SqlDataSource>
                    <br />
                    Centro de costo:</td>
                <td>
                    <asp:Button ID="btnActualizar" runat="server" Height="50px" OnClick="btnActualizar_Click" Text="ACTUALIZAR" />
                </td>
                <td>
                    <asp:Button ID="btnretornar" runat="server" ForeColor="#990000" Height="50px" Text="RETORNAR" />
                </td>
            </tr>
        </table>
         <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000" style="font-size: small"></asp:Label>
        <hr />
    </asp:Panel>
    <asp:Panel ID="pComprasInternas" runat="server">
        Registro contable detallado:<asp:GridView ID="gvInternas" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="COD_DETCTA,GLOSA" DataSourceID="SqlDataSourceinternas" Font-Size="X-Small" OnSelectedIndexChanged="gvInternas_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" />
                <asp:BoundField DataField="ASIENTO" HeaderText="ASIENTO" ReadOnly="True" SortExpression="ASIENTO" />
                <asp:BoundField DataField="COMPROB" HeaderText="COMPROB" ReadOnly="True" SortExpression="COMPROB" />
                <asp:BoundField DataField="FECHA_ASIENTO" HeaderText="FECHA ASIENTO" ReadOnly="True" SortExpression="FECHA_ASIENTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA_DOC" HeaderText="FECHA DOC" ReadOnly="True" SortExpression="FECHA_DOC">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA_VCTO" HeaderText="FECHA VCTO" ReadOnly="True" SortExpression="FECHA_VCTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" ReadOnly="True" SortExpression="GLOSA" />
                <asp:BoundField DataField="RUC_DNI" HeaderText="RUC_DNI" SortExpression="RUC_DNI" />
                <asp:BoundField DataField="CENTRO_COSTO" HeaderText="CENTRO COSTO" SortExpression="CENTRO_COSTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TD" HeaderText="TD" SortExpression="TD" />
                <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DOC" HeaderText="DOC" ReadOnly="True" SortExpression="DOC">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="BASE" HeaderText="BASE" SortExpression="BASE" DataFormatString="{0:0,0.00}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Bottom" />
                </asp:BoundField>
                <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" DataFormatString="{0:0,0.00}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CTA_GASTO" HeaderText="CTA GASTO" SortExpression="CTA_GASTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MON" HeaderText="MON" ReadOnly="True" SortExpression="MON">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="NUMERO_DOC" HeaderText="NUMERO DOC" ReadOnly="True" SortExpression="NUMERO_DOC">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TIPO_CONVER" HeaderText="TIPO CONVER" ReadOnly="True" SortExpression="TIPO_CONVER">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA_CONVER" HeaderText="FECHA CONVER" ReadOnly="True" SortExpression="FECHA_CONVER">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="COD_ESTADOREG" HeaderText="ESTADO REG" SortExpression="COD_ESTADOREG">
                <ItemStyle BackColor="#E8F4F4" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COD_DETCTA" HeaderText="COD DETCTA" SortExpression="COD_DETCTA">
                <ItemStyle BackColor="#E8F4F4" />
                </asp:BoundField>
                <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                <ItemStyle BackColor="#E8F4F4" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CODASESOR" HeaderText="COD ASESOR" SortExpression="CODASESOR">
                <ItemStyle BackColor="#E8F4F4" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                Información por generar....
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceinternas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_concar_compras_internas" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtf1" DbType="Date" Name="f1" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtf2" DbType="Date" Name="f2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
