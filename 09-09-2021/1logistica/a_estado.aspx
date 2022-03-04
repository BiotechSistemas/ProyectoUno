<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="a_estado.aspx.cs" Inherits="biotech._1logistica.a_estado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 238px;
        }
        .auto-style2 {
            width: 72px;
        }
        .auto-style3 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <strong>Ordenes Compra / Servicios </strong></p>
    <asp:Panel ID="Panel3" runat="server">
        <h3>Por Aprobar</h3>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="font-size: small" Width="90%">
                <Columns>
                    <asp:CommandField ShowSelectButton="True">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                    <asp:BoundField DataField="ORDEN" HeaderText="ORDEN" ReadOnly="True" SortExpression="ORDEN" />
                    <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHAREG" SortExpression="FECHAREG" />
                    <asp:BoundField DataField="CENTRO" HeaderText="CENTRO" SortExpression="CENTRO" />
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" ReadOnly="True" SortExpression="IGV">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="APROB" SortExpression="ESTADO" Visible="False">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                </Columns>
                <HeaderStyle BackColor="Black" ForeColor="White" />
                <SelectedRowStyle Font-Bold="True" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_OCESTADOxautorizar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </p>
        <asp:Panel ID="Panelpedidosoc1" runat="server">
            &nbsp;<br />
            <p> Detalle Orden de Compra:
            <asp:Label ID="lblcodidd" runat="server" style="font-weight: 700"></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblidoc2" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ver/Exportar</asp:LinkButton>
            </p>
            <p><asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleoc" DataSourceID="SqlDataSource3" Width="80%">
                <Columns>
                    <asp:BoundField DataField="iddetalleoc" HeaderText="iddetalleoc" ReadOnly="True" SortExpression="iddetalleoc" Visible="False" />
                    <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                    <asp:BoundField DataField="unidmed" HeaderText="Und Med" SortExpression="unidmed" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
                    <asp:BoundField DataField="cantidad" HeaderText="Cant" SortExpression="cantidad">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="precio" DataFormatString="{0:0,0.00}" HeaderText="Precio" SortExpression="precio">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="subtotal" DataFormatString="{0:0,0.00}" HeaderText="SubTotal" SortExpression="subtotal">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
                </Columns>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompraDetalle] WHERE ([idoc] = @idoc)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="idoc" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel></p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
    </asp:Panel>
        <CENTER><asp:Panel ID="Panel1" runat="server" style="text-align: left">
            <asp:Panel ID="Panel4" runat="server">
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
            <br />
            <hr />
            <p><h4>OC por registrar Compra:</h4>
                <p>
                </p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align: right" Width="90%">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                            <asp:BoundField DataField="ORDEN" HeaderText="ORDEN" ReadOnly="True" SortExpression="ORDEN" />
                            <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHAREG" SortExpression="FECHAREG" />
                            <asp:BoundField DataField="CENTRO" HeaderText="CENTRO" SortExpression="CENTRO" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL" DataFormatString="{0:0,0.00}" />
                            <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" DataFormatString="{0:0,0.00}" />
                            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" />
                            <asp:CheckBoxField DataField="AUTORIZACION" HeaderText="AUTORIZACION" SortExpression="AUTORIZACION" Visible="False">
                            </asp:CheckBoxField>
                            <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO">
                            <ItemStyle ForeColor="#CCCCCC" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="Black" ForeColor="White" />
                        <SelectedRowStyle Font-Bold="True" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_OCESTADO" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </p>
                <p>
                </p>
                <p>
                </p>
            </p>
            </asp:Panel>
            </p>
        </CENTER>
       
        <asp:Label ID="lblidOC" runat="server" Visible="False"></asp:Label>
       
        <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300"></asp:Label>
       
    <p>
    </p>
    <h2>
         &nbsp;</h2>
    <asp:Panel ID="Panel2" runat="server">
       <p> OC:
        <asp:Label ID="lblordencompra" runat="server" style="font-weight: 700"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver/Imprimir</asp:LinkButton>
        </p>
        <p>
            &nbsp;Titular:<asp:Label ID="lblnomtitular" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Fech Reg:
            <asp:Label ID="lblfechareg" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dias credito:
            <asp:Label ID="lbldias" runat="server"></asp:Label>
            <br />
            Proveedor:
            <asp:Label ID="lblproveedor" runat="server"></asp:Label>
            &nbsp;
            <br />
            Total:
            <asp:Label ID="lbltotal" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adelanto:
            <asp:Label ID="lblmontoadeltano" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; Por pagar:
            <asp:Label ID="lblapagar" runat="server" style="font-weight: 700"></asp:Label>
            <br />
            Moneda:
            <asp:Label ID="lblmoneda" runat="server"></asp:Label>
            <br />
            Cuenta Proveedor:
            <asp:Label ID="lblncuenta" runat="server"></asp:Label>
            , Banco:
            <asp:Label ID="lblbanco" runat="server"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetalleoc" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="90%">
                <Columns>
                    <asp:BoundField DataField="iddetalleoc" HeaderText="iddetalleoc" ReadOnly="True" SortExpression="iddetalleoc" Visible="False" />
                    <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                    <asp:BoundField DataField="unidmed" HeaderText="UND" SortExpression="unidmed" />
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                    <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                    <asp:BoundField DataField="precio" HeaderText="P. UNIT" SortExpression="precio" />
                    <asp:BoundField DataField="subtotal" HeaderText="SUBTT" SortExpression="subtotal" />
                    <asp:BoundField DataField="igv" HeaderText="igv" SortExpression="igv" Visible="False" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OrdenCompraDetalle] WHERE ([idoc] = @idoc)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="idoc" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <div style="width:90%; height: 58px; text-align: right">
            <table align="right" class="auto-style1">
                <tr>
                    <td class="auto-style2">SubTotal:<br /> IGV(18%):<br /> <strong>Total:</strong></td>
                    <td class="auto-style3" style="text-align: right">
                        <asp:Label ID="lblsubtt2" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lbligv2" runat="server" style="color: #FF3300"></asp:Label>
                        <br />
                        <asp:Label ID="lblttpagar2" runat="server" style="font-weight: 700"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <p>
            <br />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <br />
        </p>
        <br />
        <asp:Label ID="lblidctaporpagar" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lbltitular" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblidprovedor" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblasunto" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Panel ID="Panel5" runat="server">
            <br />
            <hr />
            <br />
        </asp:Panel>
    </asp:Panel>
    <p>
        &nbsp;</p>
    <p>
         &nbsp;</p>
</asp:Content>
