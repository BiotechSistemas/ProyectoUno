<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.Factura" %>
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
              width: 90%;
              border-radius: 5px;

         }

         .ver {
          color: #FF0000;
         }


        .auto-style21{
            width:800px;
        }
              
        .auto-style6 {
            width: 100%;
        }
         .auto-style9 {
             font-size: x-large;
             text-align: center;
         }
         .auto-style13 {
             color: #006600;
             text-decoration: underline;
         }
         .auto-style16 {
             width: 144px;
             text-align: left;
         }
         .auto-style18 {
             width: 330px;
         }
         .auto-style22 {
             font-size: xx-small;
             color: #FF0000;
         }
         .auto-style24 {
             width: 764px;
         }
         .auto-style25 {
             width: 168px;
             height: 24px;
         }
         .auto-style26 {
             width: 764px;
             height: 24px;
         }
         .auto-style27 {
             height: 24px;
         }
        
         .auto-style32 {
             height: 157px;
         }
        
         .auto-style34 {
             width: 321px;
         }
        
         .auto-style35 {
             font-size: x-small;
         }
         .auto-style37 {
             font-size: x-small;
             color: #FF0000;
         }
        
         .auto-style40 {
             font-size: x-small;
             color: #FF0000;
         }
         .auto-style41 {
             height: 24px;
         }
         .auto-style42 {
             text-align: left;
         }
        
         .auto-style43 {
             height: 24px;
             width: 125px;
         }
         .auto-style45 {             text-align: right;
         }
         .auto-style46 {
             text-align: left;
         }
        
         .auto-style47 {
             width: 800px;
         }
                 
         .auto-style52 {
             width: 328px;
         }
        
         .auto-style655 {
             text-align: right;
         }
         .auto-style656 {
             width: 100px;
         }
         .auto-style657 {
             width: 275px;
         }
        
         .auto-style660 {
             width: 800px;
         }
         .auto-style661 {
             height: 20px;
         }
        
         .auto-style662 {
             height: 20px;
             font-weight: bold;
         }
         .auto-style663 {
             height: 20px;
             text-align: right;
         }
        
         .auto-style664 {
             font-size: 25pt;
         }
        
    </style>

    


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit">&nbsp;</i>FACTURACIÓN<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                        </h3>
</div>
         </div>


     <div class="row">

<ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbPedido" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaPedido.aspx" >Nota de pedido</asp:LinkButton>
      </li>

      <li>
      <asp:LinkButton ID="lbGuias" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/GuiaRemision.aspx" >Guia Remisión</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="lbFacturas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/Factura_Det.aspx">Facturación</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbLetras" runat="server" ForeColor="#006600"  PostBackUrl="~/bio/ventas/FactLetra/Letras.aspx"  >Letras</asp:LinkButton>
      </li>

    <li>
      <asp:LinkButton ID="lbncredito" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaCredito.aspx" >Nota de Crédito</asp:LinkButton>
      </li>
