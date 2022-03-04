<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="SolicitudesRegistradasAdm.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Solicitud.SolicitudesRegistradasAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 800px;
        }
        .auto-style3 {
            background-color: #D2F0E1;
        }
        .auto-style4 {
            height: 20px;
            background-color: #D2F0E1;
        }
        .auto-style5 {
        }
        .auto-style7 {
            background-color: #D2F0E1;
            }
    </style>
        <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> RESUMEN SOLICITUDES GDH:
                          
            <asp:Label ID="lbltitulo" runat="server" Text=""></asp:Label>

                        <asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                    &nbsp;</h2>
                </div>
                <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->

      <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbtnPersonal" runat="server" PostBackUrl="~/bio/ventas/rrhh/Default.aspx">RR.HH.</asp:LinkButton>
      </li>

     

                                <li>
      <asp:LinkButton ID="lbtnLegajo" runat="server" OnClick="lbtnLegajo_Click">Resumen de Solicitudes</asp:LinkButton>
      </li>


           <li>
      <asp:LinkButton ID="lbtnSolPrestamosAprobados" runat="server" OnClick="lbtnSolPrestamosAprobados_Click">Prestamos Aprobados</asp:LinkButton>
      </li>
  <li>
      <asp:LinkButton ID="lbtnNuevaSolicitud" runat="server" OnClick="lbtnNuevaSolicitud_Click" >Nueva Solicitud</asp:LinkButton>
      </li>
     
