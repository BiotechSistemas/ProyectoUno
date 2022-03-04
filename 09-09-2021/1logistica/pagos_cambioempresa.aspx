<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="pagos_cambioempresa.aspx.cs" Inherits="biotech._1logistica.pagos_cambioempresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
        width: 712px;
    }
    .auto-style5 {
        color: #990000;
        font-size: x-small;
    }
    .auto-style6 {
        height: 35px;
    }
    .auto-style7 {
        height: 35px;
        width: 75px;
        color: #006600;
            }
    .auto-style8 {
        width: 75px;
    }
    .auto-style9 {
        font-weight: 700;
    }
    .auto-style10 {
            color: #006600;
            text-align: left;
        }
    .auto-style12 {
        height: 35px;
        color: #006600;
            text-align: left;
        }
    .auto-style13 {
            width: 75px;
            color: #006600;
        }
        .auto-style14 {
            font-size: x-small;
        }
        .auto-style15 {
            font-size: x-small;
        }
        .auto-style16 {
            color: #006600;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>
    ACTUALIZAR TITULAR PAGOS</h4>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" CssClass="auto-style14" DataKeyNames="COD" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
                <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" />
                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                <asp:BoundField DataField="MCUOTAS" HeaderText="CUOTAS" SortExpression="MCUOTAS" />
                <asp:BoundField DataField="EMP" HeaderText="EMP" ReadOnly="True" SortExpression="EMP" />
            </Columns>
            <HeaderStyle BackColor="#666666" ForeColor="White" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="P_PAGOSPORREALIZAR" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
    <asp:Panel ID="PanelDescripcion" runat="server">
<p>
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style16" colspan="3"><strong>DETALLE DE CUENTA</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Cod. de cuenta</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txtidcuenta" type="number" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btVerificar" runat="server" OnClick="btVerificar_Click" Text="Verificar" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style7">Tipo pago:</td>
                            <td class="auto-style6">
                                <asp:Label ID="lbltipo" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style12">Monto:</td>
                            <td class="auto-style6">
                                <asp:Label ID="lblmontocapital" runat="server" CssClass="auto-style9"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">Titular:</td>
                            <td colspan="3">
                                <asp:Label ID="lblTitular" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">Proveedor:</td>
                            <td>
                                <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style10">N° Doc:</td>
                            <td>
                                <asp:Label ID="lblndoc" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">F.Emisión:</td>
                            <td>
                                <asp:Label ID="lblfechaemision" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style10">F.Vencto:</td>
                            <td>
                                <asp:Label ID="lblfechavecto" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">N° cuotas:</td>
                            <td>
                                <asp:Label ID="lblcuotas" runat="server"></asp:Label>
                                -<asp:Label ID="lblcpagadas" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style10">Monto cuotas:</td>
                            <td>
                                <asp:Label ID="lblmontocuotas" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">Glosa:</td>
                            <td colspan="3">
                                <asp:Label ID="lblglosa" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style5"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Actualizar grupo pago:</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="ddlNuevoGrupo" runat="server" Width="200px" DataSourceID="SqlDataSource2" DataTextField="empresa" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [empresa], [empresa1], [id] FROM [tb_empresas] WHERE ([estado] = @estado)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="btActualizar" runat="server" Text="Actualizar" Width="100px" OnClick="btActualizar_Click" />
            </td>
        </tr>
    </table>
</p></asp:Panel>
    <div>
        <asp:Panel ID="PanelBio" runat="server">
            <h4>&nbsp;</h4>
            <h4>DETALLE CUENTAS POR PAGAR BIOTECH</h4>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style15" DataKeyNames="COD" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="15" Width="100%">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                    <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                    <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                    <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                    <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
                    <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" />
                    <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                    <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                    <asp:BoundField DataField="MCUOTAS" HeaderText="MCUOTAS" SortExpression="MCUOTAS" />
                    <asp:BoundField DataField="EMP" HeaderText="EMP" ReadOnly="True" SortExpression="EMP" />
                </Columns>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="P_PAGOSPORREALIZARbio" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </asp:Panel>
    </div>
    <p>
    <br />
</p>
</asp:Content>
