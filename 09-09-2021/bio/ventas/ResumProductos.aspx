<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumProductos.aspx.cs" Inherits="biotech.bio.ventas.ResumProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header "><i class="glyphicon glyphicon-edit"></i> HISTORIAL PRODUCTOS - PRECIOS</h2>
                            
                            <ol class="breadcrumb">
                              <li class="active">
                                  <asp:LinkButton ID="lbPrincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx" >R.Principal</asp:LinkButton>
                              </li>

                                <li>
                                    <asp:LinkButton ID="lbComparativo" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">R.Comparativo Ventas</asp:LinkButton>
                                </li>
                             <%-- <li>
                                  <asp:LinkButton ID="lbDetallado" runat="server" PostBackUrl="~/bio/ventas/ResumenGeneral.aspx" >R.General Ventas</asp:LinkButton>      
                              </li>--%>
                              <%--  <li>
                                    <asp:LinkButton ID="lbProyectado" runat="server" PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">R.Proyectado</asp:LinkButton>
                                </li>--%>
                                <li>
                                    <asp:LinkButton ID="lbProducto" runat="server" PostBackUrl="~/bio/ventas/Resumen/facturacion.aspx">R.Facturación</asp:LinkButton>
                                </li>

                                 <li>
                                    <asp:LinkButton ID="lbViaticos" runat="server" PostBackUrl="~/bio/ventas/costos/Viaticos.aspx">R.Viáticos</asp:LinkButton>
                                </li>
                                 <li>
                                    <asp:LinkButton ID="LinkButtonTOP" runat="server" PostBackUrl="~/bio/ventas/Resumen/TopProductos.aspx">Ranking Productos</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbtnHostorialPrecios" runat="server" PostBackUrl="~/bio/ventas/ResumProductos.aspx">Historial Productos-Precios</asp:LinkButton>
                                </li>
                                 <%--<li>--%>
                                    
                                     <asp:LinkButton ID="lbAnalisisB" runat="server" PostBackUrl="~/bio/ventas/ResumAnalisisb.aspx" Visible="False">Presupuesto</asp:LinkButton>
                                <%--</li>--%>
                            </ol> 
    </div>

     </div>
    <div class="row">
        <div class="form-inline">
        <asp:Label ID="lblproducto" runat="server" Visible="False"></asp:Label>
					
        <asp:DropDownList ID="ddlProductos" CssClass="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="producto" DataValueField="producto" Height="30px" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlProductos_SelectedIndexChanged">
        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="POR PRODUCTO" class="btn btn-success" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox1" class="form-control" runat="server" Width="200px" placeholder="Ingresar cliente"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="POR CLIENTE" class="btn btn-success" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" class="btn btn-default" Text="POR PRODUCT.  Y  CLIENTE" OnClick="Button3_Click" />
        </div>
    </div>
    <br />
    <div class="row">
       
        <%--<div class="col-md-3 col-md-6">
            <div class="table-responsive">
            <asp:GridView ID="GridView2" class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                </Columns>
            </asp:GridView>		
							<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="product_ventasEmpresas" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblproducto" Name="PRODUCTO" PropertyName="Text" Type="String" />
                                </SelectParameters>
            </asp:SqlDataSource>
                </div>
		</div>--%>

        <div class=" col-md-8">
            <div class="table-responsive">
            <asp:GridView ID="GridView1" class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PV" HeaderText="P. VENTA" SortExpression="PV" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PORLITRO" HeaderText="PV. LITRO" SortExpression="PORLITRO" ReadOnly="True" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                    </asp:BoundField>
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA REG." SortExpression="FECHAREG" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="product_ventas" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblproducto" Name="PRODUCTO" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lbldato2" Name="cliente" PropertyName="Text" Type="String" />
                                </SelectParameters>
            </asp:SqlDataSource>
                <asp:Label ID="lblop" runat="server" Text="1" Visible="False"></asp:Label>
                <asp:Label ID="lbldato2" runat="server" Visible="False"></asp:Label>
                </div>
		</div>
    </div>

</asp:Content>
