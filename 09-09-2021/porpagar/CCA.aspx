<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="CCA.aspx.cs" Inherits="biotech.porpagar.CCA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
		  <div class="row-fluid">
			<div class="col-md-12">
                <h1>RESUMEN CENTRO COSTO</h1>
                <asp:Panel ID="payuda" runat="server">
                </asp:Panel>
                <table class="auto-style1">
                    <tr>
                        <td>
                            AÑO:<br />
                            <asp:DropDownList ID="ddlano" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" Width="200px">
                            </asp:DropDownList>
                            </td>
                        <td>
                            <asp:Button ID="btnGenerar" runat="server" Text="GENERAR" OnClick="btnGenerar_Click" />
                            <br />
                            </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                            <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.anos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:GridView ID="gvcca" runat="server" DataSourceID="SqlDataSourceCCA" AutoGenerateColumns="False" Width="700px" DataKeyNames="idmes" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvcca_SelectedIndexChanged" OnRowDataBound="gvcca_RowDataBound" ShowFooter="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="idmes" HeaderText="COD" SortExpression="idmes" ReadOnly="True" />
                        <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" />
                         <asp:BoundField DataField="IMPGASTOS" HeaderText="TOTAL COMPRAS/SERVICIOS" ReadOnly="True" SortExpression="IMPGASTOS" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPVIATIOS" HeaderText="TOTAL VIATICOS" ReadOnly="True" SortExpression="IMPVIATIOS" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#E6E6CC" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSourceCCA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.resumenCCA_ano" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidAno" Name="idano" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <br />
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <strong>RESUMEN CENTRO DE COSTO:</strong> PERIODO:
                    <asp:Label ID="lblidAno" runat="server"></asp:Label>
                    -<asp:Label ID="lblidmes" runat="server"></asp:Label>
                    <asp:GridView ID="gvMensual" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDCCI,CCAUXILIAR" DataSourceID="SqlDataSourcemes" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvMensual_RowDataBound" OnSelectedIndexChanged="gvMensual_SelectedIndexChanged" ShowFooter="True" Width="700px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="IDCCI" HeaderText="COD" ReadOnly="True" SortExpression="IDCCI" />
                            <asp:BoundField DataField="CCAUXILIAR" HeaderText="CENTRO DE COSTOS (CC)" ReadOnly="True" SortExpression="CCAUXILIAR" />
                            <asp:BoundField DataField="IMPSOLES" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="IMPSOLES">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra centro de costo...
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#E6E6CC" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcemes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_resumenCCA_mes" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidmes" Name="idMes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidAno" Name="idAno" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <strong>RESUMEN CENTRO DE COSTO AUXILIAR:</strong>
                    <asp:Label ID="lblidcc" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblccDescripcion" runat="server"></asp:Label>
                    <asp:GridView ID="gvCCauxiliar" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDCCI,PERIODO,CCAUXILIAR" DataSourceID="SqlDataSource1ccaux" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvCCauxiliar_RowDataBound" OnSelectedIndexChanged="gvCCauxiliar_SelectedIndexChanged" ShowFooter="True" Width="700px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="IDCCI" HeaderText="COD" ReadOnly="True" SortExpression="IDCCI" />
                            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO" />
                            <asp:BoundField DataField="CCAUXILIAR" HeaderText="CC AUXILIAR" ReadOnly="True" SortExpression="CCAUXILIAR" />
                            <asp:BoundField DataField="IMPSOLES" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="IMPSOLES">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra centro de costo Auxiliar.
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#E6E6CC" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1ccaux" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_resumenCCaux_cc" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidAno" Name="idAno" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidmes" Name="idMes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidcc" Name="idcc" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
                <asp:Label ID="lblidccAux" runat="server" Visible="False"></asp:Label>
                <asp:Panel ID="Panel3" runat="server" Visible="False">
                    <strong>RESUMEN COMPRAS/SERVICIOS REALIZADOS:</strong>
                    <asp:Label ID="lblccauxiliarDetalle" runat="server"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSourceresumPagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_pagosxcca" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidAno" Name="idano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidmes" Name="idmes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidccAux" Name="idcca" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gvPagos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPago" DataSourceID="SqlDataSourceresumPagos" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvPagos_RowDataBound" ShowFooter="True" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="idPago" HeaderText="COD. PAGO" ReadOnly="True" SortExpression="idPago" >
                            <HeaderStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" >
                            <HeaderStyle Width="100px" />
                            <ItemStyle Font-Bold="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPSOLES" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE EN SOLES" SortExpression="IMPSOLES">
                            <HeaderStyle Width="100px" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GLOSA" HeaderText="DETALLE" ReadOnly="True" SortExpression="GLOSA" />
                            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO" />
                        </Columns>
                        <FooterStyle BackColor="#E6E6CC" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />

                </div>
              </div>
         </div>

</asp:Content>