</ol> 



      <div class="row">
          <asp:RadioButtonList ID="rbtEstadoSol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtEstadoSol_SelectedIndexChanged" RepeatDirection="Horizontal">
              <asp:ListItem Selected="True" Value="0">POR EVALUAR</asp:ListItem>
              <asp:ListItem Value="1">APROBADAS</asp:ListItem>
              <asp:ListItem Value="2">OBSERVADAS</asp:ListItem>
          </asp:RadioButtonList>
          
    
          <asp:Panel ID="PSolicitudesAdministrar" runat="server">
              <asp:Panel ID="pgdhAdministrar" runat="server" BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Width="900px">
              <center>
              <h3>ADMINISTRAR SOLICITUD</h3>
              <table class="auto-style1">
                  <tr>
                      <td><strong>SOLICITUD:</strong><asp:Label ID="lblidSolicitud" runat="server" Visible="False"></asp:Label>
                      </td>
                      <td>
                          <asp:Label ID="lblnSolicitud" runat="server"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td class="auto-style5"><strong>TIPO SOLIC.:</strong></td>
                      <td>
                          <asp:Label ID="lblDescripcionTipoSolicitud" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td><strong>F. A EJECUTAR/INICIAR:</strong></td>
                      <td>
                          <asp:TextBox ID="txtFechaEjecuta" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
                          <asp:Label ID="lblFechaEjecutar" runat="server" Visible="False"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td class="auto-style5"><strong>F. SOLICITA:</strong></td>
                      <td>
                          <asp:Label ID="lblFechaRegistra" runat="server"></asp:Label>
                          <asp:Label ID="lblIdTipoSolicitud" runat="server" Visible="False"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td><strong>SOLICITA:<asp:Label ID="lblidSolicita" runat="server" Visible="False"></asp:Label>
                          </strong></td>
                      <td colspan="4">
                          <asp:Label ID="lblnombreSolicita" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td><strong>DETALLE:</strong></td>
                      <td colspan="4">
                          <asp:Label ID="lblDetalle" runat="server"></asp:Label>
                      </td>
                  </tr><asp:Panel ID="pprestamo" runat="server">
                  <tr>
                      <td><strong>IMPORTE:</strong></td>
                      <td>
                          <asp:TextBox ID="txtimporte" type="number" step="0.01" runat="server"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td class="auto-style5"><strong>MONEDA:</strong></td>
                      <td>
                          <asp:RadioButtonList ID="rbtntpmoneda" runat="server" RepeatDirection="Horizontal" Width="200px">
                              <asp:ListItem Value="S">SOLES</asp:ListItem>
                              <asp:ListItem Value="D">DOLARES</asp:ListItem>
                          </asp:RadioButtonList>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          CUOTAS:</td>
                      <td>
                          <asp:TextBox ID="txtCuotas" type="number" runat="server"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">
                          <asp:Label ID="lblIdMoneda" runat="server" Visible="False"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                      </asp:Panel>
                  <tr>
                      <td class="auto-style4"><strong><span class="auto-style3">II. EVALUACIÓN GDH:</span></strong></td>
                      <td class="auto-style4" colspan="3">
                          <asp:Label ID="lblgdhEstado" runat="server"></asp:Label>
                      </td>
                      <td class="auto-style4">
                          <asp:Label ID="lblidEstadoGdh" runat="server" Visible="False"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style3"><strong>DETALLE GDH:</strong></td>
                      <td colspan="4" class="auto-style3">
                          <asp:Label ID="lblgdhDetalle" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td><strong>III. RESP. EVAL. SOLICITANTE:</strong></td>
                      <td colspan="3">
                          <asp:Label ID="lblAsesorEstado" runat="server"></asp:Label>
                          :<asp:Label ID="lblidAsesorEstado" runat="server" Visible="False"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td><strong>DETALLE SOLICITANTE:</strong></td>
                      <td colspan="4">
                          <asp:Label ID="lblasesorDetalle" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td><strong>DOC. CONVENIO</strong></td>
                      <td colspan="4">
                          <asp:LinkButton ID="lbtdocAdjunto" runat="server" OnClick="lbtdocAdjunto_Click"></asp:LinkButton>
                      </td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td><strong>ESTADO SOLICITUD:</strong></td>
                      <td>
                          <asp:Label ID="lblSolicitudEstado" runat="server"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td colspan="5">.</td>
                  </tr>
                  <tr>
                      <td>ULTIMA ACTUALIZACIÓN:</td>
                      <td>
                          <asp:Label ID="lblFechaUltActualizacion" runat="server"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">POR:</td>
                      <td>
                          <asp:Label ID="lblultusuario" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style3" colspan="2"><strong>I<span class="auto-style3">I. DETALLE DE EVALUACIÓN GDH:</span></strong></td>
                      <td class="auto-style3">&nbsp;</td>
                      <td class="auto-style7">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style3" colspan="2">
                          <asp:Button ID="btnAprobar" runat="server" BackColor="#D2F0E1" OnClick="btnAprobar_Click" OnClientClick="return confirm('APROBAR SOLICITUD, desea confirmar aprobación?');" Text="APROBAR SOLICITUD" Width="100%" />
                      </td>
                      <td class="auto-style3">&nbsp;</td>
                      <td class="auto-style7" colspan="2">
                          <asp:Button ID="btnObservar1" runat="server" OnClick="btnObservar1_Click" Text="OBSERVAR SOLICITUD" Width="100%" />
                      </td>
                  </tr>
                  <tr>
                      <td colspan="5">
                          <asp:Panel ID="pObservarPaso2" runat="server" Visible="False">
                              <asp:TextBox ID="txtgdhObservacion" runat="server" MaxLength="10" Rows="5" Style="text-transform: uppercase" TextMode="MultiLine" Width="100%"></asp:TextBox>
                              <br />
                              <asp:Button ID="btnObservar" runat="server" BackColor="#FFDFDF" OnClick="btnObservar_Click" Text="REGISTRAR OBSERVACIÓN" Width="100%" />
                          </asp:Panel>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td class="auto-style5" colspan="2">
                          <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="CERRAR" Width="100%" />
                      </td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td colspan="5">
                          <asp:Panel ID="pevalfinal" runat="server">
                              APROBACIÓN FINAL:<br />
                              <asp:Button ID="btnaprobacionfinal" runat="server" BackColor="#D2F0E1" Height="40px" OnClick="btnaprobacionfinal_Click" OnClientClick="return confirm('APROBAR SOLICITUD, desea confirmar aprobación?');" Text="APROBACIÓN FINAL" Width="50%" />
                              <asp:Button ID="btnRechazarFinal" runat="server" BackColor="#FFDFDF" Height="40px" OnClick="btnRechazarFinal_Click" Text="RECHAZAR SOLICITUD" Width="49%" />
                          </asp:Panel>
                      </td>
                  </tr>
              </table></center>
          </asp:Panel>
              <br />
          <asp:GridView ID="gvResumensolicitudes" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="15" OnSelectedIndexChanged="gvResumensolicitudes_SelectedIndexChanged" OnRowCommand="gvResumensolicitudes_RowCommand">
              <Columns>
                  <%--<asp:BoundField DataField="AsesorEstado" HeaderText="AsesorEstado" SortExpression="AsesorEstado" />--%>
                  <%--<asp:BoundField DataField="GDHEstado" HeaderText="GDHEstado" SortExpression="GDHEstado" />--%>

                  <%--<asp:BoundField DataField="EstadoDescuento" HeaderText="ESTADO SOLICITUD" SortExpression="EstadoDescuento" />--%>
                  <asp:CommandField ShowSelectButton="True" HeaderText="ADMINISTRAR" />
                  <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                  <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" />
                  <asp:BoundField DataField="idUsuario" HeaderText="COD. SOLICITA" SortExpression="idUsuario" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. A EJECUTAR / INICIAR" SortExpression="fecha">
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                  <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLICITUD" SortExpression="descripcion" />
                  <asp:ImageField DataImageUrlField="GDHEstado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="EVALUACIÓN GDH">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>

                  <asp:ImageField DataImageUrlField="AsesorEstado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="EVALUACIÓN SOLICITANTE">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                   <asp:ImageField DataImageUrlField="EstadoDescuento" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="SOLICITUD ESTADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                  <asp:BoundField DataField="sistemaFecha" HeaderText="FECHA REGISTRA" SortExpression="sistemaFecha">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:ButtonField CommandName="mostrar" ShowHeader="True" Text="Ver solicitud" >
