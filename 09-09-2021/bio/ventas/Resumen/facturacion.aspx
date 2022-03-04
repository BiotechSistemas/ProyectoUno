<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="facturacion.aspx.cs" Inherits="biotech.bio.ventas.Resumen.facturacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 1000px;
        }
        .auto-style2 {
            height: 15px;
        }
        </style>


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
                        <h2 class="page-header "><i class="glyphicon glyphicon-edit"></i> RESÚMEN FACTURACIÓN</h2>
                            
                           <ol class="breadcrumb">
                              <li class="active">
                                  <asp:LinkButton ID="lbPrincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx" >R.Principal</asp:LinkButton>
                              </li>

                                <li>
                                    <asp:LinkButton ID="lbComparativo" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">R.Comparativo Ventas</asp:LinkButton>
                                </li>
                           <%--   <li>
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
         <table class="auto-style1">
        <tr >
            <td WIDTH=50 valign=center class="auto-style2">
                &nbsp;</td>
            <td WIDTH=330 valign=center class="auto-style2">
                <asp:TextBox ID="txtf1"  runat="server" TextMode="Date" Width="140px" Height="30px" ></asp:TextBox>
            </td>
            <td WIDTH=50 valign=center class="auto-style2">
                <asp:TextBox ID="txtf2"  runat="server" TextMode="Date" Width="140px" Height="30px"></asp:TextBox>
            </td>
            <td WIDTH=200 class="auto-style2">
                <asp:Button ID="btFecha" runat="server" Text="POR FECHA" Height="30px" OnClick="Button1_Click" Width="100%" />
            </td>
            <td WIDTH=50 class="auto-style2">
                <asp:TextBox ID="txtcliente" CssClass="form-control" runat="server" placeholder="cliente ..." ToolTip="Ingresar cliente" Width="200px" ></asp:TextBox>
            </td>
            <td WIDTH=200 class="auto-style2" >
                <asp:Button ID="btCliente" runat="server" Text="POR CLIENTE" Height="30px" Width="100%" OnClick="Button2_Click" />
            </td>
            <td WIDTH=50 class="auto-style2">
                <asp:TextBox ID="txtproducto" CssClass="form-control" runat="server"  placeholder="producto ..."  ToolTip="Ingresar producto" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:Button ID="btProducto" runat="server" Text="POR PRODUCTO" Height="30px" Width="100%" OnClick="Button3_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btactual" runat="server" OnClick="btactual_Click" Text="ACTUALZAR" />
            </td>
        </tr>
    </table>
    </div>

    <div class="row">
        <div class="table-responsive">
            <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <asp:Label ID="lblop" runat="server">20</asp:Label>
                <asp:Label ID="lblcliente" runat="server"></asp:Label>
                <asp:Label ID="lblf1" runat="server"></asp:Label>
                <asp:Label ID="lblf2" runat="server"></asp:Label>
                <asp:Label ID="lblidusuario" runat="server"></asp:Label>
                <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblvalor" runat="server" Visible="False"></asp:Label>
            </asp:Panel>
            <asp:GridView ID="gvFacturacion" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="IDFACT" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="38" Font-Size="X-Small">
        <Columns>
            
            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO" />
             <asp:BoundField DataField="IDFACT" HeaderText="IDFACT" ReadOnly="True" SortExpression="IDFACT" Visible="False" />
            <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
            <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CANTIDAD" HeaderText="CANT" SortExpression="CANTIDAD" >
             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
             </asp:BoundField>
            <asp:BoundField DataField="PVENTA" HeaderText="P.VENTA" SortExpression="PVENTA" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="SUBTT" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Zona" HeaderText="ZONA" SortExpression="Zona" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
        </Columns>
        <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_Fact" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="lblvalor" Name="codvendedor" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblf1" DbType="Date" Name="f1" PropertyName="Text" />
            <asp:ControlParameter ControlID="lblf2" DbType="Date" Name="f2" PropertyName="Text" />
            <asp:ControlParameter ControlID="lblcliente" Name="cliente" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

        </div>
        <p>
        <small>* Para la realización de cualquier filtro es necesario ingresar fecha DESDE y HASTA.</small>
            </p>
    </div>


</asp:Content>
