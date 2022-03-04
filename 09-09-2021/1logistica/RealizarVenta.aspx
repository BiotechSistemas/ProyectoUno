<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="RealizarVenta.aspx.cs" Inherits="biotech._1logistica.RealizarVenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
         .redondeado { 
                border: 1px solid #006600;
                height: auto;
                width: 100%;
                border-radius: 5px;
         }
         .redondeado2 { 
                border: 1px solid #006600;
               
                width: 100%;
                border-radius: 0 ;
                text-align: center;
         }

         .redondeadoprincipal {
              border: 1px solid #006600;
              height: auto;
              width: 100%;
              border-radius: 5px;

         }
        .auto-style16 {
        }
        .auto-style24 {
            width: 4px;
            height: 24px;
        }
        .auto-style27 {
            width: 125px;
            height: 24px;
        }
        .auto-style29 {
            width: 144px;
            height: 24px;
        }
        .auto-style42 {
        }
        .auto-style46 {
            width: 200px;
            font-size: x-small;
        }
        .auto-style50 {
            width: 125px;
        }
        .auto-style52 {
            width: 4px;
        }
        .auto-style54 {
            width: 144px;
        }
        .auto-style55 {
            width: 119px;
        }
        .auto-style56 {
            width: 119px;
            height: 24px;
        }
        .auto-style57 {
            height: 24px;
        }
        .auto-style58 {
            font-size: x-small;
        }
        .auto-style62 {
        }
        .auto-style63 {
            width: 1%;
        }
        .auto-style66 {
        }
        .auto-style68 {
            text-align: right;
        }
        .auto-style69 {
        }
        .auto-style70 {            text-align: right;
        }
        .auto-style72 {
            width: 21%;
        }
        .auto-style73 {
        }
        .auto-style74 {
        }
        .auto-style75 {
            width: 13%;
            font-weight: bold;
        }
        .auto-style76 {
            width: 13%;
            font-weight: bold;
            height: 24px;
        }
        .auto-style77 {
            width: 1%;
            height: 24px;
        }
        .auto-style79 {
            width: 21%;
            height: 24px;
        }
        .auto-style733 {
            text-align: right;
        }
        .auto-style734 {
            height: 46px;
        }
        .auto-style735 {
            font-size: medium;
        }
        .auto-style736 {
            width: 117px;
        }
        .auto-style737 {
            width: 100%;
        }
        .auto-style738 {
            color: #C0C0C0;
            font-size: x-small;
        }
        .auto-style739 {
            color: #999999;
            font-size: x-small;
        }
        .auto-style740 {
            width: 35px;
        }
        .auto-style741 {
            width: 815px;
        }
        .auto-style742 {
            height: 35px;
        }
        .auto-style743 {
            width: 200px;
            font-size: x-small;
            height: 35px;
        }
        .auto-style744 {
            width: 119px;
            height: 35px;
        }
        .auto-style745 {
            width: 125px;
            height: 35px;
        }
        .auto-style746 {
            width: 4px;
            height: 35px;
        }
        .auto-style747 {
            width: 144px;
            height: 35px;
        }
        .auto-style748 {
            font-size: small;
        }
        .auto-style749 {
            color: #808080;
        }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <fieldset style="min-height:100px; width:100%;">

        <asp:Panel ID="PPorvalidar" runat="server">
            PEDIDOS POR VALIDAR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style749"><font class="auto-style748" size="3">AC= Aprobación Comercial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AG=Aprobación General&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/apro1.png" Width="10px" />
            =Aprobado</font></span>
            <asp:GridView ID="gvPediosxValidar" runat="server" AutoGenerateColumns="False" DataKeyNames="idPedido"  PageSize="15" style="font-size: small" Width="100%" GridLines="Horizontal" DataSourceID="SqlDataSourceXValidar" OnSelectedIndexChanged="gvPediosxValidar_SelectedIndexChanged" >
                <Columns>
                     <asp:TemplateField HeaderText="N° PEDIDO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("NPEDIDO") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="30px" Width="70px" />
                        <HeaderStyle Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                    <asp:BoundField DataField="NPEDIDO" HeaderText="NPEDIDO" ReadOnly="True" SortExpression="NPEDIDO" Visible="False" />
                    <asp:BoundField DataField="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRADA" SortExpression="FREGISTRADA" Visible="False" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITADA" SortExpression="FSOLICITADA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" Visible="False" />
                    <asp:BoundField DataField="CONDICIONPAGO" HeaderText="COND. PAGO" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                    <asp:BoundField DataField="M" HeaderText="MONEDA" SortExpression="M" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RTC" HeaderText="ASESOR" SortExpression="RTC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" Visible="false" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                </Columns>
                <EmptyDataTemplate>
                    <em>No se registra ningún pedido por validar...</em>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="Silver" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceXValidar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_estado_xvalidar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView ID="gvPedidosDetalleValidar" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET,ESTADOATENCION,ESTADOGERENCIA,CODPRO,PRODUCTO,ATENDIDO" DataSourceID="SqlDataSourceDetPet0"  Width="800px">
                <Columns>
                    <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False">
                    <HeaderStyle Width="250px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                    <HeaderStyle Width="300px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB. TT" ReadOnly="True" SortExpression="SUBTT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                    <asp:BoundField DataField="APROBACION" HeaderText="APROBACION" SortExpression="APROBACION" Visible="False" />
                    <asp:BoundField DataField="ESTADOGERENCIA" HeaderText="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False" />
                    <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
                    <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" ReadOnly="True" SortExpression="DESCTO" />
                    <asp:BoundField DataField="ATENDIDO" HeaderText="ATENDIDO" SortExpression="ATENDIDO">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle Width="22px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                     <asp:ImageField DataImageUrlField="COMERCIAL" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="AC">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle Width="22px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="AG">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADOATENCION" DataImageUrlFormatString="~/images/aten{0}.png" HeaderText="*" Visible="False">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="22px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#DADADA" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceDetPet0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_DetPEdidos1" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvPediosxValidar" Name="idpedido" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        
            <br />
        
        </asp:Panel>

        PEDIDOS:
