<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2/paginapresentable.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="biotech.vendedor.cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        .auto-style12 {
            width: 130px;
            text-align: right;
        }
        .auto-style15 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style17 {
            font-weight: bold;
        }
        .auto-style18 {
            width: 130px;
            text-align: right;
            font-weight: bold;
            height: 22px;
        }
        .auto-style20 {
            width: 130px;
            text-align: right;
            height: 22px;
        }
        .auto-style21 {
            width: 321px;
        }
        .auto-style22 {
            width: 177px;
            text-align: left;
        }
        .auto-style23 {
            width: 177px;
            text-align: left;
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <H2>
        REGISTRO DE CLIENTE</H2>
    <center>
        <asp:Panel ID="Panel2" runat="server" style="text-align: center">
                <asp:GridView ID="gvClientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="clienteid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvClientes_SelectedIndexChanged" PageSize="8" Width="100%" HorizontalAlign="Center">
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="clienteid" HeaderText="Id" ReadOnly="True" SortExpression="clienteid" />
                        <asp:BoundField DataField="razonsocial" HeaderText="Razon Social" SortExpression="razonsocial" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ruc" HeaderText="RUC" SortExpression="ruc" Visible="False" />
                        <asp:BoundField DataField="representante" HeaderText="Representante" SortExpression="representante" Visible="False" />
                        <asp:BoundField DataField="condPago" HeaderText="CondP" SortExpression="condPago" />
                        <asp:BoundField DataField="cantdias" HeaderText="Dias" SortExpression="cantdias" />
                        <asp:BoundField DataField="tpcliente" HeaderText="RTND" SortExpression="tpcliente" Visible="False" />
                        <asp:BoundField DataField="estadocliente" HeaderText="Estado" SortExpression="estadocliente" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:Button ID="Button8" runat="server" CssClass="auto-style17" Height="40px" OnClick="Button8_Click" Text="REGISTRAR NUEVO CLIENTE" Width="50%" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT clienteid, razonsocial, ruc, representante, condPago, cantdias, tpcliente, estadocliente FROM tb_cliente WHERE (idvendedor = @idvendedor)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblcodvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="lblcodvendedor" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
            </center>
    &nbsp;<asp:Panel ID="Panelregistrar" runat="server" style="text-align: center">
        <table class="auto-style21" align="center">
            <tr>
                <td class="auto-style15">COD:</td>
                <td class="auto-style22">
                    <asp:Label ID="lblcodcliente" runat="server"></asp:Label>
                </td>
              <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style15">RAZON SOCIAL:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtrazonsocial" runat="server" Width="100%" ToolTip="Ing. razón social..."></asp:TextBox>
                </td>
               <td class="auto-style15">
                   <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">RUC:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtruc" runat="server" Width="100%" ToolTip="Ing. RUC..."></asp:TextBox>
                </td>
               <td class="auto-style15">
                   <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">DIRECCIÓN:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtdireccion" runat="server" Width="100%" ToolTip="Dirección..."></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td>
            </tr>
             
             <tr>
                <td class="auto-style12">TELF:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txttelefono" runat="server" Width="100%" ToolTip="Telefono..."></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label23" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                 </td>   
            </tr>
             <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                 <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style20">REPRESENTANTE:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtrepresentante" runat="server" Width="100%" ToolTip="Representante..."></asp:TextBox>
                </td>
               <td class="auto-style15">
                   <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td>   
            <tr>
                <td class="auto-style12">AREA:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtareaacargo" runat="server" Width="100%"></asp:TextBox>
                </td>
                 <td class="auto-style15">
                     <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">E-MAIL:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtemail" runat="server" Width="100%" ToolTip="Área..."></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td> 
            </tr>
                 <tr>
                <td class="auto-style20">TLF. PERSONAL:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtfonopersonal" runat="server" Width="100%"></asp:TextBox>
                </td>
                     <td class="auto-style15">&nbsp;</td>
             </tr>
                 <tr>
                <td class="auto-style12">CULTIVO:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtcultivo" runat="server" Width="100%" ToolTip="Cultivo..."></asp:TextBox>
                     </td>
                 <td class="auto-style15">
                     <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                     </td>
            </tr>     
            </tr>
                 <tr>
                <td class="auto-style12">HECTAREA:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txthectarea" runat="server" Width="100%"></asp:TextBox>
                     </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">CON. PAGO:</td>
                <td class="auto-style23">
                    <asp:DropDownList ID="ddlcondpago" runat="server" AutoPostBack="True" Height="16px" Width="100%" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="idcondpago">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_condpago]"></asp:SqlDataSource>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">DIAS:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtdias" runat="server" Width="100%" ToolTip="Cantidad de dias"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                </td> 
            </tr>
                <tr>
                    <td class="auto-style15">RETENEDOR:</td>
                    <td class="auto-style22">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="SI" GroupName="retenedor" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="NO" GroupName="retenedor" />
                        <asp:Label ID="lblretenedor" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                   <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style15">TIPO:</td>
                    <td class="auto-style22">
                        <asp:DropDownList ID="ddltipo" runat="server" AutoPostBack="True" Width="100%">
                            <asp:ListItem Value="1">AGROINDUSTRIA</asp:ListItem>
                            <asp:ListItem Value="2">DISTRIBUIDOR</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                   <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style22">
                        &nbsp;</td>
                   <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="bnuevo" runat="server" OnClick="Button1_Click" Text="NUEVO" Width="100%" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="bregistrar" runat="server" Text="REGISTRAR" Width="100%" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style15"></td>
                </tr>
        </table>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/vendedor/cliente.aspx">Retornar</asp:HyperLink>
    </asp:Panel>
                <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
        <CENTER>
        <asp:Panel ID="Panelmodificar" runat="server" style="text-align: center">
       <h3 style="text-align: left"> DETALLE DE CLIENTE</h3>

         <div id="contenedor">
             <div id="derecha">
            <table align="center" class="auto-style21">
            <tr>
                <td class="auto-style15">COD:</td>
                <td class="auto-style22">
                    <asp:Label ID="lblcodcliente0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">RAZON SOCIAL:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtrazonsocial0" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">RUC:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtruc0" runat="server" OnTextChanged="txtruc0_TextChanged" Width="100%" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">DIRECCIÓN:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtdireccion0" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style12">TELF:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txttelefono0" runat="server" Width="100%" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">REPRESENT:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtrepresentante0" runat="server" Width="100%"></asp:TextBox>
                </td>
                <tr>
                    <td class="auto-style12">AREA:</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtareaacargo0" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">E-MAIL:</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtemail0" runat="server" Width="100%" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">TELF PERSONAL:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txttelefonopersonal" runat="server" Width="100%" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">CULTIVO:</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtcultivo0" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
            </tr>
            <tr>
                <td class="auto-style12">HECTAREA:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txthectarea0" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">CON. PAGO:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtcondpago" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">DIAS:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtdias0" runat="server" Width="60%" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">RETENEDOR:</td>
                <td class="auto-style22">
                    <asp:Label ID="lblretenedor0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">ESTADO:</td>
                <td class="auto-style22">
                    <asp:Label ID="lblestado" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="ACTUALIZAR DATO" Width="100%" />
                </td>
                <td class="auto-style22">
                    <asp:Button ID="btactualizar" runat="server" OnClick="btactualizar_Click" Text="REGISTRAR ACT" Width="100%" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
</div>
            <div id="derecha">


                ANEXOS REGISTRADO<br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idanexocliente" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="idanexocliente" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="idanexocliente" />
                        <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                        <asp:BoundField DataField="descripcion" HeaderText="Anexo" SortExpression="descripcion">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_clienteAnexo] WHERE ([idcliente] = @idcliente)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblcodcliente0" Name="idcliente" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                Anexo / (Id):<asp:TextBox title="Ing. anexo / Id " ID="txtanexo" runat="server" Width="70%"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click1" Text="REGISTRAR ANEXO" Width="100%" Height="40px" />
                <br />
                <br />
                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="ELIMINAR ANEXO" Width="100%" Height="40px" />


                <br />
             </div>

             </div>
    </asp:Panel>
            </CENTER>
    <p>
        &nbsp;</p>
</asp:Content>
