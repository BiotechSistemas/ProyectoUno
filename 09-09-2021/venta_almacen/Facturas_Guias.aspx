<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="Facturas_Guias.aspx.cs" Inherits="biotech.venta_almacen.Facturas_Guias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    	<div class="main-content">
			
			
			<div class="main">




                <div class="widget">
					<div class="title">Facturas:</div>
                            <div class="chart">
                        <div align ="center">



                            <asp:Panel ID="Panelfacturas" runat="server">
                                <asp:GridView ID="gvfacturas" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" AllowPaging="True" OnSelectedIndexChanged="gvfacturas_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" ShowSelectButton="True">
                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                                        <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                                        <asp:BoundField DataField="factura" HeaderText="FACTURA" SortExpression="factura" />
                                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                        <asp:BoundField DataField="fechafactura" HeaderText="EMISION" SortExpression="fechafactura" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" Visible="False" />
                                        <asp:BoundField DataField="condicion" HeaderText="COND" SortExpression="condicion" Visible="False" />
                                        <asp:BoundField DataField="fechavencimiento" HeaderText="VENCIMIENT" SortExpression="fechavencimiento" DataFormatString="{0:dd/MM/yyyy}" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="observacion" HeaderText="OBSERV" SortExpression="observacion" />
                                        <asp:BoundField DataField="norden" HeaderText="ORDEN" SortExpression="norden" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="subtotal" HeaderText="SUBTT($)" SortExpression="subtotal" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="importarte" HeaderText="TOTAL($)" SortExpression="importarte" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="descripcionmonto" HeaderText="DESCRIP" SortExpression="descripcionmonto" Visible="False" />
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    <SelectedRowStyle BackColor="#CCCCCC" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_factura]  ORDER BY ID DESC"></asp:SqlDataSource>
                                <div class="auto-style1">
                                    <strong>GUIAS ANEXADAS:</strong><br />
                                </div>
                                <asp:GridView ID="gvguiasdefacturas" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource4">
                                    <Columns>
                                        <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                        <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                                        <asp:BoundField DataField="guiarem" HeaderText="GUIAREM" SortExpression="guiarem" />
                                        <asp:BoundField DataField="fechaemision" HeaderText="EMISION" SortExpression="fechaemision" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="motivotraslado" HeaderText="CONDICION" SortExpression="motivotraslado" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IdordenVenta" HeaderText="ORDEN" SortExpression="IdordenVenta" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                        <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                                        <asp:BoundField DataField="idtransporte" HeaderText="TRANSPORTE" SortExpression="idtransporte">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_guiaRem] WHERE ([idfactura] = @idfactura)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="gvfacturas" Name="idfactura" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                            </asp:Panel>
                            <br />



                            </div></div>

				</div>















				<div class="widget">
					<div class="title">Guias de Remisión:
                        <asp:Label ID="lblestadoguia" runat="server" Text="Emitidas"></asp:Label>
                    </div>
                    <div class="chart">
                        <div align ="center">

                           <div id="contenedor" >
                              


                                <asp:Label ID="lblestado" runat="server" Text="1" Visible="False"></asp:Label>
                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames ="idguia" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" AllowPaging="True">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" >
                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="idguia" HeaderText="idguia" SortExpression="idguia" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="guiarem" HeaderText="NºGUIA" SortExpression="guiarem" Visible="False" />
                                        <asp:BoundField DataField="fechaemision" HeaderText="FECHA" SortExpression="fechaemision" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="motivotraslado" HeaderText="MOTIVO" SortExpression="motivotraslado" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IdordenVenta" HeaderText="NºORDEN" SortExpression="IdordenVenta" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                        <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                                        <asp:BoundField DataField="clienteid" HeaderText="clienteid" SortExpression="clienteid" Visible="False" />
                                        <asp:BoundField DataField="razonsocial" HeaderText="CLIENTE" SortExpression="razonsocial" />
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_guiasremXestado" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblestado" Name="estadoo" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                


                                   <asp:Label ID="lblventamuestra" runat="server" Visible="False"></asp:Label>
                                


                               

                                   <asp:Panel ID="Panel1" runat="server">
                                       <br />
                                    <asp:Button ID="Button1" runat="server" Text="GENERAR FACTURA" OnClick="Button1_Click" Height="40px" />
                                    <asp:Button ID="Button2" runat="server" Text="FACTURAR GUIA SELECIONADA" OnClick="Button2_Click" Visible="False" Height="40px" />
                                    <asp:Panel ID="Panelguias" runat="server">
                                        <asp:Panel ID="Panel2" runat="server" style="text-align: left">
                                            <hr />
                                            <br />
                                            N° Factura  :
                                            <asp:TextBox ID="txtnfactura" runat="server"></asp:TextBox>
                                            &nbsp;&nbsp; Fecha:
                                            <asp:TextBox ID="txtfechafactura" runat="server"></asp:TextBox>
                                            &nbsp;&nbsp;<br /> Cond. pago:
                                            <asp:TextBox ID="txtcondpago" runat="server"></asp:TextBox>
                                            &nbsp;<br />
                                            <asp:Label ID="lblcodfactura" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblgrupofactura" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblidguia" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblidorden" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lbldias" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblcondicion" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblmensaje" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblsumtt" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lbligvtt" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblsumaimporte" runat="server" Visible="False"></asp:Label>
                                        </asp:Panel>
                                    </asp:Panel>
                                </asp:Panel>

                             
                           </div>

                            <br />



                            </div></div>


				</div>
				
				

                </asp:Content>
