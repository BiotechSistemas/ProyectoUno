<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="biotech.VentasRTC.Pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script src="../bio/js/sweetalert.min.js"></script>
    <link href="../bio/css/sweetalert.css" rel="stylesheet" />
    NOTA DE VENTAS 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btncotizacion" runat="server" Height="40px" Text="COTIZACIÓN" Width="300px" OnClick="btncotizacion_Click" />
    <asp:Button ID="btnpedido" runat="server" Height="40px" Text="NOTA DE PEDIDO" Width="300px" OnClick="btnpedido_Click" />
<br />
<br />
    
    <span class="title_section_offer">&nbsp;<asp:Label ID="lbltitulo2" runat="server" Text="COTIZACIÓN"></asp:Label></span>
    <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
    <div class="title_section_offer_fake"></div>
    <asp:Panel ID="pPrincipal" runat="server">
    </asp:Panel>
    <asp:Panel ID="pCotizacion" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="40px" />
        <asp:Button ID="btnNuevacotizacion" runat="server" Text="NUEVA COTIZACION" Height="40px" OnClick="btnNuevacotizacion_Click" Width="300px" />
        <br />
        <br />
        <br />
        COTIZACIÓN REALIZADA:<asp:TextBox ID="txtclientecotizar" runat="server" OnTextChanged="txtclientecotizar_TextChanged"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="Buscar" />
        <asp:Label ID="lblclientebuscarcot" runat="server" Visible="False"></asp:Label>
        <asp:GridView ID="gcCotizacion" runat="server" AutoGenerateColumns="False" DataKeyNames="idcot" DataSourceID="SqlDataSourceCotizacion" OnRowDataBound="gcCotizacion_RowDataBound" Width="100%" OnRowCommand="gcCotizacion_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idcot" HeaderText="idcot" ReadOnly="True" SortExpression="idcot" Visible="False" />
                <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION" >
                <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="FSOLICITA" HeaderText="F. SOLICITA" SortExpression="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                <asp:BoundField DataField="FENTREGA" HeaderText="F. ENTREGA" SortExpression="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
               <%-- <asp:BoundField DataField="CC" HeaderText="CC" SortExpression="CC" />
                <asp:BoundField DataField="GG" HeaderText="GG" SortExpression="GG" />--%>
                 <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#DFFFDF" />
                        </asp:ImageField>
                 <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#DFFFDF" />
                        </asp:ImageField>
                 <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#DFFFDF" />
                        </asp:ImageField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                <%--<asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />--%>
                <%--<asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" />--%>
                 <asp:ButtonField CommandName="ver" HeaderText="Ver" ShowHeader="True" Text="Ver" >
        <ItemStyle ForeColor="#339933" />
        </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#E9E9E9" Font-Bold="True" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceCotizacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_LisdoAsesor" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblusuario" Name="idasesor" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblclientebuscarcot" Name="cliente" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        VALIDAR: Cotización por validar precio
        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z3.png" Width="10px" />
        <br />
        CC: Validación Coordinador Comercial (aprobado
        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
        &nbsp; | desaprobado
        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
        &nbsp;)<br /> GG: Validación Gerencial (aprobado
        <asp:Image ID="Image9" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
        &nbsp; | desaprobado
        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
        &nbsp;)<br /> ESTADO: Cotización habilitada
        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
        &nbsp;Cotización anulada
        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Z4.png" Width="10px" />
    </asp:Panel>
    <asp:Panel ID="pPedido" runat="server" Visible="False">
         <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton2_Click" Width="40px" />
         <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="NUEVO PEDIDO" Width="300px" />
         <asp:Button ID="btnPedidocotizacion" runat="server" Height="40px" OnClick="btnPedidocotizacion_Click" Text="NUEVA PEDIDO POR COTIZACION" Width="300px" />
         <br />
         <br />
         PEDIDO POR VALIDAR: COORDINADOR COMERCIAL:
        <asp:ImageButton ID="ibtnAyuda" runat="server" ImageUrl="~/images/AYUDA.jpg" OnClick="ibtnAyuda_Click" Width="20px" />
        <asp:GridView ID="gvPedPorValidar" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPedido,NPEDIDO" DataSourceID="SqlDataSourcevalidar" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowPaging="True" PageSize="20" OnRowCommand="gvPedPorValidar_RowCommand">

        <Columns>
            <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
        <asp:BoundField DataField="NPEDIDO" HeaderText="PEDIDO" SortExpression="NPEDIDO" ReadOnly="True" />
        <asp:BoundField DataField="FREGISTRADA" HeaderText="F.REGISTRADA" SortExpression="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" Visible="False" >
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="FSOLICITADA" HeaderText="F.SOLICITADA" SortExpression="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" >
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
        <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" Visible="False" />
        <asp:BoundField DataField="CONDICIONPAGO" HeaderText="COND. PAGO" SortExpression="CONDICIONPAGO" ReadOnly="True" />
        <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
        <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
     
        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

        <asp:ButtonField CommandName="elimina" HeaderText="Ver" ShowHeader="True" Text="Ver" >
        <ItemStyle ForeColor="#339933" />
        </asp:ButtonField>
        <asp:ButtonField CommandName="edita" HeaderText="Modificar" ShowHeader="True" Text="Mofidicar" >
            
        <ItemStyle ForeColor="#339933" />
        </asp:ButtonField>
        </Columns>
            <EmptyDataTemplate>
                No registra pedido por validar precio.
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="WhiteSmoke" />
    <SelectedRowStyle Font-Bold="True" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourcevalidar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_estado_xvalidarAsesor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblusuario" Name="idpersonal" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="Panelvermas" runat="server" style="text-align: center" Visible="False">
        <br />
        PEDIDO
        <asp:Label ID="lblnpedido" runat="server"></asp:Label>
        :&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver nota de pedido</asp:LinkButton>
        &nbsp; |&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Modificar noda de pedido</asp:LinkButton>
        <asp:Label ID="lblidPedido" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
