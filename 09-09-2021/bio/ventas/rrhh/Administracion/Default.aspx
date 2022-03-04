<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Administracion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

    <style type="text/css">
        .auto-style1 {
            width: 1200px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            color: #CC0000;
        }
        .auto-style4 {
            color: #006600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
   
    <h3>LEGAJO DE PERSONAL
    &nbsp;</h3>
     <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbtnPersonal" runat="server"  PostBackUrl="~/bio/ventas/rrhh/Default.aspx">RR.HH.</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbtnLegajo" runat="server"   PostBackUrl="~/bio/ventas/rrhh/Administracion/Legajo.aspx">Legajo de personal</asp:LinkButton>
      </li>
</ol> 
    <asp:Panel ID="Panel1" runat="server">
      
        <table class="modal-lg">
            <tr>
                <td><strong>PERSONAL:</strong>
                    <asp:Label ID="lblnombreLegajo" runat="server"></asp:Label>
                    <asp:Label ID="lblidpersonalLegajo" runat="server" Visible="False"></asp:Label>
                </td>
                <td><strong>F. LEGAJO HABILITADO</strong> :
                    <asp:Label ID="lblfechalegajo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lblmensaje1" runat="server" ForeColor="#006600" Font-Size="Small"></asp:Label>
        <asp:Label ID="lblmensaje0" runat="server" ForeColor="#CC0000" Font-Size="Small"></asp:Label>
        <asp:Panel ID="payuda" runat="server" Visible="False">
            &nbsp;orden id:<strong><asp:Label ID="lblidNumOrdeningresoA" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp; idadmin=</strong><asp:Label ID="lblidUsuarioAdmin" runat="server" Text="ALLUZ"></asp:Label>
        </asp:Panel>
        <table class="auto-style1">
            <tr>
                <td WIDTH="400">A.-<strong>DOCUMENTOS DE INGRESO</strong></td>
                <td WIDTH="30">&nbsp;</td>
                <td WIDTH="250"><strong>PRESENTA DOCUMENTO</strong>
                </td>
                <td width="80"><strong>FECHA</strong></td>
                <td >&nbsp;</td>
                <td width="40">&nbsp;</td>
                <td width="40">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador0" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblItemsReg" runat="server" ForeColor="#006600"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;</td>
                <td class="text-right">
                    <asp:Button ID="Buttonprequisitos" runat="server" OnClick="Buttonprequisitos_Click" Text="+" />
                </td>
            </tr>
            <tr>
                <td colspan="7">
                    <asp:Panel ID="PanelRequisitos" runat="server" BackColor="#F1FFEC">
                       <strong>02.1 Documentos requisitos de ingreso:<br /> </strong>
                                    <asp:GridView ID="GridViewRequicitosPersonal" runat="server" CLASS="table-condensed table-hover table-sm thead-light" DataSourceID="SqlDataSourcerequisitos" Width="100%" AutoGenerateColumns="False" DataKeyNames="id,iddocAdmDescripcion,DOC" OnSelectedIndexChanged="GridViewRequicitosPersonal_SelectedIndexChanged" OnRowCommand="GridViewRequicitosPersonal_RowCommand" GridLines="Horizontal">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="idPersonal" HeaderText="COD PERSONAL" SortExpression="idPersonal" />
                                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" />
                                            <asp:BoundField DataField="iddocAdmDescripcion" HeaderText="iddocAdmDescripcion" SortExpression="iddocAdmDescripcion" Visible="False" />
                                            <asp:BoundField DataField="DOCUMENTO" HeaderText="DOCUMENTO" SortExpression="DOCUMENTO" />
                                            <asp:BoundField DataField="DOC" HeaderText="DOC" SortExpression="DOC" Visible="False" />
                                            <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />

                                            <asp:ImageField DataImageUrlField="EDOC" HeaderText="DOC." DataImageUrlFormatString="~/images/doc{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                                             <asp:ButtonField CommandName="BAJARFACT" HeaderText="" ShowHeader="True" Text="Bajar" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >                     
                        <ControlStyle Height="16px" Width="16px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
            </asp:ButtonField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No registra documentación de requisitos de ingreso.
                                        </EmptyDataTemplate>
                                        <HeaderStyle BackColor="#BFEABF" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourcerequisitos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.listadodocRequisitosPersonal" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidpersonalLegajo" Name="idpersonal" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                               
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtidNRequisito" runat="server" Enabled="False" Width="100px"></asp:TextBox>
                                    <br />
                                    Cod:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownListrequisitos" runat="server" Width="500px" DataSourceID="SqlDataSourcetpdoclistado" DataTextField="descripcion" DataValueField="id" Enabled="False">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourcetpdoclistado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,descripcion from rrhh.PerDocAdmDescripcion WHERE idDocAdministrativos =40 and estado=1 order by descripcion
"></asp:SqlDataSource>
                                    <br />
                                    Tipo de documento:</td>
                                <td>
                                    <asp:FileUpload ID="FileUploadRequisito" runat="server" Width="300px" Enabled="False" />
                                    Adjuntar documento:
                                    <asp:Label ID="lblrutaRequisito" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" Width="100px" OnClick="btnNuevo_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btneliminar" runat="server" Text="ELIMINAR DOCUMENTO" OnClick="btneliminar_Click" OnClientClick="return confirm('ELIMINAR DOCUMENTO - Desea eliminar el registro?');" Enabled="False" ForeColor="#CC0000" Width="250px" />
                                    <asp:Button ID="btnModificardocumentoAdjunto" runat="server" Enabled="False" ForeColor="#CC0000" OnClick="btnModificardocumentoAdjunto_Click" OnClientClick="return confirm('ACTUALIZAR DOCUMENTO - Desea modificar el adjunto registrado?');" Text="MODIFICAR ADJUNTO" Width="250px" />
                                </td>
                                <td>
                                    <asp:Button ID="btnRegistrar" runat="server" Text="REGISTRAR DOCUMENTO ADJUNTO" Width="400px" OnClick="btnRegistrar_Click" Enabled="False" ForeColor="#006600" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style4">
                                    &nbsp;</td>
                                <td class="text-right"><small>* Documentos válidos: jpg,png,j3pg y pdf.</small></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblmensajeAdjuntoRequisito" runat="server" ForeColor="#CC0000"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                               
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador2" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador3" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    *</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa4" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload4" runat="server" EnableTheming="True" />
                    <asp:Label ID="lblrutaa4" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton104" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" ToolTip="Subir archivo" OnClick="ImageButton104_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="20px" OnClick="ImageButton4_Click" />
                    <asp:Label ID="lbladoc4" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador4" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    *</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa5" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload5" runat="server" />
                    <asp:Label ID="lblrutaa5" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton105" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" ToolTip="Subir archivo" OnClick="ImageButton105_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="20px" OnClick="ImageButton5_Click" />
                    <asp:Label ID="lbladoc5" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador5" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    *</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa6" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload6" runat="server" />
                    <asp:Label ID="lblrutaa6" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton106" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" ToolTip="Subir archivo" OnClick="ImageButton106_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="20px" OnClick="ImageButton6_Click" />
                    <asp:Label ID="lbladoc6" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador6" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    *</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList7_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa7" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload7" runat="server" />
                    <asp:Label ID="lblrutaa7" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton107" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" ToolTip="Subir archivo" OnClick="ImageButton107_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="20px" OnClick="ImageButton7_Click" />
                    <asp:Label ID="lbladoc7" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador7" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    *</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList8_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa8" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload8" runat="server" />
                    <asp:Label ID="lblrutaa8" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton108" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" ToolTip="Subir archivo" OnClick="ImageButton108_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="20px" OnClick="ImageButton8_Click" />
                    <asp:Label ID="lbladoc8" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1FichaTrabajador8" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    *</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfa9" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload9" runat="server" />
                    <asp:Label ID="lblrutaa9" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton109" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" ToolTip="Subir archivo" OnClick="ImageButton109_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="20px" OnClick="ImageButton9_Click" />
                    <asp:Label ID="lbladoc9" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmensajeAdjuntoA0" runat="server" Font-Size="X-Small" ForeColor="#CC0000"></asp:Label>
                    <asp:Label ID="lblmensajeAdjuntoA1" runat="server" Font-Size="X-Small" ForeColor="#006600"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">B.- <strong>GESTIÓN ADMINISTRATIVA</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB1" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB1_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB2" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB2_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB3" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB3_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB4" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB4_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha5" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB5" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB5_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb5" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha6" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB6" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB6_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb6" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha7" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB7" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB7_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb7" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha8" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB8" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB8_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb8" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl2ficha9" runat="server"></asp:Label>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonListB9" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB9_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblfb9" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha10" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB10" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB10_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb10" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha11" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB11" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB11_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb11" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha12" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB12" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB12_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb12" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha13" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB13" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB13_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb13" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2ficha14" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListB14" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListB14_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfb14" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">C.- <strong>DOCUMENTOS POR CESE LABORAL</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl310" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListC1" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListC1_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfc1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl311" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListC2" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListC2_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfc2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl312" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListC3" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListC3_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfc3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl313" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListC4" runat="server" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListC4_SelectedIndexChanged">
                        <asp:ListItem Value="10">SI</asp:ListItem>
                        <asp:ListItem Selected="True" Value="20">NO</asp:ListItem>
                        <asp:ListItem Value="30">EN PROCESO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:Label ID="lblfc14" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/bio/ventas/rrhh/Administracion/Legajo.aspx" Text="RETORNAR" Width="100%" Height="30px" />
                </td>
                <td class="text-right"> &nbsp;Adjuntar documento
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/SUBIR.png" Width="20px" />
                    <br />
                    &nbsp;&nbsp; Descargar documento
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/BAJAR.png" Width="20px" />
                    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                   </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
