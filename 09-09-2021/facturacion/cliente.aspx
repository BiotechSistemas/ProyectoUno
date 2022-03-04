<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/logistica.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="biotech.facturacion.cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 450px;
        }
        .auto-style2 {
            height: 44px;
        }
        .auto-style3 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      

       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">REGISTRAR CLIENTE</div>
					<div class="chart">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:Panel ID="Panel3" runat="server">
                                <hr />
                                <br />
                                Consultar Cliente:
                                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="..." Width="65px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Reg. nuevo cliente</asp:LinkButton>
                                <br />
                                <br />
                                <asp:Panel ID="Panel5" runat="server">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="784px">
                                        <Columns>
                                            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                            <asp:BoundField DataField="COND" HeaderText="COND" ReadOnly="True" SortExpression="COND" />
                                            <asp:BoundField DataField="RETE" HeaderText="RETE" SortExpression="RETE" />
                                            <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" ReadOnly="True" SortExpression="VENDEDOR" />
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
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_clientebk" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="param" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server">
                                <br />
                                <span class="auto-style3"><strong>REGISTRAR NUEVO CLIENTE</strong></span><br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="vendedor" DataValueField="empleadoid" Width="200px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_vendedoresaptos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="txtrazon" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="txtruc" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblcod" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Vendedor</td>
                                        <td>Razón&nbsp; Social</td>
                                        <td>Ruc</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <br />
                                            <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="REGISTRAR CLIENTE" />
                                            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                            <asp:Panel ID="Panel4" runat="server">
                                <hr />
                                <br />
                                Seleccionar Vendedor:
                                <asp:DropDownList ID="ddlvendedor" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="vendedor" DataValueField="empleadoid" OnSelectedIndexChanged="ddlvendedor_SelectedIndexChanged" Width="200px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_vendedoresaptos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblcodvendedor" runat="server"></asp:Label>
                                <br />
                                <br />
                                Detalle cliente:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="clienteid" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." style="font-size: medium">
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" />
                                        <asp:BoundField DataField="clienteid" HeaderText="COD" ReadOnly="True" SortExpression="clienteid">
                                        <ItemStyle ForeColor="#000099" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="razonsocial" HeaderText="RAZON SOCIAL" SortExpression="razonsocial">
                                        <ItemStyle ForeColor="#000099" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ruc" HeaderText="RUC" SortExpression="ruc">
                                        <ItemStyle ForeColor="#000099" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="lugar" HeaderText="LUGAR" SortExpression="lugar" Visible="False">
                                        <ItemStyle ForeColor="#000099" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="idvendedor" HeaderText="VEND" SortExpression="idvendedor">
                                        <ItemStyle ForeColor="#000099" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="condPago" HeaderText="COND" SortExpression="condPago" />
                                        <asp:BoundField DataField="cantdias" HeaderText="DIAS" SortExpression="cantdias" />
                                        <asp:BoundField DataField="telefonoEmpresa" HeaderText="TELEFONO" SortExpression="telefonoEmpresa" />
                                        <asp:BoundField DataField="direccion" HeaderText="DIRECCION" SortExpression="direccion" />
                                        <asp:BoundField DataField="representante" HeaderText="REPRESENTANTE" SortExpression="representante" />
                                        <asp:BoundField DataField="areaacargo" HeaderText="CARGO" SortExpression="areaacargo" />
                                        <asp:BoundField DataField="emailrepresentante" HeaderText="E-MAIL" SortExpression="emailrepresentante" />
                                        <asp:BoundField DataField="telefonoRepresente" HeaderText="TELEFONO2" SortExpression="telefonoRepresente" />
                                        <asp:BoundField DataField="cultivo" HeaderText="CULTIVO" SortExpression="cultivo" />
                                        <asp:BoundField DataField="hectarea" HeaderText="HECTAREA" SortExpression="hectarea" />
                                        <asp:BoundField DataField="tpcliente" HeaderText="RET" SortExpression="tpcliente" />
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [tb_cliente] WHERE [clienteid] = @clienteid" InsertCommand="INSERT INTO [tb_cliente] ([clienteid], [razonsocial], [ruc], [telefonoEmpresa], [direccion], [representante], [areaacargo], [emailrepresentante], [telefonoRepresente], [condPago], [cantdias], [cultivo], [hectarea], [idvendedor], [tpcliente], [lugar]) VALUES (@clienteid, @razonsocial, @ruc, @telefonoEmpresa, @direccion, @representante, @areaacargo, @emailrepresentante, @telefonoRepresente, @condPago, @cantdias, @cultivo, @hectarea, @idvendedor, @tpcliente, @lugar)" SelectCommand="SELECT [clienteid], [razonsocial], [ruc], [telefonoEmpresa], [direccion], [representante], [areaacargo], [emailrepresentante], [telefonoRepresente], [condPago], [cantdias], [cultivo], [hectarea], [idvendedor], [tpcliente], [lugar] FROM [tb_cliente] WHERE ([idvendedor] LIKE '%' + @idvendedor + '%') ORDER BY [clienteid] DESC" UpdateCommand="UPDATE [tb_cliente] SET [razonsocial] = @razonsocial, [ruc] = @ruc, [telefonoEmpresa] = @telefonoEmpresa, [direccion] = @direccion, [representante] = @representante, [areaacargo] = @areaacargo, [emailrepresentante] = @emailrepresentante, [telefonoRepresente] = @telefonoRepresente, [condPago] = @condPago, [cantdias] = @cantdias, [cultivo] = @cultivo, [hectarea] = @hectarea, [idvendedor] = @idvendedor, [tpcliente] = @tpcliente, [lugar] = @lugar WHERE [clienteid] = @clienteid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="clienteid" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="clienteid" Type="Int32" />
                                        <asp:Parameter Name="razonsocial" Type="String" />
                                        <asp:Parameter Name="ruc" Type="String" />
                                        <asp:Parameter Name="telefonoEmpresa" Type="String" />
                                        <asp:Parameter Name="direccion" Type="String" />
                                        <asp:Parameter Name="representante" Type="String" />
                                        <asp:Parameter Name="areaacargo" Type="String" />
                                        <asp:Parameter Name="emailrepresentante" Type="String" />
                                        <asp:Parameter Name="telefonoRepresente" Type="String" />
                                        <asp:Parameter Name="condPago" Type="String" />
                                        <asp:Parameter Name="cantdias" Type="Int32" />
                                        <asp:Parameter Name="cultivo" Type="String" />
                                        <asp:Parameter Name="hectarea" Type="String" />
                                        <asp:Parameter Name="idvendedor" Type="String" />
                                        <asp:Parameter Name="tpcliente" Type="String" />
                                        <asp:Parameter Name="lugar" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlvendedor" DefaultValue=" " Name="idvendedor" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="razonsocial" Type="String" />
                                        <asp:Parameter Name="ruc" Type="String" />
                                        <asp:Parameter Name="telefonoEmpresa" Type="String" />
                                        <asp:Parameter Name="direccion" Type="String" />
                                        <asp:Parameter Name="representante" Type="String" />
                                        <asp:Parameter Name="areaacargo" Type="String" />
                                        <asp:Parameter Name="emailrepresentante" Type="String" />
                                        <asp:Parameter Name="telefonoRepresente" Type="String" />
                                        <asp:Parameter Name="condPago" Type="String" />
                                        <asp:Parameter Name="cantdias" Type="Int32" />
                                        <asp:Parameter Name="cultivo" Type="String" />
                                        <asp:Parameter Name="hectarea" Type="String" />
                                        <asp:Parameter Name="idvendedor" Type="String" />
                                        <asp:Parameter Name="tpcliente" Type="String" />
                                        <asp:Parameter Name="lugar" Type="String" />
                                        <asp:Parameter Name="clienteid" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <br />
                            </asp:Panel>
                        </asp:Panel>
                    </div>
				</div>

			</div>
		</div>
    </div>



</asp:Content>
