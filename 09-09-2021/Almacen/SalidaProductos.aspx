<%@ Page Title="" Language="C#" MasterPageFile="~/Almacen/Principal.Master" AutoEventWireup="true" CodeBehind="SalidaProductos.aspx.cs" Inherits="biotech.Almacen.SalidaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-small;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style10 {
            width: 164px;
        }
        .auto-style12 {
            width: 200px;
        }
        .auto-style14 {
            width: 324px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="menu__item"><a class="menu__link " href="../1logistica/Default.aspx"><span class="icon-home"></span> Inicio</a></li>
     <li class="menu__item"><a class="menu__link  " href="ProductosAc.aspx">Almacen</a></li>
            <li class="menu__item"><a class="menu__link " href="IngresoProductos.aspx">Ingreso Productos</a></li>
            <li class="menu__item"><a class="menu__link select" href="SalidaProductos.aspx">Salida Productos</a></li>
            <li class="menu__item"><a class="menu__link " href="RegistrarClientes.aspx">Reg. Clientes</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
     <h2 class="grupo__titulo">SALIDA DE PRODUCTO<asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
</h2>
    
      
        <table class="auto-style8">
            <tr>
                <td class="auto-style10">Filtrar por:<asp:Label ID="lblmes" runat="server" Text="0" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="200px">
                        <asp:ListItem Selected="True" Value="ALMAC">ALMACEN</asp:ListItem>
                        <asp:ListItem Value="PRODU">COD PRODUCTO</asp:ListItem>
                        <asp:ListItem>FECHA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left" class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="300px" placeholder="Ingresar valor"></asp:TextBox>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageAlign="AbsMiddle" ImageUrl="~/images/buscarr.png" Width="100px" OnClick="ImageButton1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
     </table>
     <br />
     <asp:Panel ID="Panel2" runat="server" class="grupo__descripcion">
         <fieldset>
      <legend>Detalle de salidas</legend>
      
         <asp:GridView ID="GridViewSalida" runat="server" AutoGenerateColumns="False" DataKeyNames="IDSALIDAM" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowPaging="True" PageSize="30" CssClass="auto-style7">
             <Columns>
                 <asp:BoundField DataField="IDSALIDAM" HeaderText="COD SALIDA" ReadOnly="True" SortExpression="IDSALIDAM" >
                 </asp:BoundField>
                 <asp:BoundField DataField="FSALIDA" HeaderText="FSALIDA" SortExpression="FSALIDA" >
                 </asp:BoundField>
                 <asp:BoundField DataField="IDALMACEN" HeaderText="IDALMACEN" SortExpression="IDALMACEN" >
                 </asp:BoundField>
                 <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" >
                 </asp:BoundField>
                 <asp:BoundField DataField="IDGUIAREM" HeaderText="IDGUIAREM" SortExpression="IDGUIAREM" />
                 <asp:BoundField DataField="GUIA" HeaderText="GUIA" SortExpression="GUIA" ReadOnly="True" Visible="False" />
                 <asp:BoundField DataField="TPSALIDA" HeaderText="TPSALIDA" SortExpression="TPSALIDA" >
                 </asp:BoundField>
                 <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" Visible="False" />
                 <asp:BoundField DataField="CodProducto" HeaderText="CodProducto" SortExpression="CodProducto" Visible="False">
                 </asp:BoundField>
                 <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True" >
                 </asp:BoundField>
                 <asp:BoundField DataField="cantidad" HeaderText="CANTIDAD" SortExpression="cantidad" >
                 </asp:BoundField>
             </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <RowStyle BackColor="#EEEEEE" />
             <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_SalidasRegistradas" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
             </SelectParameters>
             </asp:SqlDataSource>
        </fieldset>
     </asp:Panel>
     <br />
</asp:Content>
