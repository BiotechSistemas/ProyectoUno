<%@ Page Title="" Language="C#" MasterPageFile="~/Almacen/Principal.Master" AutoEventWireup="true" CodeBehind="AlmTraslado.aspx.cs" Inherits="biotech.Almacen.AlmTraslado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style6 {
            height: 20px;
            width: 224px;
        }
        .auto-style25 {
            width: 73px;
            height: 57px;
            text-align: right;
        }
        .auto-style26 {
            width: 224px;
            height: 57px;
        }
        .auto-style38 {
            height: 20px;
            width: 200px;
        }
        .auto-style39 {
            width: 200px;
            height: 57px;
        }
        .auto-style43 {
            width: 158px;
            text-align: right;
        }
        .auto-style45 {
            height: 20px;
            width: 158px;
        }
        .auto-style46 {
            width: 158px;
            height: 57px;
            text-align: right;
        }
        .auto-style52 {
            width: 224px;
        }
        .auto-style56 {
            height: 20px;
            width: 101px;
        }
        .auto-style57 {
            width: 101px;
            height: 57px;
        }
        .auto-style60 {
            width: 200px;
        }
        .auto-style62 {
            width: 101px;
        }
        .auto-style64 {
            width: 1104px;
        }
        .auto-style65 {
            height: 20px;
            width: 73px;
        }
        .auto-style68 {
            width: 73px;
        }
        .auto-style69 {
            height: 20px;
            width: 313px;
        }
        .auto-style70 {
            width: 313px;
            height: 57px;
        }
        .auto-style72 {
        }
        .auto-style73 {
            width: 158px;
            text-align: right;
            height: 117px;
        }
        .auto-style74 {
            height: 117px;
        }
        .auto-style75 {
            width: 73px;
            height: 117px;
        }
        .auto-style76 {
            width: 200px;
            height: 117px;
        }
        .auto-style77 {
            width: 101px;
            height: 117px;
        }
        .auto-style78 {
            width: 224px;
            height: 117px;
            text-align: right;
        }
        .auto-style79 {
            width: 158px;
            text-align: right;
            height: 76px;
        }
        .auto-style80 {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
    <h1 class="grupo__titulo">TRASLADO DE MERCADERIA</h1>
    <asp:Panel ID="Panel1"  runat="server">
        <table class="auto-style64">
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style69">
                    <asp:Label ID="lblidDalida" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style65">
                    <asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
                </td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">Fecha Salida:</td>
                <td class="auto-style70">
                    <asp:TextBox ID="txtfechasalida" runat="server" TextMode="Date" Width="200px" required></asp:TextBox>
                </td>
                <td class="auto-style25">
                    Almacen:<br />
                    </td>
                <td class="auto-style39">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idalmacen" Height="40px" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idalmacen], [descripcion] FROM [almacen] WHERE ([estado] = @estado)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style57">Guia remisión:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtguiarem" runat="server" Width="200px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style79"></td>
                <td colspan="5" class="auto-style80">
                    <asp:TextBox ID="txtglosa" runat="server" Height="40px" TextMode="MultiLine" placeholder="Asunto o comenario" Width="100%" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style73">Ingresar producto:</td>
                <td class="auto-style74">
                    <asp:DropDownList ID="ddlProductos" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="producto" DataValueField="producto" Height="30px" Width="200px" OnSelectedIndexChanged="ddlProductos_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:DropDownList ID="ddlPresentacion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="presentacion" DataValueField="idProducto" Height="30px" OnSelectedIndexChanged="ddlPresentacion_SelectedIndexChanged" Width="100px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlProductos" Name="pro" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style75">
                    <asp:TextBox ID="txtcantidad" runat="server" type="number" ToolTip="Cantidad" required Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style76">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/images/agre.png" OnClick="ImageButton1_Click" Width="50px" ImageAlign="Baseline" />
                </td>
                <td class="auto-style77">
                    Existencia:<asp:Label ID="lblExistencia" runat="server" style="font-weight: 700"></asp:Label>
                    <asp:Label ID="lblcodProducto" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblguiaa" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style78">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style72" colspan="5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDSALIDA,CODPRODUCT" DataSourceID="SqlDataSource4" Width="700px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True" SelectText="X">
                            <HeaderStyle Width="20px" />
                            <ItemStyle BackColor="#CC0000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                            <asp:BoundField DataField="IDSALIDA" HeaderText="IDSALIDA" ReadOnly="True" SortExpression="IDSALIDA" Visible="False" />
                            <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" Visible="False" />
                            <asp:BoundField DataField="FECHASALIDA" HeaderText="FECHASALIDA" SortExpression="FECHASALIDA" Visible="False" />
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" >
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TPSALIDA" HeaderText="TPSALIDA" SortExpression="TPSALIDA" Visible="False" />
                            <asp:BoundField DataField="CODPRODUCT" HeaderText="CODPRODUCT" SortExpression="CODPRODUCT" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proSalidaId" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblguiaa" Name="guiaRem" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblmensaje" runat="server" style="color: #990000; font-size: x-small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style72">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style62">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style72">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style62">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
        </table>


    </asp:Panel>
    <p>
    </p>
</asp:Content>
