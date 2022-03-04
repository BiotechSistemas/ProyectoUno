<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/logistica.Master" AutoEventWireup="true" CodeBehind="NotaCredito.aspx.cs" Inherits="biotech.facturacion.NotaCredito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    .auto-style2 {
        font-size: large;
    }
    .auto-style3 {
        text-align: left;
            width: 18%;
        }
    .auto-style4 {
        background-color: #FFFFCC;
    }
        .auto-style6 {
            width: 18%;
        }
        .auto-style7 {
            width: 45%;
        }
        .auto-style8 {
            width: 15%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">NOTA DE CREDITO:<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                    </div>
					<div class="chart">
                        <div align ="center">
    


                            
                            <br />
                            <asp:Panel ID="Panel1" runat="server">
                                <table align="center" class="auto-style1">
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="txtnotadecredito" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="text-align: left" class="auto-style7">
                                            <asp:TextBox ID="txtserie" runat="server" Width="50px" CssClass="auto-style4">E001</asp:TextBox>
                                            &nbsp;<strong><span class="auto-style2">-</span></strong>
                                            <asp:TextBox ID="txtnumfac" runat="server" Width="100px" CssClass="auto-style4"></asp:TextBox>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BUSCAR" Height="26px" />
                                        </td>
                                        <td class="auto-style8">
                                            <asp:TextBox ID="txtfechaa" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Nº NOTA CREDITO</td>
                                        <td style="text-align: left" class="auto-style7">DOCUMENTO QUE MODIFICA</td>
                                        <td class="auto-style8">FECHA(dd/mm/aaaa)</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="txtfactura" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="txtcliente" runat="server" Width="300px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:TextBox ID="txtmonto" runat="server" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">FACTURA</td>
                                        <td style="text-align: left" class="auto-style7">CLIENTE</td>
                                        <td style="text-align: left" class="auto-style8">MONTO</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">MOTIVO:</td>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtmotivo" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="NUEVO" Width="120px" />
                                        </td>
                                        <td colspan="2">
                                            <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="REGISTRAR" Width="268px" />
                                            <asp:Label ID="lblidfactura" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblnotadecredito" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">&nbsp;</td>
                                        <td colspan="2">
                                            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                            <br />
                            <asp:Panel ID="Panel2" runat="server">
                                Notas de Crèdito Registradas:<br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idnodcred" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="idnodcred" HeaderText="COD" ReadOnly="True" SortExpression="idnodcred" />
                                        <asp:BoundField DataField="notacredito" HeaderText="NOTA CRED" SortExpression="notacredito" />
                                        <asp:BoundField DataField="fecha" HeaderText="F.EMISION" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                                        <asp:BoundField DataField="factura" HeaderText="FACTURA" SortExpression="factura" />
                                        <asp:BoundField DataField="motivo" HeaderText="MOTIVO" SortExpression="motivo" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [NotaCredito] WHERE [idnodcred] = @idnodcred" InsertCommand="INSERT INTO [NotaCredito] ([idnodcred], [notacredito], [fecha], [idfactura], [factura], [motivo]) VALUES (@idnodcred, @notacredito, @fecha, @idfactura, @factura, @motivo)" SelectCommand="SELECT [idnodcred], [notacredito], [fecha], [idfactura], [factura], [motivo] FROM [NotaCredito] ORDER BY [idnodcred] DESC" UpdateCommand="UPDATE [NotaCredito] SET [notacredito] = @notacredito, [fecha] = @fecha, [idfactura] = @idfactura, [factura] = @factura, [motivo] = @motivo WHERE [idnodcred] = @idnodcred">
                                    <DeleteParameters>
                                        <asp:Parameter Name="idnodcred" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="idnodcred" Type="Int32" />
                                        <asp:Parameter Name="notacredito" Type="String" />
                                        <asp:Parameter DbType="Date" Name="fecha" />
                                        <asp:Parameter Name="idfactura" Type="Int32" />
                                        <asp:Parameter Name="factura" Type="String" />
                                        <asp:Parameter Name="motivo" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="notacredito" Type="String" />
                                        <asp:Parameter DbType="Date" Name="fecha" />
                                        <asp:Parameter Name="idfactura" Type="Int32" />
                                        <asp:Parameter Name="factura" Type="String" />
                                        <asp:Parameter Name="motivo" Type="String" />
                                        <asp:Parameter Name="idnodcred" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <br />
                            </asp:Panel>
                            <br />
                            <br />
    


                            
             </div>
                    </div>
				</div>

			</div>
		</div>

</asp:Content>
