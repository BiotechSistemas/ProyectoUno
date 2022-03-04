<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="ProductosAdmin.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.ProductosAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: x-small;
    }
        .auto-style2 {}
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            height: 60px;
        }
        .auto-style6 {
            color: #990000;
        }
        .auto-style7 {
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <li class="menu__item"><a class="menu__link " href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link select" href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link " href="menuVentas.aspx">GESTION DE VENTAS</a></li>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
             <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
        <h2 class="grupo__titulo">ADMINISTRAR productos</h2>
		<p class="grupo__descripcion">Actulizar precio compra y precio venta&nbsp; |&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Vista Standar</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Vista General</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        </p>
        <asp:Panel ID="PanelVgENERAL" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idProducto" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="100%" CssClass="auto-style2">
                <Columns>
                    <asp:CommandField ShowEditButton="True" CancelImageUrl="~/images/cancel.png" EditImageUrl="~/images/1editar.png" UpdateImageUrl="~/images/guadar.png" >
                    <ItemStyle ForeColor="#779931" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idProducto" HeaderText="COD" ReadOnly="True" SortExpression="idProducto" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="presentacion" HeaderText="PRESENT" SortExpression="presentacion" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="preciocompra" HeaderText="P. BASE" SortExpression="preciocompra" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="preciolista" HeaderText="P. LISTA" SortExpression="preciolista" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="preciodistribuidor" HeaderText="PRECIO DISTRIB." SortExpression="preciodistribuidor" DataFormatString="{0:0,0.00}" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="rentabilidad" HeaderText="RENT" SortExpression="rentabilidad" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="grupo" HeaderText="GRUPO" ReadOnly="True" SortExpression="grupo" Visible="False" />
                    <asp:BoundField DataField="PLISTA60" HeaderText="P. LISTA Dscto. 40%" ReadOnly="True" SortExpression="PLISTA60" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle Width="90px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#EAF0F4" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA50" HeaderText="P. LISTA Dscto. 50%" ReadOnly="True" SortExpression="PLISTA50" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle Width="90px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#E4EBEF" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLITRO50" DataFormatString="{0:0,0.00}" HeaderText="P. LITRO Dscto. 50%" ReadOnly="True" SortExpression="PLITRO50">
                    <HeaderStyle Width="90px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#E4EBEF" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="grupo" ReadOnly="True" DataImageUrlFormatString="~/images/{0}.png" HeaderText="N/Q">
                        <ControlStyle Height="20px" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="rentabilidad" ReadOnly="True" DataImageUrlFormatString="~/images/{0}.jpg" HeaderText="R">
                        <ControlStyle Height="10px" Width="10px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE FROM [tb_producto] WHERE [idProducto] = @idProducto" InsertCommand="INSERT INTO [tb_producto] ([idProducto], [producto], [presentacion], [preciolista], [preciodistribuidor], [preciocompra], [rentabilidad], [grupo]) VALUES (@idProducto, @producto, @presentacion, @preciolista, @preciodistribuidor, @preciocompra, @rentabilidad, @grupo)" SelectCommand="SELECT [idProducto], [producto], [presentacion], [preciolista], [preciodistribuidor], [preciocompra], [rentabilidad], [grupo], (  [preciolista] *  0.6) PLISTA60, ([preciolista] *  0.5) PLISTA50,(( [preciolista] *  0.5)/ [undCant]) PLITRO50 FROM [tb_producto] ORDER BY [id]" UpdateCommand="UPDATE [tb_producto] SET  [presentacion] = @presentacion, [preciolista] = @preciolista, [preciodistribuidor] = (@preciolista * 3.25), [preciocompra] =@preciocompra  WHERE [idProducto] = @idProducto">
                <DeleteParameters>
                    <asp:Parameter Name="idProducto" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idProducto" Type="String" />
                    <asp:Parameter Name="producto" Type="String" />
                    <asp:Parameter Name="presentacion" Type="String" />
                    <asp:Parameter Name="preciolista" Type="Decimal" />
                    <asp:Parameter Name="preciodistribuidor" Type="Decimal" />
                    <asp:Parameter Name="preciocompra" Type="Decimal" />
                    <asp:Parameter Name="rentabilidad" Type="Int32" />
                    <asp:Parameter Name="grupo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <%--<asp:Parameter Name="producto" Type="String" />--%>
                    <asp:Parameter Name="presentacion" Type="String" />
                    <asp:Parameter Name="preciolista" Type="Decimal" />
                    <asp:Parameter Name="preciocompra" Type="Decimal" />
                    <%--<asp:Parameter Name="rentabilidad" Type="Int32" />
                    <asp:Parameter Name="grupo" Type="String" />--%>
                    <asp:Parameter Name="idProducto" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="PanelGeneral" class="grupo__descripcion" runat="server">
        </asp:Panel>


     <div class="contenedor-formulario">
       <asp:Panel ID="Panel1" runat="server">
          
           &nbsp;<label for="nombre">Producto</label>
           <asp:TextBox ID="txtProducto" runat="server" ReadOnly="True"></asp:TextBox>
           <table class="auto-style3">
               <tr>
                   <td class="auto-style5">
                       <label for="nombre">Precio base</label>
                       <asp:TextBox  type="number" step="0.01" ID="txtprecioBase" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style5">
                        <label for="nombre">Precio lista</label>
                       <asp:TextBox  type="number" step="0.01" ID="txtprecioLista" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style5">&nbsp;</td>
               </tr>
           </table>
           <asp:GridView ID="GridViewpresentaciones" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODPRO,UNIDADmed" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewpresentaciones_SelectedIndexChanged" Width="100%">
               <Columns>
                   <asp:CommandField SelectText="Actualizar Precio" ShowSelectButton="True">
                   <ItemStyle ForeColor="#006600" />
                   </asp:CommandField>
                   <asp:BoundField DataField="CODPRO" HeaderText="COD. PRO." ReadOnly="True" SortExpression="CODPRO" />
                   <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT">
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PCOMPRA" HeaderText="P. BASE" SortExpression="PCOMPRA">
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PLISTA" HeaderText="P. LISTA" SortExpression="PLISTA">
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="UNIDADmed" HeaderText="UNIDADmed" SortExpression="UNIDADmed" Visible="False" />
                   <asp:BoundField DataField="PL50" DataFormatString="{0:0,0.00}" HeaderText="P. X LITRO (50%)" ReadOnly="True" SortExpression="PL50">
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
               <RowStyle BackColor="WhiteSmoke" />
               <SelectedRowStyle Font-Bold="True" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idProducto CODPRO, presentacion PRESENT,preciocompra PCOMPRA, preciolista PLISTA, undmed UNIDADmed, ( ( preciolista / undmed ) *0.5) PL50 from tb_producto WHERE producto = @bkpro">
               <SelectParameters>
                   <asp:ControlParameter ControlID="txtProducto" Name="bkpro" PropertyName="Text" />
               </SelectParameters>
           </asp:SqlDataSource>
           <span class="auto-style1">* Actualizar Precio , realiza el calculo en base los precios ingresados, PRECIO BASE y PRECIO LISTA&nbsp; aplicando los descuentos según presentaciones.</span><span class="auto-style6"><br />
           <asp:Panel ID="Panelnota" runat="server" CssClass="auto-style7">
               <span class="auto-style6">* precio = </span>
               <asp:Label ID="lblPresentacion" runat="server" CssClass="auto-style6"></asp:Label>
               <span class="auto-style6">&nbsp;aplica descuento de: </span>
               <asp:Label ID="lbldescuentoa" runat="server" CssClass="auto-style6"></asp:Label>
               <span class="auto-style6">%.<br />
               <asp:Label ID="lblmensaje" runat="server"></asp:Label>
               </span>
           </asp:Panel>
           </span>
           <asp:Label ID="lblIdProducto" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblUndMed" runat="server" Visible="False"></asp:Label>
           <asp:Label ID="lbldescporcentual" runat="server" Text="0" Visible="False"></asp:Label>
           <asp:Label ID="lblEstadoSuspendido" runat="server" Visible="False"></asp:Label>
           <br />
           <asp:GridView ID="gvDetaleprecios" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODPRO" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvDetaleprecios_SelectedIndexChanged" Width="100%" Visible="False">
               <Columns>
                   <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/eliminarr.png" EditImageUrl="~/images/1editar.png" ShowEditButton="True" UpdateImageUrl="~/images/guadar.png">
                   <ControlStyle Height="40px" Width="40px" />
                   <HeaderStyle Width="40px" />
                   </asp:CommandField>
                   <asp:BoundField DataField="CODPRO" HeaderText="COD." ReadOnly="True" SortExpression="CODPRO">
                   <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="presentacion" HeaderText="PRESENT." ReadOnly="True" SortExpression="presentacion">
                   <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PCOMPRA" HeaderText="P.COMPRA" SortExpression="PCOMPRA">
                   <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PLISTA" HeaderText="P.LISTA" SortExpression="PLISTA">
                   <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
               <RowStyle BackColor="WhiteSmoke" />
               <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idProducto CODPRO, presentacion,preciocompra PCOMPRA, preciolista PLISTA  from tb_producto WHERE producto = @bkpro" UpdateCommand="update tb_producto set preciocompra = @PCOMPRA,preciolista =@PLISTA where idProducto = @CODPRO">
               <SelectParameters>
                   <asp:ControlParameter ControlID="txtProducto" Name="bkpro" PropertyName="Text" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="PCOMPRA" Type="String" />
                   <asp:Parameter Name="PLISTA" Type="String" />
                   <asp:Parameter Name="CODPRO" Type="String" />
               </UpdateParameters>
           </asp:SqlDataSource>
          <asp:Button runat="server" Text="Actualizar Tabla" class="boton__form" OnClick="Unnamed1_Click" Visible="False"/>
           <asp:Panel ID="Panelsuspender" runat="server">
               <table class="auto-style3">
                   <tr>
                       <td>
                           <asp:Button ID="btSuspender" runat="server" ForeColor="#990000" Text="SUSPENDER PRODUCTO" Width="100%" OnClick="btSuspender_Click" />
                           <asp:Button ID="btHabilitar" runat="server" OnClick="btHabilitar_Click" Text="HABILITAR PRODUCTO" Width="100%" />
                       </td>
                       <td>
                           <asp:Button ID="btxEvaluar" runat="server" Text="PRECIO POR EVALUAR" Width="100%" OnClick="btxEvaluar_Click" />
                       </td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
               </table>
           </asp:Panel>
         </asp:Panel></div>
    <div class="mapa">

        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridViewproductos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" PageSize="25" OnSelectedIndexChanged="GridViewproductos_SelectedIndexChanged" OnRowDataBound="GridViewproductos_RowDataBound" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="COD" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("COD") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESEN" HeaderText="PRESEN" SortExpression="PRESEN" >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P.LISTA" SortExpression="PLISTA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA50" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA50" ReadOnly="True" SortExpression="PVENTA50">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA40" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA40" ReadOnly="True" SortExpression="PVENTA40" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PCOMPRA" DataFormatString="{0:0,0.00}" HeaderText="P. BASE" SortExpression="PCOMPRA">
                    <ItemStyle Font-Bold="True" ForeColor="Maroon" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PDVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. DISTB" ReadOnly="True" SortExpression="PDVENTA" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
                    <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                        <ControlStyle Height="10px" Width="15px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="SUSPENDIDO" HeaderText="SUSPENDIDO" SortExpression="SUSPENDIDO" Visible="False" />
                    <asp:ImageField DataImageUrlField="SUSPENDIDO" DataImageUrlFormatString="~/images/suspen{0}.png" HeaderText="SUSPEN">
                        <ControlStyle Height="10px" Width="15px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listadoTT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </asp:Panel>

    </div>
</asp:Content>