</ol>    

             </div>


                        <%--//aquise  econde el panel--%>
                       

     <div class="row">
    <asp:Panel ID="PanelAtender" runat="server" Width="100%">
        
            <%--</asp:Panel>--%>
            <table class="auto-style47">
                <tr>
                    <td class="auto-style656">Tipo venta:</td>
                    <td class="auto-style657">
                       <asp:DropDownList ID="ddlConventa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlConventa_SelectedIndexChanged" Width="200px">
                            <asp:ListItem Value="CONTA">VENTA CONTADO</asp:ListItem>
                            <asp:ListItem Value="CREDI">VENTA CREDITO</asp:ListItem>
                            <asp:ListItem Value="MUEST">MUESTRA</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lbltpventa" runat="server" Text="VENTA" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style52">
                        <asp:RadioButtonList ID="rb_Comprobantepago" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Comprobante" DataValueField="idComprobante" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" RepeatDirection="Horizontal" style="margin-left: 0" TextAlign="Left" Width="250px" Font-Size="Large">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_TipoComprobante] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style655">
                        <asp:LinkButton ID="LinkButtonAdministrar" runat="server" OnClick="LinkButtonAdministrar_Click" Visible="False">Administrar</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style22" Visible="False"></asp:Label>
            <br />
            <asp:Panel ID="PanelPrincipal" runat="server">
                <table class="auto-style21">
                    <%--</asp:Panel>--%>
                    <tr>
                            <td colspan="3">
                                <table class="auto-style660">
                                    <tr>
                                        
                                        <td WIDTH="90"><strong>FECHA:</strong></td>
                                        <td WIDTH="800" colspan="3" >
                                            <asp:TextBox ID="txtfechareg" runat="server" TextMode="Date" Width="160px"></asp:TextBox>
                                            <asp:Label ID="lblcodfactura" runat="server"></asp:Label>
                                            <asp:Label ID="lblidmaxFactura" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td WIDTH="50">&nbsp;</td>
                                        <td >
                                            <asp:Label ID="lbltpComprobante" runat="server" style="font-weight: 700; font-size: large;"></asp:Label>
                                        </td>
                                        <td align=center>
                                            <asp:Label ID="lblfacturaserie" runat="server" CssClass="auto-style9"></asp:Label>
                                            <span class="auto-style664">-</span><asp:Label ID="lblfacturanumero" runat="server" CssClass="auto-style9"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="90"><strong>CLIENTE:</strong></td>
                                        <td colspan="3" width="800">
                                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Width="160px"></asp:TextBox>
                                            <asp:ImageButton ID="btbuscar" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/buscarr.png" OnClick="btbuscar_Click" Width="35px" />
                                        </td>
                                        <td width="50">&nbsp;</td>
                                        <td><strong>MONEDA:</strong></td>
                                        <td>
                                            <asp:RadioButtonList ID="rbmoneda" runat="server" CellSpacing="5" RepeatDirection="Horizontal" Width="300px">
                                                <asp:ListItem Selected="True" Value="Dolares">Dolares</asp:ListItem>
                                                <asp:ListItem Value="Soles">Soles</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><span class="auto-style13"><strong>Datos de la empresa:</strong></span></td>
                                        <td width="50">&nbsp;</td>
                                        <td colspan="2"><span class="auto-style13"><strong>Linea Biotech:</strong></span><br /></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style662">RUC:</td>
                                        <td class="auto-style661">
                                            <asp:Label ID="lblruc" runat="server" CssClass="auto-style12"></asp:Label>
                                        </td>
                                        <td class="auto-style663"><strong>RET.:</strong></td>
                                        <td class="auto-style661">
                                            <asp:Label ID="lblopretenedor" runat="server" CssClass="auto-style39"></asp:Label>
                                        </td>
                                        <td class="auto-style661">&nbsp;</td>
                                        <td class="auto-style662">LETRA:</td>
                                        <td class="auto-style661">
                                            <asp:Label ID="lblmontoLetra" runat="server" CssClass="auto-style10"></asp:Label>
                                            &nbsp;a
                                            <asp:Label ID="lblDiaLetra" runat="server"></asp:Label>
                                            &nbsp;días</td>
                                       
                                    </tr>
                                    <tr>
                                        <td><b>RAZÓN S:</b></td>
                                        <td colspan="3">
                                            <asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style14"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td><b>FACTURA:</b></td>
                                        <td>
                                            <asp:Label ID="lblmontofactura" runat="server" CssClass="auto-style11"></asp:Label>
                                            &nbsp;a
                                            <asp:Label ID="lbldiafactura" runat="server"></asp:Label>
                                            &nbsp;días</td>
                                       
                                    </tr>
                                    <tr>
                                        <td><b>RTC:</b></td>
                                        <td>
                                            <asp:Label ID="lblrtc" runat="server" CssClass="auto-style15"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><b>MONEDA:</b></td>
                                        <td>
                                            <asp:Label ID="lblmoneda" runat="server" CssClass="auto-style19"></asp:Label>
                                            <asp:Label ID="lblmontoacumulado" runat="server" CssClass="auto-style20"></asp:Label>
                                        </td>
                                      
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="lblretenedor" runat="server" CssClass="auto-style21" Visible="False"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="lblmensajeopcion" runat="server" CssClass="auto-style38"></asp:Label>
                                            <asp:Label ID="lbltipodescto" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign=top WIDTH="200" colspan="4">COND. DE PAGO:&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="ddlbCondVenta" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="ddlbCondVenta_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">LETRA</asp:ListItem>
                                                <asp:ListItem Value="FACTR">FACTURA</asp:ListItem>
                                                <asp:ListItem Value="BOLET">BOLETA</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:TextBox ID="txtcondDias" runat="server" Height="26px" requerid="" type="number" Width="50px"></asp:TextBox>
                                            &nbsp;días</td>
                                        <td>&nbsp;</td>
                                        <td valign=top>NºGUIA:<br />
                                            <asp:Label ID="lblidcadenaGuia" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtguias" runat="server" Width="80%"></asp:TextBox>
                                            <asp:Button ID="btaexGuias" runat="server" OnClick="btaexGuias_Click" Text="+" Width="8%" />
                                            <asp:Panel ID="pGuiasAnexas" runat="server">
                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSourcexfact" DataTextField="guia" DataValueField="idguia" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatColumns="2" Width="100%">
                                                </asp:CheckBoxList>
                                                <asp:SqlDataSource ID="SqlDataSourcexfact" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiarem_xFacturar" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="lblruc" Name="idcliente" PropertyName="Text" Type="string" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </asp:Panel>
                                        </td>
                                      
                                    </tr>
                                </table>
                            </td>
                      
                    </tr>
                    <tr>
                        <td valign=bottom class="auto-style34"><strong>Productos registrados:</strong><asp:Label ID="lblnombrepro" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblplistaxlitro" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="LBLUNDMED" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="lbloprentable" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:Label ID="lblidproducto" runat="server" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="lblcantidad" runat="server" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="lblexonerado" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="auto-style32">
                            <div class="">
                                Ingresar:&nbsp;
                                <asp:DropDownList ID="ddlproducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceproducto" DataTextField="producto" DataValueField="producto" Width="200px" Height="28px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceproducto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                <asp:DropDownList ID="ddlpresentacion" runat="server" DataSourceID="SqlDataSourcePresentacion" DataTextField="presentacion" DataValueField="idProducto" Height="28px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourcePresentacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlproducto" Name="pro" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:TextBox ID="txtcantidad" runat="server" type="number" Width="70px" placeholder="cant"></asp:TextBox>
                                <asp:TextBox ID="txtprecioVenta" runat="server" type="number" step="0.0001" Width="100px" placeholder="precio"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                                &nbsp;&nbsp;
                                <asp:Label ID="lbldescuentovendido" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lbldescvend" runat="server" Visible="False"></asp:Label>
                            </div>
                            <asp:Panel ID="Panel1" runat="server" Wrap="False">
                                <span class="auto-style35">Precio lista: </span>
                                <asp:Label ID="lblplista" runat="server" CssClass="auto-style35"></asp:Label>
                                <span class="auto-style35">&nbsp;Precio Máx. con Dsto:
                                <asp:Label ID="lblpreciomaximo" runat="server" CssClass="auto-style35"></asp:Label>
                                ,&nbsp;
                                </span>
                            </asp:Panel>
                            <span class="auto-style35">
                            <asp:Label ID="lblmensajeproducto" runat="server" CssClass="auto-style37"></asp:Label>
                            </span>
                            <br />
                            <div class="redondeado">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="100%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" >
                                    <Columns>
                                        <asp:BoundField DataField="ITEM" ReadOnly="True" SortExpression="ITEM" ></asp:BoundField>
                                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" Visible="False" />
                                        <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" ></asp:BoundField>
                                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" ReadOnly="True" />
                                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PV" HeaderText="P. VENTA" SortExpression="PV" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="SUBTT" HeaderText="SUBTT" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DSCTO" HeaderText="DSCTO" SortExpression="DSCTO" DataFormatString="{0:0,0.00}" Visible="False" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="EXO" HeaderText="EXO" SortExpression="EXO" Visible="False" />
                                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" ShowDeleteButton="True">
                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:CommandField>
                                    </Columns>
                                    <HeaderStyle BackColor="#CCCCCC" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_FacturaListarPedidos" DeleteCommand="DELETE FROM [FacturacionDetalle] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO [FacturacionDetalle] ([idDetalle], [idfactura], [idproducto], [precioVenta], [cantidad], [subtotal], [idPedido], [dsto]) VALUES (@idDetalle, @idfactura, @idproducto, @precioVenta, @cantidad, @subtotal, @idPedido, @dsto)" UpdateCommand="UPDATE [FacturacionDetalle] SET [idfactura] = @idfactura, [idproducto] = @idproducto, [precioVenta] = @precioVenta, [cantidad] = @cantidad, [subtotal] = @subtotal, [idPedido] = @idPedido, [dsto] = @dsto WHERE [idDetalle] = @idDetalle" SelectCommandType="StoredProcedure">
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
                                <asp:Label ID="lblmensajeExonerado" runat="server" class="auto-style37" CssClass="auto-style40"></asp:Label>
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style41" colspan="2"><span class="auto-style35">* Items </span>
                                            <asp:Label ID="lblitems" runat="server" CssClass="auto-style35"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txtglosa" runat="server" placeholder="Observación" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style25">SUB-TOTAL:<br />
                                            <asp:TextBox ID="txtsubTotal" runat="server" Enabled="False" ReadOnly="True" Width="100px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style43">IGV(18%):<asp:TextBox ID="txtigv" runat="server" CssClass="ver" Enabled="False" ReadOnly="True" Width="100px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style27">Imp. Neto:<asp:TextBox ID="txttotal" runat="server" Enabled="False" ReadOnly="True" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style41">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style43">&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style42" colspan="2">VENDEDOR:<asp:DropDownList ID="ddlVendedor" runat="server" BackColor="#FEFFF0" DataSourceID="SqlDataSourceRTC" DataTextField="ASESOR" DataValueField="CODTRAB" Width="100%">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceRTC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style46">&nbsp;</td>
                                        <td class="auto-style46" colspan="3">
                                            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="FINALIZAR" Width="150px" />
                                            <asp:Button ID="ButtonNUEVO" runat="server" Height="40px" OnClick="ButtonNUEVO_Click" Text="NUEVO REGISTRO" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style42">
                                            <asp:HiddenField ID="hfCustomerId" runat="server" />
                                        </td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td class="auto-style46">&nbsp;</td>
                                        <td class="auto-style46">
                                            <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style45">
                                            <asp:Label ID="lblmontoaretener" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblnetocobrar" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <%--</asp:Panel>--%>
                </table>
            </asp:Panel>
            <%--</div>--%>
        
        &nbsp;<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblqrFactura" runat="server"></asp:Label>
    </asp:Panel>
        </div>

</asp:Content>
