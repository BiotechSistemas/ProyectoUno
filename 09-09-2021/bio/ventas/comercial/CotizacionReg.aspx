<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CotizacionReg.aspx.cs" Inherits="biotech.VentasRTC.pedidos.CotizacionReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="../../scripts/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../../scripts/jquery.dataTables.min.js"></script>
  

    <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/images/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
  </style>

    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {}
        .auto-style3 {
        }
       
        .auto-style5 {
            width: 30px;
        }
        .auto-style6 {
            background-color: #F9F9F9;
        }
        .auto-style7 {
            color: #88C440;
        }
        .auto-style8 {
            height: 31px;
            width: 61px;
        }
        .auto-style9 {
            width: 61px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            background-color: #F9F9F9;
            height: 40px;
        }
        .auto-style12 {
            height: 20px;
            text-align: right;
        }
    </style>
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
    <script src="../../bio/js/sweetalert.min.js"></script>
    <link href="../../bio/css/sweetalert.css" rel="stylesheet" />
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <asp:Panel ID="pprincipal1" runat="server">
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logoicono.png" Width="35px" ImageAlign="Bottom" />
                    </td>
                    <td>
                        <h1>
                            <span class="auto-style7">&nbsp;COTIZACIÓN </span>
                        <asp:Label ID="lblncotizacion" runat="server" CssClass="auto-style7" Visible="False">CV-00123</asp:Label>
                        <asp:Label ID="lblIdUsuario" runat="server" CssClass="auto-style7" Visible="False"></asp:Label>
                            </h1>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <strong>F. Emisión:<br /> </strong>
                        <asp:Label ID="lblfecharegistra" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
            <hr />
             <asp:Panel ID="pcot1" runat="server">
                 <table align="center" class="auto-style1">
                     <%-- <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
                     <tr>
                         <td width="200"><strong>BUSCAR CLIENTE:<br />
                             <asp:TextBox ID="txtbuscar" runat="server" CssClass="form-control" Width="280px"></asp:TextBox>
                             </strong></td>
                         <td>
                             <br />
                             <asp:ImageButton ID="ibtnBuscar" runat="server" Height="35px" ImageAlign="Top" ImageUrl="~/images/buscarr.png" OnClick="ibtnBuscar_Click" ToolTip="Buscar cliente" Width="35px" />
                             <asp:ImageButton ID="ibtnAgregarCliente" runat="server" Height="35px" ImageAlign="Top" ImageUrl="~/images/agregarUsuario.png" OnClick="ibtnAgregarCliente_Click" ToolTip="Registrar cliente, Agregar contacto" Width="35px" />
                         </td>
                         <td width="160">
                             <asp:Label ID="lblIdcotizacion" runat="server"></asp:Label>
                         </td>
                         <td width="160">Moneda:<asp:RadioButtonList ID="rbmoneda0" runat="server" RepeatDirection="Horizontal" Width="100%">
                             <asp:ListItem Value="S">Soles</asp:ListItem>
                             <asp:ListItem Value="D" Selected="True">Dólares</asp:ListItem>
                             </asp:RadioButtonList>
                         </td>
                     </tr>
                     <asp:Panel ID="pDatosCLiente" runat="server">
                         <tr>
                             <td class="auto-style11"><strong>RUC:<br /> </strong>
                                 <asp:Label ID="lblIdcliente" runat="server"></asp:Label>
                             </td>
                             <td class="auto-style11" colspan="2"><strong>Razón social:<br /> </strong>
                                 <asp:Label ID="lblRazonsocial" runat="server"></asp:Label>
                             </td>
                             <td class="auto-style11">
                                 <asp:Label ID="lblTelefono" runat="server" Visible="False"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6" colspan="4"><strong>Dirección:<br /> </strong>
                                 <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                                 <br />
                                 <br />
                             </td>
                         </tr>
                         <tr>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td><strong>Contacto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                                 <asp:DropDownList ID="ddlContacto" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="contacto" DataValueField="id" OnSelectedIndexChanged="ddlContacto_SelectedIndexChanged" Width="250px">
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id, contacto from tb_FichaCliente_contacto where idcliente=@idCliente">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="lblIdcliente" Name="idCliente" PropertyName="Text" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                 <br />
                             </td>
                             <td><strong>Área:<br /> </strong>
                                 <asp:Label ID="lblcarea" runat="server"></asp:Label>
                                 <br />
                             </td>
                             <td><strong>Telèfono:<br /> </strong>
                                 <asp:Label ID="lblctelefono" runat="server"></asp:Label>
                                 <br />
                             </td>
                             <td><strong>Mail:<br /> </strong>
                                 <asp:Label ID="lblcMail" runat="server"></asp:Label>
                                 <br />
                             </td>
                         </tr>
                     </asp:Panel>
                     <tr>
                         <td>Detalle productos cotizados:</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>
                             <asp:Button ID="btnAgrearproducto" runat="server" CssClass="btn btn-success" OnClick="btnAgrearproducto_Click" Text="AGREGAR PRODUCTO" />
                         </td>
                     </tr>
                     <tr>
                         <td colspan="4">
                             <asp:GridView ID="gvTemporal" runat="server" class="table" CssClass="table table-striped table-bordered table-sm  table-hover" DataKeyNames="CODIGO" OnRowDataBound="gvTemporal_RowDataBound" OnRowDeleting="gvTemporal_RowDeleting">
                                 <Columns>
                                     <asp:ButtonField CommandName="Delete" HeaderText="" ShowHeader="True" Text="X">
                                     <ControlStyle CssClass="btn btn-danger btn-sm " />
                                     </asp:ButtonField>
                                 </Columns>
                                 <EmptyDataTemplate>
                                     Agregar productos a cotizar....
                                 </EmptyDataTemplate>
                                 <HeaderStyle BackColor="#DDDDDD" />
                             </asp:GridView>
                             *Autonomía de descuento menor al 50%.<asp:Label ID="lblitemrow" runat="server" Visible="False"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td colspan="3" rowspan="3">Detalle u observación:<asp:TextBox ID="txtObservacion" runat="server" CssClass="form-control" Rows="3" Style="text-transform: uppercase" TextMode="MultiLine" Width="550px"></asp:TextBox>
                         </td>
                         <td class="text-right">IMP. BASE:
                             <asp:Label ID="lblsubtt" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style12">IGV(18%):<asp:Label ID="lblttigv" runat="server" ForeColor="#CC0000"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="text-right">TOTAL:
                             <asp:Label ID="lblTotal" runat="server" Font-Bold="True"></asp:Label>
                         </td>
                     </tr>
                 </table>
            
            <table class="auto-style1" align="center">
                <tr>
                    <td colspan="4">
                        <br />
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <asp:DropDownList ID="ddlfundo" runat="server" DataSourceID="SqlDataSourcezona" DataTextField="fundo" DataValueField="id" Width="250px" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="ddlfundo_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtzona" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlCultivo" runat="server" Width="200px" AutoPostBack="True" DataSourceID="SqlDataSourceCultivo" DataTextField="CULTIVO" DataValueField="id" Height="30px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txthectarea" type="number" step="0.01" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Fundo:<asp:Label ID="lblidfundoselec" runat="server" Text="0" Visible="False"></asp:Label>
                                </td>
                                <td>Zona:</td>
                                <td>Cultivo:</td>
                                <td>Hectárea:</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSourcezona" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,fundo from fc_fundo where idcliente =@param and estado = 1
