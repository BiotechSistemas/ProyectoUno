<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="DocIngresoAdmin.aspx.cs" Inherits="biotech.bio.ventas.rrhh.FichaPersonal.DocIngresoAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 900px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 800px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> DOCUMENTOS DE INGRESO<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                    </h2>
                </div>
                <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->

      <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbtnPersonal" runat="server" PostBackUrl="~/bio/ventas/rrhh/Default.aspx">RR.HH.</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbtnLegajo" runat="server"   PostBackUrl="~/bio/ventas/rrhh/Administracion/Legajo.aspx">Legajo de personal</asp:LinkButton>
      </li>
   <li>
      <asp:LinkButton ID="lbtndocumentosIngreso" runat="server"  PostBackUrl="~/bio/ventas/rrhh/FichaPersonal/DocIngresoAdmin.aspx">Documentos de ingreso</asp:LinkButton>
      </li>

</ol>

    <asp:Button ID="btnB" runat="server" Text="DOC. OBLIGATORIOS ADMINISTRATIVOS" OnClick="btnB_Click" Width="400px" />

    <asp:Button ID="btnA" runat="server" Text="DOC. REQUISITOS DE INGRESO" OnClick="btnA_Click" Width="400px" />
    <asp:Panel ID="Panel1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <strong>DOCUMENTOS REQUISITOS DE INGRESO: </strong><asp:GridView ID="GridView2" runat="server" CLASS="table-condensed table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="ID,DESCRIPCION,ESTADO" DataSourceID="SqlDataSource2" Width="800px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="COD" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="IDDOCADMINISTRATIVOS" HeaderText="IDDOCADMINISTRATIVOS" SortExpression="IDDOCADMINISTRATIVOS" Visible="False" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False"/>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select ID,DESCRIPCION,IDDOCADMINISTRATIVOS,ESTADO from rrhh.PerDocAdmDescripcion WHERE idDocAdministrativos =40  order by descripcion 
"></asp:SqlDataSource>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:LinkButton ID="lbtnNuevo" CssClass="btn btn-default" runat="server" OnClick="lbtnNuevo_Click" Width="90px">Nuevo</asp:LinkButton>
                        <br />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="50px" TextMode="Number" Enabled="False"></asp:TextBox>
                        <br />
                        Codigo:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="550px" Enabled="False"></asp:TextBox>
                        <br />
                        Descripción:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="100px" Enabled="False">
                            <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                            <asp:ListItem Value="0">NO</asp:ListItem>
                        </asp:RadioButtonList>
                        Habilitado:</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Registrar" Visible="False" Width="90px" ForeColor="#006600" />
                        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="Modificar" Width="90px" ForeColor="#006600" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Label ID="lblmensaje0" runat="server" ForeColor="#CC0000"></asp:Label>
                        <asp:Label ID="lblmensaje1" runat="server" ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="lbtnEliminar" runat="server" CssClass="btn " ForeColor="#CC0000" OnClick="lbtnEliminar_Click">Eliminar</asp:LinkButton>
                    </td>
                </tr>
                </table>
          </div>
        </div>

        </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
             <div class="row">
        <div class="col-md-12">
            <strong>DOCUMENTOS OBLIGATORIOS ADMINISTRATIVOS:</strong><asp:GridView ID="GridView1" runat="server" CLASS="table-condensed table-hover table-sm thead-light" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id,Descripcion,estado" Width="800px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Descripcion" HeaderText="DESCRIPCION" SortExpression="Descripcion" />
                    <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                    <asp:BoundField DataField="idgrupo" HeaderText="idgrupo" SortExpression="idgrupo" Visible="False" />
                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado"  Visible="False"  />
                     <asp:ImageField DataImageUrlField="estado" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                     <asp:ImageField DataImageUrlField="EDOC" HeaderText="DOC." DataImageUrlFormatString="~/images/doc{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    <asp:ButtonField CommandName="BAJAR" HeaderText="" ShowHeader="True" Text="Bajar" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >                     
                        <ControlStyle Height="16px" Width="16px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />                     
                    </asp:ButtonField>
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.ListadoDocObligatorios" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="idgrupo" Type="Int32" />
                    <asp:Parameter DefaultValue="10" Name="idestado" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

     

            <table class="auto-style3">
                <tr>
                    <td colspan="4">
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtcod2" runat="server" Enabled="False" Width="80px"></asp:TextBox>
                                    <br />
                                    Código:</td>
                                <td>
                                    <asp:TextBox ID="txtdescripcion2" runat="server" Width="500px" Enabled="False"></asp:TextBox>
                                    <br />
                                    Descripción:</td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="100px" Enabled="False">
                                        <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                        <asp:ListItem Value="0">NO</asp:ListItem>
                                    </asp:RadioButtonList>
                                    Habilitado</td>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Enabled="False" />
                        <asp:Label ID="lblruta" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Adjuntar archivo" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btn2nuevo" runat="server" OnClick="btn2nuevo_Click" Text="NUEVO" Width="200px" />
                        <asp:Button ID="btn2eliminar" runat="server" Enabled="False" OnClick="btn2eliminar_Click" Text="ELIMINAR" Width="190px" ForeColor="#CC0000" />
                        <asp:Button ID="btn2modificar" runat="server" Enabled="False" OnClick="btn2modificar_Click" Text="MODIFICAR" Width="190px" ForeColor="#006600" />
                        <asp:Button ID="btn2registrar" runat="server" Enabled="False" OnClick="btn2registrar_Click" Text="REGISTRAR" Width="200px" ForeColor="#006600" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblmensajeno" runat="server" ForeColor="#CC0000"></asp:Label>
                        <asp:Label ID="lblmensajesi" runat="server" ForeColor="#006600"></asp:Label>
                    </td>
                </tr>
            </table>

     

            <br />
            

            </div>
        </div>
    </asp:Panel><asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
&nbsp;Habilitado&nbsp;
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
&nbsp;Por habilitar
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ver ficha documentos de ingreso</asp:LinkButton>
</asp:Content>