<ControlStyle CssClass="btn btn-success "></ControlStyle>
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
              </Columns>
              <EmptyDataTemplate>
                  No registra sollicitud GDH...
              </EmptyDataTemplate>
              <HeaderStyle BackColor="WhiteSmoke" />
          </asp:GridView>
          <strong>SOLICITUDES :&nbsp; </strong>POR EVALUAR
          <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z4.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; APROBADAS
          <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; OBSERVADAS
          <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_ResumenSolicitudes" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblestadoSolicitud" Name="opSol" PropertyName="Text" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          <br />
              </asp:Panel>
          <br />
          <asp:Panel ID="pSolicitudesPersonales" runat="server">
              <asp:Panel ID="pgdhAdministrar0" runat="server" BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Width="900px" Visible="False">
                  <center>
                      <h3>ADMINISTRAR SOLICITUD PERSONAL</h3>
                      <table class="auto-style1">
                          <tr>
                              <td><strong>SOLICITUD:</strong><asp:Label ID="lblidSolicitud0" runat="server" Visible="False"></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="lblnSolicitud0" runat="server"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                              <td><strong>TIPO SOLIC.:</strong></td>
                              <td>
                                  <asp:Label ID="lblDescripcionTipoSolicitud0" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td><strong>SOLICITA:</strong><asp:Label ID="lblidSolicita0" runat="server" Visible="False"></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="lblnombreSolicita0" runat="server"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                              <td><strong>F. SOLICITA:</strong></td>
                              <td>
                                  <asp:Label ID="lbFechaSolicita0" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td><strong>F. A EJECUTAR/INICIAR:</strong></td>
                              <td>
                                  <asp:Label ID="lblFechaRegistra0" runat="server"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>
                                  <asp:Label ID="lblIdTipoSolicitud0" runat="server" Visible="False"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td><strong>DETALLE:</strong></td>
                              <td colspan="4">
                                  <asp:Label ID="lblDetalle0" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td><strong>IMPORTE:</strong></td>
                              <td>
                                  <asp:TextBox ID="txtimporte0" runat="server" Enabled="False" step="0.01" type="number"></asp:TextBox>
                              </td>
                              <td>&nbsp;</td>
                              <td><strong>MONEDA:</strong></td>
                              <td>
                                  <asp:RadioButtonList ID="rbtntpmoneda0" runat="server" Enabled="False" RepeatDirection="Horizontal" Width="200px">
                                      <asp:ListItem Value="S">SOLES</asp:ListItem>
                                      <asp:ListItem Value="D">DOLARES</asp:ListItem>
                                  </asp:RadioButtonList>
                              </td>
                          </tr>
                          <tr>
                              <td>CUOTAS:</td>
                              <td>
                                  <asp:TextBox ID="txtCuotas0" runat="server" Enabled="False" type="number"></asp:TextBox>
                              </td>
                              <td>&nbsp;</td>
                              <td>
                                  <asp:Label ID="lblIdMoneda0" runat="server" Visible="False"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              <td ><strong><span>II.EVALUACIÓN GDH:</span></strong></td>
                              <td >
                                  <asp:Label ID="lblgdhEstado0" runat="server"></asp:Label>
                              </td>
                              <td ></td>
                              <td ></td>
                              <td ></td>
                          </tr>
                          <tr>
                              <td ><strong>DETALLE GDH:</strong></td>
                              <td  colspan="4">
                                  <asp:Label ID="lblgdhDetalle0" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style4"><strong>III. RESP. EVAL. SOLICITANTE:</strong></td>
                              <td class="auto-style4">
                                  <asp:Label ID="lblAsesorEstado0" runat="server"></asp:Label>
                              </td>
                              <td class="auto-style4">&nbsp;</td>
                              <td class="auto-style4">:</td>
                              <td class="auto-style4">&nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style4"><strong>DETALLE SOLICITANTE:</strong></td>
                              <td class="auto-style4" colspan="4">
                                  <asp:Label ID="lblasesorDetalle0" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td><strong>DOC. CONVENIO</strong></td>
                              <td>
                                  <asp:LinkButton ID="lbtdocAdjunto0" runat="server" OnClick="lbtdocAdjunto0_Click"></asp:LinkButton>
                              </td>
                              <td>&nbsp;</td>
                              <td colspan="2">&nbsp;</td>
                          </tr>
                          <tr>
                              <td>ADJUNTAR CONVENIO:</td>
                              <td>
                                  <asp:FileUpload ID="FileUpload1" runat="server" />
                              </td>
                              <td>&nbsp;</td>
                              <td colspan="2">
                                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR CONVENIO" />
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Label ID="lblrutatt" runat="server"></asp:Label>
                              </td>
                              <td colspan="4">
                                  <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#CC0000"></asp:Label>
                                  <asp:Label ID="bldocok" runat="server" ForeColor="#009933"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              <td><strong>ESTADO SOLICITUD:</strong></td>
                              <td>
                                  <asp:Label ID="lblSolicitudEstado0" runat="server"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              <td colspan="5">.</td>
                          </tr>
                          <tr>
                              <td>ULTIMA ACTUALIZACIÓN:</td>
                              <td>
                                  <asp:Label ID="lblFechaUltActualizacion0" runat="server"></asp:Label>
                              </td>
                              <td>&nbsp;</td>
                              <td>POR:</td>
                              <td>
                                  <asp:Label ID="lblultusuario0" runat="server"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style3" colspan="4"><strong>I<span class="auto-style3">II. DETALLE RESPUESTA DE EVALUACIÓN DEL SOLICITANTE:</span></strong></td>
                              <td class="auto-style3">&nbsp;</td>
                          </tr>
                          <tr>
                              <td colspan="5">
                                  <asp:TextBox ID="txtsOLICITANTEObservacion" runat="server" MaxLength="10" Rows="5" Style="text-transform: uppercase" TextMode="MultiLine" Width="100%"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="btnAprobarSolicitante" runat="server" BackColor="#D2F0E1" OnClick="btnAprobarSolicitante_Click" OnClientClick="return confirm('APROBAR SOLICITUD, desea confirmar aprobación?');" Text="ACEPTAR  CONDICIONES" Width="200px" />
                              </td>
                              <td>
                                  <asp:Button ID="btnObservarSolicitante" runat="server" BackColor="#FFDFDF" Text="OBSERVAR CONDICIÓN" Width="200px" OnClick="btnObservarSolicitante_Click" />
                              </td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>
                                  <asp:Button ID="btnCancelar0" runat="server" OnClick="btnCancelar0_Click" Text="CERRAR" Width="200px" />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                      </table>
                  </center>
              </asp:Panel>
              <br />
              MIS SOLICITUDES PERSONALES:<br />
              <asp:GridView ID="gvSolicituresPersonales" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvSolicituresPersonales_SelectedIndexChanged" Width="100%" OnRowCommand="gvSolicituresPersonales_RowCommand">
                  <Columns>
                      <asp:CommandField ShowSelectButton="True" HeaderText="ADMINISTRAR" />
                  <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                  <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" />
                  <asp:BoundField DataField="idUsuario" HeaderText="COD. SOLICITA" SortExpression="idUsuario" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. A EJECUTAR / INICIAR" SortExpression="fecha">
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                  <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLICITUD" SortExpression="descripcion" />
                  <asp:ImageField DataImageUrlField="GDHEstado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="EVALUACIÓN GDH">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>

                  <asp:ImageField DataImageUrlField="AsesorEstado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="EVALUACIÓN SOLICITANTE">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                   <asp:ImageField DataImageUrlField="EstadoDescuento" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="SOLICITUD ESTADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                  <asp:BoundField DataField="sistemaFecha" HeaderText="FECHA REGISTRA" SortExpression="sistemaFecha">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                       <asp:ButtonField CommandName="mostrar" ShowHeader="True" Text="Ver solicitud" >
