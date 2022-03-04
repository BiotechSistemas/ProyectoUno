<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="VentasAc.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.VentasAc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-small;
        }
        .auto-style2 {
            font-size: x-small;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            font-size: small;
            color: #333333;
        }
        .auto-style5 {
            color: #333333;
        }
        .auto-style6 {
            width: 600px;
        }
        .auto-style9 {
            width: 481px;
        }
        .auto-style10 {
            width: 125px;
            font-size: small;
            font-weight: bold;
            color: #333333;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <li class="menu__item"><a class="menu__link " href="Default.aspx"><span class="icon-home"></span> Inicio</a></li>
            <li class="menu__item"><a class="menu__link " href="ProductosAc.aspx">PRODUCTOS</a></li>
            <li class="menu__item"><a class="menu__link select" href="VentasAc.aspx">GESTION DE VENTAS</a></li>
    <li class="menu__item"><a class="menu__link " href="../../admin/PedidosGerencia.aspx">NOTA DE PEDIDOS</a></li>
            <%--<li class="menu__item"><a class="menu__link " href="ProyeccionGeneral.aspx">PROYECCIÓN</a></li>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">


    <h2 class="grupo__titulo">VENTAS - MES ACTUAL
        <asp:Label ID="lblperiodo" runat="server" Visible="False"></asp:Label>
    </h2>
    <%--------------------------------------VENDEDOR1--------------------------------%>
    
    
          <asp:Panel ID="Panel1" runat="server" class="columna columna--4">  
        
            <li class="item"><span class="icon-laptop"></span>
              <h3 class="item__titulo">
                  <asp:Label id="lblapellido1" runat="server" Text="Label"></asp:Label></h3>
            </li>
              <li class="item">
              <p class="item__subprecio">Nutricionales:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvnutricionales1" runat="server"></asp:Label>
              </p>                      
              <p class="item__subprecio">Quimicos:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvquimicos1" runat="server"></asp:Label>
              </p>             
            </li>
              <br />
            
           <li class="item">
                <p >M. Nutricional:<asp:Label   ID="lblmNutricional1" runat="server" Text="Label"></asp:Label></p>
                <p >M. Quimicos:<asp:Label id="lblmquimico1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="lblidrtc1" runat="server" Visible="False"></asp:Label>
                </p>
           </li> 
            <li class="item">
                <asp:LinkButton class="item__link" runat="server"  ID="lb1" OnClick="lb1_Click">Detalles</asp:LinkButton>
            </li>     
        </asp:Panel>
    <%-------------------------------------VENDEDOR2-----------------------------------%>
    <asp:Panel ID="Panel2" runat="server" class="columna columna--4">  
        
            <li class="item"><span class="icon-laptop"></span>
              <h3 class="item__titulo">
                  <asp:Label id="lblapellido2" runat="server" Text="Label"></asp:Label></h3>
            </li>
              <li class="item">
              <p class="item__subprecio">Nutricionales:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvnutri2" runat="server"></asp:Label>
              </p>                      
              <p class="item__subprecio">Quimicos:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvquimi2" runat="server"></asp:Label>
              </p>             
            </li>
              <br />
           
           <li class="item">
                <p >M. Nutricional:<asp:Label   ID="lblmnutri2" runat="server"></asp:Label></p>
                <p >M. Quimicos:<asp:Label id="lblmquimi2" runat="server"></asp:Label>
                    <asp:Label ID="lblidrtc2" runat="server" Visible="False"></asp:Label>
                </p>
           </li> 
            <li class="item">
                <asp:LinkButton class="item__link" runat="server"  ID="lb2" OnClick="lb2_Click">Detalles</asp:LinkButton>
            </li>     
        </asp:Panel>
        

    <%------------------------------------------------------------------------------%>  
    
    <asp:Panel ID="Panel3" runat="server" class="columna columna--4">  
        
            <li class="item"><span class="icon-laptop"></span>
              <h3 class="item__titulo">
                  <asp:Label id="lblapellido3" runat="server" Text="Label"></asp:Label></h3>
            </li>
              <li class="item">
              <p class="item__subprecio">Nutricionales:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvnutri3" runat="server"></asp:Label>
              </p>                      
              <p class="item__subprecio">Quimicos:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvquimi3" runat="server"></asp:Label>
              </p>             
            </li>
              <br />
           
           <li class="item">
                <p >M. Nutricional:<asp:Label   ID="lblmnutri3" runat="server"></asp:Label></p>
                <p >M. Quimicos:<asp:Label id="lblmquimi3" runat="server"></asp:Label>
                    <asp:Label ID="lblidrtc3" runat="server" Visible="False"></asp:Label>
                </p>
           </li> 
            <li class="item">
                <asp:LinkButton class="item__link" runat="server"  ID="lb3" OnClick="lb3_Click">Detalles</asp:LinkButton>
            </li>     
        </asp:Panel>
    <%------------------------------------------------------------------------------%>  
    
    <asp:Panel ID="Panel4" runat="server" class="columna columna--4">  
        
            <li class="item"><span class="icon-laptop"></span>
              <h3 class="item__titulo">
                  <asp:Label id="lblapellido4" runat="server" Text="Label"></asp:Label></h3>
            </li>
              <li class="item">
              <p class="item__subprecio">Nutricionales:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvnutri4" runat="server"></asp:Label>
              </p>                      
              <p class="item__subprecio">Quimicos:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvquimi4" runat="server"></asp:Label>
              </p>             
            </li>
              <br />
           
           <li class="item">
                <p >M. Nutricional:<asp:Label   ID="lblmnutri4" runat="server"></asp:Label></p>
                <p >M. Quimicos:<asp:Label id="lblmquimi4" runat="server"></asp:Label>
                    <asp:Label ID="lblidrtc4" runat="server" Visible="False"></asp:Label>
                </p>
           </li> 
            <li class="item">
                <asp:LinkButton class="item__link" runat="server"  ID="lb4" OnClick="lb4_Click">Detalles</asp:LinkButton>
            </li>     
        </asp:Panel>
     
     <%------------------------------------------------------------------------------%>  
    
    <asp:Panel ID="Panel5" runat="server" class="columna columna--4">  
        
            <li class="item"><span class="icon-laptop"></span>
              <h3 class="item__titulo">
                  <asp:Label id="lblapellido5" runat="server" Text="Label"></asp:Label></h3>
            </li>
              <li class="item">
              <p class="item__subprecio">Nutricionales:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvnutri5" runat="server"></asp:Label>
              </p>                      
              <p class="item__subprecio">Quimicos:</p>
              <p class="item__precio">
                  <asp:Label ID="lblvquimi5" runat="server"></asp:Label>
              </p>             
            </li>
              <br />
           
           <li class="item">
                <p >M. Nutricional:<asp:Label   ID="lblmnutri5" runat="server"></asp:Label></p>
                <p >M. Quimicos:<asp:Label id="lblmquimi5" runat="server"></asp:Label>
                    <asp:Label ID="lblidrtc5" runat="server" Visible="False"></asp:Label>
                </p>
           </li> 
            <li class="item">
                <asp:LinkButton class="item__link" runat="server"  ID="lb5" OnClick="lb5_Click">Detalles</asp:LinkButton>
            </li>     
        </asp:Panel>
    
    <asp:Panel id="panelDetalle" runat="server">

        <h3 class="item__titulo">
                  <span class="auto-style5">Ventas realizadas:&nbsp;<asp:Label ID="lblDetalleVendedor" runat="server" CssClass="auto-style3"></asp:Label>
                  <asp:Label ID="lblidrtc" runat="server" Visible="False"></asp:Label>
                  </span>&nbsp;<asp:Panel ID="Panel6" runat="server">
                      <asp:GridView ID="GridViewFACT" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODFACT" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewFACT_SelectedIndexChanged" Width="600px" CssClass="auto-style1" AllowPaging="True">
                          <Columns>
                              <asp:CommandField SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True" SelectText="Ver">
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#90C74A" />
                              </asp:CommandField>
                              <asp:BoundField DataField="CODFACT" HeaderText="CODFACT" ReadOnly="True" SortExpression="CODFACT" Visible="False" />
                              <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                              <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="RUC" SortExpression="IDCLIENTE" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
                              <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                              <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMPBRUTO" SortExpression="IMPBRUTO">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPEDIDOS" HeaderText="N°PEDIDOS" ReadOnly="True" SortExpression="NPEDIDOS">
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle Font-Bold="True" BackColor="#CCCCCC" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_VentasFacturasRtc" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblperiodo" Name="periodo" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblidRtc" Name="rtc" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:Panel ID="Panel7" runat="server">
                          <br />
                          <span class="auto-style4">Pedidos realizados de factura:</span>
                          <asp:Label ID="lblFacturaaa" runat="server" CssClass="auto-style4"></asp:Label>
                          <br />
                          <table class="auto-style6">
                              <tr>
                                  <td class="auto-style10">Cliente:</td>
                                  <td class="auto-style9">
                                      <asp:Label ID="lblCliente" runat="server"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style10">Fecha Emisión:</td>
                                  <td class="auto-style9">
                                      <asp:Label ID="lblFechaEmision" runat="server"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style10">Condición de pago:</td>
                                  <td class="auto-style9">
                                      <asp:Label ID="lblcondicionPago" runat="server"></asp:Label>
                                  </td>
                              </tr>
                          </table>
                          <asp:GridView ID="GridViewPED" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Width="600px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" ForeColor="Black" GridLines="Horizontal">
                              <Columns>
                                  <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" >
                                  <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" >
                                  <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PV">
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB.TOTAL" SortExpression="SUBTOTAL">
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" ReadOnly="True" SortExpression="DESCTO" Visible="False" />
                                  <asp:BoundField DataField="PL" DataFormatString="{0:0,0.00}" HeaderText="PL" SortExpression="PL" Visible="False">
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="CAT" HeaderText="CATEGORIA" SortExpression="CAT" >
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_VentasFacturasDetalladas" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="GridViewFACT" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          <br />
                          <li class="item">
                              <asp:Button id="byRetornar" class="boton__form" runat="server" Text="Retornar" OnClick="byRetornar_Click" />
                              
                              </li>
                      </asp:Panel>
                  </asp:Panel>
                 
                  
                 
                  <h3></h3>
                 
                  
                 
                  <h3></h3>
                 
                  
                 
                  <h3></h3>
                 
                  
                 
        </h3>

    </asp:Panel>

</asp:Content>
