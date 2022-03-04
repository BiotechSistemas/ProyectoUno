<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RecepcionProducto.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.RecepcionProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i> Ficha de ingreso: Nº FI2018-<asp:Label ID="lblmayorid" runat="server"></asp:Label>
                            <asp:LinkButton ID="lblusuario" runat="server" Visible="False"></asp:LinkButton>
                            <asp:Label ID="lblcodguiarem" runat="server" Visible="False"></asp:Label>
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


    <div class="row">
                    <div class="col-md-6">
    
                                              <div class="form-horizontal" >
                          <div class="form-group">
                            <label for="ejemplo_email_3" class="col-md-2 control-label">Asunto:</label>
                            <div class="col-md-10">
                             
                                <asp:TextBox Class="form-control" placeholder="Motivo de ingreso..." ID="txtasunto" runat="server"></asp:TextBox>
                             
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="ejemplo_password_3" class="col-md-2 control-label">Guia Rem:</label>
                            <div class="col-md-9">
                                <div class="form-group row">
                                    <div class="col-md-10">
                                    <asp:TextBox ID="txtndocumento" runat="server" placeholder="Documento..." ReadOnly="True" Width="100%" Height="30px"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                   <asp:Button ID="Button3" runat="server" class="btn btn-default" OnClick="Button3_Click" Text="Buscar"/>
                                    </div>
                                    </div>
                            </div>

                              <div class="col-md-offset-2 col-md-10">
                                  <asp:ListBox ID="ListBoxGuiarem" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSelecguia" DataTextField="GUIA" Class="form-control" DataValueField="IDGUIA" OnSelectedIndexChanged="ListBoxGuiarem_SelectedIndexChanged" Rows="5" Width="100%"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSourceSelecguia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT distinct g.idguia IDGUIA, CONCAT(g.grupo,'-',g.guiarem) GUIA 
FROM  tb_guiaRemDetalle gd join tb_guiaRem g on g.idguia=gd.idguia WHERE G.motivotraslado in ('TRASL','TCENT','INGRE','RCENT') AND gd.estado is null ORDER BY g.idguia DESC"></asp:SqlDataSource>

                              </div>
                          </div>
              <%--           
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button type="submit" class="btn btn-default">Entrar</button>
                            </div>
                          </div>--%>
                        </div>


                         <table class="nav-justified">
                            <tr>
                                <td class="auto-style1">F. Emisión:</td>
                                <td colspan="2">
                                    <asp:Label ID="lblFechaEmision" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><strong>Proveedor:</strong></td>
                                <td colspan="2">
                                    <asp:Label ID="lblproveedor" runat="server"></asp:Label>
                                    <asp:Label ID="idproveedor" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Alm. Origen:</td>
                                <td><b>Motivo:</b></td>
                                <td><b>Alm. Final:</b></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblidalmacen" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblmotivotraslado" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="AlmDestino" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                  
                                </td>
                                <td>&nbsp;</td>
                                <td>
                            <asp:Label ID="lblcodproducto" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblcantidad" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
          <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    </div>
                    <div class="col-md-6">
                       
                        <asp:GridView ID="GridViewdetguiarem" Class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSourceProc" OnSelectedIndexChanged="GridViewdetguiarem_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                <asp:BoundField DataField="Idproducto" HeaderText="COD" SortExpression="Idproducto" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="cantidad" HeaderText="CANTIDAD" SortExpression="cantidad" />
                                <asp:BoundField DataField="pv" HeaderText="pv" SortExpression="pv" Visible="False" />
                                <asp:BoundField DataField="subtt" HeaderText="subtt" SortExpression="subtt" Visible="False" />
                                <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
                                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                <asp:BoundField DataField="idDetpedido" HeaderText="idDetpedido" SortExpression="idDetpedido" Visible="False" />
                            </Columns>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceProc" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT iddetalleGuia,idguia,g.Idproducto,g.cantidad,pv,subtt,igv,estado,idDetpedido,CONCAT(pro.producto,' ',pro.presentacion) PRODUCTO FROM [tb_guiaRemDetalle] g inner join tb_producto pro on g.Idproducto=pro.idProducto
 WHERE (([idguia] = @idguia) AND ([estado] IS NULL))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblcodguiarem" Name="idguia" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

        </div>

</asp:Content>
