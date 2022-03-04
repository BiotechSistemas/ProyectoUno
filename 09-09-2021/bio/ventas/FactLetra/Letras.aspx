<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Letras.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.Letras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
       
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit">&nbsp;</i>LETRAS<asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
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
        
        <h4><i class="glyphicon glyphicon-edit"></i> LETRAS POR FACTURAR</h4>
       

    <div class="row">
        <div class="table-responsive">
    <asp:GridView ID="gvLetrasxAnexar" runat="server" class="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Style="font-size: x-small" Width="95%">
                                        <Columns>
                                            <asp:TemplateField SortExpression="idfacturacion">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idfacturacion") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <span>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                        &nbsp;&nbsp; </span>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idfacturacion") %>' Visible="False"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="FACTURA" SortExpression="Column1">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Column1") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Column1") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Font-Bold="True" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="fechareg" HeaderText="F.EMISION" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="fechaven" HeaderText="F.VENCTO" SortExpression="fechaven" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="codvendedor" HeaderText="VEND" SortExpression="codvendedor"></asp:BoundField>
                                            <asp:BoundField DataField="Column2" HeaderText="CLIENTE" ReadOnly="True" SortExpression="Column2">
                                                <ItemStyle Font-Size="Small" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idcondpago" HeaderText="COND" SortExpression="idcondpago"></asp:BoundField>
                                            <asp:BoundField DataField="idletra" HeaderText="LETRA" SortExpression="idletra" Visible="False" />
                                            <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias"></asp:BoundField>
                                            <asp:BoundField DataField="importebruto" HeaderText="IMP BASE" SortExpression="importebruto" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="tpimporteretenido" HeaderText="TIPO" SortExpression="tpimporteretenido" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="importeNeto" HeaderText="IMP NETO" SortExpression="importeNeto">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="montoretenido" HeaderText="RETENIDO" SortExpression="montoretenido">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="montodisponible" HeaderText="DISPONIBLE" SortExpression="montodisponible">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="tpmoneda" HeaderText="M" SortExpression="tpmoneda" />
                                        </Columns>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                                    </asp:GridView>
                                    <asp:Button ID="Button3" runat="server" Height="40px"  OnClick="Button3_Click" Text="ANEXAR FACTURAS" Width="300px" />
            <asp:Label ID="Label22" runat="server" Visible="False"></asp:Label>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idfacturacion], [serie]+'-'+ [numero], [fechareg],fechaven, [codvendedor], CONCAT(idclienteRUC,'-',[razonsocial]), [idcondpago], idletra,[dias],importebruto,tpimporteretenido,importeNeto,montoretenido,montodisponible,tpmoneda FROM [Facturacion] WHERE idletra = '0' and ([idcondpago] = @idcondpago) and tipoVenta <> 'ANULL' ORDER BY [idfacturacion] ">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="LETRA" Name="idcondpago" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
            </div>

    </div>


    <div class="row">

                            <asp:Panel ID="Panel6" runat="server">
                                <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                <br />
                                <table >
                                    <tr>
                                        <td class="auto-style20" colspan="4"><strong>REGISTRO DE LETRA:</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22"><strong>COD:</strong><br />
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="txtgrupo" runat="server" Width="60px" Enabled="False"></asp:TextBox>
                                            &nbsp;-
                                            <asp:TextBox ID="txtletra" runat="server" Width="70px" Enabled="False"></asp:TextBox>
                                            <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                        <td class="auto-style11"><strong>F.EMISIÓN:<br /> </strong></td>
                                        <td class="auto-style23">
                                            <asp:TextBox ID="txtfecharegistro" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                            <span class="auto-style1">
                                            (dd/mm/aaaa)<br /> </span></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22"><strong>IMPORTE T.T:</strong></td>
                                        <td class="auto-style18">&nbsp;<asp:Label ID="lbldescripmoneda" runat="server"></asp:Label>
                                            &nbsp;<asp:TextBox ID="txtimportett" runat="server" Style="background-color: #FFFFCC" Width="150px" Enabled="False"></asp:TextBox>
                                            &nbsp;<asp:Label ID="lblidfact" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style21"><strong>DIAS:</strong></td>
                                        <td class="auto-style23">
                                            <asp:TextBox ID="txtdias" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style21">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <strong>CLIENTE:</strong></td>
                                        <td class="auto-style7" colspan="3">&nbsp;<asp:Label ID="lblruc" runat="server"></asp:Label>
                                            &nbsp;/&nbsp;<asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style3"></asp:Label>
