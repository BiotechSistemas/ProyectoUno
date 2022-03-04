<%@ Page Title="" Language="C#" MasterPageFile="~/Almacen/Principal.Master" AutoEventWireup="true" CodeBehind="RegistrarClientes.aspx.cs" Inherits="biotech.Almacen.RegistrarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style3 {
            width: 100%;
        }

        * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

        * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            text-align: center;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

           <li class="menu__item"><a class="menu__link " href="../1logistica/Default.aspx"><span class="icon-home"></span> Inicio</a></li>
     <li class="menu__item"><a class="menu__link  " href="ProductosAc.aspx">Almacen</a></li>
            <li class="menu__item"><a class="menu__link " href="IngresoProductos.aspx">Ingreso Productos</a></li>
            <li class="menu__item"><a class="menu__link " href="SalidaProductos.aspx">Salida Productos</a></li>
            <li class="menu__item"><a class="menu__link select" href="RegistrarClientes.aspx">Reg. Clientes</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">

    <h2 class="grupo__titulo">&nbsp;CLIENTES REGISTRADOS<asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
    </h2>


            <asp:Panel ID="PanelfICHAINGRESO" runat="server">
                <table class="auto-style3">
                    <tr>
                        <td>
                            <label for="nombre">
                            <h2>REGISTRO DE CLIENTE</h2>
                            </label>
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="nombre">
                            Proveedor:</label>
                            <asp:RadioButtonList ID="rbl_rtc" runat="server" DataSourceID="SqlDataSource1" DataTextField="APELLIDOS" DataValueField="COD" RepeatColumns="3" RepeatDirection="Horizontal" style="color: #333333" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbl_rtc_SelectedIndexChanged">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RTC_vendedoresCargos" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="10" Name="idcargo" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                             <label for="nombre">RUC:</label>
                            <asp:TextBox ID="txtruc" runat="server" placeholder="Documento"></asp:TextBox>
                             
                        </td>
                        <td>
                            <label for="nombre">.</label>
                            <asp:Button ID="Button1" runat="server" Text="Verificar" />
                            <asp:TextBox ID="txtrtc" runat="server" placeholder="Solicitado por" Visible="False" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="nombre">Razón Social:</label>
                            <asp:TextBox ID="txtrazonsocial" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btRegistro" runat="server" OnClick="Button1_Click" Text="REGISTRAR CLIENTE" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="ACTUALIZAR" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            
    <asp:Panel id="p_productos" runat="server"  class="mapa">
        <h2>CLIENTES REGISTRADOS</h2>
        <asp:GridView ID="GridViewCLIENTES" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDRUC" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" style="font-size: x-small" Width="100%">
            <Columns>
                <asp:BoundField DataField="IDRUC" HeaderText="IDRUC" ReadOnly="True" SortExpression="IDRUC" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                </asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RTC_clientesxrtc" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="rbl_rtc" Name="idrtc" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDRUC" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" style="font-size: x-small" Width="100%">
            <Columns>
                <asp:BoundField DataField="IDRUC" HeaderText="IDRUC" ReadOnly="True" SortExpression="IDRUC" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO">
                <HeaderStyle HorizontalAlign="Center" Width="30px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RTC_clientesxRUC" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtrazonsocial" Name="RAZON" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </asp:Panel>

</asp:Content>
