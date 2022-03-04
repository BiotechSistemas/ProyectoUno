<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/A_contabilidad/contabilidad.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="biotech.bio.ventas.A_contabilidad.Ventas" %>
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
     <h2>RENDICIÓN DE VENTAS </h2>
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
                <asp:ImageButton ID="ibtnEportar" runat="server" Height="20px" ImageUrl="~/images/excel.png" OnClick="ibtnEportar_Click" Width="20px" />
            </td>
        </tr>
        </table>

<asp:Panel ID="payuda" runat="server">
</asp:Panel>
<asp:Panel ID="pventa" runat="server">
     Registro contable detallado:<asp:GridView ID="gvVentas" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVentas" Font-Size="X-Small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%" AllowSorting="True">
        <Columns>
           <asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ASIENTO" HeaderText="ASIENTO" ReadOnly="True" SortExpression="ASIENTO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="COMPROB" HeaderText="COMPROB" ReadOnly="True" SortExpression="COMPROB" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="FECHA_ASIENTO" HeaderText="FECHA ASIENTO" ReadOnly="True" SortExpression="FECHA_ASIENTO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="FECHA_DOC" HeaderText="FECHA DOC" ReadOnly="True" SortExpression="FECHA_DOC" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="FECHA_VCTO" HeaderText="FECHA VCTO" ReadOnly="True" SortExpression="FECHA_VCTO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" ReadOnly="True" SortExpression="GLOSA" />
            <asp:BoundField DataField="RUC_DNI" HeaderText="RUC_DNI" ReadOnly="True" SortExpression="RUC_DNI" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="TD" HeaderText="TD" ReadOnly="True" SortExpression="TD" />
            <asp:BoundField DataField="SERIE" HeaderText="SERIE" SortExpression="SERIE" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="DOC" HeaderText="DOC" SortExpression="DOC" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="BASE" HeaderText="BASE" ReadOnly="True" SortExpression="BASE" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CUENTA" HeaderText="CUENTA" ReadOnly="True" SortExpression="CUENTA" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="NUMERO_DOC" HeaderText="NUMERO DOC" ReadOnly="True" SortExpression="NUMERO_DOC" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="MON" HeaderText="MON" ReadOnly="True" SortExpression="MON" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CENTRO_COSTO" HeaderText="CENTRO COSTO" ReadOnly="True" SortExpression="CENTRO_COSTO" />
            <asp:BoundField DataField="CODVENDEDOR" HeaderText="VENDEDOR" SortExpression="CODVENDEDOR" >
            <ItemStyle BackColor="#E6FFE6" />
            </asp:BoundField>
            <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" />
            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
            <ItemStyle BackColor="#E6FFE6" />
            </asp:BoundField>
            <asp:BoundField DataField="PERIODO_VENTA" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO_VENTA" >
            <ItemStyle BackColor="#E6FFE6" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="TCAMBIO_VENTA" HeaderText="TCAMBIO" SortExpression="TCAMBIO_VENTA" >
            <ItemStyle BackColor="#E6FFE6" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" >
            <ItemStyle BackColor="#E6FFE6" />
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
    <asp:SqlDataSource ID="SqlDataSourceVentas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_concar_ventas_Facturacion" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtf1" DbType="Date" Name="f1" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtf2" DbType="Date" Name="f2" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Panel>
</asp:Content>
