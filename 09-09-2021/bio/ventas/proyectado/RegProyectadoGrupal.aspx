<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/proyectado/Proyectado.Master" AutoEventWireup="true" CodeBehind="RegProyectadoGrupal.aspx.cs" Inherits="biotech.bio.ventas.proyectado.RegProyectadoGrupal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            width: 1000px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
    <script>
        $("#confirm").click(function () {
            var bool = confirm("Seguro de eliminar el dato?");
            if (bool) {
                alert("se elimino correctamente");
            } else {
                alert("cancelo la solicitud");
            }
        });
    </script>

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
    <br />
    <br />
   
    <h1 class="mt-5">
        <asp:Label ID="Label1" runat="server" Text="PROYECTADO GRUPAL"></asp:Label>
        <asp:Label ID="lbltituloprincipal" runat="server"></asp:Label>
      </h1>
<%--  <div class="row">
      </div>--%>
      <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageAlign="Top" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="25px" />
      <asp:Button ID="btnAlmacen" runat="server" Text="PRODUCTOS A REPONER" Width="200px" OnClick="btnAlmacen_Click" />
      <asp:Button ID="Button1" runat="server" Text="ADMINISTRAR" Width="200px" OnClick="Button1_Click1" />
      <asp:Button ID="btnAtender" runat="server" Text="ATENDER" Width="200px" OnClick="btnAtender_Click" Visible="False" />
      <br />
      <asp:Panel ID="pRegistrar" runat="server">
          <table class="auto-style1">
              <tr>
                  <asp:Panel ID="Panelzona" runat="server">
                   <td>
                       
                      
                      <asp:DropDownList ID="ddlzona" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombres" DataValueField="codTrabajador" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddlzona_SelectedIndexChanged">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="List_zonas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                       <br />
                      Zona:<asp:Label ID="lblidzona" runat="server" Visible="False"></asp:Label>
                  </td>
                   </asp:Panel>
                  <td>
                      <asp:RadioButtonList ID="rbano" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="100%">
                      </asp:RadioButtonList>
                      <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idano, ano from tb_ano where estado=1"></asp:SqlDataSource>
                      Año:</td>
                  <td>
                      <asp:DropDownList ID="ddlMes" runat="server" DataSourceID="SqlDataSourceMES" DataTextField="mes" DataValueField="idmes" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                      </asp:DropDownList>
                          
                      <br />
                          
                      Periodo:<asp:SqlDataSource ID="SqlDataSourceMES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT  [idmes],mes FROM [tb_mes]"></asp:SqlDataSource>
                  </td>
                 
                 
                  <td>
                      <asp:ImageButton ID="ibtnFiltro1" runat="server" ImageAlign="Top" ImageUrl="~/images/searchicon.png" OnClick="ibtnFiltro1_Click" Width="30px" />
                      <asp:Label ID="lblIdPeriodo" runat="server" Visible="False"></asp:Label>
                      <br />
                      <br />
                  </td>
                  <td>
                      &nbsp;</td>
                   <td>&nbsp;</td>
              </tr>
          </table> 

      </asp:Panel>
      <asp:Panel ID="payuda" runat="server" Visible="False">
          &nbsp;&nbsp;&nbsp;idZona:<asp:Label ID="lblidZonaSelec" runat="server"></asp:Label>
          &nbsp;&nbsp; nivel :<asp:Label ID="lblidcargo" runat="server"></asp:Label>
          &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
          &nbsp; idproducto guiatencion:<asp:Label ID="lblidproductoGuias" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblopDistribucion" runat="server"></asp:Label>
      </asp:Panel>

    <asp:Panel ID="pReposicion" runat="server">
        <asp:ImageButton ID="ibtn_exportar" runat="server" ImageUrl="~/images/excel.png" OnClick="ibtn_exportar_Click" Width="30px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbtnDetalles" runat="server" OnClick="lbtnDetalles_Click">Ver más detalles</asp:LinkButton>
        <asp:GridView ID="gvreposicion" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourcereposicion" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvreposicion_RowDataBound" Width="600px">
            <Columns>
                <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" />
                <asp:BoundField DataField="PROYECTADO" HeaderText="PROYECTADO" ReadOnly="True" SortExpression="PROYECTADO" >
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="CANTATENDIDA" ReadOnly="True" SortExpression="CANTATENDIDA" Visible="False" />
                <asp:BoundField DataField="PORATENDER" HeaderText="POR ATENDER" ReadOnly="True" SortExpression="PORATENDER">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="REPOSICION" HeaderText="REPOSICION" ReadOnly="True" SortExpression="REPOSICION">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                No registra proyectado trimestral grupal...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#F0F0F0" Font-Bold="True" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcereposicion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_trimestralZonal_ALM" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblopDistribucion" Name="op" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>


      <asp:Panel ID="pProductos2" runat="server">
          <div class="panel panel-default">
  <div class="panel-body">
   
  

            <asp:Panel ID="pProductos2Sub" runat="server" BackColor="#F8F8F8">
              
                              <table class="auto-style2">
                                  <tr>
                                      <td class="auto-style3"></td>
                                      <td class="auto-style3"></td>
                                      <td class="auto-style3"></td>
                                      <td class="auto-style3"></td>
                                      <td class="auto-style3"></td>
                                      <td class="auto-style3"></td>
                                      <td class="auto-style3"></td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:Label ID="lblCodDetalleSelec" runat="server" Font-Bold="True"></asp:Label>
                                          <br />
                                          COD REG.:</td>
                                      <td>
                                          <asp:Label ID="lblguiaPresentacion" runat="server" Font-Bold="True"></asp:Label>
                                          <br />
                                          PRODUCTO:</td>
                                      <td>
                                          <asp:Label ID="lblGuiaCantidad" runat="server" Font-Bold="True"></asp:Label>
                                          &nbsp;Und.<br />
                                          PROYECTADO:</td>
                                      <td>
                                          <asp:TextBox ID="txtGuiaCantidadAtendida" runat="server" TextMode="Number" Width="100px"></asp:TextBox>
                                          <br />
                                          CANT. ATENDIDA:</td>
                                      <td>
                                          <asp:Button ID="lblRegistrarguia" CssClass="btn btn-success" runat="server" Text="REGISTRAR" OnClick="lblRegistrarguia_Click" Width="100%" />
                                      </td>
                                      <td>
                                          <asp:Button ID="btnCancelar" runat="server" ForeColor="#CC0000" Text="CANCELAR" OnClick="btnCancelar_Click" Width="100%" />
                                      </td>
                                      <td>&nbsp;</td>
                                  </tr>
                              </table>
              
                              <strong>Productos atendidos:</strong>
                   <div class="row">
    
                <div class="col-md-6">
                <asp:GridView ID="gvGuiaAten" runat="server" AutoGenerateColumns="False" Class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataSourceID="SqlDataSourceSUBATENPRODUCTO" Font-Size="X-Small" PageSize="30" Width="500px" OnSelectedIndexChanged="gvGuiaAten_SelectedIndexChanged">
                                  <Columns>
                                      <asp:BoundField DataField="IDPRODUCTO" HeaderText="IDPRODUCTO" SortExpression="IDPRODUCTO">
                                      </asp:BoundField>
                                      <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" />
                                      <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                                      <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" />
                                  </Columns>
                                  <EmptyDataTemplate>
                                      No registra atención...
                                  </EmptyDataTemplate>
                                  <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
                              </asp:GridView>
                    
                              <asp:SqlDataSource ID="SqlDataSourceSUBATENPRODUCTO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupal_guias" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="mes" PropertyName="Text" Type="Int32" />
                                      <asp:ControlParameter ControlID="lblidproductoGuias" Name="idproducto" PropertyName="Text" Type="String" />
                                       <asp:ControlParameter ControlID="lblidZonaSelec" Name="idzona" PropertyName="Text" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                </div>
                        <div class="col-md-6">
                            <asp:GridView ID="gvguisproductos" runat="server" CssClass ="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource6" Width="100%" AllowPaging="True" Font-Size="X-Small" OnSelectedIndexChanged="gvguisproductos_SelectedIndexChanged" PageSize="20">
             <Columns>
                 <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                 <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                 <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" />
                 <asp:BoundField DataField="fechaemision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="fechaemision">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                 <asp:BoundField DataField="Idproducto" HeaderText="Idproducto" SortExpression="Idproducto" Visible="False" />
                 <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" Visible="False" />
                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                 <asp:BoundField DataField="cantidad" HeaderText="CANT." SortExpression="cantidad" />
                 <asp:BoundField DataField="idVendedor" HeaderText="ASESOR" SortExpression="idVendedor" />
                 <asp:BoundField DataField="IDZONA" HeaderText="ZONA" SortExpression="IDZONA" Visible="False" />
             </Columns>
             <EmptyDataTemplate>
                 No registra productos atendidos....
             </EmptyDataTemplate>
             <HeaderStyle BackColor="#EEEEEE" />
         </asp:GridView>
                        </div>

                       </div>



                          </asp:Panel>
           <div class="row">
    
                <div class="col-md-6">
             PRODUCTOS POR ATENDER
         
            <asp:Label ID="lblproductoGuias" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblanoGuia" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="lblmesGuia" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblidproyectado" runat="server"></asp:Label>
            <asp:GridView ID="gvProductosAtender" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,idproducto,CANT,PRODUCTO,PERIODO,PRESENT,idproyectado" DataSourceID="SqlDataSourceaprobado0" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvProductosAtender_SelectedIndexChanged" Width="100%" PageSize="30">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:TemplateField HeaderText="COD" ShowHeader="False">
                      <ItemTemplate>
                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="<%# Bind('iddetalleProyectado') %>"></asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" Visible="False" />
                  <asp:BoundField DataField="idproyectado" HeaderText="idproyectado" ReadOnly="True" SortExpression="idproyectado" Visible="False" />
                  <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                  <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                  <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                  <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" >
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CANT" HeaderText="CANTIDAD" SortExpression="CANT">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CANTATENDIDA" HeaderText="CANTIDAD ATENDIDA" SortExpression="CANTATENDIDA">
                  <HeaderStyle Width="110px" />
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                  <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fechareg" SortExpression="fechareg" Visible="False">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
              </Columns>
              <EditRowStyle BackColor="#7C6F57" />
              <EmptyDataTemplate>
                  No registran royectados aprobado...
              </EmptyDataTemplate>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="White" Font-Size="Small" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F4F2F0" />
              <SelectedRowStyle Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F8FAFA" />
              <SortedAscendingHeaderStyle BackColor="#246B61" />
              <SortedDescendingCellStyle BackColor="#D4DFE1" />
              <SortedDescendingHeaderStyle BackColor="#15524A" />
          </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSourceaprobado0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupalRegistrado_xatender" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="ddlMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidzona" Name="idAsesor" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

 </div>
                <div class="col-md-6">
                    PRODUCTOS ATENDIDOS
                    <asp:GridView ID="gvProductosAtendidos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,idproducto,CANT,PRODUCTO,PERIODO,PRESENT,idproyectado" DataSourceID="SqlDataSourceaprobado1" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvProductosAtendidos_SelectedIndexChanged" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Select" Text="<%# Bind('iddetalleProyectado') %>"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" Visible="False" />
                            <asp:BoundField DataField="idproyectado" HeaderText="idproyectado" ReadOnly="True" SortExpression="idproyectado" Visible="False" />
                            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CANT" HeaderText="CANTIDAD" SortExpression="CANT">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CANTATENDIDA" HeaderText="CANTIDAD ATENDIDA" SortExpression="CANTATENDIDA">
                            <HeaderStyle Width="110px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="fechareg" SortExpression="fechareg" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <EmptyDataTemplate>
                            No registran royectados aprobado...
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#429742" Font-Bold="True" ForeColor="White" Font-Size="Small" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F4F2F0" />
                        <SelectedRowStyle Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceaprobado1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupalRegistrado_atendidos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidzona" Name="idAsesor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
               </div>
        </div>
      </div>