<%-- <legend align= "center"><b>PEDIDOS POR ATENDER:<asp:Label ID="lblcantPed" runat="server"></asp:Label>
        </b>
     &nbsp;</legend>--%>

        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">POR ATENDER</asp:LinkButton>
        &nbsp;|
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" >OBSERVADOS</asp:LinkButton>
&nbsp;|
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">ATENDIDOS</asp:LinkButton>
&nbsp;|
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">ANULADOS</asp:LinkButton>
&nbsp;<asp:Label ID="lblestadoo" runat="server" Visible="False">6</asp:Label>

        <asp:TextBox ID="txtcliente" runat="server" placeholder="Buscar cliente" Width="200px" AutoPostBack="True" OnTextChanged="txtcliente_TextChanged"></asp:TextBox>

        <asp:Label ID="lblclienteaBuscar" runat="server" Visible="False"></asp:Label>

        <br />
        <asp:Panel ID="PVENTAS" runat="server">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idPedido,RUC,ZONA,RTC,NPEDIDO,ESTADO" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="15" style="font-size: small" Width="100%" GridLines="Horizontal" OnRowDataBound="GridView2_RowDataBound">
                <Columns>
                    <asp:TemplateField HeaderText="N° PEDIDO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("NPEDIDO") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="30px" Width="70px" />
                        <HeaderStyle Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                    <asp:BoundField DataField="NPEDIDO" HeaderText="NPEDIDO" ReadOnly="True" SortExpression="NPEDIDO" Visible="False" />
                    <asp:BoundField DataField="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRADA" SortExpression="FREGISTRADA" Visible="False" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITADA" SortExpression="FSOLICITADA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" Visible="False" />
                    <asp:BoundField DataField="CONDICIONPAGO" HeaderText="COND. PAGO" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                    <asp:BoundField DataField="M" HeaderText="MONEDA" SortExpression="M" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RTC" HeaderText="ASESOR" SortExpression="RTC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" Visible="false" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                </Columns>
                <EmptyDataTemplate>
                    <em>No se registra ningún pedido por atender...</em>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="Silver" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#CCCCCC" />
            </asp:GridView>
            Observados:&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z3.png" Width="10px" />
            &nbsp;Atendidos:&nbsp;<asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
            &nbsp;| Anulados:&nbsp;<asp:Image ID="Image7" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_estado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblestadoo" Name="estado" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblclienteaBuscar" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;<asp:Panel ID="Panel3" runat="server" Wrap="False" Visible="False">
                <asp:Label ID="lblidpedido" runat="server"></asp:Label>
                <asp:Label ID="lblestadoop" runat="server"></asp:Label>
                ESTADO:<asp:Label ID="lblEstadoAtencion" runat="server"></asp:Label>
                --pedDet:<asp:Label ID="lblidDetallePedido" runat="server"></asp:Label>
                --<asp:Label ID="lbldetpedCantidad" runat="server"></asp:Label>
                <asp:Label ID="lbldetPedPrecioVenta" runat="server"></asp:Label>
                codpro:<asp:Label ID="lblcodproducto" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="lblstockactual" runat="server" Visible="False">0</asp:Label>
                -<asp:Label ID="lblactual" runat="server"></asp:Label>
                <asp:Label ID="lblCantidad" runat="server"></asp:Label>
                <asp:Label ID="lblasesorid" runat="server"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="PanelDetallesPedidos" runat="server">
                <table class="auto-style737">
                    <tr>
                        <td class="auto-style741">
                            DETALLE PEDIDOS POR ATENDER&nbsp;<asp:Label ID="lblAlmacen" runat="server"></asp:Label>
                            :<asp:LinkButton ID="LinkbPedido" runat="server" OnClick="LinkbPedido_Click"></asp:LinkButton>
                            &nbsp;<asp:Label ID="lblidalmacen" runat="server" Visible="False"></asp:Label>
                            <asp:GridView ID="gvPedidosDetalle" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET,ESTADOATENCION,ESTADOGERENCIA,CODPRO,PRODUCTO,ATENDIDO" DataSourceID="SqlDataSourceDetPet" OnSelectedIndexChanged="gvPedidosDetalle_SelectedIndexChanged" Width="800px">
                                <Columns>
                                    <asp:CommandField SelectText="Consultar" ShowSelectButton="True" />
                                    <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False">
                                    <HeaderStyle Width="250px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                                    <HeaderStyle Width="300px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB. TT" ReadOnly="True" SortExpression="SUBTT">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                                    <asp:BoundField DataField="APROBACION" HeaderText="APROBACION" SortExpression="APROBACION" Visible="False" />
                                    <asp:BoundField DataField="ESTADOGERENCIA" HeaderText="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False" />
                                    <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
                                    <asp:BoundField DataField="DESCTO" HeaderText="DSCTO" ReadOnly="True" SortExpression="DESCTO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ATENDIDO" HeaderText="ATENDIDO" SortExpression="ATENDIDO">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                                        <ControlStyle Height="10px" Width="10px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:ImageField>
                                     <asp:ImageField DataImageUrlField="COMERCIAL" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="AC">
                                        <ControlStyle Height="10px" Width="10px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="AG">
                                        <ControlStyle Height="10px" Width="10px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="ESTADOATENCION" DataImageUrlFormatString="~/images/aten{0}.png" HeaderText="*">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ImageField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#DADADA" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceDetPet" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_DetPEdidos1" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView2" Name="idpedido" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:GridView ID="gvGuias" runat="server" AutoGenerateColumns="False" DataKeyNames="IDGUIA" DataSourceID="SqlDataSourceGuiasPed" Width="500px" GridLines="Horizontal" OnSelectedIndexChanged="gvGuias_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="GUIA REM" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("GUIA") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="IDGUIA" HeaderText="IDGUIA" ReadOnly="True" SortExpression="IDGUIA" Visible="False" />
                                    <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" Visible="False" />
                                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                                    <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/aten{0}.png">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ImageField>
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceGuiasPed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiaRem_xPedido" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView2" Name="idpedido" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="auto-style740">&nbsp;</td>
                        <td valign=top>
                            TP. ENTREGA : <span style="font-family:&quot;Calibri&quot;,sans-serif">
                            <asp:Label ID="lbltpEntrega" runat="server"></asp:Label>
                            &nbsp;<asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
                            </span><asp:GridView ID="gvLugarEntrega" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="id" DataSourceID="SqlDataSourcegvLugarEntregas" GridLines="Horizontal" OnSelectedIndexChanged="gvLugarEntrega_SelectedIndexChanged" Width="300px" style="font-size: xx-small">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="idPedido" HeaderText="idPedido" SortExpression="idPedido" Visible="False" />
                                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.ENTREGA" SortExpression="FENTREGA">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" Visible="False" />
                                    <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="PRESENT" HeaderText="PRSNT" SortExpression="PRESENT" Visible="False" />
                                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="Silver" />
                                <RowStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            *<asp:Label ID="lblsumilla" runat="server"></asp:Label>
                            <br />
                            <span style="font-family:&quot;Calibri&quot;,sans-serif">
                            <asp:Label ID="lbloc" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="LBLMENSAJEOC" runat="server"></asp:Label>
                            <asp:LinkButton ID="BLOC" runat="server" OnClick="BLOC_Click">Ver Orden de Compra</asp:LinkButton>
                            </span>
                            <asp:SqlDataSource ID="SqlDataSourcegvLugarEntregas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_entregaXPedidos" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidpedido" Name="idPedido" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pConsultar" runat="server">
                    Stock actual:
                    <asp:Label ID="lblProductoSeleccion" runat="server"></asp:Label>
                    <asp:GridView ID="gv_almTotalLitros" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSourceTotalLitros" OnRowDataBound="gv_almTotalLitros_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="idProducto" HeaderText="idProducto" SortExpression="idProducto" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO">
                            <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:Label ID="lblmensajeatencion" runat="server" ForeColor="#990000" style="font-style: italic" Visible="False"></asp:Label>
                    <asp:Panel ID="pstockreal" runat="server" BackColor="#E9E9E9">
                        <asp:SqlDataSource ID="SqlDataSourceTotalLitros" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_TotalLitros" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblProductoSeleccion" Name="idproducto" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSourceMinPRecio" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_preciosminimosCliente" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidproducto" Name="idproducto" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblRuc" Name="idcliente" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <table class="auto-style1">
                            <tr>
                                <td><strong>HISTORIAL DE VENTA:</strong>
                                    <asp:Label ID="lblClienteHistorial" runat="server" style="font-weight: 700"></asp:Label>
                                    &nbsp;, PRODUCTO:
                                    <asp:Label ID="lblpro" runat="server" style="font-weight: 700"></asp:Label>
                                    &nbsp;</td>
                                <td style="text-align: right">STOCK&nbsp; ICA:
                                    <asp:Label ID="lblstockIca" runat="server"></asp:Label>
                                    &nbsp; STOCK PIURA:
                                    <asp:Label ID="lblstockPiura" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <asp:GridView ID="gvPedidosMinPrecios" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceMinPRecio" PageSize="3" style="font-size: x-small" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="FVENTA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENTA" SortExpression="FVENTA">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PVXLITRO" DataFormatString="{0:0,0.00}" HeaderText="PV X LITRO" ReadOnly="True" SortExpression="PVXLITRO">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DESCT" DataFormatString="{0:0,0.00}" HeaderText="DESCT %" ReadOnly="True" SortExpression="DESCT">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idclienteRUC" HeaderText="idclienteRUC" SortExpression="idclienteRUC" Visible="False" />
                                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" Visible="False" />
                                <asp:BoundField DataField="CONDPAGO" HeaderText="COND PAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                                <asp:BoundField DataField="ASESORC" HeaderText="ASESORC" SortExpression="ASESORC">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                <em>No registra historial de ventas...</em>
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                            <RowStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                    </asp:Panel>
                </asp:Panel>
                <asp:Label ID="lblmensaje" runat="server" Font-Size="Medium" ForeColor="#990000" style="font-size: x-small"></asp:Label>
                <asp:Label ID="lblmensaje1" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                <asp:Label ID="lblestadoboton" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Panel ID="pAccionAtender" runat="server">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/btactualizar.png" OnClick="ImageButton5_Click" Width="40px" />
                    <asp:Button ID="btRegGuiaRemision" runat="server" Height="40px" OnClick="btRegGuiaRemision_Click" Text="GENERAR GUIA REMISION" Width="25%" />
                    <asp:Button ID="Button7" runat="server" ForeColor="#006600" Height="40px" OnClick="Button7_Click" Text="GENERAR FACTURA/BOLETA" Width="25%" />
                    <asp:Button ID="Button5" runat="server" ForeColor="#990000" Height="40px" OnClick="Button5_Click" Text="REALIZAR OBSERVACIÓN" Width="20%" Visible="False" />
                    <asp:Button ID="Button11" runat="server" BackColor="#E1FFE1" Height="40px" OnClick="Button11_Click" Text="ATENDIDO" Width="10%" />
                    <asp:Button ID="Button12" runat="server" Height="40px" OnClick="Button12_Click1" Text="POR ATENDER" Width="12%" />
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="PDESARROLLO" runat="server">
            MUESTRAS D.I. POR ATENDER<br />
           
                <asp:GridView ID="gvDesarrolloInvest" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style46" DataKeyNames="ID,RUC,RAZONSOCIAL,RTC" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvDesarrolloInvest_SelectedIndexChanged" Width="100%">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                        <asp:BoundField DataField="CODENSAYO" HeaderText="COD" ReadOnly="True" SortExpression="CODENSAYO" />
                        <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" />
                        <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" ReadOnly="True" SortExpression="PROVINCIA" />
                        <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha">
                        <HeaderStyle Width="75px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" ReadOnly="True" SortExpression="RUC" />
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                        <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" ReadOnly="True" SortExpression="CULTIVO" />
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                        <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                    </Columns>
                    <EmptyDataTemplate>
                        No hay solicitud de muestra a atender...!
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
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ensayoLogistica" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="False" Name="estado" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Panel ID="PanelpedidosDesarrollo" runat="server" Visible="False">
                    PRODUCTOS SOLICITADOS
                    <asp:Label ID="lblcodingreso" runat="server"></asp:Label>
                    &nbsp;<asp:Panel ID="Panel4" runat="server">
                        <asp:Label ID="lblop2" runat="server"></asp:Label>
                        <asp:Label ID="lblcodpedidomuestra" runat="server"></asp:Label>
                        <asp:Label ID="lblIdproducto2" runat="server"></asp:Label>
                        <asp:Label ID="lblcantidad2" runat="server"></asp:Label>
                        estado<asp:Label ID="lblestaatencion" runat="server"></asp:Label>
                        <asp:Label ID="lblop" runat="server"></asp:Label>
                        </asp:Panel>
                    
                    <asp:Label ID="lblcodtratamiento" runat="server"></asp:Label>
                   
                    <asp:Label ID="lblmensajeAtend" runat="server" style="color: #800000; font-size: small"></asp:Label>
                    <br />
                    <asp:ImageButton ID="ib2actualizar" runat="server" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/btactualizar.png" OnClick="ib2actualizar_Click" Width="40px" />
                    <asp:Button ID="bt2gioarem" runat="server" Height="40px" OnClick="bt2gioarem_Click" Text="GENERAR GUIA REMISION" Width="28%" />
                    <asp:Button ID="bt2Factura" runat="server" ForeColor="#006600" Height="40px" OnClick="bt2Factura_Click" Text="GENERAR FACTURA/BOLETA" Width="35%" />
                    <asp:Button ID="bt2_observacion" runat="server" ForeColor="#990000" Height="40px" OnClick="bt2_observacion_Click" Text="REALIZAR OBSERVACIÓN" Width="29%" />
                </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="PASESORCOMERCIAL" runat="server">
            ASESOR COMERCIAL</asp:Panel>
         </fieldset>
    
    <asp:Panel ID="PanelGuiaRemision" runat="server" Width="100%" BackColor="WhiteSmoke" BorderColor="WhiteSmoke" BorderStyle="Double">
          <h3>
              <fieldset">
 <legend>
     <asp:Image ID="Image1" runat="server" Height="20px" ImageAlign="AbsMiddle" ImageUrl="~/images/aten10.png" Width="31px" />
     <b>GUIA DE REMISIÓN N°:<asp:Label ID="lblguiaremgrupo" runat="server"></asp:Label>
     -</b><asp:Label ID="lblguiaremserie" runat="server" style="font-weight: 700"></asp:Label>
