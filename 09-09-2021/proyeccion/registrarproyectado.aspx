<%@ Page Title="" Language="C#" MasterPageFile="~/proyeccion/PMproyeccion.Master" AutoEventWireup="true" CodeBehind="registrarproyectado.aspx.cs" Inherits="biotech.proyeccion.registrarproyectado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style8 {
            width: 85%;
        }
        .auto-style11 {
            width: 87px;
            text-align: right;
        }
        .auto-style13 {
            width: 60%;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 87px;
            text-align: right;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style18 {
            font-size: x-large;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            color: #003300;
            text-decoration: underline;
        }
        .auto-style22 {
            color: #003300;
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style23 {
            width: 87px;
            text-align: right;
            height: 54px;
        }
        .auto-style24 {
            width: 85%;
            height: 54px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table align="center" class="auto-style13">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl="~/images/logobiotech.jpg" style="text-align: center; margin-bottom: 0px;" Width="177px" />
                </td>
                <td style="text-align: center; " ><strong style="text-align: center"><span class="auto-style21"><span class="auto-style18">REG. VENTA A PROYECTAR</span><br /> </span><br />
                    Bienvenido&nbsp; <asp:Label ID="lblvendedor" runat="server"></asp:Label>
                    ,&nbsp;&nbsp; </strong><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Cerrar sesión</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">&nbsp;<br /> <strong><span class="auto-style17">INDICAR MES:&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="27%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes] WHERE ([idmes] &gt;= @idmes - 1)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblmes" Name="idmes" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <asp:Button ID="ButtonReg" runat="server" Font-Bold="True" Font-Size="Medium" Height="40px" OnClick="ButtonReg_Click" style="text-align: center" Text="NUEVO PEDIDO A PROYECTAR" Width="60%" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelRegistro" runat="server" style="text-align: left">
&nbsp;<br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style16">Nº PROYEC:</td>
                <td class="auto-style8">
                    <asp:Label ID="lbloperacion" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">CLIENTE:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlcliente" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="razonsocial" DataValueField="clienteid" Height="40px" Width="100%" OnSelectedIndexChanged="ddlcliente_SelectedIndexChanged1">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cliente" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblvendedor" Name="venddor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblcodcliente" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">PRODUCTO:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlproducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="producto" DataValueField="producto" OnSelectedIndexChanged="ddlproducto_SelectedIndexChanged" Width="60%" Height="40px">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlpresentacion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="presentacion" DataValueField="idProducto" OnSelectedIndexChanged="ddlpresentacion_SelectedIndexChanged" Width="35%" Height="40px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlproducto" Name="pro" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:Label ID="lblcodpro" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">P. LISTA:</td>
                <td class="auto-style8">
                    <asp:Label ID="lblplista" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    U$$&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; P. VENTA (50%):
                    <asp:Label ID="lblprecioventa" runat="server" style="font-size: x-large; font-weight: 700" ></asp:Label>
                    U$$</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">Cantidad:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtcantidad" runat="server" BackColor="#FFFFCC" Font-Size="Medium" Height="40px"></asp:TextBox>
                    <asp:Label ID="lblcontador" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="lblmensaje" runat="server" style="text-align: right; color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" Text="FINALIZAR PEDIDO" OnClick="Button1_Click" Height="40px" Width="122px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="REGISTRAR PEDIDO" Width="100%" Height="40px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />


    <CENTER>
    <asp:Panel ID="Panelinforme" runat="server" style="text-align: center">
        <div class="auto-style15">
            <span ><strong style="text-align: center"><span class="auto-style22">DETALLE DE PEDIDOS PROYECTADOS</span> 
            </strong></span><strong>
            <br />
                </div>
        <div class="auto-style20">
            </strong>

            <center>
            <asp:Panel ID="Panel3" runat="server">
                <strong>
                <asp:GridView ID="gvdetallepedido" runat="server" AutoGenerateColumns="False" DataKeyNames="PED PROYEC" DataSourceID="SqlDataSource5" OnSelectedIndexChanged="gvdetallepedido_SelectedIndexChanged" Width="60%">
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/cancel.png" ShowSelectButton="True">
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Nº" HeaderText="Nº" InsertVisible="False" ReadOnly="True" SortExpression="Nº" />
                        <asp:BoundField DataField="PED PROYEC" HeaderText="OPR" ReadOnly="True" SortExpression="PED PROYEC" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                        <asp:BoundField DataField="CODCLIENTE" HeaderText="CODCLIENTE" SortExpression="CODCLIENTE" Visible="False" />
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                        <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                        <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="%" HeaderText="%" SortExpression="%">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </strong>
            </asp:Panel>
                </center>
        </div>
       

            <asp:Panel ID="Paneleliminar" runat="server" style="text-align: center" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="Eliminar pedido N° "></asp:Label>
                <asp:Label ID="lblcodproyeccion" runat="server"></asp:Label>
                &nbsp;,
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Eliminar</asp:LinkButton>
            </asp:Panel>
            <br />
        <center>
            <asp:Panel ID="Panel5" runat="server">
                <asp:GridView ID="gvdetallepedidos" runat="server" AutoGenerateColumns="False" DataKeyNames="PED PROYEC" DataSourceID="SqlDataSource7" Width="60%">
                    <Columns>
                        <asp:BoundField DataField="Nº" HeaderText="Nº" InsertVisible="False" ReadOnly="True" SortExpression="Nº" />
                        <asp:BoundField DataField="PED PROYEC" HeaderText="OPER" ReadOnly="True" SortExpression="PED PROYEC" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                        <asp:BoundField DataField="CODCLIENTE" HeaderText="CODCLIENTE" SortExpression="CODCLIENTE" />
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                        <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                        <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV" />
                        <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" />
                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" />
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" />
                    </Columns>
                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
        </asp:Panel>
            </center>
            <br />
        <center>
            <asp:Panel ID="Panel2" runat="server">
                IMPORTE DE VENTAS SEGUN CLIENTE<br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                        <asp:BoundField DataField="RAZON SOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZON SOCIAL" />
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectadogrupo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <strong>IMPORTE ACUMULADO:&nbsp; $&nbsp; </strong>
                <asp:Label ID="lblimportett" runat="server" style="text-align: center; font-size: x-large;"></asp:Label>
            </asp:Panel>
            </center>
            <br />
            <br />
       
        
    </asp:Panel>

        <br />
        <asp:Panel ID="Panel4" runat="server">
        </asp:Panel>

    </CENTER>
        </asp:Content>
