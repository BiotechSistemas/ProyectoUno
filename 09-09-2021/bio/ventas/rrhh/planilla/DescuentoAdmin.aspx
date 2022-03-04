<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="DescuentoAdmin.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.DescuentoAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            width: 800px;
        }
        .auto-style5 {
        }
        .auto-style6 {
        }
        .auto-style7 {
            background-color: #CCCCCC;
        }
        .auto-style8 {
            text-align: center;
            background-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
  
    <div class="container">
            <div class="row">  
      <h2>PLANILLA DESCUENTOS <asp:Label ID="lblidUsuario" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lblano" runat="server" Visible="False"></asp:Label>
                  <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                          </h2>

                <asp:SqlDataSource ID="SqlDataSourcePERSONALTT" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_PersonalHabilitado" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
<ol class="breadcrumb">
  <li>
      <asp:LinkButton ID="lbtnMostrarDescuentos" runat="server" OnClick="lbtnMostrarDescuentos_Click">Resúmen</asp:LinkButton></li>
  <li>
      <asp:LinkButton ID="lbtnRegistrarDescuento" runat="server" OnClick="lbtnRegistrarDescuento_Click">Registrar Descuento</asp:LinkButton></li>

</ol>
         <hr />
                 <asp:Panel ID="pregistrar" runat="server">
                  <asp:Panel ID="pREGdECCUENTO" runat="server">
               
                <table class="auto-style1">
                    <tr>
                        <td colspan="2">
                            Personal habilitado:<asp:Label ID="lbl10idusuario" runat="server"></asp:Label>
                            <asp:Label ID="lbl10nombreUsuario" runat="server" Visible="False"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlPersonalHabilitado" class="form-control" runat="server" DataSourceID="SqlDataSourcePERSONALTT" DataTextField="NOMBRES" DataValueField="codTrabajador" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlPersonalHabilitado_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="lblEstadoSolicitud" runat="server" Text="0" Visible="False"></asp:Label>
                            <asp:Label ID="lblidsolicitud" runat="server" Text="0" Visible="False"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlSolicutd0" class="form-control" runat="server" DataSourceID="SqlDataSourceso0ldesc" DataTextField="SOLICITUD" DataValueField="idsolicitud" Visible="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceso0ldesc" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh_solcDesct" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblEstadoSolicitud" Name="estado" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            Condiciones empresa:<br />
                            <asp:TextBox ID="txtdetalleempresa" Style="text-transform: uppercase" required   runat="server" Rows="4" TextMode="MultiLine" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha emisión:<br />
                            <asp:TextBox ID="lblFechasolcita" required runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>Descripción:<br />
                            <asp:TextBox ID="txtDescripcion" Style="text-transform: uppercase" required runat="server" Width="400px"></asp:TextBox>
                        </td>
                        <td>N° cuotas:<br />
                            <asp:TextBox ID="txtncuotas" required runat="server" type="number"></asp:TextBox>
                        </td>
                        <td class="auto-style6">Importe:<br />
                            <asp:TextBox ID="txtimporte" type="number" step="0.0001" required runat="server"></asp:TextBox>
                        </td>
                        <td>Moneda:<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="200px">
                            <asp:ListItem Value="D">Dólares</asp:ListItem>
                            <asp:ListItem Selected="True" Value="S">Soles</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <asp:Button ID="btnRegDescuento" runat="server" Text="REGISTRAR DESCUENTO" Width="100%" OnClick="btnRegDescuento_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
         <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>


                     
                   </asp:Panel>
             


                <div class="btn-group btn-group-justified">
                    <asp:LinkButton ID="lbtnNuevoDescuento"  CLASS= "btn btn-default" runat="server" OnClick="lbtnNuevoDescuento_Click" >NUEVO</asp:LinkButton>
  <asp:LinkButton ID="LinkButton2"  class="btn btn-success" runat="server" OnClick="LinkButton2_Click">DESCUENTOS ACTIVOS</asp:LinkButton>
  <asp:LinkButton ID="LinkButton3" class="btn btn-success" runat="server" OnClick="LinkButton3_Click">DESCUENTOS CERRADOS</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" class="btn btn-info" runat="server" OnClick="LinkButton4_Click">DESCUENTO GENERAL</asp:LinkButton>

                       <div class="btn-group">
     <div class="input-group">
                         <asp:TextBox class="form-control" placeholder="N° DE DESCUENTO" ID="TextBox1" runat="server"></asp:TextBox>
      <span class="input-group-btn">
       
           <asp:LinkButton  class="btn btn-success" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">BUSCAR</asp:LinkButton>
      </span>
         </div>
    </div>
                   
</div>
                    <br />

                    
                     <asp:Panel ID="peliminarDescuento" runat="server">
                        <div class="alert alert-danger">
                            Eliminar registro N°: <asp:Label ID="lbl50IdDescuento" runat="server" Text=""></asp:Label> -<asp:Label ID="lbl50Descuento" runat="server" Text=""></asp:Label>,
                            <asp:LinkButton ID="lbtn50eliminar"  runat="server" OnClick="lbtn50eliminar_Click">ELIMINAR</asp:LinkButton>
                        </div>
                    </asp:Panel>

               <div class="table-responsive">
              
                <asp:GridView ID="gvDescuentosRegistrados" clase="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idDescuento" DataSourceID="SqlDataSourcedesct" Width="100%" AllowSorting="True" CellPadding="4" Font-Size="X-Small" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gvDescuentosRegistrados_SelectedIndexChanged" OnRowCommand="gvDescuentosRegistrados_RowCommand" OnRowUpdated="gvDescuentosRegistrados_RowUpdated">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="idDescuento" HeaderText="DSCTO" ReadOnly="True" SortExpression="idDescuento" Visible="False" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NDESCUENTO" HeaderText="DSCTO" ReadOnly="True" SortExpression="NDESCUENTO" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                        <asp:TemplateField HeaderText="FECHA" SortExpression="fecha">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fecha", "{0:d}") %>' Width="80px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fecha", "{0:dd/MM/yyyy}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DETALLE" SortExpression="concepto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("concepto") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("concepto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="IMP. TT." SortExpression="importe">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("importe") %>' Width="80px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("importe", "{0:0,0.00}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="ncuotas" HeaderText="CUOTAS" SortExpression="ncuotas" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CUOTASREGISTRADAS" HeaderText="CUOTAS REG." ReadOnly="True" SortExpression="CUOTASREGISTRADAS" >
                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" ReadOnly="True" />
                        <asp:BoundField DataField="tpmoneda" HeaderText="tpmoneda" SortExpression="tpmoneda" Visible="False" />
                        <asp:BoundField DataField="ESTADOASESOR" HeaderText="ESTADO ASESOR" SortExpression="ESTADOASESOR" >
                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:ButtonField ButtonType="Image" CommandName="elimina" HeaderText="ELIMINAR" ImageUrl="~/images/eliminarr.png" ShowHeader="True" Text="Eliminar">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Height="20px" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ButtonField>
                        <asp:CommandField ShowSelectButton="True" ShowEditButton="True" />
             
                    </Columns>
                    <EmptyDataTemplate>
                        No registra deescuentos....
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#FFCCCC" Font-Bold="True" ForeColor="Black" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                   </div>
                <asp:SqlDataSource ID="SqlDataSourcedesct" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh_DesctosListados" SelectCommandType="StoredProcedure" UpdateCommand="update rrhh.Descuentos set fecha = @fecha, concepto=@concepto, importe = @importe, ncuotas=@ncuotas, tpmoneda=@tpmoneda,EstadoDescuento=@ESTADO where idDescuento =@idDescuento">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblop10" Name="op" PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="lblnbuscar" Name="ndescuento" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fecha" />
                        <asp:Parameter Name="concepto" />
                        <asp:Parameter Name="importe" />
                        <asp:Parameter Name="ncuotas" />
                        <asp:Parameter Name="tpmoneda" />
                        <asp:Parameter Name="ESTADO" />
                        <asp:Parameter Name="idDescuento" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Panel ID="pDetalleDesccuento" runat="server">
                    <h3>DESCUENTO:
                        <asp:Label ID="lblIdDescuento" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbldescuento" runat="server"></asp:Label>
                    </h3>
                    <table class="auto-style2">
                        <tr>
                            <td WIDTH="200"><strong>USUARIO</strong>:</td>
                            <td colspan="3">
                                <asp:Label ID="lbl20nombre" runat="server"></asp:Label>
                                <asp:Label ID="lbl20idUsuario" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td width="200"><strong>DETALLE</strong>:</td>
                            <td colspan="3">
                                <asp:Label ID="lbl20detalle" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td width="200"><strong>IMPORTE</strong>:<asp:Label ID="lbl20importe1" runat="server" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="lbl20importe" runat="server"></asp:Label>
                            </td>
                            <td width="200"><strong>MONEDA</strong>:<br /><asp:Label ID="lbl20moneda" runat="server"></asp:Label>
                            </td>
                            <td width="200"><strong>ESTADO ASESOR</strong>:<br />
                                <asp:Label ID="lbl20EstadoAsesor" runat="server"></asp:Label>
                            </td>
                            <td width="200"><strong>ESTADO DESCTO:</strong><br />
                                <asp:Label ID="lbl20estado" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td width="200"><strong>N° CUOTAS REGISTRADAS</strong>:<br /> </td>
                            <td width="200">
                                <asp:Label ID="lblcuotasRegistradas" runat="server" Text="0"></asp:Label>
                                /
                                <asp:Label ID="lblncuotas" runat="server"></asp:Label>
                            </td>
                            <td width="200" colspan="2">
                                <asp:Label ID="lblmensajecuotas" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td width="200"><strong>IMP. COBRADO:</strong><br />
                                <asp:Label ID="lblimpcobrado" runat="server"></asp:Label>
                            </td>
                            <td width="200"><strong>IMP. POR COBRAR:</strong><br />
                                <asp:Label ID="lblimpporcobrar" runat="server"></asp:Label>
                            </td>
                            <td colspan="2" width="200">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5" colspan="4"><strong>Detalle de cuotas a descontar:</strong><br />
                                <asp:GridView ID="ggvDetDescuento" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idDetalle" DataSourceID="SqlDataSource1dETALLE" ForeColor="Black" GridLines="Vertical" OnRowDataBound="ggvDetDescuento_RowDataBound" OnRowDeleted="ggvDetDescuento_RowDeleted" OnRowDeleting="ggvDetDescuento_RowDeleting">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                                        <asp:BoundField DataField="idDescuento" HeaderText="idDescuento" SortExpression="idDescuento" Visible="False" />
                                        <asp:BoundField DataField="Row" HeaderText="N°" ReadOnly="True" SortExpression="Row">
                                        <HeaderStyle Width="50px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="FECHA DESCUENTO" SortExpression="FECHADESCUENTO">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FECHADESCUENTO", "{0:d}") %>' Width="80px"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("FECHADESCUENTO", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra cuotas a descontar...
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <PagerTemplate>
                                        No registra cuotas a descontar...
                                    </PagerTemplate>
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1dETALLE" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh_DesctosListadosDetalle" SelectCommandType="StoredProcedure" DeleteCommand="delete rrhh.DescuentosDetalle where idDetalle = @idDetalle" UpdateCommand="update rrhh.DescuentosDetalle set estado=@estado,importe=@importe,fechapago=@FECHADESCUENTO where idDetalle=@idDetalle">
                                    <DeleteParameters>
                                        <asp:Parameter Name="idDetalle" />
                                    </DeleteParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblIdDescuento" Name="iddescuento" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="estado" />
                                        <asp:Parameter Name="importe" />
                                        <asp:Parameter Name="FECHADESCUENTO" />
                                        <asp:Parameter Name="idDetalle" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                               <small><asp:Label ID="lblnd1" runat="server"></asp:Label>
                                &nbsp;cuotas registras.
                                   </small> </td>
                            <td>&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5" colspan="4"><hr /></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Registrar cuota:<br /> N°
                                <asp:Label ID="lblnd2" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style7">Importe:<br />
                                <asp:TextBox ID="txt30importe" CssClass="form-control" type="number" step="0.01"  runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style7">Fecha de Descuento:<br />
                                <asp:TextBox ID="txt30fechadescuuento"  CssClass="form-control"  runat="server" Width="100%" TextMode="Date"></asp:TextBox>
                            </td>
                            <td class="auto-style7">
                                <br />
                                <asp:LinkButton class="btn btn-default" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">REGISTRAR CUOTA</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>

               



                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:Label ID="lblop10" runat="server"></asp:Label>
                    &nbsp;&nbsp; N A BUSCAR:
                    <asp:Label ID="lblnbuscar" runat="server">0</asp:Label>
                    &nbsp;,&nbsp; MAIL PERSONAL:&nbsp;
                    <asp:Label ID="lblMailPersonal" runat="server"></asp:Label>
                    &nbsp;&nbsp; mail grupal:
                    <asp:Label ID="lblMailGrupal" runat="server"></asp:Label>
                    &nbsp;/ titulo mail:
                    <asp:Label ID="lblmailTitulo" runat="server"></asp:Label>
                </asp:Panel>
                <br />
                <br />




                    <%--*******************************************--%>
   </asp:Panel>
                <asp:Panel ID="pmostrar" runat="server">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>AÑO:</td>
                        <td>
                <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="rbAno_SelectedIndexChanged">
                </asp:RadioButtonList>
                        </td>
                        <td>MES:</td>
                        <td>
                <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="320px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="BUSCAR" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
                Descuentos a ajecutar:<asp:Label ID="lbl10ano" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;mes:
                <asp:Label ID="lbl10mes" runat="server"></asp:Label>
                <br />
                    <div class="table-responsive">
                <asp:GridView ID="gvdescuentos" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,idDescuento,DSCTINT" DataSourceID="SqlDataSourceListar" Width="100%" Font-Size="X-Small" OnSelectedIndexChanged="gvdescuentos_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                        <asp:BoundField DataField="idDescuento" HeaderText="idDescuento" SortExpression="idDescuento" Visible="False" />
                        <asp:BoundField DataField="DSCTINT" HeaderText="DSCT INT." SortExpression="DSCTINT" ReadOnly="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHAPAGO" HeaderText="FECHA PAGO" SortExpression="FECHAPAGO" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" />
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" ReadOnly="True" />
                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" ReadOnly="True" SortExpression="CUOTA" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESTADO" HeaderText="ESTADO" SortExpression="DESTADO" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceListar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh_DescuentoMes" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        <br />
                        <asp:Panel ID="pmostrar10" runat="server">
                            <strong>DESCUENTO INTERNO :
                            <asp:Label ID="lblDescuentoInterno10" runat="server"></asp:Label>
                            &nbsp; , CUOTAS REGISTRADAS:</strong><asp:Label ID="lbliddescuento10" runat="server" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="lblitemreg10" runat="server" Text="0"></asp:Label>
                            &nbsp;cuotas.<br />
                            <asp:GridView ID="gvDescuentosinternos10" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle" DataSourceID="SqlDataSource10" OnRowDataBound="gvDescuentosinternos10_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                                    <asp:BoundField DataField="idDescuento" HeaderText="idDescuento" SortExpression="idDescuento" Visible="False" />
                                    <asp:BoundField DataField="Row" HeaderText="Nª CUOTA" ReadOnly="True" SortExpression="Row">
                                    <HeaderStyle Height="50px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FECHADESCUENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA DESCUENTO" SortExpression="FECHADESCUENTO">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh_DesctosListadosDetalle" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lbliddescuento10" Name="iddescuento" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                        </div>
                <br />

             
</asp:Panel>
                <br />
                <strong>ESTADO: </strong>0 = POR CANCELAR , 1 = CANCELADO</div></div>


</asp:Content>