</div>
      </asp:Panel>


      <asp:Panel ID="pProductos" runat="server">
          <div class="panel panel-default">
  <div class="panel-body">
   

          <asp:Panel ID="pagregar" runat="server" Visible="False">
              <div class="alert alert-success">
          <table class="auto-style1">
              <tr>
                  <td>
                      <asp:DropDownList ID="ddlProducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="producto" DataValueField="producto" Width="250px" OnSelectedIndexChanged="ddlProducto_SelectedIndexChanged">
                      </asp:DropDownList>
                      <br />
                      Producto:<asp:Label ID="lblproductodescrip" runat="server" Visible="False"></asp:Label>
                  </td>
                  <td>
                      <asp:RadioButtonList ID="rbPresentacion" runat="server" DataSourceID="SqlDataSource2" DataTextField="presentacion" DataValueField="idProducto" RepeatDirection="Horizontal" Width="250px">
                      </asp:RadioButtonList>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblproductodescrip" Name="pro" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      Presentación:<asp:Label ID="lblidProducto" runat="server"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" Width="100px"></asp:TextBox>
                      <br />
                      Cantidad;</td>
                  <td>
                      <asp:ImageButton ID="ibtnRegistrar" runat="server" ImageUrl="~/images/agre.png" OnClick="ibtnRegistrar_Click" Width="30px" />
                      <asp:ImageButton ID="ibtnModificar" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtnModificar_Click" Width="30px" />
                  </td>
                  <td>
                      <asp:ImageButton ID="ibtneliminar" runat="server" ImageUrl="~/images/eliminarr.png" OnClick="ibtneliminar_Click" OnClientClick="return confirm('ELIMINAR PRODUCTO, desea elimiar producto?');" Width="30px" />
                  </td>
                  <td>
                      <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="CANCELAR" />
                  </td>
              </tr>
          </table>
                  </div>
      </asp:Panel>
          PROYECTADO REGISTRADO:
          <asp:Label ID="lblzonatitulo" runat="server" Text="ZONA ICA"></asp:Label>
          &nbsp;
          <asp:Label ID="idDetalleGrupo" runat="server" Visible="False"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:LinkButton ID="lbtnAgregarProyectado" runat="server" OnClick="lbtnAgregarProyectado_Click">AGREGAR PROYECTADO</asp:LinkButton>
          <br />
          <asp:GridView ID="gvaprobado" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetalleProyectado,idproducto,CANT,PRODUCTO" DataSourceID="SqlDataSourceaprobado" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvaprobado_RowDataBound" OnSelectedIndexChanged="gvaprobado_SelectedIndexChanged" PageSize="30" Width="100%">
              <Columns>
                  <asp:TemplateField HeaderText="COD" ShowHeader="False">
                      <ItemTemplate>
                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="<%# Bind('iddetalleProyectado') %>"></asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" Visible="False" />
                  <asp:BoundField DataField="idproyectado" HeaderText="idproyectado" ReadOnly="True" SortExpression="idproyectado" Visible="False" />
                  <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                  <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                  <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                  <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT">
                  <HeaderStyle Width="60px" />
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CANT" HeaderText="CANTIDAD" SortExpression="CANT">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CANTATENDIDA" HeaderText="CANT. ATENDIDA" SortExpression="CANTATENDIDA" Visible="False">
                  <HeaderStyle Width="110px" />
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                  <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fechareg" SortExpression="fechareg">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
              </Columns>
              <EmptyDataTemplate>
                  No registran royectados aprobado...
              </EmptyDataTemplate>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#F2F2F2" Font-Bold="True" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSourceaprobado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupalRegistrado" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                  <asp:ControlParameter ControlID="ddlMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                  <asp:ControlParameter ControlID="lblidzona" Name="idAsesor" PropertyName="Text" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:Label ID="lblCantidadItemREg" runat="server" ForeColor="#006600"></asp:Label>
          &nbsp;</div>
