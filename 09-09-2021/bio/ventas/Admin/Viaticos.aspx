<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Viaticos.aspx.cs" Inherits="biotech.bio.ventas.Admin.Viaticos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style type="text/css">
    th
    {
        text-align:center;
    }
          .auto-style1 {
              width: 800px;
          }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="page-header"><i class="glyphicon fa-money"></i>  ADMINISTRAR VIATICOS<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        </h2>
    <asp:GridView ID="gvCategoria" runat="server" CssClass="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idcat" DataSourceID="SqlDataSourceCategoria" Width="600px" GridLines="Horizontal" OnSelectedIndexChanged="gvCategoria_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <HeaderStyle Width="90px" />
            </asp:CommandField>
            <asp:BoundField DataField="idcat" HeaderText="COD" ReadOnly="True" SortExpression="idcat" Visible="False" />
            <asp:BoundField DataField="categoriard" HeaderText="CATEGORIA" SortExpression="categoriard" />
            <asp:BoundField DataField="orden" HeaderText="orden" SortExpression="orden" Visible="False" />
            <asp:BoundField DataField="IdTipo" HeaderText="IdTipo" SortExpression="IdTipo" Visible="False" />
            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
        </Columns>
        <HeaderStyle BackColor="#F0F0F0" />
        <SelectedRowStyle BackColor="#E9F8F0" />
     </asp:GridView>
   
     <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_rdcategoria where IdTipo=1 and estado=1 order by orden
"></asp:SqlDataSource>
   
     <br />
     <asp:GridView ID="gvMotivo" runat="server"  CssClass="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idmot,motivo,estado" DataSourceID="SqlDataSourceMotivo" GridLines="Horizontal" OnSelectedIndexChanged="gvMotivo_SelectedIndexChanged">
         <Columns>
             <asp:CommandField ShowSelectButton="True">
             <HeaderStyle Width="80px" />
             </asp:CommandField>
             <asp:BoundField DataField="idmot" HeaderText="COD" ReadOnly="True" SortExpression="idmot" >
             <HeaderStyle Width="30px" />
             </asp:BoundField>
             <asp:BoundField DataField="motivo" HeaderText="DESCRIPCIÓN" SortExpression="motivo" />
             <asp:BoundField DataField="idrdCategoria" HeaderText="idrdCategoria" SortExpression="idrdCategoria" Visible="False" />
             <asp:BoundField DataField="estado" HeaderText="ESTADO" SortExpression="estado" Visible="False" />
              <asp:ImageField DataImageUrlField="estado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="10" Width="10" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="22px" />
                        </asp:ImageField>
         </Columns>
         <EmptyDataTemplate>
             Seleccionar categoria viaticos...
         </EmptyDataTemplate>
         <HeaderStyle BackColor="#F2F2F2" />
     </asp:GridView>
     <asp:Panel ID="pAdmin" runat="server">
         <br />
         <asp:Panel ID="pdatos" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td>COD:<asp:Label ID="lblidcategoria" runat="server" Visible="False"></asp:Label>
                         <br />
                         <asp:TextBox ID="txtcod" runat="server" Enabled="False"></asp:TextBox>
                     </td>
                     <td>DESCRIPCIÓN:<br />
                         <asp:TextBox ID="txtdescripcion" runat="server" Width="400px"></asp:TextBox>
                     </td>
                     <td>HABILITADO<br />
                         <asp:RadioButtonList ID="rbHabilitado" runat="server" RepeatDirection="Horizontal" Width="200px">
                             <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                             <asp:ListItem Value="0">NO</asp:ListItem>
                         </asp:RadioButtonList>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
         </asp:Panel>
         <asp:Button ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="NUEVO" />
         <asp:Button ID="btnAgregar" runat="server" Text="REGISTRAR" OnClick="btnAgregar_Click" />
         <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="MODIFICAR" />
         <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" OnClientClick="return confirm('Elimiar tipo de gasto, desea continuar?');" Text="ELIMINAR" />
     </asp:Panel>
     <asp:SqlDataSource ID="SqlDataSourceMotivo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_rdMotivo WHERE idrdCategoria=@idcat">
         <SelectParameters>
             <asp:ControlParameter ControlID="gvCategoria" Name="idcat" PropertyName="SelectedValue" />
         </SelectParameters>
     </asp:SqlDataSource>
   
</asp:Content>
