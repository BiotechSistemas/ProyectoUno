<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="EnsayosRegistrados.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.EnsayosRegistrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style17 {
            text-align: left;
            height: 25px;
        }
        .auto-style18 {
            font-weight: bold;
            text-align: left;
        }
        .auto-style20 {
            width: 164px;
            height: 22px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style25 {
            width: 1159px;
            text-align: left;
        }
        .auto-style27 {
            width: 1159px;
            height: 22px;
            text-align: left;
        }
        .auto-style28 {
            width: 15px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style29 {
            width: 15px;
            height: 22px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style32 {
            color: #990000;
            font-size: small;
        }
        .auto-style34 {
            font-weight: bold;
            text-align: left;
            height: 98px;
            width: 164px;
        }
        .auto-style35 {
            width: 15px;
            font-weight: bold;
            text-align: left;
            height: 98px;
        }
        .auto-style36 {
            width: 1159px;
            text-align: left;
            height: 98px;
        }
        .auto-style37 {
            font-weight: bold;
            text-align: left;
            width: 164px;
        }
        .auto-style38 {
            width: 256px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
    <h2 class="grupo__titulo">ENSAYOS REGISTRADOS</h2>

        <asp:Panel runat="server" class="grupo__descripcion" ID="PanelPrincipalalmacen" unat="server">
            ENSAYOS POR ATENDER<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="COD,RUC" DataSourceID="SqlDataSource2" GridLines="Horizontal" style="font-size: x-small; text-align: left" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="15">
                <Columns>
                    <asp:TemplateField HeaderText="ENSAYO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("ENSAYO") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                    <asp:BoundField DataField="RTC" HeaderText="ASESOR COMERC." ReadOnly="True" SortExpression="RTC" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO">
                    <HeaderStyle Width="350px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fecharequerida" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REQUERIDA" SortExpression="fecharequerida">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                    <asp:BoundField DataField="RazonSocial" HeaderText="RAZON SOCIAL" SortExpression="RazonSocial" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                    <asp:BoundField DataField="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.TERMINO" SortExpression="FTERMINO">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLLEGADA" HeaderText="PLLEGADA" SortExpression="PLLEGADA" Visible="False" />
                    <asp:BoundField DataField="GERENTE" HeaderText="GERENTE" SortExpression="GERENTE" Visible="False" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="GERENTE" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="EST. GEREN. COMERCIAL">
                        <ControlStyle Height="18px" Width="18px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ATENDIDO">
                        <ControlStyle Height="18px" Width="18px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVend" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br />
            <br />
            ENSAYOS ATENDIDOS<asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="COD,RUC" GridLines="Horizontal" style="font-size: x-small; text-align: left;" Width="100%" OnSelectedIndexChanged="gv_SelectedIndexChanged" AllowPaging="True" PageSize="15">
                <Columns>
                    <asp:TemplateField ShowHeader="False" HeaderText="ENSAYO">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("ENSAYO") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                    <asp:BoundField DataField="RTC" HeaderText="ASESOR COMERC" SortExpression="RTC" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO" >
                    <HeaderStyle Width="350px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fecharequerida" HeaderText="F. REQUERIDA" SortExpression="fecharequerida" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                    <asp:BoundField DataField="RazonSocial" HeaderText="RAZON SOCIAL" SortExpression="RazonSocial" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT." SortExpression="cantidad" >
                    </asp:BoundField>
                    <asp:BoundField DataField="FTERMINO" HeaderText="F. TERMINO" SortExpression="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GERENTE" HeaderText="EST. GEREN. COMERCIAL" SortExpression="GERENTE" Visible="False" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ATENDIDO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="GERENTE" DataImageUrlFormatString="~/apro{0}.png" HeaderText="EST. GEREN. COMERCIAL">
                        <ControlStyle Height="18px" Width="18px" />
                        <HeaderStyle Width="80px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ATENDIDO">
                        <ControlStyle Height="18px" Width="18px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVend1" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </asp:Panel>


    <asp:Panel ID="PanelGerenciaComercial" class="grupo__descripcion" runat="server">
        <asp:Panel ID="PanelEnsayosxAtend" runat="server" Visible="False">
            <h4>ENSAYOS POR APROBAR</h4>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID,ENSAYO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: x-small" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="ENSAYO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ENSAYO") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="True" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                    <asp:BoundField DataField="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGIST" SortExpression="FREGISTRADA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REQUERIDA" SortExpression="FREQUERIDA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDVENDEDOR" HeaderText="VENDEDOR" ReadOnly="True" SortExpression="IDVENDEDOR">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDPRODUCTO" HeaderText="IDPRODUCTO" SortExpression="IDPRODUCTO" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANT" SortExpression="CANTIDAD" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ESTADO">
                        <ControlStyle Height="20px" Width="20px" />
                    </asp:ImageField>
                    <asp:ButtonField CommandName="APROBAR" HeaderText="APROBAR" ShowHeader="True" Text="APROBAR">
                    <HeaderStyle BorderStyle="Groove" Height="20px" Width="20px" />
                    <ItemStyle BackColor="#E1E1E1" BorderStyle="Groove" Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle Font-Bold="False" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Ensayo_registrados" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:Label ID="lblmensajeprincipal" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblClientee" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblvendedorr" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblproductoo" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblcantt" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblfecharegg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblfechareqq" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblensayoo" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblTituloMensaje" runat="server" Visible="False"></asp:Label>
        </asp:Panel>
        <br />
    </asp:Panel>


    <asp:Panel ID="PanelDescripcion" runat="server" style="margin-bottom: 0px; text-align: center;">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17" colspan="3">
                        <h3><b>Detalle de ensayo: N°<asp:Label ID="lblensayo" runat="server"></asp:Label>
                            <asp:Label ID="lblidensayo" runat="server" Visible="False"></asp:Label>
                            </b></h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">OBJETIVO</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblobjetivo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">F. Registro</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblfregistro" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">F. Requerida</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblfrequerida" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">Vendedor</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblvendedor" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">Cliente</td>
                    <td class="auto-style29">:</td>
                    <td class="auto-style27">
                        <asp:Label ID="lblcliente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">Producto</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblproducto" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">Cultivo</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblCultivo" runat="server"></asp:Label>
                        &nbsp;,<strong>&nbsp; hectárea a ensayar: </strong>
                        <asp:Label ID="lblhectareaensayar" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">Productos a competir</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblproductosCompetir" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">Precios a competir</td>
                    <td class="auto-style29">:</td>
                    <td class="auto-style27">
                        <asp:Label ID="lblprecioCompetir" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr valign="top">
                    <td class="auto-style37">Observación</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblobservacion" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">F. Termino</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblfTermino" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">F. Contacto</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblfContacto" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">F. Instalación</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblfInstalacion" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">F. Evaluación</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblFevaluacion" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr valign="top">
                    <td class="auto-style37">Glosa G.C.</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblglosagm" runat="server"></asp:Label>
                    </td>
                </tr>
         </table>   


        
        
       
    <asp:Panel ID="PanelOpGerenciComercial" runat="server" style="text-align: center">

        <table class="auto-style1">
                <tr>
                    <td class="auto-style18" colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr valign="top">
                    <td class="auto-style34">Gerencia Comercial Glosa</td>
                    <td class="auto-style35">:</td>
                    <td class="auto-style36">
                        <asp:TextBox ID="txtGlosaComercial" runat="server" Height="60px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style25">
                        <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style32"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#C2E19D" OnClick="Button1_Click" Text="APROBAR" Width="100%" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="OBSERVAR" Width="100%" />
                    </td>
                    <td class="auto-style38">
                        <asp:Button ID="Button3" runat="server" ForeColor="#990000" OnClick="Button3_Click" Text="ANULAR" Width="100%" />
                    </td>
                    <td class="auto-style30">
                        &nbsp;</td>
                </tr>
            </table>

        
    </asp:Panel>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
            <br />
            <br />
         </asp:Panel>
    <div>
        <strong>Estados:     <asp:Image ID="Image1" runat="server" Height="15px" ImageUrl="~/images/apro1.png" Width="15px" />
&nbsp;= Aprobado,
        <asp:Image ID="Image2" runat="server" Height="15px" ImageUrl="~/images/apro55.png" Width="15px" />
&nbsp;= Observado,
        <asp:Image ID="Image3" runat="server" Height="15px" ImageUrl="~/images/apro2.png" Width="15px" />
&nbsp; Anulado y Sin acción.</div>
    <br />

        
</asp:Content>
