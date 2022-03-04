<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Guiarem.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.Guiarem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 1000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> GUIA REMISIÓN<asp:LinkButton ID="LinkButton1" runat="server" Visible="False"></asp:LinkButton>
                        </h2>



                        <%--<p class="help-block">Departamento</p>--%>
                       </div></div>


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



    <asp:Panel ID="PanelPedido" runat="server">


   <div class="row">
        <asp:Panel ID="PanelSistema" runat="server">
            <asp:Label ID="lblIdPedido" runat="server" Visible="False">0</asp:Label>
            <asp:Label ID="lblop" runat="server" Visible="False"></asp:Label>
        </asp:Panel>

       <asp:Panel ID="PanelPedidos" runat="server" Visible="False">

      

        <asp:GridView ID="gvPedidosPorAtender" class="table table-condensed table-bordered table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="idPedido,RUC,RTC,ZONA" DataSourceID="SqlDataSourcepedidos" AllowPaging="True" PageSize="3" OnSelectedIndexChanged="gvPedidosPorAtender_SelectedIndexChanged" Width="100%" GridLines="Horizontal" Font-Size="X-Small">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                <asp:BoundField DataField="NPEDIDO" HeaderText="NPEDIDO" ReadOnly="True" SortExpression="NPEDIDO" />
                <asp:BoundField DataField="FREGISTRADA" HeaderText="FREGISTRADA" SortExpression="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FSOLICITADA" HeaderText="FSOLICITADA" SortExpression="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" />
                <asp:BoundField DataField="CONDICIONPAGO" HeaderText="CONDICIONPAGO" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
            </Columns>
            <HeaderStyle BackColor="#E8E8E8" />
        </asp:GridView>
