<%@ Page Title="" Language="C#" MasterPageFile="~/Almacen/Principal.Master" AutoEventWireup="true" CodeBehind="ProductosAc.aspx.cs" Inherits="biotech.Almacen.ProductosAc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




      <style type="text/css">
          .auto-style1 {
              font-size: x-small;
          }
          .auto-style2 {
              font-size: x-small;
          }
          a:link {color:#008226;}
        a:visited {color:#008226;}
        a:active {color:#008226;}
        a:hover {color:#03c43c;}
      </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
              <li class="menu__item"><a class="menu__link " href="../1logistica/Default.aspx"><span class="icon-home"></span> Inicio</a></li>
     <li class="menu__item"><a class="menu__link select select" href="ProductosAc.aspx">Almacen</a></li>
            <li class="menu__item"><a class="menu__link " href="IngresoProductos.aspx">Ingreso Productos</a></li>
            <li class="menu__item"><a class="menu__link " href="SalidaProductos.aspx">Salida Productos</a></li>
            <li class="menu__item"><a class="menu__link " href="RegistrarClientes.aspx">Reg. Clientes</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
     
    <h2 class="grupo__titulo">INVENTARIO DE PRODUCTOS&nbsp;</h2>
		
    <p class="grupo__descripcion">
             <asp:TextBox ID="txtSearch" runat="server" placeholder="Ingresar producto"></asp:TextBox>
&nbsp;&nbsp;

        <asp:LinkButton runat="server" OnClick="Unnamed1_Click">Buscar producto</asp:LinkButton>
        &nbsp; |&nbsp;
        <asp:LinkButton runat="server" OnClick="Unnamed2_Click">Todos los productos</asp:LinkButton>

    </p>
              
   
   
     
    <br />
   
   
     
    <div class="contenedor-formulario">
       <asp:Panel ID="Panel1" runat="server">
           <asp:Label ID="lblproducto" runat="server" Visible="False"></asp:Label>
           <asp:HiddenField ID="hfCustomerId" runat="server" />
           Almacen: ICA<br />
           <center>
           <asp:GridView ID="GridView1" DataKeyNames="IDPRODUCTO" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
               <Columns>
                   <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg" Visible="False">
                       <ControlStyle Height="10px" Width="15px" />
                       <HeaderStyle Width="15px" />
                   </asp:ImageField>
                   <asp:TemplateField HeaderText="COD" ShowHeader="False">
                       <ItemTemplate>
                           <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDPRODUCTO") %>'></asp:LinkButton>
                       </ItemTemplate>
                       <ItemStyle ForeColor="#006600" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="CODDETALLE" HeaderText="COD" SortExpression="CODDETALLE" Visible="False" />
                   <asp:BoundField DataField="IDPRODUCTO" HeaderText="COD" SortExpression="IDPRODUCTO" Visible="False" >
                   <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                   <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" >
                   <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" SortExpression="MINIMO" >
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="MAXIMO" HeaderText="MAXIMO" SortExpression="MAXIMO" Visible="False" />
                   <asp:BoundField DataField="PCOMPRA" HeaderText="PCOMPRA" SortExpression="PCOMPRA" DataFormatString="{0:0,0.00}" >
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" DataFormatString="{0:0,0.00}" >
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PVENTA40" HeaderText="PVENTA40" ReadOnly="True" SortExpression="PVENTA40" DataFormatString="{0:0,0.00}" >
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PDISTRIBUIDOR" HeaderText="PDISTRIBUIDOR" ReadOnly="True" SortExpression="PDISTRIBUIDOR" Visible="False" />
                   <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" />
                   <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
               </Columns>
               <EmptyDataTemplate>
                   Producto no encontrado!
               </EmptyDataTemplate>
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
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_AlmacenExistencia" SelectCommandType="StoredProcedure">
               <SelectParameters>
                   <asp:Parameter DefaultValue="ALICA" Name="categoria" Type="String" />
                   <asp:ControlParameter ControlID="lblproducto" DefaultValue="" Name="productoo" PropertyName="Text" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
               </center>
           <br />
       </asp:Panel>

    </div>

    <%--<div class="mapa">--%>

        <asp:Panel ID="Panel2" runat="server" class="mapa">
            Almacen: PIURA
            <br />
            <center>
            <asp:GridView ID="GridView2" DataKeyNames="IDPRODUCTO" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%">
                <Columns>
                    <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg" Visible="False">
                        <ControlStyle Height="10px" Width="15px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" />
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="COD" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDPRODUCTO") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CODDETALLE" HeaderText="COD" SortExpression="CODDETALLE" Visible="False" />
                    
                    <asp:BoundField DataField="IDPRODUCTO" HeaderText="COD" SortExpression="IDPRODUCTO" Visible="False" >
                   <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                   </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" SortExpression="MINIMO" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAXIMO" HeaderText="MAXIMO" SortExpression="MAXIMO" Visible="False" />
                    <asp:BoundField DataField="PCOMPRA" HeaderText="PCOMPRA" SortExpression="PCOMPRA" />
                    <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA40" HeaderText="PVENTA40" ReadOnly="True" SortExpression="PVENTA40" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PDISTRIBUIDOR" HeaderText="PDISTRIBUIDOR" ReadOnly="True" SortExpression="PDISTRIBUIDOR" Visible="False" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" />
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    Producto no encontrado!
                </EmptyDataTemplate>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_AlmacenExistencia" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="ALPIU" Name="categoria" Type="String" />
                    <asp:ControlParameter ControlID="lblproducto" DefaultValue="" Name="productoo" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                </center>
            <br /> 
             <%--</div>--%>
        </asp:Panel>

        <br />
        <asp:Panel ID="PanelMov" class="grupo__descripcion" runat="server">
            ALMACEN:
            <asp:Label ID="lblalmacen" runat="server" style="font-size: x-large"></asp:Label>
            <asp:Label ID="lblcodAlmacen" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRODUCTO:
            <asp:Label ID="lblcodproducto" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblproducto2" runat="server" style="font-size: x-large"></asp:Label>
            <br />
             <fieldset>
      <legend>Informe de movimientos realizados:</legend>

                 INGRESO DE PRODUCTO<asp:GridView ID="GridViewingreso" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="100%">
                     <Columns>
                         <asp:BoundField DataField="idalmacen" HeaderText="idalmacen" SortExpression="idalmacen" Visible="False" />
                         <asp:BoundField DataField="fecha_Factura" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.INGRESO" SortExpression="fecha_Factura" />
                         <asp:BoundField DataField="DOCENTRADA" HeaderText="DOC. ENTRADA" SortExpression="DOCENTRADA" />
                         <asp:BoundField DataField="NREG" HeaderText="REG N°" SortExpression="NREG" />
                         <asp:BoundField DataField="CODPRO" HeaderText="COD. PRO" SortExpression="CODPRO" />
                         <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                         <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
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
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_MovEntradaProduc" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="lblcodAlmacen" Name="idalmacen" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="lblcodproducto" Name="idproducto" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <br />
                 SALIDA DE PRODUCTO<asp:GridView ID="GridViewsalida" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="100%" DataKeyNames="idSalida,IDGUIAREM,CODPRO">
                     <Columns>
                         <asp:BoundField DataField="idSalida" HeaderText="COD" SortExpression="idSalida" Visible="False" />
                         <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                         <asp:BoundField DataField="FSALIDA" HeaderText="F.SALIDA" SortExpression="FSALIDA" />
                         <asp:BoundField DataField="IDGUIAREM" HeaderText="IDGUIAREM" SortExpression="IDGUIAREM" Visible="False" />
                         <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" ReadOnly="True" />
                         <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False" />
                         <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                         <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
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
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_MovSalProduc" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="lblcodAlmacen" Name="idalmacen" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="lblcodproducto" Name="idproducto" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>

                 <br />
                 <asp:Button ID="Button1" class="boton__form"  runat="server" OnClick="Button1_Click1" Text="RETORNAR" />

                 </fieldset>
        </asp:Panel>

  

</asp:Content>
