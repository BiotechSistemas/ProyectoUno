<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="Regularizarpago.aspx.cs" Inherits="biotech.porpagar.Regularizarpago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
                

         .auto-style5 {
            font-size: x-large;
        }

        .auto-style7 {
            font-size: x-large;
        }

        .auto-style8 {
            width: 385px;
            text-align: left;
        }

        .auto-style9 {
            color: #006600;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <h2 class="auto-style9" style="text-align: center">
        <strong>CUENTAS POR PAGAR&nbsp; </strong>
        </h2>

    <hr />

    <center>
       
            <br />
            <asp:Panel ID="PanelPrincipalregPago" runat="server">
                <br />
                <asp:Panel ID="Panelregpago" runat="server">
                    Detalle de pagos por regularizar<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: medium" Width="90%">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                            <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                            <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                            <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                            <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MCUOTAS" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="MCUOTAS">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" SortExpression="CUOTA">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MONTOPAGADO" DataFormatString="{0:0,0.00}" HeaderText="I.PAGADO" SortExpression="MONTOPAGADO">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="XPAGARaprox" DataFormatString="{0:0,0.00}" HeaderText="XPAGAR" ReadOnly="True" SortExpression="XPAGARaprox">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EMP" HeaderText="EMP" ReadOnly="True" SortExpression="EMP" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="P_REGULARIZARPAGOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:Panel ID="PanelregpagoDetalle" runat="server">
                        <span class="auto-style7">Detalle de pagos por regularizar:<br /> </span>
                        <br />
                        <table>
                            <tr>
                                <td class="auto-style8"><strong>Item a regularizar:</strong>
                                    <asp:Label ID="lblcoddetalle10" runat="server"></asp:Label>
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Empresa: </strong>
                                    <asp:Label ID="lblempresa10" runat="server"></asp:Label>
                                    &nbsp;<hr /> </td>
                            </tr>
                            <tr>
                                <td class="auto-style8"><strong>Titular: </strong>
                                    <asp:Label ID="lbltitular10" runat="server"></asp:Label>
                                    <br />
                                    <strong>Categoria:</strong>
                                    <asp:Label ID="lblcategoria10" runat="server"></asp:Label>
                                    <strong>&nbsp;</strong><br /> <strong>Provedor: </strong>
                                    <asp:Label ID="lblproveedor10" runat="server"></asp:Label>
                                    <br />
                                    <strong>Concepto:</strong>
                                    <asp:Label ID="lblconcepto10" runat="server"></asp:Label>
                                    <br />
                                    <strong>Monto Capital: </strong>
                                    <asp:Label ID="lblmonto10" runat="server"></asp:Label>
                                    <br />
                                    <strong>F. Vencimiento: </strong>
                                    <asp:Label ID="lblfvencto10" runat="server"></asp:Label>
                                    <br />
                                    <strong>Pago/Cuota:</strong> N°
                                    <asp:Label ID="lblpagocuota10" runat="server"></asp:Label>
                                    <br />
                                    <strong>Importe aprox:</strong>
                                    <asp:Label ID="lblmoneda10" runat="server"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lblimporte10" runat="server"></asp:Label>
                                    <br />
                                    <hr />
                                    <strong>Monto pagado:&nbsp;</strong>
                                    <asp:Label ID="lblmoneda11" runat="server"></asp:Label>
                                    &nbsp;<asp:Label ID="lblmontpagado10" runat="server"></asp:Label>
                                    <br />
                                    <strong>Pago aprox:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblmoneda12" runat="server" style="color: #CC3300"></asp:Label>
                                    <asp:Label ID="lblapagaraprox10" runat="server" style="color: #CC3300"></asp:Label>
                                    <br />
                                    <hr />
                                    <strong>Observación: </strong>
                                    <asp:Label ID="lblobservacion10" runat="server"></asp:Label>
                                    <hr />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">Fecha pago:&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtfechapago10" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                                    <br />
                                    Tipo de pago:
                                    <asp:DropDownList ID="ddltppago10" runat="server" DataSourceID="SqlDataSource2" DataTextField="medioPago" DataValueField="idmediopago" Width="200px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                                    <br />
                                    N° operacion:
                                    <asp:TextBox ID="txtnumerooperacion10" runat="server" Width="200px"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Importe:
                                    <asp:TextBox ID="txtimportepagado10" runat="server" step="0.01" type="number" Width="200px"></asp:TextBox>
                                    <br />
                                    Observación:
                                    <br />
                                    <asp:TextBox ID="txtobservacion10" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Button ID="Button10" runat="server" OnClick="Button1_Click" Text="Registrar" Width="60%" />
                                    <asp:Button ID="Button20" runat="server" OnClick="Button2_Click" Text="Cancelar" Width="35%" />
                                    <br />
                                    <asp:Label ID="lblmensaje10" runat="server" style="color: #CC3300"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
                </asp:Panel>
            </asp:Panel>

    </center>
    <br />
    <br />
</asp:Content>
