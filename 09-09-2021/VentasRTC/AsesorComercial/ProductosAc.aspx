<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="ProductosAc.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.ProductosAc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




      <style type="text/css">
          .auto-style1 {
              font-size: x-small;
          }
          .auto-style2 {
              font-size: x-small;
          }
      </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
             <li class="menu__item"><a class="menu__link " href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link select" href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link " href="menuVentas.aspx">GESTION DE VENTAS</a></li>
             <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
     
    <h2 class="grupo__titulo">PRODUCTOS</h2>
		
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
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
               <Columns>
                   <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                       <ControlStyle Height="10px" Width="15px" />
                       <HeaderStyle Width="15px" />
                   </asp:ImageField>
                   <asp:BoundField DataField="CODDETALLE" HeaderText="COD" SortExpression="CODDETALLE" Visible="False" />
                   <asp:BoundField DataField="IDPRODUCTO" HeaderText="COD" SortExpression="IDPRODUCTO" Visible="False" />
                   <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                   <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" >
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" SortExpression="MINIMO" Visible="False" />
                   <asp:BoundField DataField="MAXIMO" HeaderText="MAXIMO" SortExpression="MAXIMO" Visible="False" />
                   <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" DataFormatString="{0:0,0.00}" >
                   <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PVENTA40" HeaderText="PVENTA40" ReadOnly="True" SortExpression="PVENTA40" DataFormatString="{0:0,0.00}" >
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PVENTA50" HeaderText="PVENTA50" ReadOnly="True" SortExpression="PVENTA50" DataFormatString="{0:0,0.00}">
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="PCOMPRA" DataFormatString="{0:0,0.00}" HeaderText="P. BASE" SortExpression="PCOMPRA">
                   <ItemStyle Font-Bold="True" ForeColor="Maroon" HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" >
                   <ItemStyle Font-Bold="True" ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
               </Columns>
               <EmptyDataTemplate>
                   Producto no encontrado!
               </EmptyDataTemplate>
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

    <div class="mapa">

        <asp:Panel ID="Panel2" runat="server">
            Almacen: PIURA
            <br />
            <center>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                        <ControlStyle Height="10px" Width="15px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="CODDETALLE" HeaderText="COD" SortExpression="CODDETALLE" Visible="False" />
                    <asp:BoundField DataField="IDPRODUCTO" HeaderText="COD" SortExpression="IDPRODUCTO" Visible="False" />
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" SortExpression="MINIMO" Visible="False" />
                    <asp:BoundField DataField="MAXIMO" HeaderText="MAXIMO" SortExpression="MAXIMO" Visible="False" />
                    <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" DataFormatString="{0:0,0.00}" >
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA40" HeaderText="PVENTA40" ReadOnly="True" SortExpression="PVENTA40" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA50" HeaderText="PVENTA50" ReadOnly="True" SortExpression="PVENTA50" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PCOMPRA" DataFormatString="{0:0,0.00}" HeaderText="P. BASE" SortExpression="PCOMPRA">
                    <ItemStyle Font-Bold="True" ForeColor="Maroon" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" >
                    <ItemStyle Font-Bold="True" ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    Producto no encontrado!
                </EmptyDataTemplate>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_AlmacenExistencia" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="ALPIU" Name="categoria" Type="String" />
                    <asp:ControlParameter ControlID="lblproducto" DefaultValue="" Name="productoo" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                </center>
            <br />
        </asp:Panel>

    </div>

</asp:Content>
