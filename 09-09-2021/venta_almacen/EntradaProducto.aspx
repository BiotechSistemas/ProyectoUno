<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="EntradaProducto.aspx.cs" Inherits="biotech.venta_almacen.EntradaProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style2 {
            width: 16px;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            width: 16px;
            text-align: right;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    	<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">Orden de ingreso:<asp:Label ID="lblcodusuario" runat="server" Text="ACHAC"></asp:Label>
                    </div>
					<div class="chart">
                        <div align="center">

                            <asp:Panel ID="Panel4" runat="server">
                                <asp:Panel ID="Panel5" runat="server">
                                    <table>
                                        <tr>
                                            <td class="auto-style4">N° Orden:</td>
                                            <td class="auto-style5">
                                                <asp:Label ID="lblnorden" runat="server"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblfecha" runat="server"></asp:Label>
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Proveedor:</td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="proveedor0" runat="server" placeholder="N° factura..."></asp:TextBox>
                                            </td>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label2" runat="server" style="color: #FF3300" Text="(*)"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">N° documento:</td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="txtfoliofactura" runat="server"  placeholder="N° documento autorizacion..."></asp:TextBox>
                                            </td>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label3" runat="server" style="color: #FF3300" Text="(*)"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Fecha Doc:</td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="txtfechafactura" runat="server" TextMode="Date"  placeholder="fecha..."></asp:TextBox>
                                            </td>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label4" runat="server" style="color: #FF3300" Text="(*)"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Solicitado por:</td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="txtsolicidatopor" runat="server"  placeholder="Solicitado por..."></asp:TextBox>
                                            </td>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label5" runat="server" style="color: #FF3300" Text="(*)"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Asunto:</td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="txtasunto" runat="server"  placeholder="Asunto de ingre..."></asp:TextBox>
                                            </td>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label6" runat="server" style="color: #FF3300" Text="(*)"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="NUEVO" Width="109px" OnClick="Button1_Click" style="height: 26px" />
                                            </td>
                                            <td class="auto-style6">
                                                <asp:Button ID="Button2" runat="server" Text="REGISTRAR ORDEN INGRESO" OnClick="Button2_Click" />
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:Panel>

                            </div>
                        <br />

                        <div ALIGN=right>

                        <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000;"></asp:Label>
                        </div >
                    </div>
				</div>
				
				<div class="widget">
					<div class="title">Detalle de orden ingresada: Nº <asp:Label ID="lblorden" runat="server"></asp:Label>
                     </div>
					<div class="chart">                     
                        <DIV ALIGN=right> 
                            <asp:Panel ID="Panel6" runat="server">
                                <table  align="center">
                                    <tr>
                                        <td class="auto-style3">Producto:</td>
                                        <td>
                                            <asp:DropDownList ID="ddlproducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="producto" DataValueField="producto" OnSelectedIndexChanged="ddlproducto_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            <asp:DropDownList ID="ddlpresentacion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="presentacion" DataValueField="idProducto" OnSelectedIndexChanged="ddlpresentacion_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlproducto" Name="pro" PropertyName="SelectedValue" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Label ID="lblcodproducto" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style4">(*)</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">Cantidad:</td>
                                        <td>
                                            <asp:TextBox ID="txtcantidad" runat="server"  placeholder="Cantidad..."></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">(*)</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">Precio:</td>
                                        <td>
                                            <asp:TextBox ID="txtprecio" runat="server"  placeholder="0.00"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">igv:</td>
                                        <td>
                                            <asp:TextBox ID="txtigv" runat="server"  placeholder="0.00"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>
                                            <asp:Label ID="lblexonerado" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button3" runat="server" Text="REGISTRAR PRODUCTO" OnClick="Button3_Click1" />
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Label ID="lblaviso" runat="server" style="color: #FF0000"></asp:Label> 
                          </div>
                                
                        <div ALIGN="CENTER">
                        </div>
                       
                       </div>
				</div>

                <asp:Panel ID="Panel3" runat="server">


                    <div class="widget">

                    <div class="title">Detalle de ingreso:</div>
					<div class="chart">  

                        <div >
                            <asp:Panel ID="Panel7" runat="server">
                               
                                    <strong>N°Orden:</strong><asp:Label ID="lblorden2" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp; <strong>Fecha: </strong>
                                        <asp:Label ID="lblfecha2" runat="server"></asp:Label>
                                    
                                    <strong>
                                    <br />
                                    N°Factura:</strong>
                                        <asp:Label ID="lblnumfactura2" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp; -
                                        <asp:Label ID="lblfechafactura2" runat="server"></asp:Label>
                                   <strong>
                                    <br />
                                    Proveedor:<asp:Label ID="lblproveedor2" runat="server"></asp:Label>
                                    <br />
                                    Solicitante: </strong>
                                        <asp:Label ID="lblsolictado2" runat="server"></asp:Label>
                                    
                              
                                    <br />
                                    <strong>Detalle:</strong><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="idEntrada" HeaderText="idEntrada" SortExpression="idEntrada" Visible="False" />
                                        <asp:BoundField DataField="idEntrada1" HeaderText="ORDEN" SortExpression="idEntrada1" />
                                        <asp:BoundField DataField="CodProducto" HeaderText="CodProducto" SortExpression="CodProducto" Visible="False" />
                                        <asp:BoundField DataField="descrippro" HeaderText="PRODUCTO" SortExpression="descrippro" ReadOnly="True" />
                                        <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                        <asp:BoundField DataField="preciocomrpra" HeaderText="PC" SortExpression="preciocomrpra" />
                                        <asp:BoundField DataField="igv" SortExpression="igv" />
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
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoEntradaDetalle" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblorden" Name="param" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
                            <br />
                        </div>


                        <br />

                    </div>
                    </div>


                </asp:Panel>
			</div>
		</div>



</asp:Content>