">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblIdcliente" Name="param" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSourceCultivo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="fc_cultivoxfundo" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidfundoselec" Name="idfundo" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="4"><strong>CONDICIÓN DE COMPRA<asp:Label ID="lbloppago" runat="server"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedidos_condpago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:Label ID="lblmensajeclente" runat="server"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Forma de pago:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlcond" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlcond_SelectedIndexChanged" Width="150px">
                            <asp:ListItem>CONTADO</asp:ListItem>
                            <asp:ListItem>CREDITO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">&nbsp;</td> <td class="auto-style8">
                    &nbsp;</td>
                    

                    <td class="auto-style3" >
                        &nbsp;<tr>
                            <td class="auto-style3">Condición:</td>
                            <td class="auto-style4" colspan="3">
                                <asp:Panel ID="pc1" runat="server">
                                    <asp:DropDownList ID="ddlcond1" runat="server" CssClass="form-control" Width="150px">
                                        <asp:ListItem Value="FACTR">FACTURA</asp:ListItem>
                                        <asp:ListItem Value="BOLET">BOLETA</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:Panel>
                                <asp:Panel ID="pc2" runat="server">
                                    <table class="modal-sm">
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="ddlcond2" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="idcondPago" Width="150px">
                                                </asp:DropDownList>
                                            </td>
                                            <td>a
                                                <asp:TextBox ID="txtdias" runat="server" Width="40px">0</asp:TextBox>
                                                &nbsp;días</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style3">&nbsp;<tr>
                                <td>Lugar de entrega:<br /> </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txtlugarentraga" runat="server" Style="text-transform: uppercase" CssClass="form-control" Rows="1" Width="100%"></asp:TextBox>
                                </td>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td colspan="3">&nbsp;</td>
                                    <tr>
                                        <td colspan="4">
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" OnClientClick="return confirm('REGISTRAR COTIZACIÓN, Desea finalizar la cotización?');" Text="REGISTRAR COTIZACIÓN" Width="100%" />
                                        </td>
                                    </tr>
                                </tr>
                                </tr>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="lblmensajecot" runat="server" ForeColor="#CC0000"></asp:Label>
                                <br />
                                <asp:LinkButton ID="lbtnCerarCot" runat="server" OnClick="lbtnCerarCot_Click">Cerrar</asp:LinkButton>
                                <asp:Label ID="lblmaxcot" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        </table>


            
            </asp:Panel>
            <asp:Panel ID="pcot2" runat="server">
                 <table class="auto-style1" align="center">
                <tr>
                
                                        <td>&nbsp;</td>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                 
                           
                        </tr>
                        <tr>
                            <td colspan="4" class="auto-style10"><strong>Agregar productos a cotización:</strong></td>
                     </tr>
                     <tr>
                         <td  WIDTH="100" colspan="2" style="width: 550px" >
                             <asp:TextBox ID="txtbuscarProducto" placeholder="Buscar producto por código o nombre" CssClass="form-control" runat="server" Width="100%" OnTextChanged="txtbuscarProducto_TextChanged" ></asp:TextBox>
                         </td>
                         <td  WIDTH="150" >
                             <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="BUSCAR" OnClick="Button2_Click" Width="100%" />
                         </td>
                         <td  WIDTH="50" >
                             <asp:Button ID="btnLimpiar" runat="server" CssClass="btn btn-default" OnClick="btnLimpiar_Click" Text="LIMPIAR" Width="100%" />
                         </td>
                     </tr>
                     <tr>
                         <td colspan="2" style="width: 550px" width="100">
                            
                             <asp:Panel ID="pAyuda" runat="server">
                             </asp:Panel>
                             &nbsp;<asp:Panel ID="Panel2" runat="server" Visible="False">
                                 <asp:Label ID="lblCodProducto" runat="server"></asp:Label>
                                 pv
                                 <asp:Label ID="lblprecioVenta" runat="server"></asp:Label>
                                 &nbsp;cant
                                 <asp:Label ID="lblCantidad" runat="server"></asp:Label>
                                 &nbsp;<asp:Label ID="lblproducto" runat="server"></asp:Label>
                                 &nbsp;encargados:<asp:Label ID="lblcorreosEncargados" runat="server"></asp:Label>
                             </asp:Panel>
                            
                         </td>
                         <td width="150">&nbsp;</td>
                         <td width="50">&nbsp;</td>
                     </tr>
                     <tr>
                         <td colspan="4">
                             <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceproprecio" Width="100%" PageSize="5" OnRowCommand="GridView1_RowCommand" CaptionAlign="Left">
                                 <Columns>
                                     <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                                     <HeaderStyle Width="100px" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                     <asp:BoundField DataField="PLISTA" HeaderText="P. LISTA" SortExpression="PLISTA" >
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                     </asp:BoundField>
                                     
                                     <asp:TemplateField HeaderText="P. VENTA (50% Dscto)">
                                        <ItemTemplate>
                                             <asp:TextBox ID="pventa" Text='<%# Eval("PVENTA") %>' CssClass="form-control"  runat="server" type="number" step="0.0001" Width="100%" />
                                            <%--<asp:Label ID="Label1" Text='<%# Eval("PVENTA") %>' runat="server" />--%>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="pventa1" Text='<%# Eval("PVENTA") %>' runat="server" />
                                        </EditItemTemplate>
                                     
                                         <HeaderStyle Width="180px" />
                                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                     
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="LITROS">
                                        <ItemTemplate>
                                             <asp:TextBox ID="cantidad" Text='1' runat="server" CssClass="form-control"  type="number" Width="100%" />
                                            <%--<asp:Label ID="Label1" Text='<%# Eval("PVENTA") %>' runat="server" />--%>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="cantidad1" Text='1' runat="server" />
                                        </EditItemTemplate>
                                     
                                         <HeaderStyle Width="100px" />
                                     
                                    </asp:TemplateField>
                                    
                                                 
                                     <asp:ButtonField CommandName="agregar" HeaderText="" ShowHeader="True" Text="+" >
                                                 <ControlStyle CssClass="btn btn-success btn-sm "></ControlStyle>
                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                                    </asp:ButtonField>
                                 </Columns>
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSourceproprecio" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_buscar" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="txtbuscarProducto" Name="dato" PropertyName="Text" Type="String" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Cerrar</asp:LinkButton>
                         </td>
                     </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                     </tr>
                        </table>
            </asp:Panel>
            <br />

        </asp:Panel>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
    
</body>
</html>