<ControlStyle CssClass="btn btn-success "></ControlStyle>
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
                  </Columns>
                  <EmptyDataTemplate>
                      No registra solicitudes GDH, personales...
                  </EmptyDataTemplate>
              </asp:GridView>
               <strong>SOLICITUDES :&nbsp; </strong>POR EVALUAR
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Z4.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; APROBADAS
          <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; OBSERVADAS
          <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_ResumenSolicitudes_personales" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="lblestadoSolicitud" Name="opSol" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblcodusu10" Name="IdUsuario" PropertyName="Text" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
          </asp:Panel>
          <br />
          <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">+ Ver documentos formularios de convenio</asp:LinkButton>
          <br />
          <asp:Panel ID="pdocumentosConvenio" runat="server">
              <strong>
              <br />
              DOCUMENTOS FORMULARIOS DE CONVENIOS:</strong><table class="auto-style8">
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">CONV. AUT. DE DESCUENTO PRESTAMO</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">CONV. ADELANTO VACACIONAL</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">CONV. POR DESCANZO VACACIONAL</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">CONV. LICENCIA MÉDICA</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
              </table>
              <br />
              <small>* Para la aprobación de solicitudes GDH, es necesario adjuntar el documento referente correctamente firmado.</small></asp:Panel>
          <asp:Panel ID="payuda" runat="server" Visible="False">
              idestado solcitud:
              <asp:Label ID="lblestadoSolicitud" runat="server"></asp:Label>
              <br />
              Idsolicita:
              <asp:Label ID="Label1" runat="server"></asp:Label>
              <br />
              CORREOS:
              <asp:Label ID="lblcorreos" runat="server"></asp:Label>
              &nbsp;&nbsp; micorreo:
              <asp:Label ID="lblmicorreo" runat="server"></asp:Label>
          </asp:Panel>
          </div>
</asp:Content>