<br /><br />
    DETALLE DE PEDIDOS REALIZADOS:
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPedido,NPEDIDO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="30" OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
        <asp:BoundField DataField="NPEDIDO" HeaderText="PEDIDO" SortExpression="NPEDIDO" ReadOnly="True" />
        <asp:BoundField DataField="FREGISTRADA" HeaderText="F.REGISTRADA" SortExpression="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" Visible="False" >
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="FSOLICITADA" HeaderText="F.SOLICITADA" SortExpression="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" >
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
        <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" Visible="False" />
        <asp:BoundField DataField="CONDICIONPAGO" HeaderText="COND. PAGO" SortExpression="CONDICIONPAGO" ReadOnly="True" />
        <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
        <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
     
        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO" >
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

        <asp:ButtonField CommandName="elimina" HeaderText="Ver" ShowHeader="True" Text="Ver" >
        <ItemStyle ForeColor="#339933" />
        </asp:ButtonField>
        <asp:ButtonField CommandName="edita" HeaderText="Modificar" ShowHeader="True" Text="Mofidicar" >
            
        <ItemStyle ForeColor="#339933" />
        </asp:ButtonField>
            
    </Columns>
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="WhiteSmoke" />
    <SelectedRowStyle Font-Bold="True" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedido_ListadoTTVendedor" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter ControlID="lblusuario" Name="idVendedor" PropertyName="Text" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblidepedido" runat="server" Visible="False"></asp:Label>
    ESTADO:
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
&nbsp;Atendido
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Z3.png" Width="15px" />
&nbsp;Observado
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
&nbsp;Anulado<asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET" DataSourceID="SqlDataSource3" GridLines="Horizontal" style="font-size: small">
            <Columns>
                <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO">
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P.VENTA" SortExpression="PVENTA">
                <HeaderStyle Width="50px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                <HeaderStyle Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT">
                <HeaderStyle Width="65px" />
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                <asp:BoundField DataField="DESCTO" HeaderText="DSCTO %" SortExpression="DESCTO">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:BoundField DataField="APROBACION" HeaderText="APROB." SortExpression="APROBACION" Visible="False">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ESTADOATENCION" HeaderText="*" SortExpression="ESTADOATENCION" Visible="False">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png">
                    <ControlStyle Height="15px" Width="15px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:ImageField DataImageUrlField="ESTADOATENCION" DataImageUrlFormatString="~/images/aten{0}.png" HeaderText="*">
                    <ControlStyle Height="15px" Width="15px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_bkpedidoDet" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidepedido" Name="idpedido" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </asp:Panel>
 
<br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