&nbsp;</legend>
    
              </fieldset">
              &nbsp;</h3>
          <table class="auto-style33">
              <tr>
                  <td class="auto-style742">
                      <h3><b>RUC</b></h3>
                  </td>
                  <td class="auto-style742">:</td>
                  <td class="auto-style743">
                      <asp:Label ID="lblRuc" runat="server" style="font-size: medium"></asp:Label>
                  </td>
                  <td class="auto-style744">
                      <asp:Label ID="lblidguiaremReg" runat="server" Visible="False"></asp:Label>
                  </td>
                  <td class="auto-style745"><strong>F. DE EMISIÓN</strong></td>
                  <td class="auto-style746">:</td>
                  <td class="auto-style747">
                      <asp:TextBox ID="txtFechaemision" runat="server" BackColor="#FFFFEA" required TextMode="Date"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td><b>CLIENTE:</b></td>
                  <td class="auto-style3454">:</td>
                  <td colspan="5">
                      <asp:Label ID="lblcliente" runat="server"></asp:Label>
                      <asp:Label ID="lblidpedido2" runat="server" Visible="False"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td><b>ALMACEN</b></td>
                  <td class="auto-style3454">:</td>
                  <td class="auto-style46" rowspan="2">
                      <asp:RadioButtonList ID="rbAlmacen" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idalmacen" OnSelectedIndexChanged="rbAlmacen_SelectedIndexChanged" Width="200px">
                      </asp:RadioButtonList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idalmacen], [descripcion] FROM [almacen] WHERE ([estado] = @estado)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </td>
                  <td class="auto-style55">&nbsp;</td>
                  <td class="auto-style50">TRANSPORTE<span style="color: #990000">&nbsp;&nbsp; *</span></td>
                  <td class="auto-style52">:</td>
                  <td class="auto-style54">
                      <asp:TextBox ID="txtTransporte" runat="server" required BackColor="#FFFFEA" MaxLength="12"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td class="auto-style57"></td>
                  <td class="auto-style56"></td>
                  <td class="auto-style27">CONDUCTOR<span style="color: #990000">&nbsp;&nbsp; *</span></td>
                  <td class="auto-style24">:</td>
                  <td class="auto-style29">
                      <asp:TextBox ID="txtConductor" runat="server" required BackColor="#FFFFEA" MaxLength="12"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td><b>P. PARTIDA</b></td>
                  <td class="auto-style3454">:</td>
                  <td class="auto-style16" colspan="5">
                      <asp:TextBox ID="txtppartida" runat="server" Width="100%"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td><b>P. LLEGADA</b></td>
                  <td class="auto-style3454">:</td>
                  <td class="auto-style16" colspan="5">
                      <asp:TextBox ID="txtpllegada" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style42" colspan="7">
                      <table class="auto-style1">
                          <tr>
                              <td><strong>DETALLE PEDIDOS:&nbsp;</strong>&nbsp;</td>
                              <td>
                                  <asp:Label ID="stockselecProducto" runat="server" Text="0" Visible="False"></asp:Label>
                                  <asp:Label ID="lblselecLitrosPresent" runat="server" Text="0" Visible="False"></asp:Label>
                                  <asp:Label ID="lblstockSelectUndMed" runat="server" Text="0" Visible="False"></asp:Label>
                                  &nbsp;<asp:Label ID="lblcodDetallePEd" runat="server" Visible="False"></asp:Label>
                                  <asp:Label ID="lblIdAlmacenDetalle" runat="server"></asp:Label>
                              </td>
                              <td style="text-align: right">
                                  <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="~/images/agregarproducto.png" OnClick="ImageButton4_Click" Visible="False" />
                                  <asp:ImageButton ID="ib_AgreProDesarrolloInves" runat="server" Height="40px" ImageUrl="~/images/agregarproducto.png" OnClick="ib_AgreProDesarrolloInves_Click" Visible="False" />
                                  <asp:ImageButton ID="ib_agreProAC" runat="server" Height="40px" ImageUrl="~/images/agregarproducto.png" OnClick="ib_agreProAC_Click" Width="150px" Visible="False" />
                              </td>
                          </tr>
                          <tr>
                              <td colspan="3">
                                  <table class="auto-style1">
                                      <tr>
                                          <td>Producto</td>
                                          <td>
                                              <asp:DropDownList ID="ddlproducto" runat="server" DataSourceID="SqlDataSourceProductoPed" DataTextField="producto" DataValueField="producto" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlproducto_SelectedIndexChanged">
                                              </asp:DropDownList>
                                              <asp:DropDownList ID="ddlPresentacion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="presentacion" DataValueField="idProducto" OnSelectedIndexChanged="ddlPresentacion_SelectedIndexChanged" Width="100px">
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idProducto], [presentacion] FROM [tb_producto] WHERE ([producto] = @producto)">
                                                  <SelectParameters>
                                                      <asp:ControlParameter ControlID="ddlproducto" Name="producto" PropertyName="SelectedValue" Type="String" />
                                                  </SelectParameters>
                                              </asp:SqlDataSource>
                                              <asp:SqlDataSource ID="SqlDataSourceProductoPed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_productos" SelectCommandType="StoredProcedure">
                                                  <SelectParameters>
                                                      <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                                                  </SelectParameters>
                                              </asp:SqlDataSource>
                                          </td>
                                          <td>
                                              <asp:TextBox ID="txtcantidadSelectAtender" runat="server" Width="80px"></asp:TextBox>
                                          </td>
                                          <td class="auto-style736">
                                              &nbsp;</td>
                                          <td class="auto-style736">
                                              <asp:Label ID="lblcantidadSolicitada" runat="server"></asp:Label>
                                              -<asp:Label ID="lblcantidadAtendida" runat="server"></asp:Label>
                                              <asp:Label ID="lbllitrosenVenta" runat="server" Visible="False"></asp:Label>
                                          </td>
                                          <td>
                                              <asp:ImageButton ID="imageAgregar" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/agre.png" OnClick="imageAgregar_Click" Width="30px" />
                                          </td>
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                      </table>
                  </td>
              </tr>
          </table>
          <asp:Panel ID="Panel2" runat="server">
              <asp:Label ID="lblzona" runat="server"></asp:Label>
              <asp:Label ID="lblvendedor" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblaprobacion" runat="server"></asp:Label>
              <asp:Label ID="lblestadoAprobacion" runat="server"></asp:Label>
              <asp:Label ID="lblidproducto" runat="server"></asp:Label>
          </asp:Panel>
          <asp:GridView ID="gvDetalleGuia" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDDETALLE,idguia,CODPRO,CODPEDIDO" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvDetalleGuia_SelectedIndexChanged" Width="720px">
              <Columns>
                  <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                  <ControlStyle Height="20px" Width="20px" />
                  <HeaderStyle Width="20px" />
                  </asp:CommandField>
                  <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                  <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                  <asp:BoundField DataField="CODPRO" HeaderText="COD.PRO" SortExpression="CODPRO">
                  <HeaderStyle Width="60px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                  <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CODPEDIDO" HeaderText="CODPEDIDO" ReadOnly="True" SortExpression="CODPEDIDO" Visible="False" />
              </Columns>
              <EmptyDataTemplate>
                  <span class="auto-style58"><em>Seleccionar producto de la tabla detalle pedido...!&nbsp; </em></span>
              </EmptyDataTemplate>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <RowStyle BackColor="WhiteSmoke" />
              <SelectedRowStyle Font-Bold="False" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_ListarProductos" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblidguiaremReg" Name="idguia" PropertyName="Text" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:Button ID="Button9" runat="server" OnClick="Button9_Click1" Text="FINALIZAR GUIA REMISION" />
          </fieldset>
