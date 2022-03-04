<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/logistica.Master" AutoEventWireup="true" CodeBehind="Facturacion.aspx.cs" Inherits="biotech.facturacion.Facturacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 75%;
        }
        .auto-style9 {
            height: 23px;
            }
        .auto-style10 {
            width: 18%;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
            text-align: left;
            width: 13%;
        }
        .auto-style13 {
            width: 13%;
            height: 23px;
        }
        .auto-style15 {
            height: 23px;
            text-align: right;
            width: 6%;
        }
        .auto-style16 {
            width: 9%;
            color: #FF0000;
            text-align: left;
        }
        .auto-style18 {
            height: 23px;
            text-align: left;
            width: 9%;
        }
        .auto-style21 {
            text-align: left;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            width: 6%;
        }
        .auto-style24 {
            width: 13%;
        }
        .auto-style25 {
            width: 9%;
        }
        .auto-style26 {
            height: 23px;
            text-align: center;
            width: 18%;
        }
        .auto-style27 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style28 {
            text-align: left;
            font-size: small;
        }
        .auto-style29 {
            text-align: left;
            color: #FF3300;
            font-size: small;
        }
        .auto-style30 {
            text-align: left;
            height: 61px;
            }
        .auto-style34 {
            width: 13%;
            height: 61px;
            text-align: right;
        }
        .auto-style40 {
            text-align: left;
            height: 61px;
        }
        .auto-style41 {
            width: 9%;
            height: 61px;
        }
        .auto-style48 {
            text-align: left;
            height: 51px;
        }
        .auto-style49 {
            width: 9%;
            height: 51px;
        }
        .auto-style50 {
            width: 6%;
            height: 51px;
        }
        .auto-style51 {
            width: 13%;
            height: 51px;
            text-align: left;
        }
        .auto-style54 {
            text-align: left;
            width: 13%;
        }
        .auto-style55 {
            font-size: small;
        }
        .auto-style56 {
            text-align: left;
            width: 13%;
            font-size: small;
        }
        .auto-style57 {
            width: 9%;
            font-size: small;
            text-align: left;
        }
        .auto-style58 {
            width: 13%;
            font-size: small;
            text-align: left;
        }
        .auto-style59 {
            width: 6%;
            font-size: small;
        }
        .auto-style60 {
            width: 9%;
            color: #FF0000;
            text-align: left;
            font-size: small;
        }
        .auto-style61 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">REGISTRO DE FACTURACÍÓN:<asp:Label ID="lblnivel" runat="server"></asp:Label>
                    </div>
					<div class="chart">
                        <div align ="center">
    
    
    
    
    
    
    
    
    
    
    
    <CENTER>
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style48">
                    <asp:TextBox ID="txtserie" runat="server" BackColor="#FFFFCC" Width="50px"></asp:TextBox>
                    -
                    <asp:TextBox ID="txtnumero" runat="server" BackColor="#FFFFCC" Width="80px"></asp:TextBox>
                    <span class="auto-style55">FACTURA</span></td>
                <td class="auto-style48">
                    &nbsp;<asp:DropDownList ID="ddltpventa" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idTpVenta" Width="100%" OnSelectedIndexChanged="ddltpventa_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    <span class="auto-style55">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [TIPOvENTA] WHERE ([estado] = @estado) order by descripcion desc">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    TIPO VENTA</span></td>
                <td style="text-align: right" class="auto-style49"></td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtfechareg" runat="server" style="margin-top: 3px" Width="100%"></asp:TextBox>
                    <span class="auto-style55">F.EMISIÓN</span></td>
                <td style="text-align: right" class="auto-style50"></td>
                <td class="auto-style51">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/admin/regclientes.aspx" Text="..." Visible="False" />
                    <asp:DropDownList ID="ddltpmoneda" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="idmoneda" Width="100%">
                    </asp:DropDownList>
                    <span class="auto-style55">
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tipoMoneda]"></asp:SqlDataSource>
                    MONEDA</span></td>
                <td style="text-align: right" class="auto-style49"></td>
                <td class="auto-style48">
                    <br />
                    </td>
            </tr>
           
            <tr>
                <td class="auto-style30" colspan="2">
                    <asp:DropDownList ID="ddlvendedor" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="vendedor" DataValueField="empleadoid" OnSelectedIndexChanged="ddlvendedor_SelectedIndexChanged" Width="100%" style="background-color: #FFFFCC">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_vendedoresaptos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <span class="auto-style55">VENDEDOR</span></td>
                <td style="text-align: right" class="auto-style41">&nbsp;</td>
                <td class="auto-style40" colspan="2">
                    <asp:Panel ID="pmancilla" runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="background-color: #FFFFCC"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="..." />
                    </asp:Panel>
                    <span class="auto-style55">CLIENTE&nbsp;&nbsp;&nbsp;&nbsp;
                    </span></td>
                <td class="auto-style34">
                    <asp:Panel ID="Panel3" runat="server" style="text-align: left">
                        <asp:DropDownList ID="ddlcondicionpago" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="idcondPago" OnSelectedIndexChanged="ddlcondicionpago_SelectedIndexChanged" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [TipocondPago] where  [orden] &gt; 0 ORDER BY [orden]" OnSelecting="SqlDataSource4_Selecting"></asp:SqlDataSource>
                        CONDICIÓN
                    </asp:Panel>
                </td>
                <td style="text-align: left" class="auto-style41">
                    <asp:Panel ID="Panel5" runat="server">
                        <asp:TextBox ID="txtconddias" runat="server" TextMode="Number" Width="70px"></asp:TextBox>
                        <br />
                        DIAS</asp:Panel>
                </td>
                <td class="auto-style40">
                    <asp:Panel ID="Panel4" runat="server">
                        <br />
                        </asp:Panel>
                </td>
            </tr>
           
             <tr>
                <td class="auto-style9" colspan="7">
                    <asp:Panel ID="Paneldetcliente" runat="server" BorderColor="Silver" BorderStyle="Solid" style="text-align: left" BorderWidth="1px">
                        Detalle del cliente:<br />
                        <asp:Label ID="lblclientecod" runat="server"></asp:Label>
                        -CLIENTE:
                        <asp:Label ID="lblclienterazon" runat="server" CssClass="auto-style61"></asp:Label>
                        &nbsp;/
                        <asp:Label ID="lblruc" runat="server" CssClass="auto-style61"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COND. CREDITO:
                        <asp:Label ID="lblcondicioncredito" runat="server" style="font-weight: 700"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VENDEDOR:<asp:Label ID="lblvendedor" runat="server" style="font-weight: 700"></asp:Label>
                        <span class="auto-style55">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblretenedor" runat="server" style="color: #FF0000"></asp:Label>
                        </span>
                        <br />
                        <asp:Label ID="lblcodoperacion" runat="server" Visible="False"></asp:Label>
                    </asp:Panel>
                 </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:TextBox ID="txtimportebruto" runat="server" Width="150px" style="background-color: #FFFFCC" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:DropDownList ID="ddltpdere" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="descripcion" DataValueField="codimporteretenido" OnSelectedIndexChanged="ddltpdere_SelectedIndexChanged" Width="150px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT codimporteretenido, descripcion, descuento, estado FROM ImporteRetenido WHERE (estado = @estado) ORDER BY descripcion">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="CALCULAR" Width="150px" />
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtigv" runat="server" Width="60px" style="color: #FF3300" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtimporteneto" runat="server" style="font-weight: 700" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtmretencion" runat="server" Height="20px" style="color: #FF3300" Width="70px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtmdisponible" runat="server" Height="20px" style="font-weight: 700" Width="70px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">BASE IMP</td>
                <td class="auto-style28">
                    IGV / EXO</td>
                <td class="auto-style60">IGV(18%)</td>
                <td class="auto-style59">
                    IMPORTE NETO</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style58">
                    M. RETND</td>
                <td class="auto-style57">&nbsp;DISPONIBLE</td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style22">
                   </td>
                <td style="text-align: right" class="auto-style16"></td>
                <td class="auto-style22">
                    </td>
                <td style="text-align: right" class="auto-style23"></td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td style="text-align: right" class="auto-style25">
                    <asp:Label ID="lbldesc" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblcodretded" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">NºGUIAS:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtglosaguias" runat="server" Width="100%" style="background-color: #FFFFCC"></asp:TextBox>
                </td>
                <td style="text-align: right" class="auto-style25">OBSER:</td>
                <td colspan="4">
                    <asp:TextBox ID="txtglosa" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2">
                    <asp:Button ID="btnuevo" runat="server" Height="40px" OnClick="btnuevo_Click" Text="NUEVO" Width="100%" />
                </td>
                <td class="auto-style25" style="text-align: right">&nbsp;</td>
                <td class="auto-style22" colspan="5">
                    <asp:Button ID="btregistar" runat="server" OnClick="btregistar_Click" Text="REGISTRAR" Width="40%" Height="40px" />
                    <asp:Button ID="btanular" runat="server" Height="40px" OnClick="btanular_Click" Text="ANULAR FACTURA" Width="40%" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300"></asp:Label>
    </asp:Panel>
        </CENTER>

        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <span class="auto-style27">DETALLE DE FACTURAS REGISTRADAS:</span><br />
            <hr />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames ="idfacturacion" DataSourceID="SqlDataSource5" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" style="font-size: x-small" OnSelectedIndexChanged="GridView3_SelectedIndexChanged1" PageSize="15" OnRowDataBound="GridView3_RowDataBound" Width="90%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/images/eliminar.png" SelectImageUrl="~/images/editar.png" ShowSelectButton="True" >
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idfacturacion" HeaderText="COD" SortExpression="idfacturacion" />
                    <asp:BoundField DataField="serie" HeaderText="SERIE" SortExpression="serie" />
                    <asp:BoundField DataField="numero" HeaderText="FACTURA" SortExpression="numero" />
                    <asp:BoundField DataField="tipoVenta" HeaderText="TPVENTA" SortExpression="tipoVenta" />
                    <asp:BoundField DataField="fechareg" HeaderText="F.EMISION" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="fechaven" HeaderText="F.VENCTO" SortExpression="fechaven" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="codvendedor" HeaderText="VEND" SortExpression="codvendedor" />
                    <asp:BoundField DataField="razonsocial" HeaderText="CLIENTE" SortExpression="razonsocial" />
                    <asp:BoundField DataField="idcondpago" HeaderText="COND" SortExpression="idcondpago" />
                    <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" />
                    <asp:BoundField DataField="GlosaGuias" HeaderText="GUIAS" SortExpression="GlosaGuias" />
                    <asp:BoundField DataField="importebruto" HeaderText="IMP.BASE" SortExpression="importebruto" >
                    </asp:BoundField>
                    <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" >
                    </asp:BoundField>
                    <asp:BoundField DataField="importeNeto" HeaderText="IMP.NETO" SortExpression="importeNeto" >
                    </asp:BoundField>
                    <asp:BoundField DataField="tpmoneda" HeaderText="M" SortExpression="tpmoneda" />
                    <asp:BoundField DataField="glosa" HeaderText="OBSERVACION" SortExpression="glosa" />
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" />
                <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE Facturacion WHERE (idfacturacion = @idfacturacion)" InsertCommand="INSERT INTO [Facturacion] ([idfacturacion], [serie], [numero], [tipoVenta], [fechareg], [fechaven], [codvendedor], [razonsocial], [dias], [GlosaGuias], [importebruto], [igv], [importeNeto], [tpmoneda], [glosa]) VALUES (@idfacturacion, @serie, @numero, @tipoVenta, @fechareg, @fechaven, @codvendedor, @razonsocial, @dias, @GlosaGuias, @importebruto, @igv, @importeNeto, @tpmoneda, @glosa)" SelectCommand="SELECT [idfacturacion], [serie], [numero], [tipoVenta], [fechareg], [fechaven], [codvendedor], [razonsocial],idcondpago, [dias], [GlosaGuias], [importebruto], [igv], [importeNeto], [tpmoneda], [glosa] FROM [Facturacion] ORDER BY [idfacturacion] DESC" UpdateCommand="UPDATE [Facturacion] SET [serie] = @serie, [numero] = @numero, [tipoVenta] = @tipoVenta, [fechareg] = @fechareg, [fechaven] = @fechaven, [codvendedor] = @codvendedor, [razonsocial] = @razonsocial, [dias] = @dias, [GlosaGuias] = @GlosaGuias, [importebruto] = @importebruto, [igv] = @igv, [importeNeto] = @importeNeto, [tpmoneda] = @tpmoneda, [glosa] = @glosa WHERE [idfacturacion] = @idfacturacion">
                <DeleteParameters>
                      <asp:ControlParameter ControlID="GridView3" Name="idfacturacion" PropertyName="SelectedValue" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idfacturacion" Type="Int32" />
                    <asp:Parameter Name="serie" Type="String" />
                    <asp:Parameter Name="numero" Type="String" />
                    <asp:Parameter Name="tipoVenta" Type="String" />
                    <asp:Parameter DbType="Date" Name="fechareg" />
                    <asp:Parameter DbType="Date" Name="fechaven" />
                    <asp:Parameter Name="codvendedor" Type="String" />
                    <asp:Parameter Name="razonsocial" Type="String" />
                    <asp:Parameter Name="dias" Type="Int32" />
                    <asp:Parameter Name="GlosaGuias" Type="String" />
                    <asp:Parameter Name="importebruto" Type="Decimal" />
                    <asp:Parameter Name="igv" Type="Decimal" />
                    <asp:Parameter Name="importeNeto" Type="Decimal" />
                    <asp:Parameter Name="tpmoneda" Type="String" />
                    <asp:Parameter Name="glosa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="serie" Type="String" />
                    <asp:Parameter Name="numero" Type="String" />
                    <asp:Parameter Name="tipoVenta" Type="String" />
                    <asp:Parameter DbType="Date" Name="fechareg" />
                    <asp:Parameter DbType="Date" Name="fechaven" />
                    <asp:Parameter Name="codvendedor" Type="String" />
                    <asp:Parameter Name="razonsocial" Type="String" />
                    <asp:Parameter Name="dias" Type="Int32" />
                    <asp:Parameter Name="GlosaGuias" Type="String" />
                    <asp:Parameter Name="importebruto" Type="Decimal" />
                    <asp:Parameter Name="igv" Type="Decimal" />
                    <asp:Parameter Name="importeNeto" Type="Decimal" />
                    <asp:Parameter Name="tpmoneda" Type="String" />
                    <asp:Parameter Name="glosa" Type="String" />
                    <asp:Parameter Name="idfacturacion" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Panel ID="Panel6" runat="server">
                &nbsp;<asp:Label ID="lblcodd" runat="server" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="lblfactura" runat="server" Visible="False"></asp:Label>
&nbsp;
                <asp:Button ID="Button4" runat="server" Height="40px" OnClick="Button4_Click" Text="ANULAR FACTURA" />
                <asp:Button ID="Button5" runat="server" ForeColor="Red" Height="40px" OnClick="Button5_Click" Text="ELIMINAR FACTURA" />
            </asp:Panel>
            <br />
        </asp:Panel>
        <br />
        </CENTER>
    <br />


             </div>
                    </div>
				</div>

			</div>
		</div>



</asp:Content>
