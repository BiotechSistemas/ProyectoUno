<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="ProyeccionGeneral.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.ProyeccionGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 23px;
        }
         .auto-style100 {
            width: 100%;
            height: 23px;
        }

        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            font-weight: 700;
            text-align: left;
            color: #333333;
        }
     
        .auto-style101 {
            text-align: left;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <li class="menu__item"><a class="menu__link " href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link " href="menuproductos.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link " href="menuVentas.aspx">GESTION DE VENTAS</a></li>
          
             <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
    <li class="menu__item"><a class="menu__link" href="RendicionGastos.aspx">REND. GASTOS</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">

    <h2 class="grupo__titulo">PROYECCION GENERAL<asp:Label ID="lblidvendedor" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblmes" runat="server"></asp:Label>
    </h2>
    <div >
        <table class="auto-style100">
            <tr>
                <td with="200" class="auto-style101">
                    Acumulado actual</td>
                <td with="200">
                    :</td>
                <td with="200" class="auto-style3">
                    <asp:Label ID="lblAcumSUSAN" runat="server" Text="250.00"></asp:Label>
                </td>
                <td with="200" class="auto-style3">
                    <asp:Label ID="lblAcumLILIA" runat="server"></asp:Label>
                </td>
                <td with="200" class="auto-style3">
                    <asp:Label ID="lblAcumASSERETO" runat="server"></asp:Label>
                </td>
                <td with="200" class="auto-style3">
                    <asp:Label ID="lblAcumGUIOVANNI" runat="server"></asp:Label>
                </td>
                <td with="200" class="auto-style3">
                    <asp:Label ID="lblAcumHENRY" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style101" >
                    Proyectado</td>
                <td >
                    :</td>
                <td class="auto-style3" >
                    <asp:Label ID="lblProyecSUSAN" runat="server"></asp:Label>
                </td>
                <td class="auto-style3" >
                    <asp:Label ID="lblProyecLILIA" runat="server"></asp:Label>
                </td>
                <td class="auto-style3" >
                    <asp:Label ID="lblProyecASSERETO" runat="server"></asp:Label>
                </td>
                <td class="auto-style3" >
                    <asp:Label ID="lblProyecGUIOVANNI" runat="server"></asp:Label>
                </td>
                <td class="auto-style3" >
                    <asp:Label ID="lblProyecHENRY" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style101" >
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="GENERAL" Width="200px" OnClick="Button1_Click" />
                </td>
                <td >
                    &nbsp;</td>
                <td class="auto-style3" >
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="SUSAN" Width="150px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style3" >
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="LILIA" Width="150px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="ASSERETO" Width="150px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button5" runat="server" Height="30px" Text="GUIOVANNI" Width="150px" OnClick="Button5_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button6" runat="server" Height="30px" Text="HENRY" Width="150px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style101" >
                    Diferencia</td>
                <td >
                    :</td>
                <td class="auto-style3">
                    <asp:Label ID="lbldiferencia1" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lbldiferencia2" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lbldiferencia3" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lbldiferencia4" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lbldiferencia5" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
        <br />
        <br />
    </div>
    </br>
    <asp:Panel ID="panelPrincipal" class="grupo__descripcion" runat="server">
	<asp:Panel  id="panelproductos" class="grupo__descripcion" runat="server">
        <asp:Panel id="pPrincipal" runat="server">
         <h3 >PROYECCION GENERAL PRODUCTOS </h3>
    
        
            <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="gvpresentaciones" runat="server" DataKeyNames ="IDPRO" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%" CssClass="auto-style5" OnSelectedIndexChanged="gvpresentaciones_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDPRO") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="60px" />
                                <ItemStyle ForeColor="#006600" HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="IDPRO" HeaderText="IDPRO" SortExpression="IDPRO" Visible="False">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                            <HeaderStyle Width="200px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                            <HeaderStyle Width="40px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR">
                            <ItemStyle VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN">
                            <ItemStyle VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC">
                            <ItemStyle  VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="WhiteSmoke" />
                        <SelectedRowStyle Font-Bold="False" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoGeneral" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="IDPRO" HeaderText="IDPRO" SortExpression="IDPRO" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                            <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" Visible="False" />
                            <asp:BoundField DataField="CANTIDAD" HeaderText="TOTAL" ReadOnly="True" SortExpression="CANTIDAD">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MONTO" DataFormatString="{0:0,0.00}" HeaderText="MONTO" ReadOnly="True" SortExpression="MONTO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DDDDDD" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadocantidadAnual" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        </asp:Panel>
        
        <asp:Panel ID="PanelGeneralxProducto" runat="server">
            <h3>Detalle general producto:
                <asp:Label ID="lblproducGeneral" runat="server" CssClass="auto-style7"></asp:Label>
            </h3>
            <asp:GridView ID="GridView3PGeneralxProduct" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                    <asp:BoundField DataField="IDCLIENTE" HeaderText="RUC" SortExpression="IDCLIENTE" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                    <asp:BoundField DataField="AC" HeaderText="ASESOR C." SortExpression="AC" />
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
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoProductosxmesyclientes" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvpresentaciones" Name="idproduc" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
        </asp:Panel>
        <br />
    </asp:Panel>
        
        
        <h3 >PROYECCION GENERAL COSTOS</h3>	
   
        <asp:GridView id="gvCostos" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" OnRowDataBound="gvCostos_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                <HeaderStyle Width="200px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                </asp:BoundField>
                <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                <HeaderStyle Width="40px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#EBEBEB" />
                </asp:BoundField>

                <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" DataFormatString="{0:0,0.00}" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#EBEBEB" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="WhiteSmoke" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:Label ID="lblfebrero" runat="server" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportesGeneral" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
   
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView3_RowDataBound" ShowFooter="True" Width="500px">
            <Columns>
                <asp:BoundField DataField="IDVENDEDOR" HeaderText="COD" SortExpression="IDVENDEDOR" />
                <asp:BoundField DataField="ASESORCOMERCIAL" HeaderText="ASESOR COMERCIAL" SortExpression="ASESORCOMERCIAL">
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoSumVendedores" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
    
   
        </asp:Panel>

   
     <asp:Panel id="Panel1"  class="grupo__descripcion" runat="server">
         <h3 >PROYECCION GENERAL PRODUCTOS:
             <asp:Label ID="Label1" runat="server"></asp:Label>
         </h3>
         <p>
             <table class="auto-style2">
                 <tr>
                     <td>
                         <asp:GridView ID="gvpresentacionRTC" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style4" DataKeyNames="CODPRO" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                             <Columns>
                                 <asp:TemplateField ShowHeader="False">
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("CODPRO") %>'></asp:LinkButton>
                                     </ItemTemplate>
                                     <HeaderStyle Width="60px" />
                                     <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
                                 </asp:TemplateField>
                                 <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" ReadOnly="True" SortExpression="CODPRO" Visible="False">
                                 <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                                 <ItemStyle BackColor="#EBEBEB"  HorizontalAlign="Left" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                                 <ItemStyle BackColor="#EBEBEB"  HorizontalAlign="Left" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" />
                                 <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" />
                                 <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" />
                                 <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" />
                                 <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" />
                                 <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" />
                                 <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" />
                                 <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" />
                                 <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" />
                                 <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" />
                                 <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" />
                                 <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" />
                             </Columns>
                             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                             <RowStyle BackColor="WhiteSmoke" />
                             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#242121" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanual" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                     <td>
                         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal">
                             <Columns>
                                 <asp:BoundField DataField="IDPRO" HeaderText="IDPRO" SortExpression="IDPRO" Visible="False" />
                                 <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" Visible="False" />
                                 <asp:BoundField DataField="CANTIDAD" HeaderText="TOTAL" ReadOnly="True" SortExpression="CANTIDAD">
                                 <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="MONTO" DataFormatString="{0:0,0.00}" HeaderText="MONTO" ReadOnly="True" SortExpression="MONTO">
                                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                 </asp:BoundField>
                             </Columns>
                             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                             <RowStyle BackColor="#EBEBEB" />
                             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#242121" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadocantidadAnualvENDEDOR" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                 </tr>
             </table>
         </p>
         <h3>PROYECCION GENERAL COSTOS:
             <asp:Label ID="Label2" runat="server"></asp:Label>
         </h3>
         <p>
             <asp:GridView ID="gvCostosRTC" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="100%" ShowFooter="True" OnRowDataBound="gvCostosRTC_RowDataBound">
                 <Columns>
                     <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                     <ItemStyle BackColor="#EBEBEB"  HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                     <ItemStyle BackColor="#EBEBEB"  HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" />
                     <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" />
                     <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" />
                     <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" />
                     <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" />
                     <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" />
                     <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" />
                     <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" />
                     <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" />
                     <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" />
                     <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" />
                     <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" />
                 </Columns>
                 <FooterStyle ForeColor="Black" HorizontalAlign="Right" VerticalAlign="Middle" />
                 <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="WhiteSmoke" />
                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                 <SortedDescendingHeaderStyle BackColor="#242121" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportes" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </p>
         <p>
             &nbsp;</p>


    </asp:Panel>
    <%-- <asp:Panel id="Panel2"  class="grupo__descripcion" runat="server">


    </asp:Panel>
     <asp:Panel id="Panel3"  class="grupo__descripcion" runat="server">


    </asp:Panel>
     <asp:Panel id="Panel4"  class="grupo__descripcion" runat="server">


    </asp:Panel>
     <asp:Panel id="Panel5"  class="grupo__descripcion" runat="server">


    </asp:Panel>--%>

</asp:Content>