&nbsp;
                                            <asp:TextBox ID="txtmoneda" runat="server" Visible="False" Width="30px"></asp:TextBox>
                                            <asp:TextBox ID="txtcodcliente" runat="server" Visible="False" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Dirección :</asp:LinkButton>
                                        </td>
                                        <td class="auto-style7" colspan="3">
                                            <asp:Label ID="lblDirecionFiscal" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">Teléfono:</td>
                                        <td class="auto-style4" colspan="3">
                                            <asp:Label ID="lbltelefono" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22"><strong>FACTURAS:</strong></td>
                                        <td class="auto-style18" colspan="3">
                                            <asp:Label ID="lblfaccc" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtcadenaidfactura" runat="server" Visible="False" Width="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style9" colspan="3">&nbsp;<asp:Label ID="lblglosafact" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16"><strong>DET. ENTREGA:</strong></td>
                                        <td class="auto-style9" colspan="3">
                                            <asp:DropDownList ID="ddlConcepto" runat="server" DataSourceID="SqlDataSourceCONCEP" DataTextField="descripcion" DataValueField="id">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlEmpleado" runat="server" DataSourceID="SqlDataSourcepersonal" DataTextField="NOMBRES" DataValueField="ID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourcepersonal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_personalLetraxAceptar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSourceCONCEP" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_letraConcepto] WHERE ([idLetra] = @idLetra)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="XACEP" Name="idLetra" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <br />
                                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Height="40px" OnClick="Button4_Click" Text="REGISTRAR LETRA" Width="100%" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

    </div>


    <div class="row">
         <h4 class="page-header"><i class="glyphicon glyphicon-edit"></i> LETRAS REGISTRADAS:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblopcion" runat="server" Visible="False">GENERAL</asp:Label>
             <asp:Label ID="lblclienteBK" runat="server" Visible="False"></asp:Label>
                        <small> <asp:DropDownList ID="ddlEstadoLetra" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEstadoLetra_SelectedIndexChanged">
                            <asp:ListItem Value="GENERAL"></asp:ListItem>
                            <asp:ListItem Value="RENOVADA">RENOVADA(S)</asp:ListItem>
                            <asp:ListItem Value="COBRADA">COBRADA(S)</asp:ListItem>
                            <asp:ListItem Value="ANULADA">ANULADA(S)</asp:ListItem>
             </asp:DropDownList>
             <asp:TextBox ID="txtclientebk" placeholder="ingresar cliente..." runat="server" AutoPostBack="True" OnTextChanged="txtclientebk_TextChanged"></asp:TextBox>
             <asp:Button ID="btBuscar" runat="server" Text="Buscar" OnClick="btBuscar_Click" />
                            <asp:Button ID="btActualizar" runat="server" Text="Actualizar" OnClick="btActualizar_Click" />
                        </small></h4>

        <div class="table-responsive">


            <asp:GridView ID="gvLetrasTT" runat="server"  class="table table-condensed table-bordered  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idletra,RUC,LETRA" DataSourceID="SqlDataSourceletratt" Font-Size="X-Small" AllowPaging="True" GridLines="None" OnRowCommand="gvLetrasTT_RowCommand" OnSelectedIndexChanged="gvLetrasTT_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField ShowHeader="False" HeaderText="LETRA">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("LETRA") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="idletra" HeaderText="idletra" ReadOnly="True" SortExpression="idletra" Visible="False" />
                    <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="fecha" HeaderText="F.EMISIÓN" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="MONEDA" SortExpression="MONEDA" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FVNCTO" HeaderText="F.VNCTO" SortExpression="FVNCTO" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="condicion" HeaderText="CONDICIÓN" SortExpression="condicion" />
                    <asp:BoundField DataField="CONDLETRA" HeaderText="CONDLETRA" SortExpression="CONDLETRA" Visible="False" />
                    <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" Visible="false" />
                     <asp:ButtonField CommandName="Actualizar" HeaderText="F.CLIENTE" ShowHeader="True" Text="Actualizar" ButtonType="Button" >
            
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
            
                     <asp:ButtonField CommandName="print1"  HeaderText="DOC. CANJE" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" Visible="False" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                     <asp:ButtonField CommandName="print"  HeaderText="LETRA" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" Visible="False" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                    <asp:ButtonField CommandName="renovar"  HeaderText="RENOVAR" ShowHeader="True" Text="R" ButtonType="Button" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                     <asp:ButtonField CommandName="print2019A"  HeaderText="LETRA 2018A" ShowHeader="True" Text="print" ImageUrl="~/images/imprimir_old.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                                      <asp:ButtonField CommandName="print2019B"  HeaderText="LETRA 2019B" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSourceletratt" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_Letras" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblclienteBK" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


        </div>
    </div>

    <asp:Panel ID="pAnularLetra" runat="server">
        <table class="auto-style2">
            <tr>
                <td>LETRA</td>
                <td>:</td>
                <td>
                    <asp:Label ID="lblLetra" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">MOTIVO</td>
                <td class="auto-style3">:</td>
                <td class="auto-style3" colspan="3">
                    <asp:TextBox ID="txtmotivo"  runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblidrucLetra" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="lbAnularLetra" CssClass="btn btn-danger" runat="server" OnClick="lbAnularLetra_Click">ANULAR LETRA</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">FACTURAS ANEXADAS:<br />
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" class="table table-condensed table-bordered  table-hover table-sm thead-light" DataSourceID="SqlDataSource2" OnRowDataBound="GridView5_RowDataBound" ShowFooter="True" Width="95%" Font-Size="XX-Small">
                        <Columns>
                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                            <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PORCOBRAR" HeaderText="PORCOBRAR" SortExpression="PORCOBRAR">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" Visible="False" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_facturasporLETRA" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="gvLetrasTT" Name="idletra" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </asp:Panel>

</asp:Content>
