<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="CarteraCliente.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.CarteraCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 900px;
            height: 80px;
        }
        .auto-style2 {
            width: 236px;
            height: 76px;
        }
        .auto-style3 {
            width: 300px;
            height: 76px;
        }
        .auto-style5 {
            height: 76px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <li class="menu__item"><a class="menu__link" href="Default.aspx"><span class="icon-home"></span> inicio</a></li>
     <li class="menu__item"><a class="menu__link" href="menuproductos.aspx">PRODUCTOS</a></li>
            
     <li class="menu__item"><a class="menu__link select" href="menuVentas.aspx">GESTION DE VENTAS</a></li>
     <%--<li class="menu__item"><a class="menu__link" href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
    <li class="menu__item"><a class="menu__link" href="RendicionGastos.aspx">REND. GASTOS</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
     <h2 class="grupo__titulo">CARTERA DE CLIENTES</h2>

    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ASESOR COMERCIAL:</td>
                <td class="auto-style3"><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="APELLIDOS" DataValueField="COD" Height="40px" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
                </td>
                <td class="auto-style5">
        <asp:TextBox ID="txtCliente" runat="server" placeholder="Ingresar cliente" Height="40px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="BUSCAR" />
                </td>
            </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver todos</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RTC_vendedoresCargos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="idcargo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblidRTC" runat="server" Visible="False"></asp:Label>
    </p>
     <asp:Panel ID="Panel1" class="grupo__descripcion" runat="server">
     
    
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDRUC" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowDataBound="GridView1_RowDataBound">
             <Columns>
                 <asp:BoundField DataField="IDRUC" HeaderText="RUC" ReadOnly="True" SortExpression="IDRUC" />
                 <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" >
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <HeaderStyle Width="20px" />
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                 </asp:ImageField>
             </Columns>
             <EmptyDataTemplate>
                 Cliente no registrado...!
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
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RTC_clientesxrtc_TT" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblidRTC" Name="idrtc" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDRUC" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="100%">
             <Columns>
                 <asp:BoundField DataField="IDRUC" HeaderText="RUC" ReadOnly="True" SortExpression="IDRUC" />
                 <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" >
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC">
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <HeaderStyle Width="20px" />
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png">
                     <ControlStyle Height="20px" Width="20px" />
                     <HeaderStyle HorizontalAlign="Center" Width="20px" />
                 </asp:ImageField>
             </Columns>
             <EmptyDataTemplate>
                 Cliente no registrado...!
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
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RTC_clientesxRUC" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtCliente" Name="RAZON" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:Label ID="lblcantidad" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp; Clientes aprobados
         <asp:Image ID="Image1" runat="server" Height="20px" ImageAlign="AbsMiddle" ImageUrl="~/images/apro1.png" Width="20px" />
         , clientes observados
         <asp:Image ID="Image2" runat="server" Height="20px" ImageAlign="AbsMiddle" ImageUrl="~/images/apro55.png" Width="20px" />
         &nbsp;, por completar información
         <asp:Image ID="Image3" runat="server" Height="20px" ImageAlign="AbsMiddle" ImageUrl="~/images/apro2.png" Width="20px" />
    </asp:Panel>
     <p>
         &nbsp;</p>
</asp:Content>
