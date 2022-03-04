<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/logistica.Master" AutoEventWireup="true" CodeBehind="RegLetraBio.aspx.cs" Inherits="biotech.facturacion.RegLetraBio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        }

        .auto-style5 {
            width: 125px;
            text-align: right;
        }

        .auto-style6 {
            height: 30px;
        }

        .auto-style7 {
        }

        .auto-style9 {
            height: 30px;
        }

        .auto-style11 {
            width: 107px;
            text-align: right;
        }

        .auto-style12 {
            width: 247px;
        }

        .auto-style14 {
            height: 30px;
            width: 247px;
        }

        .auto-style16 {
            width: 125px;
            height: 30px;
            text-align: right;
        }

        .auto-style17 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style18 {
            height: 30px;
            width: 159px;
        }

        .auto-style19 {
            width: 159px;
        }
        .auto-style20 {
            height: 30px;
            font-size: large;
        }
        .auto-style21 {
            height: 30px;
            width: 107px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-content">


        <div class="main">
            <div class="widget">
                <div class="title">REGISTRO DE LETRAS:<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                </div>

                <div class="chart">
                    <div align="rigth">




                        <br />
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:Panel ID="Panel5" runat="server">
                                <span>FACTURAS PENDIENTES A LETRA:<br />
                                    <br />
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Style="font-size: medium" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="COD" SortExpression="idfacturacion">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idfacturacion") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <span>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                        &nbsp;&nbsp; </span>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idfacturacion") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="FACTURA" SortExpression="Column1">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Column1") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Column1") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Font-Bold="True" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="fechareg" HeaderText="F.EMISION" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="fechaven" HeaderText="F.VENCTO" SortExpression="fechaven" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="codvendedor" HeaderText="VEND" SortExpression="codvendedor"></asp:BoundField>
                                            <asp:BoundField DataField="Column2" HeaderText="CLIENTE" ReadOnly="True" SortExpression="Column2">
                                                <ItemStyle Font-Size="Small" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idcondpago" HeaderText="COND" SortExpression="idcondpago"></asp:BoundField>
                                            <asp:BoundField DataField="idletra" HeaderText="LETRA" SortExpression="idletra" Visible="False" />
                                            <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias"></asp:BoundField>
                                            <asp:BoundField DataField="importebruto" HeaderText="IMP BASE" SortExpression="importebruto" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="tpimporteretenido" HeaderText="TIPO" SortExpression="tpimporteretenido" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="importeNeto" HeaderText="IMP NETO" SortExpression="importeNeto">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="montoretenido" HeaderText="RETENIDO" SortExpression="montoretenido">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="montodisponible" HeaderText="DISPONIBLE" SortExpression="montodisponible">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="tpmoneda" HeaderText="M" SortExpression="tpmoneda" />
                                        </Columns>
                                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idfacturacion], [serie]+'-'+ [numero], [fechareg],fechaven, [codvendedor], CONCAT(idcliente,'-',[razonsocial]), [idcondpago], idletra,[dias],importebruto,tpimporteretenido,importeNeto,montoretenido,montodisponible,tpmoneda FROM [Facturacion] WHERE idletra = '0' and ([idcondpago] = @idcondpago) and tipoVenta &lt;&gt; 'ANULL' ORDER BY [idfacturacion] DESC">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="LETRA" Name="idcondpago" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="ANEXAR FACTURAS" Width="300px" />
                                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblmensa" runat="server" style="color: #FF0000"></asp:Label>
                                </span>
                            </asp:Panel>
                            <br />
                            <asp:Panel ID="Panel6" runat="server">
                                <br />
                                <table align="left" class="auto-style1">
                                    <tr>
                                        <td class="auto-style20" colspan="4"><strong>REGISTRO DE LETRA:</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><strong>COD:</strong><asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="txtgrupo" runat="server" Width="60px"></asp:TextBox>
                                            &nbsp;-
                                            <asp:TextBox ID="txtletra" runat="server" Width="70px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style11"><strong>F.EMISIÓN:</strong></td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="txtfecharegistro" runat="server" Width="100px"></asp:TextBox>
                                            (dd/mm/aaaa)</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16"><strong>CLIENTE:</strong></td>
                                        <td class="auto-style18">&nbsp;<asp:Label ID="lblruc" runat="server"></asp:Label>
                                            &nbsp; </td>
                                        <td class="auto-style21"><strong>DIAS:</strong></td>
                                        <td class="auto-style14">
                                            <asp:TextBox ID="txtdias" runat="server" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="lblidfact" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style7" colspan="3">&nbsp;<asp:Label ID="lblrazonsocial" runat="server"></asp:Label>
                                            &nbsp;
                                            <asp:TextBox ID="txtmoneda" runat="server" OnTextChanged="txtmoneda_TextChanged" Visible="False" Width="30px"></asp:TextBox>
                                            <asp:TextBox ID="txtcodcliente" runat="server" Visible="False" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16"><strong>FACTURAS:</strong></td>
                                        <td class="auto-style18">
                                            <asp:Label ID="lblfaccc" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtcadenaidfactura" runat="server" Visible="False" Width="150px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style21"><strong>IMPORTE TT:</strong></td>
                                        <td class="auto-style14">
                                            <asp:Label ID="lbldescripmoneda" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtimportett" runat="server" Style="background-color: #FFFFCC" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">GLOSA<strong>:</strong>&nbsp;</td>
                                        <td class="auto-style9" colspan="3">&nbsp;<asp:Label ID="lblglosafact" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16"><strong>OBSERVACION:</strong></td>
                                        <td class="auto-style9" colspan="3">
                                            <asp:TextBox ID="txtobservacion" runat="server" TextMode="MultiLine" Width="100%" style="background-color: #FFFFCC"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="4">
                                            <asp:Button ID="Button4" runat="server" Height="40px" OnClick="Button4_Click" Text="REGISTRAR LETRA" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="3">&nbsp;</td>
                                        <td class="auto-style14">
                                            <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br /> <br /> <br /> <br /> <br /> <br />
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel3" runat="server">
                            <hr />
                            <span class="auto-style17">
                            LETRA GENERADAS:</span><br />
                            <br />
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="100%">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="idletra" HeaderText="COD" ReadOnly="True" SortExpression="idletra" />
                                    <asp:BoundField DataField="grupo" HeaderText="GRUPO" SortExpression="grupo"></asp:BoundField>
                                    <asp:BoundField DataField="letra" HeaderText="LETRA" SortExpression="letra" />
                                    <asp:BoundField DataField="fechaVencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechaVencimiento" />
                                    <asp:BoundField DataField="fecha" HeaderText="F.EMISION" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="idcliente" HeaderText="ID" SortExpression="idcliente"></asp:BoundField>
                                    <asp:BoundField DataField="razon" HeaderText="CLIENTE" SortExpression="razon" />
                                    <asp:BoundField DataField="tt" HeaderText="POR COBRAR" SortExpression="tt">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="moneda" HeaderText="M" SortExpression="moneda"></asp:BoundField>
                                    <asp:BoundField DataField="condicion" HeaderText="OBSERVACION" SortExpression="condicion" />
                                </Columns>
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                                <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [tb_LETRACANJE] WHERE [idletra] = @idletra" InsertCommand="INSERT INTO [tb_LETRACANJE] ([idletra], [grupo], [letra], [fecha], [idcliente], [razon], [moneda], [tt], [fechaVencimiento], [condicion]) VALUES (@idletra, @grupo, @letra, @fecha, @idcliente, @razon, @moneda, @tt, @fechaVencimiento, @condicion)" SelectCommand="SELECT [idletra], [grupo], [letra], [fecha], [idcliente], [razon], [moneda], [tt], [fechaVencimiento], [condicion] FROM [tb_LETRACANJE] ORDER BY [idletra] DESC" UpdateCommand="UPDATE [tb_LETRACANJE] SET [grupo] = @grupo, [letra] = @letra, [fecha] = @fecha, [idcliente] = @idcliente, [razon] = @razon, [moneda] = @moneda, [tt] = @tt, [fechaVencimiento] = @fechaVencimiento, [condicion] = @condicion WHERE [idletra] = @idletra">
                                <DeleteParameters>
                                    <asp:Parameter Name="idletra" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="idletra" Type="Int32" />
                                    <asp:Parameter Name="grupo" Type="String" />
                                    <asp:Parameter Name="letra" Type="String" />
                                    <asp:Parameter DbType="Date" Name="fecha" />
                                    <asp:Parameter Name="idcliente" Type="Int32" />
                                    <asp:Parameter Name="razon" Type="String" />
                                    <asp:Parameter Name="moneda" Type="String" />
                                    <asp:Parameter Name="tt" Type="Decimal" />
                                    <asp:Parameter DbType="Date" Name="fechaVencimiento" />
                                    <asp:Parameter Name="condicion" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="grupo" Type="String" />
                                    <asp:Parameter Name="letra" Type="String" />
                                    <asp:Parameter DbType="Date" Name="fecha" />
                                    <asp:Parameter Name="idcliente" Type="Int32" />
                                    <asp:Parameter Name="razon" Type="String" />
                                    <asp:Parameter Name="moneda" Type="String" />
                                    <asp:Parameter Name="tt" Type="Decimal" />
                                    <asp:Parameter DbType="Date" Name="fechaVencimiento" />
                                    <asp:Parameter Name="condicion" Type="String" />
                                    <asp:Parameter Name="idletra" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server">
                            <b>FACTURAS ANEXADAS:&nbsp; </b>
                            <asp:Label ID="lblletraselec" runat="server"></asp:Label>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowDataBound="GridView5_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" SortExpression="FACTURA" ReadOnly="True" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" ReadOnly="True" />
                                    <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PORCOBRAR" HeaderText="PORCOBRAR" SortExpression="PORCOBRAR" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                </Columns>
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_facturasporLETRA" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView4" Name="idletra" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                        </asp:Panel>
                        <br />
                        <br />




                    </div>
                </div>
            </div>

        </div>
    </div>



</asp:Content>
