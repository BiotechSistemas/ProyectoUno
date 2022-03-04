<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra/zonajefatura.Master"  AutoEventWireup="true" CodeBehind="autorizacionventa.aspx.cs" Inherits="biotech.jefatura.autorizacionventa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style type="text/css">

        #contenedor {
            padding:10px;
            overflow:hidden;

        }
        #medio {
            float:initial;
            padding:10px;
            margin:10px;
        }
        #izquierda {
           
             float:right;
            padding:10px;
            margin:10px;
        }
        #derecha {
                   
            float:left;
            padding:10px;
            margin:10px;
        }
    </style>
    <H2>
        ORDENES POR APROBAR</H2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idcotizacion" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="172px" Width="70%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                <ControlStyle Height="30px" Width="30px" />
                </asp:CommandField>
                <asp:BoundField DataField="idcotizacion" HeaderText="COD" ReadOnly="True" SortExpression="idcotizacion" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="idvendedor" HeaderText="VEND" SortExpression="idvendedor" />
                <asp:BoundField DataField="idcliente" HeaderText="CLIENTE" SortExpression="idcliente" />
                <asp:BoundField DataField="autorizacion" HeaderText="autorizacion" SortExpression="autorizacion" Visible="False" />
                <asp:BoundField DataField="Condiconpago" HeaderText="CONDPAG" SortExpression="Condiconpago" />
                <asp:BoundField DataField="FechaEntrega" HeaderText="FechaEntrega" SortExpression="FechaEntrega" Visible="False" />
                <asp:BoundField DataField="Lugarentrega" HeaderText="Lugarentrega" SortExpression="Lugarentrega" Visible="False" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" Visible="False" />
                <asp:BoundField DataField="recepcion" HeaderText="recepcion" SortExpression="recepcion" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ordenesSinAprobacion" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
        
     <div id="contenedor">
          <div id="derecha">

                 PEDIDOS APROBADOS<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetallecotizacion" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                     <Columns>
                         <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/cancel.png" ShowSelectButton="True">
                         <ControlStyle Height="30px" Width="30px" />
                         </asp:CommandField>
                         <asp:BoundField DataField="iddetallecotizacion" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" />
                         <asp:BoundField DataField="idOrdenVenta" HeaderText="idOrdenVenta" SortExpression="idOrdenVenta" Visible="False" />
                         <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                         <asp:BoundField DataField="despro" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="despro" />
                         <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" />
                         <asp:BoundField DataField="pv" HeaderText="pv" SortExpression="pv" />
                         <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                         <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" Visible="False" />
                         <asp:BoundField DataField="desct" HeaderText="desct" SortExpression="desct" />
                         <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False" />
                     </Columns>
                     <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                     <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                     <SelectedRowStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F7F7F7" />
                     <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                     <SortedDescendingCellStyle BackColor="#E5E5E5" />
                     <SortedDescendingHeaderStyle BackColor="#242121" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVentaAutorizados" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="GridView1" Name="idorden" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>

                 </div>
             <div id="derecha">




                 PEDIDOS SIN APROBAR: <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetallecotizacion" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/check-24849_640.png" ShowSelectButton="True">
                <ControlStyle Height="30px" Width="30px" />
                </asp:CommandField>
                <asp:BoundField DataField="iddetallecotizacion" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="iddetallecotizacion" />
                <asp:BoundField DataField="idOrdenVenta" HeaderText="ORDEN" SortExpression="idOrdenVenta" Visible="False" />
                <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="despro" HeaderText="despro" ReadOnly="True" SortExpression="despro" />
                <asp:BoundField DataField="pl" HeaderText="pl" SortExpression="pl" />
                <asp:BoundField DataField="pv" HeaderText="pv" SortExpression="pv" />
                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" Visible="False" />
                <asp:BoundField DataField="desct" HeaderText="desct" SortExpression="desct" />
                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_detalleordenVentaXAutorizar" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idorden" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>




                 </div>
         </div>
     <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    </p>
    </asp:Content>
