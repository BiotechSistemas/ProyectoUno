<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="AlmCetral_IngProducto.aspx.cs" Inherits="biotech._1logistica.AlmCetral_IngProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 800px;
        }
        .auto-style4 {
            width: 274px;
        }
        .auto-style5 {
            width: 96px;
        }
        .auto-style6 {
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        ALMACEN - STOCK MINIMO </h1>
    <asp:Panel ID="Panel1" runat="server">


            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style5">CATEGORIA:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlbCategoria" runat="server" OnSelectedIndexChanged="ddlbCategoria_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Value="10">QUIMICOS</asp:ListItem>
                            <asp:ListItem Value="400">BIOINDUCTORES DE DEFENSAS</asp:ListItem>
                            <asp:ListItem Value="500">BIOPROMOTORES</asp:ListItem>
                            <asp:ListItem Value="600">FITOELICITORES</asp:ListItem>
                            <asp:ListItem Value="700">MEJORADORES DE AGUA</asp:ListItem>
                            <asp:ListItem Value="800">NUTRICION</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">ALMACEN:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="300px">
                            <asp:ListItem Value="ALICA">ICA</asp:ListItem>
                            <asp:ListItem Value="ALPIU">PIURA</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    
                </tr>
            </table>

    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
        <fieldset style="min-height:100px;">
        <legend><b>Listado de productos</b> </legend>
            <asp:GridView ID="gv_Productos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="IDDETALMACEN">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="IDDETALMACEN" HeaderText="IDDETALMACEN" SortExpression="IDDETALMACEN" Visible="False" />
                    <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" ReadOnly="True" />
                    <asp:TemplateField HeaderText="MINIMO" SortExpression="MINIMO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MINIMO") %>' Width="100px" TextMode="Number"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("MINIMO") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="Silver" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Almacen_minimo_cat" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE almacenDetalle set min =@MINIMO where idDetalleAlmacen=@IDDETALMACEN">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlbCategoria" Name="idcategoria" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="idalmacen" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MINIMO" />
                    <asp:Parameter Name="IDDETALMACEN" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </fieldset>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