</div>
      </asp:Panel>      
      
      <asp:Panel ID="pgrupozonal" runat="server">
         <div class="panel panel-default">
  <div class="panel-body">
      <div id="myPrintArea">
      RESUMEN:
      <asp:Label ID="lblidano" runat="server"></asp:Label>
      -
      <asp:Label ID="lblIdGrupoTrimestre" runat="server"></asp:Label>
      º TRIMESTRE
         <div class="row">
     <div class="col-md-6">
      <strong>RESUMEN ICA:</strong>
        <asp:GridView ID="gvTrimestralICA" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceTRIMESTRALZONAL" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" Font-Size="Small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDataBound="gvTrimestralICA_RowDataBound" OnSelectedIndexChanged="gvTrimestralICA_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                <asp:BoundField DataField="PRESENT" HeaderText="**" SortExpression="PRESENT" />
                <asp:BoundField DataField="CANT" HeaderText="PROYECT" ReadOnly="True" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="VENTAS" SortExpression="CANTATENDIDA" >
                <HeaderStyle Width="80px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                 <asp:BoundField DataField="DIF" HeaderText="POR ATENDER" SortExpression="DIF" >
                <HeaderStyle Width="80px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PORCENT" HeaderText="E.%" SortExpression="PORCENT" DataFormatString="{0:0,0}" Visible="False" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" ForeColor="#999999" />
                </asp:BoundField>
                 <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" >
                <HeaderStyle Width="80px" ForeColor="Yellow" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" BackColor="#F0F0F0" Font-Bold="True" />
                </asp:BoundField>
                 <asp:BoundField DataField="HISTORIALABASTECIDO" HeaderText="HISTORIAL ABAST." SortExpression="HISTORIALABASTECIDO" >
                <HeaderStyle Width="80px" ForeColor="Yellow" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" BackColor="#F0F0F0" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" BackColor="#EBEBEB" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
         *
         <asp:Label ID="lblnica" runat="server"></asp:Label>
         , item registrados.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Efectividad Total:
         <asp:Label ID="lblefectividadIca" runat="server" >0</asp:Label>  %
         <asp:SqlDataSource ID="SqlDataSourceTRIMESTRALZONAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="2" Name="idzona" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
            
    
    <div class="col-md-6">
     <strong>RESUMEN CHICLAYO: </strong>
       <asp:GridView ID="gvTrimestralChiclayo"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" Font-Size="Small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDataBound="gvTrimestralChiclayo_RowDataBound" OnSelectedIndexChanged="gvTrimestralChiclayo_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
               <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                <asp:BoundField DataField="PRESENT" HeaderText="**" SortExpression="PRESENT" />
                <asp:BoundField DataField="CANT" HeaderText="PROYECT" ReadOnly="True" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="VENTAS" SortExpression="CANTATENDIDA" >
                <HeaderStyle Width="80px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                </asp:BoundField>
                 <asp:BoundField DataField="DIF" HeaderText="POR ATENDER" SortExpression="DIF" >
                <HeaderStyle Width="80px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PORCENT" HeaderText="E.%" SortExpression="PORCENT" DataFormatString="{0:0,0}" Visible="False" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" ForeColor="#999999" />
                </asp:BoundField>
                 <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" >
                <HeaderStyle Width="80px" ForeColor="Yellow" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" BackColor="#F0F0F0" Font-Bold="True" />
                </asp:BoundField>
                 <asp:BoundField DataField="HISTORIALABASTECIDO" HeaderText="HISTORIAL ABAST." SortExpression="HISTORIALABASTECIDO" >
                <HeaderStyle Width="80px" ForeColor="Yellow" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" BackColor="#F0F0F0" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" BackColor="#EBEBEB" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        *
        <asp:Label ID="lblnChilcayo" runat="server"></asp:Label>
        , item registrados.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Efectividad Total:&nbsp; <asp:Label ID="lblefectividadChiclayo" runat="server">0</asp:Label>
        %<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="4" Name="idzona" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
     </div>
              <asp:Panel ID="ppiura" Visible="false" runat="server">
              <div class="col-md-6">
      <strong>RESUMEN PIURA:</strong>
       
        <asp:GridView ID="gvtrimestralPiura"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" Font-Size="Small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDataBound="gvtrimestralPiura_RowDataBound" OnSelectedIndexChanged="gvtrimestralPiura_SelectedIndexChanged">
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
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" BackColor="#EBEBEB" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
                 *
                 <asp:Label ID="lblnpiura" runat="server"></asp:Label>
                 , item registrados.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Efectividad Total:
                 <asp:Label ID="lblefectividadPiura" runat="server">0</asp:Label>
                 %<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idzona" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
            </asp:Panel>
      </div>
          <br />
          *<strong>ALMACEN</strong>= Stock actual&nbsp;&nbsp;&nbsp;&nbsp; /&nbsp;&nbsp;&nbsp; <strong>&nbsp;HIST. ABAST</strong>.= Historial abastecido.
          <br />
          *<strong>Efectividad Total</strong>  = en base al 100% del cumplimiento proyectado - ventas.
      </div> 
      <asp:Panel ID="Panel1" runat="server" Visible="False">
      <hr />
       <div class="row">
     <div class="col-md-12">
         <strong>DETALLE PRODUCTOS ATENDIDOS: </strong> 
         <asp:Label ID="lblidProductoSelect" runat="server" Visible="False"></asp:Label>
         &nbsp;<asp:Label ID="lblProductoSelect" runat="server"></asp:Label>
         &nbsp;-
         <asp:Label ID="lbltituloZona" runat="server"></asp:Label>
         <asp:GridView ID="gvguiastrimestre" runat="server" CssClass ="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource6" Width="100%" GridLines="Horizontal">
             <Columns>
                 <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                 <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                 <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" />
                 <asp:BoundField DataField="fechaemision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="fechaemision">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                 <asp:BoundField DataField="Idproducto" HeaderText="Idproducto" SortExpression="Idproducto" Visible="False" />
                 <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" />
                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                 <asp:BoundField DataField="cantidad" HeaderText="CANT." SortExpression="cantidad" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="idVendedor" HeaderText="ASESOR" SortExpression="idVendedor" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IDZONA" HeaderText="ZONA" SortExpression="IDZONA" Visible="False" />
             </Columns>
             <EmptyDataTemplate>
                 No registra productos atendidos....
             </EmptyDataTemplate>
             <HeaderStyle BackColor="#EEEEEE" />
         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupal_ListadoGuiasTrimestre" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="idtrimestre" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblidProductoSelect" Name="idproducto" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="lblidZonaSelec" Name="idzona" PropertyName="Text" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataSourceID="SqlDataSource7" Font-Size="Medium" PageSize="30" Width="500px" GridLines="Horizontal">
             <Columns>
                 <asp:BoundField DataField="IDPRODUCTO" HeaderText="IDPRODUCTO" SortExpression="IDPRODUCTO" Visible="False" />
                 <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCTO" SortExpression="PRODUCT" />
                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENTACIÓN" SortExpression="PRESENT" />
                 <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
             </Columns>
             <EmptyDataTemplate>
                 No registra productos atendidos...
             </EmptyDataTemplate>
             <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupal_guias" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblIdGrupoTrimestre" Name="mes" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblidProductoSelect" Name="idproducto" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="lblidZonaSelec" Name="idzona" PropertyName="Text" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

         </div>
           </div>
         </asp:Panel>
           
  </div>
</div>
        
          </asp:Panel>
              
      <asp:Panel ID="pBiotech" runat="server">
          &nbsp;</asp:Panel>
</asp:Content>
