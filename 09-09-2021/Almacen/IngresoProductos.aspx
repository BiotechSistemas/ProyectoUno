<%@ Page Title="" Language="C#" MasterPageFile="~/Almacen/Principal.Master" AutoEventWireup="true" CodeBehind="IngresoProductos.aspx.cs" Inherits="biotech.Almacen.IngresoProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

          * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

* {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

        .auto-style3 {
            width: 100%;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style9 {
            height: 23px;
        }
       
        .auto-style10 {
            height: 71px;
        }
        .auto-style12 {
            width: 100%;
            height: 64px;
        }
        .auto-style13 {
            height: 60px;
        }
       
        .auto-style14 {
            color: #990000;
        }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <li class="menu__item"><a class="menu__link " href="../1logistica/Default.aspx"><span class="icon-home"></span> Inicio</a></li>
    <li class="menu__item"><a class="menu__link  " href="ProductosAc.aspx">Almacen</a></li>
            <li class="menu__item"><a class="menu__link select" href="IngresoProductos.aspx">Ingreso Productos</a></li>
            <li class="menu__item"><a class="menu__link " href="SalidaProductos.aspx">Salida Productos</a></li>
            <li class="menu__item"><a class="menu__link " href="RegistrarClientes.aspx">Reg. Clientes</a></li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">

      <h2 class="grupo__titulo">INGRESO DE PRODUCTOS<asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
</h2>

    <asp:Panel id="pingreso" runat="server" class="contenedor-formulario">
        <div>
            <asp:Panel ID="PanelfICHAINGRESO" runat="server">
                <table class="auto-style3">
                    <tr>
                        <td>
                            <label for="nombre">
                            <h2>FICHA DE INGRESO N°: FI2018-<asp:Label ID="lblmayorid" runat="server"></asp:Label>
                            </h2>
                            </label>
                        </td>
                        <td class="auto-style5">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">VER FICHAS DE INGRESO</asp:LinkButton>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style10" colspan="2">
                             <label for="nombre">
                            Asunto:</label>
                            <asp:TextBox ID="txtasunto" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">
                             <label for="nombre">
                            N° Guia de remisión ingreso:<asp:Label ID="lblcodguiarem" runat="server"></asp:Label>
                            </label>
                            <asp:Panel ID="Panelguiaa" runat="server" Width="100%">
                                <table class="auto-style12">
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:TextBox ID="txtndocumento" runat="server" placeholder="Documento" ReadOnly="True" Width="100%"></asp:TextBox>
                                        </td>
                                        <td class="auto-style13">
                                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="..." Width="60px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:ListBox ID="ListBoxGuiarem" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSelecguia" DataTextField="GUIA" DataValueField="IDGUIA" OnSelectedIndexChanged="ListBoxGuiarem_SelectedIndexChanged" Rows="5" Width="100%"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSourceSelecguia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT distinct g.idguia IDGUIA, CONCAT(g.grupo,'-',g.guiarem) GUIA 
FROM  tb_guiaRemDetalle gd join tb_guiaRem g on g.idguia=gd.idguia WHERE G.motivotraslado in ('TRASL','TCENT','INGRE','RCENT') AND gd.estado is null ORDER BY g.idguia DESC"></asp:SqlDataSource>

                        </td>
                    </tr>


                    <asp:Panel ID="PanelDetalleSelecionado" runat="server"></asp:Panel>
                    <tr>
                        <td colspan="2" class="auto-style9">
                            <label for="nombre">
                            
                           
                            <br />
                            Fecha de Emisión:
                            <asp:Label ID="lblFechaEmision" runat="server" style="color: #000000"></asp:Label>
                            <br />
                            Proveedor:<asp:Label ID="idproveedor" runat="server" style="color: #000000"></asp:Label>
                            <asp:Label ID="lblproveedor" runat="server" style="color: #000000"></asp:Label>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td  colspan="2">
                            <label for="nombre">
                            Almacen :
                            <asp:Label ID="lblidalmacen" runat="server" style="color: #000000"></asp:Label>
                            <br />
                            Motivo traslado:
                            <asp:Label ID="lblmotivotraslado" runat="server" style="color: #000000"></asp:Label>
                            <br />
                            Almacen Destino:<asp:Label ID="AlmDestino" runat="server" style="color: #000000"></asp:Label>
                            </label>
                            </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                           
                            <asp:GridView ID="GridViewdetguiarem" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSourcepedprod" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="GridViewdetguiarem_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField SelectText="Confirmar" ShowSelectButton="True">
                                    <HeaderStyle Width="70px" />
                                    <ItemStyle ForeColor="#006600" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                                    <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                    <asp:BoundField DataField="Idproducto" HeaderText="COD" SortExpression="Idproducto" >
                                    <HeaderStyle Width="45px" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                                    <asp:BoundField DataField="pv" HeaderText="pv" SortExpression="pv" Visible="False" />
                                    <asp:BoundField DataField="subtt" HeaderText="subtt" SortExpression="subtt" Visible="False" />
                                    <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
                                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                    <asp:BoundField DataField="idDetpedido" HeaderText="idDetpedido" SortExpression="idDetpedido" Visible="False" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourcepedprod" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT iddetalleGuia,idguia,g.Idproducto,g.cantidad,pv,subtt,igv,estado,idDetpedido,CONCAT(pro.producto,' ',pro.presentacion) PRODUCTO FROM [tb_guiaRemDetalle] g inner join tb_producto pro on g.Idproducto=pro.idProducto
 WHERE (([idguia] = @idguia) AND ([estado] IS NULL))

" OnSelecting="SqlDataSourcepedprod_Selecting">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblcodguiarem" Name="idguia" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <span class="auto-style14">* Confirmar productos a ingresar a almacén.</span><br />
                            <asp:Label ID="lblcodproducto" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblcantidad" runat="server" Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="lblmensaje" runat="server" style="color: #990000"></asp:Label>
                            <br />
                            <asp:GridView ID="GridViewDetalleIngreso" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" DataKeyNames="ENTRADADET" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewDetalleIngreso_SelectedIndexChanged" Width="100%">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" SelectText="X" ShowSelectButton="True">
                                    <ControlStyle Font-Bold="True" ForeColor="White" Height="35px" Width="35px" />
                                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="ENTRADADET" HeaderText="ENTRADADET" InsertVisible="False" ReadOnly="True" SortExpression="ENTRADADET" Visible="False" />
                                    <asp:BoundField DataField="N" HeaderText="N°" ReadOnly="True" SortExpression="N" />
                                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                                    <asp:BoundField DataField="PRECCOMPRA" HeaderText="PRECCOMPRA" SortExpression="PRECCOMPRA" Visible="False" />
                                    <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_alm_ingresoproducto" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblmayorid" Name="idingresa" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                     <%--</asp:Panel>--%>
                </table>
                <br />
            </asp:Panel>
            <br />



        </div>
    </asp:Panel>
		  
    
               
        
		 
              <asp:Panel ID="PanelDetalleFichaIngreso" runat="server" class="grupo__descripcion">
                  <strong>FICHAS DE INGRESO REGISTRADAS</strong><br />
                  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" DataKeyNames="identrada" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="100%" HorizontalAlign="Center" AllowPaging="True" PageSize="20">
                      <Columns>
                          <asp:CommandField ShowSelectButton="True" SelectImageUrl="~/images/buscarr.png" SelectText="Ver más" >
                          <HeaderStyle Width="70px" />
                          <ItemStyle ForeColor="#5DA764" HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:CommandField>
                          <asp:BoundField DataField="identrada" HeaderText="COD ENTRADA" ReadOnly="True" SortExpression="identrada" Visible="False" >
                          <HeaderStyle Width="70px" />
                          </asp:BoundField>
                          <asp:BoundField DataField="fechareg" HeaderText="F. INGRESO" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="proveedor" HeaderText="PROVEEDOR" SortExpression="proveedor" >
                          <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="folio_factura" HeaderText="DOC. INGRESO" SortExpression="folio_factura" >
                          <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="fecha_Factura" HeaderText="FECHA DOC. ING." SortExpression="fecha_Factura" DataFormatString="{0:dd/MM/yyyy}" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="idalmacen" HeaderText="ALMACEN" SortExpression="idalmacen" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:BoundField>
                      </Columns>
                      <EditRowStyle BackColor="#CCCCCC" />
                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle Font-Bold="True" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [identrada], [fechareg], [proveedor], [folio_factura], [fecha_Factura], [idalmacen] FROM [tb_entradaProducto] order by [identrada] desc"></asp:SqlDataSource>
                  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
                  <asp:Panel ID="Paneldet2" runat="server">
                      <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="identrada" DataSourceID="SqlDataSource10" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" AllowPaging="True">
                          <Columns>
                              <asp:BoundField DataField="identrada" HeaderText="COD" ReadOnly="True" SortExpression="identrada" />
                              <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. INGRESO" SortExpression="fechareg" />
                              <asp:BoundField DataField="proveedor" HeaderText="PROVEEDOR" SortExpression="proveedor" />
                              <asp:BoundField DataField="folio_factura" HeaderText="DOC. INGRESO" SortExpression="folio_factura" />
                              <asp:BoundField DataField="fecha_Factura" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA DOC. ING." SortExpression="fecha_Factura" />
                              <asp:BoundField DataField="idalmacen" HeaderText="ALMACEN" SortExpression="idalmacen" />
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
                      <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [identrada], [fechareg], [proveedor], [folio_factura], [fecha_Factura], [idalmacen] FROM [tb_entradaProducto] WHERE [identrada]=@ENTRA">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="GridView3" Name="ENTRA" PropertyName="SelectedValue" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <br />
                      Detalle de productos ingresados:<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ENTRADADET" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Horizontal">
                          <Columns>
                              <asp:BoundField DataField="ENTRADADET" HeaderText="ENTRADADET" ReadOnly="True" SortExpression="ENTRADADET" Visible="False" />
                              <asp:BoundField DataField="N" HeaderText="N°" ReadOnly="True" SortExpression="N" />
                              <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION">
                              <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CANTIDAD" DataFormatString="{0:0,0.00}" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="PRECCOMPRA" HeaderText="P.COMPRA" SortExpression="PRECCOMPRA" Visible="False" />
                              <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                          </Columns>
                          <EmptyDataTemplate>
                              Seleccionar Ficha de ingreso...!
                          </EmptyDataTemplate>
                          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_alm_ingresoproducto" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="GridView3" Name="idingresa" PropertyName="SelectedValue" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:LinkButton ID="LinkButtonRetornar" runat="server" OnClick="LinkButtonRetornar_Click">Retornar</asp:LinkButton>
                  </asp:Panel>
                  <br />
      </asp:Panel>
		  
    
               
        
		 
              <asp:Panel id="p_productos" runat="server"  class="mapa">
                  ALMACEN CENTRAL<asp:Label ID="lblproducto" runat="server" Visible="False"></asp:Label>
                  <br />
                 
              <asp:TextBox ID="txtbkproducto" runat="server" placeholder="Producto"></asp:TextBox>
              <asp:Button id="btbkproduc" class="boton__form" runat="server" Text="Buscar" OnClick="btbkproduc_Click" />
                           
                  <asp:Panel ID="Panel1" runat="server">
                      DETALLE ALMACEN<br />
                      <asp:GridView ID="gvDetallealmacen" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceDetAlmacen" ForeColor="Black" GridLines="Horizontal" PageSize="15" Width="100%">
                          <Columns>
                              <asp:TemplateField HeaderText="COD" SortExpression="idProducto">
                                  <EditItemTemplate>
                                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idProducto") %>'></asp:TextBox>
                                  </EditItemTemplate>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="lbcodProducto" runat="server" ForeColor="#006600" Text='<%# Eval("idProducto") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <ItemStyle ForeColor="#006600" HorizontalAlign="Left" VerticalAlign="Middle" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO">
                              <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" Visible="False" />
                              <asp:BoundField DataField="PV50" HeaderText="PV50" ReadOnly="True" SortExpression="PV50" Visible="False" />
                              <asp:BoundField DataField="PBASE" HeaderText="PBASE" SortExpression="PBASE" Visible="False" />
                              <asp:BoundField DataField="PIALMACEN" HeaderText="PIALMACEN" SortExpression="PIALMACEN" Visible="False" />
                              <asp:BoundField DataField="VALORIZADOCENTRAL" HeaderText="VALORIZADOCENTRAL" ReadOnly="True" SortExpression="VALORIZADOCENTRAL" Visible="False" />
                              <asp:BoundField DataField="VALORIZADOICA" HeaderText="VALORIZADOICA" ReadOnly="True" SortExpression="VALORIZADOICA" Visible="False" />
                              <asp:BoundField DataField="VALORIZADOPIURA" HeaderText="VALORIZADOPIURA" ReadOnly="True" SortExpression="VALORIZADOPIURA" Visible="False" />
                              <asp:BoundField DataField="VALSUBTOTAL" HeaderText="VALSUBTOTAL" ReadOnly="True" SortExpression="VALSUBTOTAL" Visible="False" />
                              <asp:BoundField DataField="MINIMO" HeaderText="*" ReadOnly="True" SortExpression="MINIMO" Visible="False" />
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
                      <asp:SqlDataSource ID="SqlDataSourceDetAlmacen" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_ValTotal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:Parameter DefaultValue=" " Name="alm" Type="String" />
                              <asp:Parameter DefaultValue="0" Name="presentacion" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </asp:Panel>
                 




              </asp:Panel>


		 
		  
      </label>


		 
		  
      </label>


		 
		  
</asp:Content>
