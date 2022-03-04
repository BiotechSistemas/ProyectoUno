<%@ Page Title="" Language="C#" MasterPageFile="~/jefatura/clientes.Master" AutoEventWireup="true" CodeBehind="RegistroTrabajadores.aspx.cs" Inherits="biotech.jefatura.RegistroTrabajadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 500px;
           
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-weight: 700;
            color: #FFFFFF;
            background-color: #98B65C;
        }
        .auto-style6 {
            font-weight: 700;
            color: #FFFFFF;
            height: 1px;
            background-color: #98B65C;
        }
        .auto-style7 {
            width: 128px;
        }
        .auto-style8 {
            height: 45px;
        }
        .auto-style9 {
            width: 128px;
            height: 45px;
        }
        .auto-style10 {
            font-weight: 700;
            color: #FFFFFF;
            background-color: #98B65C;
            height: 31px;
        }
        .auto-style11 {
            height: 31px;
        }
        .auto-style12 {
            width: 128px;
            height: 31px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: center;
            color: #FFFFFF;
            background-color: #98B65C;
        }
        .auto-style19 {
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        &nbsp;<asp:Panel ID="Panel1" runat="server">
        <table align="center"  class="auto-style3" >
            <tr>
                <td class="auto-style17" colspan="4"><h3><strong>FICHA DEL TRABAJADOR</strong></h3></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">DATOS PERSONALES</td>
                <td>&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtcodigo" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="4"></td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="txtapellido" runat="server" ToolTip="Apellidos" Width="100%"></asp:TextBox>
                    <br />
                    Apellidos <span class="auto-style19">*</span><br /> </td>
                <td class="auto-style8">
                    <br />
                    </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Width="100%" required></asp:TextBox>
                    <br />
                    Fecha Nacimiento <span class="auto-style19">*</span></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtnombre" runat="server" OnTextChanged="TextBox2_TextChanged" ToolTip="Nombres" Width="100%"></asp:TextBox>
                    <br />
                    Nombres <span class="auto-style19">*</span></td>
                <td>&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtdni" runat="server" ToolTip="DNI"></asp:TextBox>
                    <br />
                    DNI <span class="auto-style19">*</span></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
                    <br />
                    Telefono Domicilio</td>
                <td>
                    <asp:TextBox ID="txtcelular" runat="server"></asp:TextBox>
                    <br />
                    N° Celular <span class="auto-style19">*</span></td>
                <td colspan="2">
                    <asp:TextBox ID="txtemail" runat="server" Width="100%" TextMode="Email"></asp:TextBox>
                    <br />
                    Correo Electrónico </td>
            </tr>
            <tr>
                <td class="auto-style8">Lugar de Nacimiento:<br /> </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtdepartamento" runat="server"></asp:TextBox>
                    <br />
                    Departamento</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtprovincia" runat="server"></asp:TextBox>
                    <br />
                    Provincia</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtdistrito" runat="server"></asp:TextBox>
                    <br />
                    Distrito</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td>Dirección: <span class="auto-style19">*</span></td>
                <td colspan="3">
                    <asp:TextBox ID="txtdireccion" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Referencia:</td>
                <td colspan="3">
                    <asp:TextBox ID="txtreferencia" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td CLASS="auto-style10" colspan="2">ESTADO CIVIL Y/O CONYUGAL</td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="4"></td>
            </tr>
            <tr>
                <td>Estado Civil</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlEstadoCivil" runat="server" Width="100%">
                        <asp:ListItem Value="SO">SOLTERO(A)</asp:ListItem>
                        <asp:ListItem Value="CA">CASADO(A)</asp:ListItem>
                        <asp:ListItem Value="VI">VIUDO(A)</asp:ListItem>
                        <asp:ListItem Value="DI">DIVORCIADO(A)</asp:ListItem>
                        <asp:ListItem Value="CON">CONVIVIENTE(A)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td>Con hijos: <span class="auto-style19">*</span></td>
                <td>
                    <asp:RadioButtonList ID="rbCondHijos" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rbCondHijos_SelectedIndexChanged">
                        <asp:ListItem>SI</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:TextBox ID="txtcanthijos" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="4"></td>
            </tr>
            <tr>
                <td>Régimen pensionario:<span class="auto-style19">*</span></td>
                <td class="auto-style13" colspan="3">
                    <asp:RadioButtonList ID="RbCondRegimen" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="SI">ONP</asp:ListItem>
                        <asp:ListItem Value="NO">AFP</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td >AFP: <span class="auto-style19">*</span></td>
                <td class="auto-style15" colspan="3">
                    <asp:RadioButtonList ID="rbCondAFP" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource3" DataTextField="Descripcion" DataValueField="idRemuneraciones">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaRemuneraciones] WHERE ([idRemuneraciones] &lt; @idRemuneraciones)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="50" Name="idRemuneraciones" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Sustento:</td>
                <td>
                    <asp:TextBox ID="txtcarne" runat="server" Style="text-transform: uppercase" placeholder="Nº carnet" ></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtfechaafiliacion" runat="server" placeholder="Afiliaciòn" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtdocumentoafiliacion" runat="server" Style="text-transform: uppercase" placeholder="Documento"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Essalud:</td>
                <td style="text-align: left">
                    <asp:RadioButtonList ID="rbEssalud" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">SI</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="text-align: right">SCTR:</td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="rbsctr" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>SI</asp:ListItem>
                        <asp:ListItem Selected="True">NO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Fecha de Ingreso: <span class="auto-style19">*</span></td>
                <td>
                    <asp:TextBox ID="txtfechaIngreso" runat="server" TextMode="Date" required></asp:TextBox>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Cargo Actual:<span class="auto-style19">*</span></td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="idCargo" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaTrabCargos]"></asp:SqlDataSource>
                </td>
                <td class="auto-style7">
                    <asp:TextBox placeholder="Detalle cargo"  ID="txtDescripcargo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Numero de Cuenta:</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlBanco" runat="server" Width="100%" DataSourceID="SqlDataSource4" DataTextField="banco" DataValueField="banco">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [BancoCuentas]"></asp:SqlDataSource>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtNumCuenta" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nuevo" Width="100%" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Modificar" Width="100%" Enabled="False" />
                </td>
                <td>
                    <asp:Button ID="Buttonregistrar" runat="server" OnClick="Button3_Click" Text="Guardar" Width="100%" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    </p>
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codTrabajador" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="codTrabajador" HeaderText="codTrabajador" ReadOnly="True" SortExpression="codTrabajador" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
                <asp:BoundField DataField="fInicio" HeaderText="fInicio" SortExpression="fInicio" />
                <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" />
                <asp:BoundField DataField="Hijos" HeaderText="Hijos" SortExpression="Hijos" />
                <asp:BoundField DataField="SueldoBasico" HeaderText="SueldoBasico" SortExpression="SueldoBasico" />
                <asp:BoundField DataField="ONP" HeaderText="ONP" SortExpression="ONP" />
                <asp:BoundField DataField="AFP" HeaderText="AFP" SortExpression="AFP" />
                <asp:BoundField DataField="ncuenta" HeaderText="ncuenta" SortExpression="ncuenta" />
                <asp:BoundField DataField="banco" HeaderText="banco" SortExpression="banco" />
                <asp:BoundField DataField="Sueldoxhora" HeaderText="Sueldoxhora" SortExpression="Sueldoxhora" />
                <asp:BoundField DataField="AportaEssalud" HeaderText="AportaEssalud" SortExpression="AportaEssalud" />
                <asp:BoundField DataField="AportaSCTR" HeaderText="AportaSCTR" SortExpression="AportaSCTR" />
                <asp:BoundField DataField="SueldoTT" HeaderText="SueldoTT" SortExpression="SueldoTT" />
                <asp:BoundField DataField="SueldoxCumplimiento" HeaderText="SueldoxCumplimiento" SortExpression="SueldoxCumplimiento" />
                <asp:BoundField DataField="MetaNutricional" HeaderText="MetaNutricional" SortExpression="MetaNutricional" />
                <asp:BoundField DataField="MetaQuimico" HeaderText="MetaQuimico" SortExpression="MetaQuimico" />
                <asp:BoundField DataField="VentaporNivelar" HeaderText="VentaporNivelar" SortExpression="VentaporNivelar" />
                <asp:BoundField DataField="GRUPO" HeaderText="GRUPO" SortExpression="GRUPO" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                <asp:BoundField DataField="departamento" HeaderText="departamento" SortExpression="departamento" />
                <asp:BoundField DataField="provincia" HeaderText="provincia" SortExpression="provincia" />
                <asp:BoundField DataField="distrito" HeaderText="distrito" SortExpression="distrito" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="referencia" HeaderText="referencia" SortExpression="referencia" />
                <asp:BoundField DataField="estadoCivil" HeaderText="estadoCivil" SortExpression="estadoCivil" />
                <asp:BoundField DataField="sustentoCarnet" HeaderText="sustentoCarnet" SortExpression="sustentoCarnet" />
                <asp:BoundField DataField="sustentoFechaAfiliacion" HeaderText="sustentoFechaAfiliacion" SortExpression="sustentoFechaAfiliacion" />
                <asp:BoundField DataField="SustentoDocAfiliacion" HeaderText="SustentoDocAfiliacion" SortExpression="SustentoDocAfiliacion" />
                <asp:BoundField DataField="DescripCargo" HeaderText="DescripCargo" SortExpression="DescripCargo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaTrabajadores]"></asp:SqlDataSource>
        <br />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
