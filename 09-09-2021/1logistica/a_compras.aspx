<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="a_compras.aspx.cs" Inherits="biotech._1logistica.a_compras" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>ORDEN DE COMPRA / SERVICIOS</h2>
    <p>
        <table class="auto-style21">


             <tr>
                <td class="auto-style13">N° Orden:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtidorden" runat="server" Width="100px"></asp:TextBox>
                    <asp:TextBox ID="txtfecharegistro" runat="server" TextMode="Date" Width="140px"></asp:TextBox>
                 </td>
                <td class="auto-style23">
                    Solicitante:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtsolicitante" runat="server"  placeholder="Solicitado por" Width="100%"></asp:TextBox>
                 </td>
            </tr>
              <tr>
                <td class="auto-style13">
                    Centro de costo:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddcentrocosto" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="id" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OdenCompraCentro]"></asp:SqlDataSource>
                  </td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style24">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Proveedor:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtbkproveedor" runat="server" placeholder="Proveedor" Width="140px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtruc" placeholder="Ing.ruc" runat="server" Width="120px"></asp:TextBox>
                    <br />
                    </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtrazonsocial" placeholder="Ing. razón social" runat="server" Width="100%"></asp:TextBox>
                    <br />
                    </td>
            </tr>

           
            <tr>
                <td class="auto-style13">Contacto:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcontacto" runat="server" placeholder="Ing. contacto" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txttelefono" runat="server" placeholder="telefono" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtcorreo" runat="server" placeholder="E-mail" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Banco:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlbanco" runat="server" Width="100%">
                        <asp:ListItem>BCP</asp:ListItem>
                        <asp:ListItem>BANBIF</asp:ListItem>
                        <asp:ListItem>SCOTIABANK</asp:ListItem>
                        <asp:ListItem>FINANCIERO</asp:ListItem>
                        <asp:ListItem>NO ESPECIFICA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtncuenta" runat="server" placeholder="Numero cuenta" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style24">

                   <asp:Label ID="lblmensaje0" runat="server" style="color: #CC3300; font-size: small"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/1logistica/a_regCliente.aspx">Registrar</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Dirección:</td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtdireccion" runat="server" Width="100%" placeholder="Dirección" Height="23px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    Asunto:<br />
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtasunto" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    Moneda</td>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="moneda" Text="Nuevos Soles" />
                    </td>
                <td class="auto-style23" >
                    &nbsp; IGV:</td><td class="auto-style24">

                    <asp:TextBox ID="txtigv" runat="server" Width="80px" TextMode="Number">18</asp:TextBox>
                    %</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="moneda" Text="Dolares Americanos" />
                </td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style24">

                    &nbsp;</td>
            </tr>
            </table>
        <asp:Panel ID="Panel4" runat="server">
                      
           
            <p>
                <strong><table style="width: 847px" >

                     <tr>
                        <td colspan="2"><h2><strong>IMPORTANTE:</strong></h2></td>
                        <td class="auto-style44"></td>
                         <td colspan="2"><strong style="margin: 0px; padding: 0px; font-weight: bolder; color: rgb(0, 0, 0); font-family: Lato, Helvetica, Arial; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                             <div id="columna_der" style="margin: 0px; padding: 0px; height: inherit; width: 368px;">
                                 <h2 style="margin: 0px; padding: 0px 15px; font-size: large;"><strong style="margin: 0px; padding: 0px; font-weight: bolder;">CONDICION</strong></h2>
                             </div>
                             </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style40">Facturar:</td>
                        <td class="auto-style36">
                            <asp:DropDownList ID="ddlfacturara" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="empresa" DataValueField="id" Width="80%">
                            </asp:DropDownList>
                            <strong>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="..." />
                            </strong>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style45" >Forma de pago:</td>
                        <td class="auto-style36">
                            <asp:DropDownList ID="ddlformapago" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="OC_formapago" Width="70%" AutoPostBack="True" OnSelectedIndexChanged="ddlformapago_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [oc_formapago] WHERE ([estado] = @estado)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style41">RUC:</td>
                        <td class="auto-style48">
                            <asp:Label ID="lblruc" runat="server"></asp:Label>
                            <asp:Label ID="lblidfacturara" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td></td>
                        <td>Tipo:</td>
                        <td class="auto-style48">
                            <asp:DropDownList ID="ddltipopagoo" runat="server" DataSourceID="SqlDataSource8" DataTextField="descripcion" DataValueField="OC_formapago">
                            </asp:DropDownList>
                            <strong>
                            <asp:TextBox ID="txtdias" runat="server" pLACEHOLDER="dias" type="number" Width="56px"></asp:TextBox>
                            </strong>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [oc_formapago] WHERE ([estado] = @estado)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="2" Name="estado" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style50">Dirección:</td>
                        <td class="auto-style51">
                            <asp:Label ID="lbldireccionempresa" runat="server" style="font-size: x-small"></asp:Label>
                        </td>
                        <td class="auto-style52"></td>
                        <td class="auto-style52">Adelanto:</td>
                        <td class="auto-style51">
                            <strong>
                            <asp:TextBox ID="txtadelanto" runat="server" placeholder="Adelanto" step="0.01" type="number"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style53">Almacén:</td>
                        <td class="auto-style54">
                            <asp:DropDownList ID="ddlbalmacen" runat="server" DataSourceID="SqlDataSource7" DataTextField="descripcion" DataValueField="idalmacen" Width="80%">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [almacen]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style56" ></td>
                        <td class="auto-style56" >Fecha entrega:</td>
                        <td class="auto-style56" >
                            <strong>
                            <asp:TextBox ID="txtfechalugarentrega" runat="server" TextMode="Date"></asp:TextBox>
                            </strong></td>
                    </tr>
                    </caption>
                   
                     <tr>
                         <td class="auto-style37" >
                             &nbsp;</td>
                         <td class="auto-style37" >
                             &nbsp;</td>
                         <td>&nbsp;</td>
                           <td class="auto-style37" >
                               Lugar de entrega:</td>
                         <td class="auto-style37" >
                             <strong>
                             <asp:TextBox ID="txtlugarentrega" runat="server" Width="300px"></asp:TextBox>
                             </strong></td>
                     </tr>
                   
                     <tr>
                           <td class="auto-style35" colspan="2"><strong>
                             <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300; font-size: small"></asp:Label>
                             </strong></td>
                         <td>&nbsp;</td>
                         <td class="auto-style35" colspan="2"><strong>
                             <br />
                             <asp:Button ID="btregorden" runat="server" OnClick="Button5_Click" Text="Registrar O.C." Width="100%" Height="40px" />
                             </strong></td>
                     </tr>
                   
                </table>
                </strong>
            </p>
                           
    </asp:Panel>            
        
        <asp:HiddenField ID="hfcodorden" runat="server" />
                    <asp:HiddenField ID="hfidusuario" runat="server" Value="ACHAC" />
                            <asp:HiddenField ID="hfidproveedor" runat="server" />
                    <asp:HiddenField ID="hfgrupo" runat="server" />

                    <asp:HiddenField ID="hfserie" runat="server" />
        <br />
    <hr />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="ppedidos" runat="server">
                <p>
                    <br />
                    <table class="auto-style6">
                    <tr>
                        <td><strong>Pedido:<br /> </strong></td>
                        <td>
                            <asp:TextBox ID="txtcantidad" runat="server" placeholder="Cantidad" type="number" Width="80px"></asp:TextBox>
                            <br />
                            </td>
                        <td>
                            <asp:TextBox ID="txtdecripcion" runat="server" placeholder="Descripcion"></asp:TextBox>
                            </td>
                        <td>
                            <asp:DropDownList ID="ddlundmedida" runat="server" DataSourceID="SqlDataSource3" DataTextField="unidad" DataValueField="id">
                            </asp:DropDownList>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [UnidadMedida]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpreciounitario" runat="server" placeholder="Precio Unitario" step="0.01" type="number"></asp:TextBox>
                            <br />
                            </td>
                        <td>
                            <br />
                            </td>
                        <td>
                            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Añadir Pedido" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table></p>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <strong>Detalle de pedidos registrados:</strong><br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleoc" DataSourceID="SqlDataSource5" EmptyDataText="No hay registros de datos para mostrar." OnRowDataBound="GridView2_RowDataBound" Width="90%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="iddetalleoc" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleoc" />
                        <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                        <asp:BoundField DataField="unidmed" HeaderText="UNID" SortExpression="unidmed" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                        <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                        <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                        <asp:BoundField DataField="precio" HeaderText="PRECIO" SortExpression="precio" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="subtotal" HeaderText="SUB TOTAL" SortExpression="subtotal" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [OrdenCompraDetalle] WHERE [iddetalleoc] = @iddetalleoc" InsertCommand="INSERT INTO [OrdenCompraDetalle] ([iddetalleoc], [idoc], [unidmed], [idproducto], [descripcion], [cantidad], [precio], [subtotal], [igv]) VALUES (@iddetalleoc, @idoc, @unidmed, @idproducto, @descripcion, @cantidad, @precio, @subtotal, @igv)" SelectCommand="SELECT [iddetalleoc], [idoc], [unidmed], [idproducto], [descripcion], [cantidad], [precio], [subtotal], [igv] FROM [OrdenCompraDetalle] WHERE ([idoc] = @idoc)" UpdateCommand="UPDATE [OrdenCompraDetalle] SET [idoc] = @idoc, [unidmed] = @unidmed, [idproducto] = @idproducto, [descripcion] = @descripcion, [cantidad] = @cantidad, [precio] = @precio, [subtotal] = @subtotal, [igv] = @igv WHERE [iddetalleoc] = @iddetalleoc">
                    <DeleteParameters>
                        <asp:Parameter Name="iddetalleoc" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="iddetalleoc" Type="Int32" />
                        <asp:Parameter Name="idoc" Type="Int32" />
                        <asp:Parameter Name="unidmed" Type="String" />
                        <asp:Parameter Name="idproducto" Type="String" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="cantidad" Type="Int32" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="subtotal" Type="Decimal" />
                        <asp:Parameter Name="igv" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hfcodorden" Name="idoc" PropertyName="Value" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="idoc" Type="Int32" />
                        <asp:Parameter Name="unidmed" Type="String" />
                        <asp:Parameter Name="idproducto" Type="String" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="cantidad" Type="Int32" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="subtotal" Type="Decimal" />
                        <asp:Parameter Name="igv" Type="Decimal" />
                        <asp:Parameter Name="iddetalleoc" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <div>
                    <table align="right" class="auto-style6">
                        <tr>
                            <td>Sub Total:</td>
                            <td>
                                <asp:TextBox ID="txtsubtotal" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>IGV (18%)</td>
                            <td>
                                <asp:TextBox ID="txtsubigv" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Total:</td>
                            <td>
                                <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompraDetalle] WHERE ([idoc] = @idoc)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hfcodorden" Name="idoc" PropertyName="Value" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:HiddenField ID="hfiddetalleordencompra" runat="server" />
                <asp:HiddenField ID="hfcodproducto" runat="server" />
            </asp:Panel>
    </asp:Panel>
         

    <asp:Panel ID="Panel3" runat="server">
        <strong>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Nuevo" Width="300px" />
        </strong></asp:Panel>
   </p>
    </strong>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
            }
        .auto-style6 {
            width: 400px;
        }
        .auto-style7 {
            width: 325px;
        }
        .auto-style8 {
            width: 110px;
        }
        .auto-style9 {
            width: 404px;
        }
        .auto-style12 {
            width: 137px;
            text-align: left;
        }
        .auto-style13 {
            width: 137px;
            height: 20px;
            text-align: left;
        }
        .auto-style21 {
            width: 810px;
        }
        .auto-style23 {
            height: 20px;
            text-align: right;
        }
        .auto-style24 {
            height: 20px;
            width: 404px;
        }
        .auto-style35 {
        }
        .auto-style36 {
            width: 300px;
        }
        .auto-style37 {
        }
        .auto-style40 {
            width: 134px;
        }
        .auto-style41 {
            width: 134px;
            height: 36px;
        }
        .auto-style44 {
            width: 60px;
            height: 36px;
        } 
           .auto-style45 {
            width: 300px;
            height: 36px;
        }
        .auto-style48 {
            width: 35%;
            height: 36px;
        }
        .auto-style50 {
            width: 134px;
            height: 33px;
        }
        .auto-style51 {
            width: 300px;
            height: 33px;
        }
        .auto-style52 {
            height: 33px;
        }
        .auto-style53 {
            width: 134px;
            height: 69px;
        }
        .auto-style54 {
            width: 300px;
            height: 69px;
        }
               
    .auto-style56 {
        height: 69px;
    }
               
    </style>
</asp:Content>