</div>




    <div class="row">


         <div class="col-md-6">
             
       



                            <asp:GridView ID="gvPedidosDetalle" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDET,ESTADOATENCION,ESTADOGERENCIA,CODPRO,PRODUCTO,ATENDIDO" DataSourceID="SqlDataSourceDetPet" OnSelectedIndexChanged="gvPedidosDetalle_SelectedIndexChanged" Width="100%" Font-Size="XX-Small">
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
                                    <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" ReadOnly="True" SortExpression="DESCTO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ATENDIDO" HeaderText="ATENDIDO" SortExpression="ATENDIDO">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="**">
                                        <ControlStyle Height="20px" Width="20px" />
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
                                   
                                    <asp:ControlParameter ControlID="lblIdPedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

             </div>
          <div class="col-md-6">
            






              <asp:GridView ID="gvGuias" runat="server" AutoGenerateColumns="False" DataKeyNames="IDGUIA" DataSourceID="SqlDataSourceGuiasPed" GridLines="Horizontal" OnSelectedIndexChanged="gvGuias_SelectedIndexChanged" Width="100%" Font-Size="XX-Small">
            <Columns>
                <asp:TemplateField HeaderText="GUIA REM" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("GUIA") %>'></asp:LinkButton>
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
                <asp:ControlParameter ControlID="lblIdPedido" Name="idpedido" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

               </div>
    </div>


        </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSourcepedidos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_estado" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="estado" Type="Int32" />
                <asp:Parameter DefaultValue=" " Name="cliente" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       </asp:Panel>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>

         

      

                         <div class="row">
                             <table class="auto-style1">
                                         <tr>
                                             <td  align=right >MOTIVO:</td>
                                             <td >
                                                 <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                     <asp:ListItem>VENTA</asp:ListItem>
                                                     <asp:ListItem Value="MUEST">MUESTRA</asp:ListItem>
                                                     <asp:ListItem Value="TRASL">TRASLADO</asp:ListItem>
                                                     <asp:ListItem Value="DEVOL">DEVOLUCIÓN</asp:ListItem>
                                                 </asp:DropDownList>
                                             </td>
                                             <td ></td><td align=right>TIPO VENTA:<br />
                                             <asp:Label ID="lblestadoGeneraltp" runat="server" Text="VENTA"></asp:Label>
                                             </td><td >
                                                 <asp:RadioButtonList ID="rbtipoventa" runat="server">
                                                     <asp:ListItem Value="XPEDI">POR PEDIDO</asp:ListItem>
                                                     <asp:ListItem Value="VENTA">DIRECTO</asp:ListItem>
                                                 </asp:RadioButtonList>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td align="right">&nbsp;</td>
                                             <td colspan="4"><small>
                                                 <asp:Label ID="lblIdMotivoTraslado" runat="server"></asp:Label>
                                                 <small>
                                                 <asp:Label ID="lblidMotTrasSunat" runat="server">01</asp:Label>
                                                 </small>
                                                 </small></td>
                                         </tr>
                                         <tr>
                                             <td  align=right>ALM. ORIGEN:</td>
                                             <td>
                                                 <asp:SqlDataSource ID="SqlDataSourcealorigen" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idalmacen,descripcion from almacen where estado = 1"></asp:SqlDataSource>
                                                 <asp:RadioButtonList ID="rbAlmOrigen" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcealorigen" DataTextField="descripcion" DataValueField="idalmacen" OnSelectedIndexChanged="rbAlmOrigen_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%" Font-Size="X-Small">
                                                 </asp:RadioButtonList>
                                             </td>
                                             <td>&nbsp;</td>
                                             <td  align=right>ALM. DESTINO:</td>
                                             <td>
                                                 <asp:RadioButtonList ID="rbAlmacenDestino" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbAlmacenDestino_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%" Font-Size="X-Small">
                                                     <asp:ListItem Selected="True" Value="---">No indica</asp:ListItem>
                                                     <asp:ListItem Value="ALICA">ICA</asp:ListItem>
                                                     <asp:ListItem Value="ALPIU">PIURA</asp:ListItem>
                                                 </asp:RadioButtonList>
                                             </td>
                                         </tr>
                                     </table>
                         </div>


                         <div class="form-horizontal">

                             <div class="panel panel-success">
                                 <div class="panel-heading">
                                     
                                     <i class="glyphicon glyphicon-edit"></i><strong>GUIA DE REMISIÓN</strong><asp:Label ID="lblIdGuia" runat="server" Visible="False"></asp:Label>
                                     <strong>
                                     <asp:Label ID="lblidguiarem" runat="server" Visible="False"></asp:Label>
                                     N°
                                     <asp:Label ID="lblguiaremgrupo" runat="server"></asp:Label>
                                     -
                                     <asp:Label ID="lblguiaremserie" runat="server"></asp:Label>
                                     </strong>
                                     <asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                                     <small>
                                     &nbsp;&nbsp;<asp:Label ID="lblidGrupoEmpresa" runat="server" Text="10" Visible="False"></asp:Label>
                                     </small>
                                     <asp:Label ID="lblidvendedorsolicitante" runat="server" Text="BIO  " Visible="False"></asp:Label>
                                     <asp:Label ID="lblDesAlmOrigen" runat="server" Visible="False"></asp:Label>
                                     <asp:Label ID="lblidAlmOrigen" runat="server" Text="ALICA" Visible="False"></asp:Label>
                                     <small>
                                     <asp:Label ID="lblidAlmFinal" runat="server" Text="---" Visible="False"></asp:Label>
                                     </small>
                                 </div>
                                 <div class="panel-body">
                                     <div class="form-horizontal">
                                         <asp:Panel ID="GUIA1" runat="server">
                                             <div class="form-group">
                                                 <label class="control-label col-md-1 " for="">
                                                 F. Emisión:</label>
                                                 <div class="col-md-2">
                                                     <asp:TextBox ID="txtfechaemision" runat="server" BackColor="#ECF9F3" Class="form-control" required="" TextMode="Date" ToolTip="Fecha de emisión"></asp:TextBox>
                                                 </div>
                                                 <label class="control-label col-md-1 col-md-offset-2 " for="">
                                                 P.Partida:</label>
                                                 <div class="col-md-6">
                                                     <asp:Label ID="lblPuntoPartidaCorto" runat="server" Visible="False"></asp:Label>
                                                     <asp:Label ID="lblp1Departamento" runat="server"></asp:Label>
                                                     <asp:Label ID="lblp1Prov" runat="server"></asp:Label>
                                                     <asp:Label ID="lblp1Dist" runat="server"></asp:Label>
                                                     <asp:Label ID="lblp1DireccionLarga" runat="server" class="control-label"></asp:Label>
                                                     <asp:Label ID="lblUbigeoPPartica" runat="server"></asp:Label>
                                                 </div>
                                             </div>
                                             <div class="form-group">
                                                 <%--<label class="control-label col-md-1 " for="">F.Emisión:</label>--%>
                                                 <label class="control-label col-md-1 " for="">
                                                 Destinatario:</label>
                                                 <div class="col-md-2">
                                                     <asp:DropDownList ID="ddlTpDoc" runat="server" Class="form-control input-sm">
                                                         <asp:ListItem Selected="True" Value="6">RUC</asp:ListItem>
                                                         <asp:ListItem Value="1">DNI</asp:ListItem>
                                                     </asp:DropDownList>
                                                 </div>
                                                 <div class="col-md-2">
                                                     <asp:TextBox ID="txtruc" runat="server" AutoPostBack="True" BackColor="#ECF9F3" Class="form-control" OnTextChanged="txtruc_TextChanged" placeholder="Nº documento"></asp:TextBox>
                                                     <%--<p class="help-block">Nº. Doc</p>--%>
                                                 </div>
                                                 <div class="col-md-3">
                                                     <asp:TextBox ID="txtrazonsocial" runat="server" Class="form-control" Height="32px" OnTextChanged="txtrazonsocial_TextChanged" placeholder="Razón social ..." Width="100%"></asp:TextBox>
                                                     <%--<p class="help-block">Razón Social</p>--%>
                                                 </div>
                                                 <div class="col-md-4">
                                                     <asp:RadioButtonList ID="rbModalidadTraslado" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceTpTransp" DataTextField="descripcion" DataValueField="cod" OnSelectedIndexChanged="rbModalidadTraslado_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                                                     </asp:RadioButtonList>
                                                     <asp:SqlDataSource ID="SqlDataSourceTpTransp" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [FE_ModTraslado]"></asp:SqlDataSource>
                                                 </div>
                                             </div>
                                             <asp:Panel ID="Panel_tptransporte" runat="server">
                                                 <div class="form-group">
                                                     <label class="control-label col-md-1 " for="">
                                                     Transportista:</label>
                                                     <div class="col-md-2">
                                                         <asp:TextBox ID="txtRuxTransporte" runat="server" Class="form-control" placeholder="RUC Transportista" required="">20601613396</asp:TextBox>
                                                     </div>
                                                     <div class="col-md-4">
                                                         <asp:TextBox ID="txtRazonTransporte" runat="server" Class="form-control" placeholder="RAZON SOCIAL Transportista" required="">BIOTECH CORP S.A.C.</asp:TextBox>
                                                     </div>
                                                     <label class="control-label col-md-1 " for="">
                                                     Obser.:</label>
                                                     <div class="col-md-4 ">
                                                         <asp:TextBox ID="txtobservacion" runat="server" Class="form-control" placeholder="Oberservación..."></asp:TextBox>
                                                     </div>
                                                 </div>
                                             </asp:Panel>
                                             <div class="form-group">
                                                 <label class="control-label col-md-1 " for="">
                                                 P.Llegada:</label>
                                                 <div class="col-md-2">
                                                     <asp:DropDownList ID="ddlp2Departamento" runat="server" AutoPostBack="True" Class="form-control" DataSourceID="SqlDataSourcep2depart" DataTextField="departamento" DataValueField="id" OnSelectedIndexChanged="ddlp2Departamento_SelectedIndexChanged">
                                                     </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSourcep2depart" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dDepartamento] WHERE ([idSunat] IS NOT NULL)"></asp:SqlDataSource>
                                                     <%--<p class="help-block">Departamento</p>--%>
                                                 </div>
                                                 <div class="col-md-2">
                                                     <asp:DropDownList ID="ddlp2Provincia" runat="server" AutoPostBack="True" Class="form-control" DataSourceID="SqlDataSourcep2Prov" DataTextField="provincia" DataValueField="idSunat" OnSelectedIndexChanged="ddlp2Provincia_SelectedIndexChanged">
                                                     </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSourcep2Prov" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dProvincia] WHERE ([idDepartamento] = @idDepartamento)">
                                                         <SelectParameters>
                                                             <asp:ControlParameter ControlID="ddlp2Departamento" Name="idDepartamento" PropertyName="SelectedValue" Type="Int32" />
                                                         </SelectParameters>
                                                     </asp:SqlDataSource>
                                                     <%--<p class="help-block">Provincia</p>--%>
                                                 </div>
                                                 <div class="col-md-3">
                                                     <asp:DropDownList ID="ddlp2Distrito" runat="server" Class="form-control" DataSourceID="SqlDataSourcep2Distrito" DataTextField="ubigeo" DataValueField="idUbigeo">
                                                     </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSourcep2Distrito" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dDistritoUbigeo] WHERE ([idProv] = @idProv)">
                                                         <SelectParameters>
                                                             <asp:ControlParameter ControlID="ddlp2Provincia" Name="idProv" PropertyName="SelectedValue" Type="String" />
                                                         </SelectParameters>
                                                     </asp:SqlDataSource>
                                                     <asp:Label ID="lblIdUbigeoLlegada" runat="server" Visible="False"></asp:Label>
                                                     <%--  <p class="help-block">Distrito
                          </p>--%>
                                                 </div>
                                                 <div class="col-md-4">
                                                     <asp:TextBox ID="txtp2PuntoLlegada" runat="server" Class="form-control" placeholder="Dirección punto llegada" required=""></asp:TextBox>
                                                     <%--   <p class="help-block">Dirección del punto de llegada</p>--%>
                                                 </div>
                                             </div>
                                             <div class="form-group">
                                                 <div class="col-md-2">
                                                     <strong>Solicita:</strong>
                                                     <asp:DropDownList ID="ddlVendedor" runat="server" AutoPostBack="True" BackColor="#ECF9F3" DataSourceID="SqlDataSourceRTC" DataTextField="ASESOR" DataValueField="CODTRAB" Height="34px" OnSelectedIndexChanged="ddlVendedor_SelectedIndexChanged" Width="100%">
                                                     </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSourceRTC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                                 </div>
                                                 <div class="col-md-4">
                                                     <strong>Datos del Vehículo:</strong><asp:Label ID="lblcodconductor" runat="server"></asp:Label>
                                                     <div class="form-group">
                                                         <div class="col-md-6">
                                                             <asp:DropDownList ID="ddlplacaVehículo" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSourcePlaca" DataTextField="apellidos" DataValueField="empleadoid" OnSelectedIndexChanged="ddlplacaVehículo_SelectedIndexChanged">
                                                             </asp:DropDownList>
                                                             <asp:SqlDataSource ID="SqlDataSourcePlaca" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select t.nplaca,p.dni,t.empleadoid,isnull(p.apellidos,'No indica') apellidos from FE_trasportes t left join tb_planillaPersonal p on t.empleadoid = p.id"></asp:SqlDataSource>
                                                         </div>
                                                         <div class="col-md-6">
                                                             <asp:TextBox ID="txtplacaConductor" runat="server" CssClass="form-control" placeholder="n° placa" required=""></asp:TextBox>
                                                         </div>
                                                     </div>
                                                 </div>
                                                 <div class="col-md-6">
                                                     <strong>Datos del Conductor:</strong>
                                                     <div class="row form-group">
                                                         <div class="col-md-3">
                                                             <asp:DropDownList ID="ddlTpDocconductor" runat="server" CssClass="form-control">
                                                                 <asp:ListItem Selected="True" Value="1">DNI</asp:ListItem>
                                                                 <asp:ListItem Value="6">RUC</asp:ListItem>
                                                             </asp:DropDownList>
                                                         </div>
                                                         <div class="col-md-4">
                                                             <asp:TextBox ID="txtDocConductor" runat="server" Class="form-control" placeholder="N° DOCUMENTO" required=""></asp:TextBox>
                                                         </div>
                                                         <div class="col-md-2 col-md-offset-2">
                                                             <asp:Button ID="bt_siguiente" runat="server" CssClass="btn btn-default" OnClick="bt_siguiente_Click" Text=" siguiente &gt;&gt;" />
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                         </asp:Panel>
                                         <asp:Panel ID="GUIA2" runat="server">
                                             <div class="row">
                                                 <div class="col-md-4">
                                                     <div class="panel panel-default">
                                                         <div class="panel-body">
                                                             <div class="form-group">
                                                                 <div class="col-md-7">
                                                                     <asp:DropDownList ID="ddlproducto" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSourceProductoPed" DataTextField="producto" DataValueField="producto" OnSelectedIndexChanged="ddlproducto_SelectedIndexChanged">
                                                                     </asp:DropDownList>
                                                                     <asp:SqlDataSource ID="SqlDataSourceProductoPed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_productos10" SelectCommandType="StoredProcedure">
                                                                         <SelectParameters>
                                                                             <asp:ControlParameter ControlID="lblestadoGeneraltp" Name="opAtencion" PropertyName="Text" Type="String" />
                                                                             <asp:ControlParameter ControlID="lblop" Name="idpedido" PropertyName="Text" Type="Int32" />
                                                                         </SelectParameters>
                                                                     </asp:SqlDataSource>
                                                                 </div>
                                                                 <div class="col-md-5">
                                                                     <asp:DropDownList ID="ddlPresentacion" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource5" DataTextField="presentacion" DataValueField="idProducto" OnSelectedIndexChanged="ddlPresentacion_SelectedIndexChanged">
                                                                     </asp:DropDownList>
                                                                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idProducto], [presentacion] FROM [tb_producto] WHERE ([producto] = @producto)">
                                                                         <SelectParameters>
                                                                             <asp:ControlParameter ControlID="ddlproducto" Name="producto" PropertyName="SelectedValue" Type="String" />
                                                                         </SelectParameters>
                                                                     </asp:SqlDataSource>
                                                                 </div>
                                                             </div>
                                                             <div class="form-group">
                                                                 <label class="col-lg-3 control-label" for="ejemplo_email_3">
                                                                 Cantidad:</label>
                                                                 <div class="col-md-4">
                                                                     <asp:TextBox ID="txtCantidad" runat="server" Class="form-control" type="number"></asp:TextBox>
                                                                     <%-- <p class="help-block">Candidad</p>--%>
                                                                 </div>
                                                                 <div class="col-md-5">
                                                                     <asp:LinkButton ID="lbAgregarProducto" runat="server" CssClass="btn btn-success" OnClick="lbAgregarProducto_Click" Width="100%">Agregar</asp:LinkButton>
                                                                 </div>
                                                             </div>
                                                             <div class="form-group">
                                                                 <div class="col-md-12 ">
                                                                     <asp:Label ID="lblCodProductoGuia" runat="server"></asp:Label>
                                                                     <asp:Label ID="lblDescripProduct" runat="server"></asp:Label>
                                                                     <asp:Label ID="lblundMed" runat="server" Text="NIU" Visible="False"></asp:Label>
                                                                 </div>
                                                             </div>
                                                             <asp:Label ID="Label1" runat="server" ForeColor="#990000"></asp:Label>
                                                             <p class="text-right text-success">
                                                                 <small>( Solicita
                                                                 <asp:Label ID="lblcantidadSolicitada" runat="server" style="font-weight: 700">0</asp:Label>
                                                                 -<asp:Label ID="lblcantidadAtendida" runat="server" style="font-weight: 700">0</asp:Label>
                                                                 &nbsp;atendido(s))<asp:Label ID="lbldiferenciaAtendida" runat="server">0</asp:Label>
                                                                 <asp:Label ID="lblstockSelectUndMed" runat="server" Visible="False"></asp:Label>
                                                                 </small>
                                                             </p>
                                                             <p class="text-right text-success">
                                                                 <small>Existencia:
                                                                 <asp:Label ID="stockselecProducto" runat="server" style="font-weight: 700">0</asp:Label>
                                                                 &nbsp;unidades, equivalesntes a
                                                                 <asp:Label ID="lblExistenaLitros" runat="server" style="font-weight: 700">0</asp:Label>
                                                                 &nbsp;Litro(s).</small></p>
                                                         </div>
                                                     </div>
                                                 </div>
                                                 <div class="col-md-8">
                                                     <div class="panel panel-success">
                                                         <div class="panel-heading">
                                                             PRODUCTOS</div>
                                                         <div class="panel-body">
                                                             <asp:GridView ID="GridView1" runat="server" class="table" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                                                                 <Columns>
                                                                     <asp:ButtonField CommandName="Delete" HeaderText="" ShowHeader="True" Text="Eliminar" />
                                                                 </Columns>
                                                                 <HeaderStyle BackColor="#DDDDDD" />
                                                             </asp:GridView>
                                                             <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                                                             *<asp:Label ID="lblitemrow" runat="server"></asp:Label>
                                                             &nbsp;items.<asp:Label ID="lblIdAlmacenDetalle" runat="server"></asp:Label>
                                                             <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
                                                             <br />
                                                             <div class="form-group">
                                                                 <%--<label class="control-label col-md-1 " for="txtruc">P.Partida:</label>--%>
                                                                 <label class="control-label col-md-3 " for="txtruc">
                                                                 Peso bruto Total:</label>
                                                                 <div class="col-md-2">
                                                                     <asp:TextBox ID="txtpesoBruto" runat="server" Class="form-control" required="" step="0.01" type="number"></asp:TextBox>
                                                                     <p class="help-block">
                                                                     </p>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="row">
                                                 <div class="col-md-2">
                                                     <asp:Button ID="btAnterior" runat="server" CssClass="btn btn-default" OnClick="btAnterior_Click" Text="&lt;&lt; Anterior" />
                                                 </div>
                                                 <div class="col-md-10">
                                                     <asp:Button ID="Button1" runat="server" CLASS="btn btn-success col-md-3" OnClick="Button1_Click" Text="REGISTRAR GUIA VENTA/MUESTRA" />
                                                     <asp:Button ID="btRegTraslado" runat="server" CLASS="btn btn-success col-md-3" OnClick="btRegTraslado_Click" Text="REGISTRAR GUIA REMISION / TRASLADO" />
                                                 </div>
                                             </div>
                                         </asp:Panel>
                                     </div>
                                 </div>
                             </div>

                         </div>

                                   </ContentTemplate>
        </asp:UpdatePanel>


    <asp:Panel ID="Panel2" runat="server">
                 <asp:Label ID="lblQRguiaRem" runat="server" Text="---"></asp:Label>
                 <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                 <br />
                 <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSourceDetalle" GridLines="Horizontal" Width="100%" Visible="False">
                     <Columns>
                         <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                         <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                         <asp:BoundField DataField="Row" HeaderText="Nro." ReadOnly="True" SortExpression="Row">
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="CODPRODUCTO" HeaderText="Código" SortExpression="CODPRODUCTO">
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="PRODUCTO" HeaderText="Descripción" ReadOnly="True" SortExpression="PRODUCTO" />
                         <asp:BoundField DataField="UNDMED" HeaderText="Und. de Medida" SortExpression="UNDMED">
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="CANTIDAD" HeaderText="Cantidad" SortExpression="CANTIDAD">
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                     </Columns>
                     <EmptyDataTemplate>
                         No hay datos registrados del bien...
                     </EmptyDataTemplate>
                     <HeaderStyle BackColor="LightGray" BorderStyle="None" Height="25px" />
                     <RowStyle BorderStyle="None" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSourceDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_detalle" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="lblIdGuia" Name="idguia" PropertyName="Text" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 

             </asp:Panel>





         
</asp:Content>
