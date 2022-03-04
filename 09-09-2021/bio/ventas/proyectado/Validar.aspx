<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/proyectado/Proyectado.Master" AutoEventWireup="true" CodeBehind="Validar.aspx.cs" Inherits="biotech.bio.ventas.proyectado.Validar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
        color: #990000;
    }
    .auto-style3 {
        color: #006666;
    }
        .auto-style4 {
            width: 600px;
        }
        .auto-style5 {
            color: #999999;
        }
        .auto-style6 {
            text-decoration: underline;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
    <br />
    <br />
   
    <h1 class="mt-5">PROYECTADO POR ASESORES
        <asp:Label ID="lbltituloprincipal" runat="server" Visible="False"></asp:Label>
      </h1>
  <div class="row">
   

        <asp:Panel ID="Panel1" runat="server">
              <table class="auto-style1">
        <tr>
            <td>ANO:</td>
            <td colspan="2">
                <asp:RadioButtonList ID="rbano" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="100%" Height="20px">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idano, ano from tb_ano where estado=1"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>ASESORES:</td>
            <td>
                <asp:DropDownList ID="ddlGrupo" CssClass="form-control" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlGrupo_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Value="1">GENERAL</asp:ListItem>
                    <asp:ListItem Value="11">ZONAL ICA</asp:ListItem>
                    <asp:ListItem Value="10">ZONA PIURA</asp:ListItem>
                    <asp:ListItem Value="12">ZONA CHICLAYO</asp:ListItem>
                    <asp:ListItem Value="2">POR ASESORES</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="ddlAsesores"  CssClass="form-control"  runat="server" DataSourceID="SqlDataSourcevendedores" DataTextField="ASESOR" DataValueField="CODTRAB" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="ddlAsesores_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourcevendedores" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ST_VENDEDORES_ASESORES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </td>
        </tr>
                  <tr>
                      <td colspan="3">
                          <table class="nav-justified">
                              <tr>
                                  <td>
                                      <asp:Label ID="lblIdGrupoTrimestre" runat="server" Text="1" Visible="False"></asp:Label>
                                  </td>
                                  <td>
                                      <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                                  </td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                          </table>
                      </td>
                  </tr>
    </table>

             

        </asp:Panel>
    </div>
 
    
     <table class="nav-justified">
                  <tr>
                      <td>
                          <asp:ImageButton ID="ibtnActualizar" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ibtnActualizar_Click" Width="30px" />
                      </td>
                      <td>
                          <table class="nav-justified">
                              <tr>
                                  <td>

                  <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="ENE" OnClick="Button1_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="FEB" OnClick="Button2_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button3" class="btn btn-success" runat="server" Text="MAR" OnClick="Button3_Click" Width="100%"></asp:Button>
                                  </td>
                              </tr>
                          </table>
                      </td>
                      <td>
                          <table class="nav-justified">
                              <tr>
                                  <td>
                  <asp:Button ID="Button4" class="btn btn-success" runat="server" Text="ABR" OnClick="Button4_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button5" class="btn btn-success" runat="server" Text="MAY" OnClick="Button5_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button6" class="btn btn-success" runat="server" Text="JUN" OnClick="Button6_Click" Width="100%"></asp:Button>
                                  </td>
                              </tr>
                          </table>
                      </td>
                      <td>
                          <table class="nav-justified">
                              <tr>
                                  <td>
                  <asp:Button ID="Button7" class="btn btn-success" runat="server" Text="JUL" OnClick="Button7_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button8" class="btn btn-success" runat="server" Text="AGO" OnClick="Button8_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button9" class="btn btn-success" runat="server" Text="SET" OnClick="Button9_Click" Width="100%"></asp:Button>
                                  </td>
                              </tr>
                          </table>
                      </td>
                      <td>
                          <table class="nav-justified">
                              <tr>
                                  <td>
                  <asp:Button ID="Button10" class="btn btn-success" runat="server" Text="OCT" OnClick="Button10_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button11" class="btn btn-success" runat="server" Text="NOV" OnClick="Button11_Click" Width="100%"></asp:Button>
                                  </td>
                                  <td>
                  <asp:Button ID="Button12" class="btn btn-success" runat="server" Text="DIC" OnClick="Button12_Click" Width="100%"></asp:Button>
                                  </td>
                              </tr>
                          </table>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td><strong>ZONA</strong></td>
                      <td>
                          <asp:Button ID="btntrimestre1" runat="server" OnClick="btntrimestre1_Click" Text="1º TRIMESTRE" Width="100%" />
                      </td>
                      <td>
                          <asp:Button ID="btntrimestre2" runat="server" OnClick="btntrimestre2_Click" Text="2º TRIMESTRE" Width="100%" />
                      </td>
                      <td>
                          <asp:Button ID="btntrimestre3" runat="server" OnClick="btntrimestre3_Click" Text="3º TRIMESTRE" Width="100%" />
                      </td>
                      <td>
                          <asp:Button ID="btntrimestre4" runat="server" OnClick="btntrimestre4_Click" Text="4º TRIMESTRE" Width="100%" />
                      </td>
                      <td class="text-center">
                          <strong>E. ZONAL</strong></td>
                  </tr>
                  <tr>
                      <td>ICA</td>
                      <td class="text-right">
                          <asp:Label ID="lbleica1" runat="server" Text="0"></asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lbleica2" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lbleica3" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lbleica4" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          &nbsp;
                          <asp:Label ID="lblzi" runat="server">0</asp:Label>
                          <asp:Label ID="lblzi2" runat="server" Text="NO" Font-Bold="True"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td>PIURA</td>
                      <td class="text-right">
                          <asp:Label ID="lblepiura1" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lblepiura2" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lblepiura3" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lblepiura4" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lblzp" runat="server">0</asp:Label>
                          <asp:Label ID="lblzp2" runat="server" Text="NO" Font-Bold="True"></asp:Label></td>
                  </tr>
                  <tr>
                      <td>CHICLAYO</td>
                      <td class="text-right">
                          <asp:Label ID="lbleChiclayo1" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lbleChiclayo2" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lbleChiclayo3" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lbleChiclayo4" runat="server">0</asp:Label>
                          &nbsp;</td>
                      <td class="text-right">
                          <asp:Label ID="lblzc" runat="server">0</asp:Label>
                          <asp:Label ID="lblzc2" runat="server" Text="NO" Font-Bold="True"></asp:Label>

                      </td>
                  </tr>
                  <tr>
                      <td><strong>EFECTIVIDAD:</strong></td>
                      <td class="text-center">
                          <asp:Label ID="lbleResult1" runat="server" Font-Bold="True" Visible="False">0</asp:Label>
                      &nbsp;<asp:Label ID="lblr1" runat="server" Text="NO" Font-Bold="True"></asp:Label>
                      </td>
                      <td class="text-center">
                          <asp:Label ID="lbleResult2" runat="server" Font-Bold="True" Visible="False">0</asp:Label>
                      &nbsp;<asp:Label ID="lblr2" runat="server" Text="NO" Font-Bold="True"></asp:Label>
                      </td>
                      <td class="text-center">
                          <asp:Label ID="lbleResult3" runat="server" Font-Bold="True" Visible="False">0</asp:Label>
                      &nbsp;<asp:Label ID="lblr3" runat="server" Text="NO" Font-Bold="True"></asp:Label>
                      </td>
                      <td class="text-center">
                          <asp:Label ID="lbleResult4" runat="server" Font-Bold="True" Visible="False">0</asp:Label>
                      &nbsp;<asp:Label ID="lblr4" runat="server" Text="NO" Font-Bold="True"></asp:Label>
                      </td>
                      <td class="text-center">
                          <asp:Label ID="lblzfinal" runat="server" Visible="False">0</asp:Label>
                          <asp:Label ID="lblzfinal2" runat="server" Text="NO" Font-Bold="True"></asp:Label></td>
                  </tr>
                  <tr>
                      <td colspan="2" class="auto-style5"><small>*Efectividad medida en base al 100%, si es efectivo &gt;100%.</small></td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
              </table>
       
        <asp:Panel ID="payuda" runat="server" Visible="False">
       
            op:
            <asp:Label ID="lblop" runat="server"></asp:Label>
            &nbsp; idmes:
            <asp:Label ID="lblidMes" runat="server"></asp:Label>
            &nbsp;id año:
            <asp:Label ID="lblidano" runat="server">2020</asp:Label>
            &nbsp;dato:
            <asp:Label ID="lbldato" runat="server"></asp:Label>
       
             &nbsp; codusuario:&nbsp;
            <asp:Label ID="lblcodusu10" runat="server"></asp:Label>
            &nbsp; nivel:
            <asp:Label ID="lblnivel10" runat="server"></asp:Label>
       
             &nbsp;&nbsp; CORREOSOLICITA:&nbsp;&nbsp; CORREO ENCARGADO:
            <asp:Label ID="lblcorreos" runat="server"></asp:Label>
       
             &nbsp;<asp:Label ID="lblclienteSelecc" runat="server"></asp:Label>
            &nbsp;producto &nbsp;idcliente:<asp:Label ID="lblIDClienteSelecc" runat="server"></asp:Label>
       
             &nbsp;idproducto: &nbsp;producto:
            <asp:Label ID="lblProductoSelec" runat="server"></asp:Label>
       
             </asp:Panel>
    <asp:Panel ID="ppormes" runat="server">
        <div class="row">

          





            <asp:Panel ID="pevaluando" runat="server">
                <div class="jumbotron">
                    <span class="auto-style6"><strong>COD. PROYECTADO:</strong></span>

                    <asp:Label ID="lblPeriodoProyectadoSeleccionado" runat="server" Font-Bold="True"></asp:Label>
                    -<asp:Label ID="lblidDetalleSelec" runat="server" Font-Bold="True"></asp:Label>
                      &nbsp;<br />
                    <strong>ASESOR: </strong>
                    <asp:Label ID="lblSubTitulo" runat="server"></asp:Label>
                    <asp:Label ID="lblidAsesorObservado" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblidAsesorObservadocorreo" runat="server" Visible="False"></asp:Label>
                    <br />
                    <strong>PRODUCTO: </strong>
                    <asp:Label ID="lblidProductoSelecc" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblproductoselecc" runat="server"></asp:Label>
                    &nbsp;<asp:Panel ID="popcion" runat="server" Visible="False">
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>
                            <br />
                            CANT. ATENDIDA</td>
                        <td>
                            <asp:Button ID="btncantidadAtendida" runat="server" Text="REGISTRAR CANT. ATENDIDA" Height="45px" OnClick="btncantidadAtendida_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button22" runat="server" Text="EVALUAR PEDIDO" BackColor="#6CBE73" Height="45px" OnClick="Button22_Click" Width="200px" />
                        </td>
                        <td>
                            <asp:Button ID="btncancelar1" runat="server" ForeColor="#CC3300" Height="45px" OnClick="btncancelar1_Click" Text="CANCELAR" Width="200px" />
                        </td>
                    </tr>
                </table>
                          <asp:LinkButton ID="lblVerguiarem" runat="server" OnClick="lblVerguiarem_Click">Productos atendidos</asp:LinkButton>
                          <asp:Panel ID="Panel2" runat="server">
                              <asp:GridView ID="gvGuiaAten" runat="server" AllowPaging="True" AutoGenerateColumns="False" Class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataKeyNames="idguia" DataSourceID="SqlDataSourceguias" Font-Size="X-Small" PageSize="15" Width="600px">
                                  <Columns>
                                      <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False">
                                      <ItemStyle Font-Size="XX-Small" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                      <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" />
                                      <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE">
                                      <ItemStyle Font-Size="XX-Small" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="Idproducto" HeaderText="Idproducto" SortExpression="Idproducto" Visible="False" />
                                      <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" />
                                      <asp:BoundField DataField="PRESENT" HeaderText="PRESNT" SortExpression="PRESENT" />
                                      <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                  </Columns>
                                  <EmptyDataTemplate>
                                      No registra atención...
                                  </EmptyDataTemplate>
                                  <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
                              </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSourceguias" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_guiaten" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblProductoSelec" Name="producto" PropertyName="Text" Type="String" />
                                      <asp:Parameter DefaultValue="VENTA" Name="motivo" Type="String" />
                                      <asp:ControlParameter ControlID="lblIDClienteSelecc" Name="idcliente" PropertyName="Text" Type="String" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                          </asp:Panel>
            </asp:Panel>
                    <asp:Panel ID="PEVALUAR" runat="server" Visible="False">

                <strong>
                    <br />
                    OBSERVACIÓN: </strong>
                <asp:Label ID="lblObsfecha" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblobsercacionProyectado" runat="server" Visible="False"></asp:Label>
&nbsp;<br />
                <asp:GridView ID="gvhistorial" runat="server" Class="table table-striped table-bordered table-sm  table-hover" DataSourceID="SqlDataSourceHistorial" AutoGenerateColumns="False" DataKeyNames="id" ShowHeader="False" AllowPaging="True" PageSize="3">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" >
                        <HeaderStyle Width="50px" />
                        <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idDetProyectado" HeaderText="idDetProyectado" SortExpression="idDetProyectado" Visible="False" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fecha" SortExpression="fecha">
                        <HeaderStyle Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idusuario" HeaderText="idusuario" SortExpression="idusuario">
                        <HeaderStyle Height="20px" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceHistorial" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado.historialListar" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidDetalleSelec" Name="idproyectado" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
                <asp:TextBox ID="TextBox1" runat="server" Rows="3" placeholder="Ingresar detalle..." TextMode="MultiLine" Width="100%"></asp:TextBox>
                <asp:Button ID="btnaprobar" runat="server" BackColor="#429742" ForeColor="White" Text="APROBAR" Width="40%" OnClick="btnaprobar_Click" />
                <asp:Button ID="btnobservar" runat="server" BackColor="#CC3300" ForeColor="White" Text="OBSERVAR" Width="40%" OnClick="btnobservar_Click" />
                <asp:Button ID="Button20" runat="server" Text="CANCELAR" Width="18%" OnClick="Button20_Click" />
               </asp:Panel>
     
</div>

            </asp:Panel>
            
           <div class="panel panel-default">
  <div class="panel-body">
            <strong><span class="auto-style3">PROYECTADO APROBADO:</span> </strong>
               <asp:Label ID="lblcantAprobada" runat="server"></asp:Label>
            *&nbsp; registros.
            <asp:Label ID="lblimporteAprobado" runat="server"></asp:Label> 
            <asp:GridView ID="gvaprobado" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO,idcliente,idproducto" DataSourceID="SqlDataSourceaprobado" ForeColor="#333333" GridLines="None" OnRowDataBound="gvaprobado_RowDataBound" OnSelectedIndexChanged="gvaprobado_SelectedIndexChanged" Width="100%" Font-Size="X-Small">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    No registran royectados aprobado...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceaprobado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblop" Name="opcion" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            PROYECTADO ATENDIDOS:<asp:GridView ID="GridViewAtendidos" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO,idcliente,idproducto" DataSourceID="SqlDataSourceATENDIDOS" Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="GridViewAtendidos_SelectedIndexChanged" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    No registra proyectado atendido...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceATENDIDOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="opcion" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" DefaultValue="" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridViewAtendidosGeneral" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO,idcliente,idproducto" DataSourceID="SqlDataSourceATENDIDOGENERAL" Font-Size="X-Small" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewAtendidosGeneral_SelectedIndexChanged" Visible="False" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle HorizontalAlign="Center" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    No registra proyectado atendido...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceATENDIDOGENERAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="101" Name="opcion" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" DefaultValue="" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridViewAtendidosica" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO,idcliente,idproducto" DataSourceID="SqlDataSourceATENDIDOSICA" Font-Size="X-Small" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewAtendidosica_SelectedIndexChanged" Width="100%" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle HorizontalAlign="Center" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    No registra proyectado atendido...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceATENDIDOSICA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1111" Name="opcion" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" DefaultValue="" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridViewAtendidosPiura" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO,idcliente,idproducto" DataSourceID="SqlDataSourceATENDIDOSPIURA" Font-Size="X-Small" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewAtendidosPiura_SelectedIndexChanged" Width="100%" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle HorizontalAlign="Center" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    No registra proyectado atendido...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceATENDIDOSPIURA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1010" Name="opcion" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" DefaultValue="" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridViewAtendidosChiclayo" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO,idcliente,idproducto" DataSourceID="SqlDataSourceATENDIDOSCHICLAYO" Font-Size="X-Small" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewAtendidosChiclayo_SelectedIndexChanged" Width="100%" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                        <ControlStyle Height="10px" Width="10px" />
                        <HeaderStyle HorizontalAlign="Center" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    No registra proyectado atendido...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceATENDIDOSCHICLAYO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1212" Name="opcion" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" DefaultValue="" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           
           <small>PV= Precio unitario de venta | CANT= Cantidad solicitada |&nbsp; ATEND = Cantidad atendida</small> </div></div>
            <span class="auto-style2"><strong>PROYECTADO OBSERVADO:</strong></span>
               <asp:Label ID="lblCantObservado" runat="server"></asp:Label>
            *&nbsp; registros.
            <asp:Label ID="lblimporteObservado" runat="server"></asp:Label> &nbsp;<asp:GridView ID="gvobservado" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO" DataSourceID="SqlDataSourceObservado" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="gvobservado_SelectedIndexChanged" OnRowDataBound="gvobservado_RowDataBound" Font-Size="X-Small">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowSelectButton="True" />
               <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
               <asp:BoundField DataField="fechareg" HeaderText="FECHA REG" SortExpression="fechareg" />
               <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" >
               <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
               </asp:BoundField>
               <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
               <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
               <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
               <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
               <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
               <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
               <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV" DataFormatString="{0:0,0.00}" >
               <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
               </asp:BoundField>
               <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
               <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
               </asp:BoundField>
                <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
               <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA" >
               <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
               </asp:BoundField>
               <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
               <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
           </Columns>
           <EmptyDataTemplate>
               No registra proyectado observado...
           </EmptyDataTemplate>
           <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
           <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
           <SortedAscendingCellStyle BackColor="#FDF5AC" />
           <SortedAscendingHeaderStyle BackColor="#4D0000" />
           <SortedDescendingCellStyle BackColor="#FCF6C0" />
           <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourceObservado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_Observado" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblop" Name="opcion" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>

             <hr />
             <strong>PROYECTADO POR EVALUAR:</strong>
            <asp:Label ID="lblitemporEvaluar" runat="server"></asp:Label>
            *&nbsp; registros.
            <asp:Label ID="lblimporteporevaluar" runat="server"></asp:Label> <asp:GridView ID="gvporaprobar" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR,CLIENTE,PERIODO" DataSourceID="SqlDataSourcenoaprobado" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvporaprobar_RowDataBound" OnSelectedIndexChanged="gvporaprobar_SelectedIndexChanged" Width="100%" Font-Size="X-Small">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                    <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                </Columns>
                <EmptyDataTemplate>
                    No registra proyectado por evaluar...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcenoaprobado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitadoNo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblop" Name="opcion" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
         </div>

        </asp:Panel>
    <asp:Panel ID="pTrimestral" runat="server">
        <h2>
            <asp:Label ID="lblTituloTrimestral" runat="server"></asp:Label>
        </h2>
      
        <asp:Panel ID="TrimestralProducto" runat="server">
              <hr />
             <div class="alert alert-success">
                 <strong>
                 <asp:Label ID="lblzonaDetalle10" runat="server"></asp:Label>
                 &nbsp;PRODUCTO:</strong>
                 <asp:Label ID="lblidProducto10" runat="server"></asp:Label>
                 &nbsp;<asp:Label ID="lblProducto10" runat="server"></asp:Label>
                 <br />
                 <asp:GridView ID="gvProductosTrimestral" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleProyectado" DataSourceID="SqlDataSourceproductotrimestral" Width="100%" OnRowDataBound="gvProductosTrimestral_RowDataBound">
                     <Columns>
                         <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                         <asp:BoundField DataField="idproyectado" HeaderText="idproyectado" SortExpression="idproyectado" Visible="False" />
                         <asp:BoundField DataField="FREGISTRO" HeaderText="FREGISTRO" SortExpression="FREGISTRO">
                         <ItemStyle HorizontalAlign="Center" />
                         </asp:BoundField>
                         <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                         <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" >
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                         <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                         <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV" DataFormatString="{0:0,0.00}" >
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="ATEND" HeaderText="ATEND" SortExpression="ATEND" >
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="PORATENDER" HeaderText="POR ATENDER" ReadOnly="True" SortExpression="PORATENDER" >
                         <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                          <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSourceproductotrimestral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_trimestreProducto" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="lblano10" Name="idano" PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="lblidGrupozonal10" Name="idgrupohabilitado" PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="lblidZona10" Name="idzona" PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="lblidProducto10" Name="idproducto" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 Proyectado aprobado:
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
                 &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ocultar</asp:LinkButton>
                 <asp:Panel ID="payudaProducto" runat="server" Visible="False">
                     ano:
                     <asp:Label ID="lblano10" runat="server"></asp:Label>
                     &nbsp;idgrupohabilitado:
                     <asp:Label ID="lblidGrupozonal10" runat="server"></asp:Label>
                     &nbsp;idznona:
                     <asp:Label ID="lblidZona10" runat="server"></asp:Label>
                     &nbsp;idproducto:
                     </asp:Panel>
            </div>
            
            
            </asp:Panel>
         <div class="row">
     <div class="col-md-4">
      <strong>RESUMEN TRIMESTRAL ICA:</strong>
        <asp:GridView ID="gvTrimestralICA" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceTRIMESTRALZONAL" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" OnSelectedIndexChanged="gvTrimestralICA_SelectedIndexChanged" Font-Size="Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                <asp:BoundField DataField="PRESENT" HeaderText="**" SortExpression="PRESENT" />
                <asp:BoundField DataField="CANT" HeaderText="CANT" ReadOnly="True" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATE" SortExpression="CANTATENDIDA" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                 <asp:BoundField DataField="DIF" HeaderText="DIF" SortExpression="DIF" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PORCENT" HeaderText="E.%" SortExpression="PORCENT" DataFormatString="{0:0,0}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" ForeColor="#999999" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#009933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTRIMESTRALZONAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="2" Name="idzona" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
     
    <div class="col-md-4">
      <strong>RESUMEN TRIMESTRAL PIURA:</strong>
       
        <asp:GridView ID="gvtrimestralPiura"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" OnSelectedIndexChanged="gvtrimestralPiura_SelectedIndexChanged" Font-Size="Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                <asp:BoundField DataField="PRESENT" HeaderText="**" SortExpression="PRESENT" />
                <asp:BoundField DataField="CANT" HeaderText="CANT" ReadOnly="True" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEN" SortExpression="CANTATENDIDA" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                 <asp:BoundField DataField="DIF" HeaderText="DIF" SortExpression="DIF" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" Font-Bold="True" />
                </asp:BoundField>
               <asp:BoundField DataField="PORCENT" HeaderText="E.%" SortExpression="PORCENT" DataFormatString="{0:0,0}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" ForeColor="#999999" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#009933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idzona" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    
    <div class="col-md-4">
     <strong>RESUMEN TRIMESTRAL CHICLAYO: </strong>
       <asp:GridView ID="gvTrimestralChiclayo"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" OnSelectedIndexChanged="gvTrimestralChiclayo_SelectedIndexChanged" Font-Size="Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                <asp:BoundField DataField="PRESENT" HeaderText="**" SortExpression="PRESENT" />
                <asp:BoundField DataField="CANT" HeaderText="CANT" ReadOnly="True" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEN" SortExpression="CANTATENDIDA" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                 <asp:BoundField DataField="DIF" HeaderText="DIF" SortExpression="DIF" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" Font-Bold="True" />
                </asp:BoundField>
               <asp:BoundField DataField="PORCENT" HeaderText="E.%" SortExpression="PORCENT" DataFormatString="{0:0,0}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" ForeColor="#999999" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#009933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="4" Name="idzona" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />                    
  </div>
                </div>

        <br /><br />
        <asp:Button ID="btnGenerarinformealmacen" runat="server" Text="GENERAR INFORME POR ATENDER" OnClick="btnGenerarinformealmacen_Click" />
 
      
        
    </asp:Panel>
</asp:Content>
