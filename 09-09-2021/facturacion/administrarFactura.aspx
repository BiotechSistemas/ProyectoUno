<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/logistica.Master" AutoEventWireup="true" CodeBehind="administrarFactura.aspx.cs" Inherits="biotech.facturacion.administrarFactura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">ADMINISTRACION DDE DOCUMENTOS :</div>
					<div class="chart">
                        <div align ="center">
    


                              <asp:Panel ID="Panel1" runat="server" style="text-align: left">
                                  INGRESAR FACTURA:
                                  <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Filtrar" />
                                  <br />
                                  Detalle Factura:<br />
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="20" style="font-size: small">
                                      <Columns>
                                          <asp:CommandField ShowEditButton="True" />
                                          <asp:BoundField DataField="idfacturacion" HeaderText="COD" ReadOnly="True" SortExpression="idfacturacion" />
                                          <asp:BoundField DataField="serie" HeaderText="serie" SortExpression="serie" />
                                          <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                                          <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                          <asp:BoundField DataField="tipoVenta" HeaderText="tipoVenta" SortExpression="tipoVenta" />
                                          <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="fechareg" />
                                          <asp:BoundField DataField="fechaven" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechaven" />
                                          <asp:BoundField DataField="codvendedor" HeaderText="VEND" SortExpression="codvendedor" />
                                          <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" />
                                          <asp:BoundField DataField="razonsocial" HeaderText="CLIENTE" SortExpression="razonsocial" />
                                          <asp:BoundField DataField="idcondpago" HeaderText="COND" SortExpression="idcondpago" />
                                          <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" />
                                          <asp:BoundField DataField="condletra" HeaderText="COND LETRA" SortExpression="condletra" />
                                          <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" />
                                          <asp:BoundField DataField="idletra1" HeaderText="idletra1" SortExpression="idletra1" />
                                          <asp:BoundField DataField="GlosaGuias" HeaderText="GUIAS" SortExpression="GlosaGuias" />
                                          <asp:BoundField DataField="importebruto" HeaderText="IMP BASE" SortExpression="importebruto" />
                                          <asp:BoundField DataField="tpimporteretenido" HeaderText="TIPO" SortExpression="tpimporteretenido" />
                                          <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" />
                                          <asp:BoundField DataField="importeNeto" HeaderText="IMP NETO" SortExpression="importeNeto" />
                                          <asp:BoundField DataField="montoretenido" HeaderText="RETENIDO" SortExpression="montoretenido" />
                                          <asp:BoundField DataField="montodisponible" HeaderText="POR COBRAR" SortExpression="montodisponible" />
                                          <asp:BoundField DataField="tpmoneda" HeaderText="M" SortExpression="tpmoneda" />
                                          <asp:BoundField DataField="glosa" HeaderText="GLOSA" SortExpression="glosa" />
                                      </Columns>
                                      <HeaderStyle BackColor="#666666" ForeColor="White" />
                                  </asp:GridView>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [Facturacion] WHERE [idfacturacion] = @idfacturacion" InsertCommand="INSERT INTO [Facturacion] ([idfacturacion], [serie], [numero], [estado], [tipoVenta], [fechareg], [fechaven], [codvendedor], [idcliente], [razonsocial], [idcondpago], [dias], [condletra], [idletra], [idletra1], [GlosaGuias], [importebruto], [tpimporteretenido], [igv], [importeNeto], [montoretenido], [montodisponible], [tpmoneda], [glosa]) VALUES (@idfacturacion, @serie, @numero, @estado, @tipoVenta, @fechareg, @fechaven, @codvendedor, @idcliente, @razonsocial, @idcondpago, @dias, @condletra, @idletra, @idletra1, @GlosaGuias, @importebruto, @tpimporteretenido, @igv, @importeNeto, @montoretenido, @montodisponible, @tpmoneda, @glosa)" SelectCommand="SELECT [idfacturacion], [serie], [numero], [estado], [tipoVenta], [fechareg], [fechaven], [codvendedor], [idcliente], [razonsocial], [idcondpago], [dias], [condletra], [idletra], [idletra1], [GlosaGuias], [importebruto], [tpimporteretenido], [igv], [importeNeto], [montoretenido], [montodisponible], [tpmoneda], [glosa] FROM [Facturacion] WHERE [numero] IN (@numero ) ORDER BY [idfacturacion] DESC" UpdateCommand="UPDATE [Facturacion] SET [serie] = @serie, [numero] = @numero, [estado] = @estado, [tipoVenta] = @tipoVenta, [fechareg] = @fechareg, [fechaven] = @fechaven, [codvendedor] = @codvendedor, [idcliente] = @idcliente, [razonsocial] = @razonsocial, [idcondpago] = @idcondpago, [dias] = @dias, [condletra] = @condletra, [idletra] = @idletra, [idletra1] = @idletra1, [GlosaGuias] = @GlosaGuias, [importebruto] = @importebruto, [tpimporteretenido] = @tpimporteretenido, [igv] = @igv, [importeNeto] = @importeNeto, [montoretenido] = @montoretenido, [montodisponible] = @montodisponible, [tpmoneda] = @tpmoneda, [glosa] = @glosa WHERE [idfacturacion] = @idfacturacion">
                                      <DeleteParameters>
                                          <asp:Parameter Name="idfacturacion" Type="Int32" />
                                      </DeleteParameters>
                                      <InsertParameters>
                                          <asp:Parameter Name="idfacturacion" Type="Int32" />
                                          <asp:Parameter Name="serie" Type="String" />
                                          <asp:Parameter Name="numero" Type="String" />
                                          <asp:Parameter Name="estado" Type="Int32" />
                                          <asp:Parameter Name="tipoVenta" Type="String" />
                                          <asp:Parameter Name="fechareg" Type="DateTime" />
                                          <asp:Parameter Name="fechaven" Type="DateTime" />
                                          <asp:Parameter Name="codvendedor" Type="String" />
                                          <asp:Parameter Name="idcliente" Type="Int32" />
                                          <asp:Parameter Name="razonsocial" Type="String" />
                                          <asp:Parameter Name="idcondpago" Type="String" />
                                          <asp:Parameter Name="dias" Type="Int32" />
                                          <asp:Parameter Name="condletra" Type="String" />
                                          <asp:Parameter Name="idletra" Type="Int32" />
                                          <asp:Parameter Name="idletra1" Type="String" />
                                          <asp:Parameter Name="GlosaGuias" Type="String" />
                                          <asp:Parameter Name="importebruto" Type="Decimal" />
                                          <asp:Parameter Name="tpimporteretenido" Type="String" />
                                          <asp:Parameter Name="igv" Type="Decimal" />
                                          <asp:Parameter Name="importeNeto" Type="Decimal" />
                                          <asp:Parameter Name="montoretenido" Type="Decimal" />
                                          <asp:Parameter Name="montodisponible" Type="Decimal" />
                                          <asp:Parameter Name="tpmoneda" Type="String" />
                                          <asp:Parameter Name="glosa" Type="String" />
                                      </InsertParameters>
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="TextBox1" Name="numero" PropertyName="Text" Type="String" />
                                      </SelectParameters>
                                      <UpdateParameters>
                                          <asp:Parameter Name="serie" Type="String" />
                                          <asp:Parameter Name="numero" Type="String" />
                                          <asp:Parameter Name="estado" Type="Int32" />
                                          <asp:Parameter Name="tipoVenta" Type="String" />
                                          <asp:Parameter Name="fechareg" Type="DateTime" />
                                          <asp:Parameter Name="fechaven" Type="DateTime" />
                                          <asp:Parameter Name="codvendedor" Type="String" />
                                          <asp:Parameter Name="idcliente" Type="Int32" />
                                          <asp:Parameter Name="razonsocial" Type="String" />
                                          <asp:Parameter Name="idcondpago" Type="String" />
                                          <asp:Parameter Name="dias" Type="Int32" />
                                          <asp:Parameter Name="condletra" Type="String" />
                                          <asp:Parameter Name="idletra" Type="Int32" />
                                          <asp:Parameter Name="idletra1" Type="String" />
                                          <asp:Parameter Name="GlosaGuias" Type="String" />
                                          <asp:Parameter Name="importebruto" Type="Decimal" />
                                          <asp:Parameter Name="tpimporteretenido" Type="String" />
                                          <asp:Parameter Name="igv" Type="Decimal" />
                                          <asp:Parameter Name="importeNeto" Type="Decimal" />
                                          <asp:Parameter Name="montoretenido" Type="Decimal" />
                                          <asp:Parameter Name="montodisponible" Type="Decimal" />
                                          <asp:Parameter Name="tpmoneda" Type="String" />
                                          <asp:Parameter Name="glosa" Type="String" />
                                          <asp:Parameter Name="idfacturacion" Type="Int32" />
                                      </UpdateParameters>
                                  </asp:SqlDataSource>
                                  <br />
                                  INGRESAR LETRA:
                                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" />
                                  <br />
                                  DETALE LETRA:<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" style="font-size: small">
                                      <Columns>
                                          <asp:CommandField ShowEditButton="True" />
                                          <asp:BoundField DataField="idletra" HeaderText="COD" ReadOnly="True" SortExpression="idletra" />
                                          <asp:BoundField DataField="grupo" HeaderText="SERIE" SortExpression="grupo" />
                                          <asp:BoundField DataField="letra" HeaderText="LETRA" SortExpression="letra" />
                                          <asp:BoundField DataField="fecha" HeaderText="F.EMISION" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" />
                                          <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                          <asp:BoundField DataField="razon" HeaderText="CLIENTE" SortExpression="razon" />
                                          <asp:BoundField DataField="moneda" HeaderText="M" SortExpression="moneda" />
                                          <asp:BoundField DataField="tt" HeaderText="IMPORTE" SortExpression="tt" />
                                          <asp:BoundField DataField="imprenv" HeaderText="imprenv" SortExpression="imprenv" Visible="False" />
                                          <asp:BoundField DataField="impamortizado" HeaderText="impamortizado" SortExpression="impamortizado" Visible="False" />
                                          <asp:BoundField DataField="escritura" HeaderText="escritura" SortExpression="escritura" Visible="False" />
                                          <asp:BoundField DataField="estadoletra" HeaderText="ESTADO" SortExpression="estadoletra" />
                                          <asp:BoundField DataField="protestada" HeaderText="PRO" SortExpression="protestada" />
                                          <asp:BoundField DataField="fechaVencimiento" HeaderText="F.VENCTO" SortExpression="fechaVencimiento" DataFormatString="{0:dd/MM/yyyy}" />
                                          <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                          <asp:BoundField DataField="NumeroUnico" HeaderText="NºUNICO" SortExpression="NumeroUnico" />
                                          <asp:BoundField DataField="Banco" HeaderText="Banco" SortExpression="Banco" />
                                          <asp:BoundField DataField="descuento" HeaderText="DESC" SortExpression="descuento" />
                                          <asp:BoundField DataField="importeNeto" HeaderText="DESMB" SortExpression="importeNeto" />
                                          <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                          <asp:BoundField DataField="fechabanco" HeaderText="F.BANCO" SortExpression="fechabanco" DataFormatString="{0:dd/MM/yyyy}" />
                                          <asp:BoundField DataField="estadoCancel" HeaderText="CANCEL" SortExpression="estadoCancel" />
                                      </Columns>
                                      <HeaderStyle BackColor="#333333" ForeColor="White" />
                                  </asp:GridView>
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [tb_LETRACANJE] WHERE [idletra] = @idletra" InsertCommand="INSERT INTO [tb_LETRACANJE] ([idletra], [grupo], [letra], [fecha], [idcliente], [razon], [moneda], [tt], [imprenv], [impamortizado], [escritura], [estadoletra], [protestada], [fechaVencimiento], [condicion], [NumeroUnico], [Banco], [descuento], [importeNeto], [estado], [fechabanco], [estadoCancel]) VALUES (@idletra, @grupo, @letra, @fecha, @idcliente, @razon, @moneda, @tt, @imprenv, @impamortizado, @escritura, @estadoletra, @protestada, @fechaVencimiento, @condicion, @NumeroUnico, @Banco, @descuento, @importeNeto, @estado, @fechabanco, @estadoCancel)" SelectCommand="SELECT [idletra], [grupo], [letra], [fecha], [idcliente], [razon], [moneda], [tt], [imprenv], [impamortizado], [escritura], [estadoletra], [protestada], [fechaVencimiento], [condicion], [NumeroUnico], [Banco], [descuento], [importeNeto], [estado], [fechabanco], [estadoCancel] FROM [tb_LETRACANJE] WHERE ([idletra] = @idletra)" UpdateCommand="UPDATE [tb_LETRACANJE] SET [grupo] = @grupo, [letra] = @letra, [fecha] = @fecha, [idcliente] = @idcliente, [razon] = @razon, [moneda] = @moneda, [tt] = @tt, [imprenv] = @imprenv, [impamortizado] = @impamortizado, [escritura] = @escritura, [estadoletra] = @estadoletra, [protestada] = @protestada, [fechaVencimiento] = @fechaVencimiento, [condicion] = @condicion, [NumeroUnico] = @NumeroUnico, [Banco] = @Banco, [descuento] = @descuento, [importeNeto] = @importeNeto, [estado] = @estado, [fechabanco] = @fechabanco, [estadoCancel] = @estadoCancel WHERE [idletra] = @idletra">
                                      <DeleteParameters>
                                          <asp:Parameter Name="idletra" Type="Int32" />
                                      </DeleteParameters>
                                      <InsertParameters>
                                          <asp:Parameter Name="idletra" Type="Int32" />
                                          <asp:Parameter Name="grupo" Type="String" />
                                          <asp:Parameter Name="letra" Type="String" />
                                          <asp:Parameter DbType="Date" Name="fecha" />
                                          <asp:Parameter Name="idcliente" Type="Int32" />
                                          <asp:Parameter Name="razon" Type="String" />
                                          <asp:Parameter Name="moneda" Type="String" />
                                          <asp:Parameter Name="tt" Type="Decimal" />
                                          <asp:Parameter Name="imprenv" Type="Decimal" />
                                          <asp:Parameter Name="impamortizado" Type="Decimal" />
                                          <asp:Parameter Name="escritura" Type="String" />
                                          <asp:Parameter Name="estadoletra" Type="String" />
                                          <asp:Parameter Name="protestada" Type="String" />
                                          <asp:Parameter DbType="Date" Name="fechaVencimiento" />
                                          <asp:Parameter Name="condicion" Type="String" />
                                          <asp:Parameter Name="NumeroUnico" Type="String" />
                                          <asp:Parameter Name="Banco" Type="String" />
                                          <asp:Parameter Name="descuento" Type="Decimal" />
                                          <asp:Parameter Name="importeNeto" Type="Decimal" />
                                          <asp:Parameter Name="estado" Type="Int32" />
                                          <asp:Parameter DbType="Date" Name="fechabanco" />
                                          <asp:Parameter Name="estadoCancel" Type="Int32" />
                                      </InsertParameters>
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="TextBox2" Name="idletra" PropertyName="Text" Type="Int32" />
                                      </SelectParameters>
                                      <UpdateParameters>
                                          <asp:Parameter Name="grupo" Type="String" />
                                          <asp:Parameter Name="letra" Type="String" />
                                          <asp:Parameter DbType="Date" Name="fecha" />
                                          <asp:Parameter Name="idcliente" Type="Int32" />
                                          <asp:Parameter Name="razon" Type="String" />
                                          <asp:Parameter Name="moneda" Type="String" />
                                          <asp:Parameter Name="tt" Type="Decimal" />
                                          <asp:Parameter Name="imprenv" Type="Decimal" />
                                          <asp:Parameter Name="impamortizado" Type="Decimal" />
                                          <asp:Parameter Name="escritura" Type="String" />
                                          <asp:Parameter Name="estadoletra" Type="String" />
                                          <asp:Parameter Name="protestada" Type="String" />
                                          <asp:Parameter DbType="Date" Name="fechaVencimiento" />
                                          <asp:Parameter Name="condicion" Type="String" />
                                          <asp:Parameter Name="NumeroUnico" Type="String" />
                                          <asp:Parameter Name="Banco" Type="String" />
                                          <asp:Parameter Name="descuento" Type="Decimal" />
                                          <asp:Parameter Name="importeNeto" Type="Decimal" />
                                          <asp:Parameter Name="estado" Type="Int32" />
                                          <asp:Parameter DbType="Date" Name="fechabanco" />
                                          <asp:Parameter Name="estadoCancel" Type="Int32" />
                                          <asp:Parameter Name="idletra" Type="Int32" />
                                      </UpdateParameters>
                                  </asp:SqlDataSource>
                                  <br />
                                  <br />
                                  <br />
                              </asp:Panel>
    


                              </div>
                    </div>
				</div>

			</div>
		</div>
    </div>

</asp:Content>