</asp:Panel>
    <asp:Panel ID="PanelFacturaBoleta" runat="server">


        <fieldset style="min-height:100px; width:100%;"><legend ><strong>REGISTAR COMPROBANTE PAGO:</strong></legend>
            <table class="auto-style111">
                <tr>
                    <td class="auto-style74">
                        <asp:Image ID="Image2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/logobiotech.png" Width="100px" />
                    </td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">
                        <asp:Panel ID="Panel5" runat="server" Visible="False">
                            <asp:Label ID="lbltpComprobante" runat="server"></asp:Label>
                            <asp:Label ID="lblcomproTipoNum" runat="server"></asp:Label>
                            <asp:Label ID="lblfEmision" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblTpComprobante2" runat="server"></asp:Label>
                        </asp:Panel>
                    </td>
                    <td class="auto-style73" colspan="3">
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: center; background-color: #666666" class="auto-style734">
                                    <asp:Label ID="lblcomprobante" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center"><span class="auto-style735">
                                    <asp:Label ID="lblidmaxFactura" runat="server" Visible="False"></asp:Label>
                                    N° </span>
                                    <asp:Label ID="lblfacturaserie" runat="server" CssClass="auto-style9" style="font-size: medium"></asp:Label>
                                    -<asp:Label ID="lblfacturanumero" runat="server" CssClass="auto-style9" style="font-size: medium"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style73">GUIAS DE REMISION<asp:RadioButtonList ID="rbl_Guias" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceGuias1" DataTextField="GUIAREM" DataValueField="idguia" OnSelectedIndexChanged="rbl_Guias_SelectedIndexChanged" Visible="False">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSourceGuias1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idguia, CONCAT(grupo,'-',guiarem)  GUIAREM from tb_guiaRem where IdordenVenta = @idpedido and estado=1">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSourceGuias1" DataTextField="GUIAREM" DataValueField="idguia" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style74">
                        &nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72" rowspan="5">**<asp:Label ID="lblProductoFacturar" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblCodProPedidoPResent1" runat="server" Visible="False"></asp:Label>
                        <asp:GridView ID="gv_GiasaFact" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDDETALLE,idguia,CODPRO,PRODUCTO,CANT" DataSourceID="SqlDataSourceguiapedido" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gv_GiasaFact_SelectedIndexChanged" Width="400px">
                            <Columns>
                                <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                <asp:BoundField DataField="CODPRO" HeaderText="PRO" SortExpression="CODPRO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO">
                                <HeaderStyle Width="200px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" />
                                <asp:BoundField DataField="CODPEDIDO" HeaderText="CODPEDIDO" SortExpression="CODPEDIDO" Visible="False" />
                            </Columns>
                            <EmptyDataTemplate>
                                <em>No tiene guias por anexar...</em>
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
                        <asp:SqlDataSource ID="SqlDataSourceguiapedido" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_ListarProductos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="CheckBoxList1" Name="idguia" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="lbldatosselecchec" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lblmensajeselecguia" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style75">RUC </td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69">
                        <asp:Label ID="lblruc2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style73"><strong>F. EMISIÓN</strong></td>
                    <td class="auto-style68">:</td>
                    <td class="auto-style72">
                        <asp:TextBox ID="txtfechareg" runat="server" BackColor="#FFFFEA" ReadOnly="True" Width="150px" required ></asp:TextBox>
                        <asp:ImageButton ID="ImageButton6" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/caledario.png" OnClick="ImageButton6_Click" Width="20px" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="143px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="171px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style75">CLIENTE</td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69" colspan="3">
                        <asp:Label ID="lblrazonsocial2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblcodigosguia" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style75">COND. PAGO</td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69">
                        <asp:Label ID="lblconpago" runat="server"></asp:Label>
                        &nbsp;a&nbsp;
                        <asp:Label ID="lbldias" runat="server">0</asp:Label>
                        &nbsp;días</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style73"><strong>F. VCNTO</strong></td>
                    <td class="auto-style68">:</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblfechacenvimiento" runat="server" ForeColor="Maroon"></asp:Label>
                        <asp:Label ID="lblidZona" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style76"><strong>ASESOR C.</strong></td>
                    <td class="auto-style77">:</td>
                    <td class="auto-style57" colspan="2">
                        <asp:Label ID="lblrtc" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style57"><strong>GUIA REM</strong></td>
                    <td class="auto-style68">:</td>
                    <td class="auto-style79">
                        <asp:TextBox ID="txtGuiaRemision" runat="server" required ReadOnly="True" Width="80%"></asp:TextBox>
                        <asp:Button ID="Button10" runat="server" Text="..." OnClick="Button10_Click1" />
                    </td>
                    <td class="auto-style79">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style75"><strong>MONEDA</strong></td>
                    <td class="auto-style63">:</td>
                    <td class="auto-style69">
                        <asp:Label ID="lblmoneda" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblmoneda1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style70">
                        <asp:Label ID="Label1" runat="server" Text="lblidDEtPedido20" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style73"><strong>RETENEDOR</strong></td>
                    <td class="auto-style68">:</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblretenedor" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbldetalleretenedor" runat="server"></asp:Label>
                        <asp:Label ID="lblexonerado" runat="server"></asp:Label>
                        <asp:Label ID="lbltipodescto" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72" rowspan="3">
                        <asp:GridView ID="gvGuiasFacturadas" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGuiasFacturadas" DataKeyNames="CODPRODUCTO,PRODUCTO,CANTIDADES" OnSelectedIndexChanged="gvGuiasFacturadas_SelectedIndexChanged" style="font-size: x-small">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" SelectText="Facturar" />
                                <asp:BoundField DataField="CODPRODUCTO" HeaderText="CODPRODUCTO" SortExpression="CODPRODUCTO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION" />
                                <asp:BoundField DataField="CANTIDADES" HeaderText="CANTIDADES" ReadOnly="True" SortExpression="CANTIDADES" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                <em>No existen guias anexadas</em>
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                            <RowStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceGuiasFacturadas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_guiasfacturadas_acumProductos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidpedido" Name="idordenVenta" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td  colspan="3"><strong>DETALLE PRODUCTOS A VENDER</strong></td>
                    <td class="auto-style70" colspan="4">
                        <asp:Label ID="lblunidadesPresentacion" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblprecioVentaxLitroPedido" runat="server" Visible="False"></asp:Label>
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/images/agregarproducto.png" OnClick="ImageButton3_Click" Width="200px" />
                    </td>
                    <td class="auto-style733">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="7">
                        <asp:Panel ID="pProductos" runat="server" Visible="False">
                            <table class="auto-style737">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblidproductoFacturado" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblproductofacturado" runat="server"></asp:Label>
                                        <br />
                                        <span class="auto-style739">PRODUCTO</span></td>
                                    <td>
                                        <asp:TextBox ID="txtcantidadFacturado" runat="server"  step="0" type="number" Width="80px"></asp:TextBox>
                                        <br /> <span class="auto-style739">CANT</span><span class="auto-style738">.</span>
                                        </td>
                                    <td>
                                        <asp:TextBox ID="txtprecioFacturado" runat="server"  step="0.01" type="number" Width="100px"></asp:TextBox>
                                        <br />
                                       <span class="auto-style739">PRECIO .VENTA.</span> </td>
                                    <td>
                                        <asp:ImageButton ID="ibtAgregafacturado" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/agre.png" OnClick="ibtAgregafacturado_Click" Width="30px" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td class="auto-style66">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="7">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD,IDDETPEDIDO" DataSourceID="SqlDataSource2" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="ITEM" ReadOnly="True" SortExpression="ITEM" />
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" ReadOnly="True" SortExpression="DESCRIPCION" />
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PV">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUBTT" SortExpression="SUBTT">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DSCTO" DataFormatString="{0:0,0.00}" HeaderText="DSCTO" SortExpression="DSCTO" Visible="False">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" Visible="False" />
                                <asp:BoundField DataField="IDDETPEDIDO" HeaderText="IDDETPEDIDO" SortExpression="IDDETPEDIDO" Visible="False" />
                                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" ShowDeleteButton="True">
                                <ControlStyle Height="20px" Width="20px" />
                                </asp:CommandField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE FROM [FacturacionDetalle] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO [FacturacionDetalle] ([idDetalle], [idfactura], [idproducto], [precioVenta], [cantidad], [subtotal], [idPedido], [dsto]) VALUES (@idDetalle, @idfactura, @idproducto, @precioVenta, @cantidad, @subtotal, @idPedido, @dsto)" SelectCommand="st_FacturaListarPedidos" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [FacturacionDetalle] SET [idfactura] = @idfactura, [idproducto] = @idproducto, [precioVenta] = @precioVenta, [cantidad] = @cantidad, [subtotal] = @subtotal, [idPedido] = @idPedido, [dsto] = @dsto WHERE [idDetalle] = @idDetalle">
                            <DeleteParameters>
                                <asp:Parameter Name="idDetalle" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="idDetalle" Type="Int32" />
                                <asp:Parameter Name="idfactura" Type="Int32" />
                                <asp:Parameter Name="idproducto" Type="String" />
                                <asp:Parameter Name="precioVenta" Type="Decimal" />
                                <asp:Parameter Name="cantidad" Type="Int32" />
                                <asp:Parameter Name="subtotal" Type="Decimal" />
                                <asp:Parameter Name="idPedido" Type="Int32" />
                                <asp:Parameter Name="dsto" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidmaxFactura" Name="idfact" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="idfactura" Type="Int32" />
                                <asp:Parameter Name="idproducto" Type="String" />
                                <asp:Parameter Name="precioVenta" Type="Decimal" />
                                <asp:Parameter Name="cantidad" Type="Int32" />
                                <asp:Parameter Name="subtotal" Type="Decimal" />
                                <asp:Parameter Name="idPedido" Type="Int32" />
                                <asp:Parameter Name="dsto" Type="Decimal" />
                                <asp:Parameter Name="idDetalle" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        *<asp:Label ID="lblitems" runat="server" ForeColor="#999999"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblMensajeFact" runat="server" ForeColor="#990000"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style66">&nbsp;</td>
                    <td class="auto-style66">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="4">
                        <asp:TextBox ID="txtglosa" runat="server" placeholder="Observación" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                    <td class="auto-style62" colspan="3">
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: right">SUB.TOTAL:<br />
                                    <asp:TextBox ID="txtsubTotal" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                </td>
                                <td style="text-align: right">IGV(18%):<br />
                                    <asp:TextBox ID="txtigv" runat="server" CssClass="ver" Width="100px" Enabled="False"></asp:TextBox>
                                </td>
                                <td style="text-align: right">IMP. NETO:<br />
                                    <asp:TextBox ID="txttotal" runat="server" Width="100px" Font-Bold="True" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style62">&nbsp;</td>
                    <td class="auto-style62">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74" colspan="4">
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="FINALIZAR FACTURA" Width="100%" Height="40px" />
                    </td>
                    <td class="auto-style73">
                        <asp:Label ID="lblmontoaretener" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">
                        <asp:Label ID="lblnetocobrar" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74">&nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74" colspan="4">
                        <asp:ImageButton ID="BT_AGREFAC2" runat="server" Height="40px" ImageUrl="~/images/agregarproducto.png" OnClick="BT_AGREFAC2_Click" Width="300px" />
                    </td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
            </table>
        </fieldset>
        
    </asp:Panel>
    <br />
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblnivel" runat="server" Visible="False" CssClass="auto-style58"></asp:Label>
            <span class="auto-style58">Usuario,
            <asp:LinkButton ID="lblUsuario" runat="server"></asp:LinkButton>
        </span></p>
        
    
</asp:Content>
