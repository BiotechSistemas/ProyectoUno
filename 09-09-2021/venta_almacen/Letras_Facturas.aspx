<%@ Page Title="" Language="C#" MasterPageFile="~/venta_almacen/VentaAlmacen.Master" AutoEventWireup="true" CodeBehind="Letras_Facturas.aspx.cs" Inherits="biotech.venta_almacen.Letras_Facturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style3 {
        }
        .auto-style4 {
            width: 108px;
            text-align: right;
        }
        .auto-style16 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style19 {
            width: 486px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="main-content">
			
        		
			<div class="main">






                   <asp:Panel ID="Panel1" runat="server">


                    <div class="widget">

                    <div class="title">REGISTRO DE LETRAS BIO:</div>
					<div class="chart">  

                        <div align =" center">
                            <asp:Panel ID="Panel6" runat="server">
                                <asp:GridView ID="gvletra" runat="server" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSource2" AllowPaging="True" style="text-align: center" OnSelectedIndexChanged="gvletra_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="idletra" HeaderText="idletra" ReadOnly="True" SortExpression="idletra" />
                                        <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" />
                                        <asp:BoundField DataField="letra" HeaderText="letra" SortExpression="letra" />
                                        <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" />
                                        <asp:BoundField DataField="razon" HeaderText="razon" SortExpression="razon" />
                                        <asp:BoundField DataField="moneda" HeaderText="moneda" SortExpression="moneda" />
                                        <asp:BoundField DataField="tt" HeaderText="tt" SortExpression="tt" />
                                        <asp:BoundField DataField="escritura" HeaderText="escritura" SortExpression="escritura" />
                                        <asp:BoundField DataField="estadoletra" HeaderText="estadoletra" SortExpression="estadoletra" />
                                        <asp:BoundField DataField="fechaVencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fechaVencimiento" SortExpression="fechaVencimiento" />
                                        <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" />
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_LETRACANJE] ORDER BY IDLETRA DESC"></asp:SqlDataSource>
                                <br />
                                <asp:Panel ID="Panel10" runat="server">
                                    <br />
                                    <table >
                                        <tr>
                                            <td class="auto-style16">LETRA:</td>
                                            <td class="auto-style19">
                                                <asp:Label ID="lblletra2" runat="server"></asp:Label>
                                                <asp:Label ID="lblidletra2" runat="server" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">F. EMISION:</td>
                                            <td class="auto-style19">
                                                <asp:Label ID="lblfechaemi2" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">CLIENTE:</td>
                                            <td class="auto-style19">
                                                <asp:Label ID="lblcliente" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16"></td>
                                            <td class="auto-style19">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td  colspan="2" style="text-align: left">
                                                <asp:Label ID="Label1" runat="server" style="font-weight: 700; text-align: left" Text="Facturas anexadas:"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:GridView ID="gvdetalleletra" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleletra" DataSourceID="SqlDataSource3">
                                        <Columns>
                                            <asp:BoundField DataField="iddetalleletra" HeaderText="iddetalleletra" InsertVisible="False" ReadOnly="True" SortExpression="iddetalleletra" Visible="False" />
                                            <asp:BoundField DataField="idletra" HeaderText="LETRA" SortExpression="idletra" />
                                            <asp:BoundField DataField="idfactura" HeaderText="FACTURA" SortExpression="idfactura" Visible="False" />
                                            <asp:BoundField DataField="factura" HeaderText="factura" SortExpression="factura" />
                                            <asp:BoundField DataField="montofactura" HeaderText="IMPORTE" SortExpression="montofactura" />
                                            <asp:BoundField DataField="montodetraccion" HeaderText="DETRAC" SortExpression="montodetraccion" />
                                            <asp:BoundField DataField="montoretenedor" HeaderText="RETEN" SortExpression="montoretenedor" />
                                            <asp:BoundField DataField="total" HeaderText="TOTAL" SortExpression="total" />
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_letraDetalledescrip" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="gvletra" Name="idletra" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">IMPRIMIR LETRA</asp:LinkButton>
                                    <br />
                                    </asp:Panel>
                                <br />
                                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                            </asp:Panel>
                        </div>


                        <br />

                    </div>
                    </div>


                </asp:Panel>




























				<div class="widget">
					<div class="title">FACTURAS A GENERAR LETRA:</div>
					<div class="chart">
                        <div align ="center">

                            <asp:Panel ID="Panel4" runat="server">
                                <asp:Panel ID="Panel5" runat="server">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnDataBound="GridView1_DataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" >
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                                            <asp:BoundField DataField="factura" HeaderText="FACTURA" SortExpression="factura" />
                                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                                            <asp:BoundField DataField="fechafactura" HeaderText="EMISION" SortExpression="fechafactura" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="dias" HeaderText="dias" SortExpression="dias" Visible="False" />
                                            <asp:BoundField DataField="condicion" HeaderText="condicion" SortExpression="condicion" Visible="False" />
                                            <asp:BoundField DataField="fechavencimiento" HeaderText="F. VENCIMIENTO" SortExpression="fechavencimiento" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="observacion" HeaderText="observacion" SortExpression="observacion" />
                                            <asp:BoundField DataField="norden" HeaderText="norden" SortExpression="norden" />
                                            <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
                                            <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" />
                                            <asp:BoundField DataField="importarte" HeaderText="importarte" SortExpression="importarte" />
                                            <asp:BoundField DataField="descripcionmonto" HeaderText="descripcionmonto" SortExpression="descripcionmonto" Visible="False" />
                                        </Columns>
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <SelectedRowStyle BackColor="#CCCCCC" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_facturasLetra" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <br />
                                    <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="GENERAR LETRA" />
                                    <asp:Label ID="lbldiascondicon" runat="server" Visible="False"></asp:Label>
                                </asp:Panel>
                            </asp:Panel>

                            </div>

                        

                        <asp:Label ID="lblmensaje2" runat="server" style="color: #FF0000; text-align: center;"></asp:Label>
                            <br />
                            <asp:Panel ID="Panel9" runat="server" Visible="False">
                                <asp:Label ID="lblordenventa" runat="server"></asp:Label>
                                <asp:Label ID="lblgrupoletra" runat="server"></asp:Label>
                                <asp:Label ID="lblimporte" runat="server"></asp:Label>
                                <asp:Label ID="lblobservacion" runat="server"></asp:Label>
                                <asp:Label ID="lblcondicion" runat="server"></asp:Label>
                                <asp:Label ID="lblcodfactura" runat="server"></asp:Label>
                            </asp:Panel>
                        
                    </div>
				</div>
			

                <asp:Panel ID="Panel3" runat="server">


                    <div class="widget">

                    <div class="title">GENERAR LETRA:</div>
					<div class="chart">  

                        <div align =" center">
                            <center>
                            <asp:Panel ID="Panel7" runat="server" Width="293px">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style4">LETRA:</td>
                                        <td>
                                            <asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                                            <asp:TextBox ID="txtletra" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">FECHA:</td>
                                        <td>
                                            <asp:TextBox ID="txtfecha" runat="server" OnTextChanged="txtfecha_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">CLIENTE:</td>
                                        <td>
                                            <asp:TextBox ID="txtcliente" runat="server"></asp:TextBox>
                                            <asp:Label ID="lblidcliente" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblretenedor" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td class="auto-style4">MONEDA:</td>
                                        <td>
                                            <asp:TextBox ID="moneda" runat="server">DOLARES AMERICANOS</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">FACTURA:</td>
                                        <td>
                                            <asp:TextBox ID="factura" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">MONTO:</td>
                                        <td>
                                            <asp:TextBox ID="txtmonto" runat="server" Height="22px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">DETRACCION:</td>
                                        <td>
                                            <asp:TextBox ID="txtdetraccion" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">RETENCION:</td>
                                        <td>
                                            <asp:TextBox ID="txtretencion" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">N. MONTO:</td>
                                        <td>
                                            <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3" colspan="2">
                                            <CENTER>
                                            <asp:Button ID="Button1" runat="server" Enabled="False" Height="30px" OnClick="Button1_Click" Text="EMITIR LETRA" Width="70%" />
                                            </CENTER>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" Height="40px" OnClick="Button3_Click1" Text="FINALIZAR LETRA EMITIDA" Width="100%" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                                </center>
                            <asp:Panel ID="Panel8" runat="server">
                            </asp:Panel>
                            <br />
                        </div>


                        <br />

                    </div>
                    </div>


                </asp:Panel>

             
			    <br />
			</div>







		</div>

    







</asp:Content>
