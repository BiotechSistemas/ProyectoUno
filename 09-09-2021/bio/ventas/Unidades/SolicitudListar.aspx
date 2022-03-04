<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="SolicitudListar.aspx.cs" Inherits="biotech.bio.ventas.Unidades.SolicitudListar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../../scripts/sweetalert.min.js"></script>
    
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }

        function successAnular() {
            swal("Solicitud Anulada! Solicitud anulada correctamente...", { icon: "error",dangerMode: true, });
        }

        function successRegistrado2() {
          
            swal({
                title: "Registro correcto!",
                text: "el registro se guardo corectamente!",
                icon: "success",
                button: "Aceptar",
            })


            .then((willDelete) => {
                if (willDelete) {
    window.location.href = '/porpagar/PagosRegistrar.aspx';
        }});
        }
       
        function successRegistrado() {
          
            swal({
                title: "APROBAR SOLICITUD!",
                text: "Solicitud aprobada correctamente!",
                icon: "success",
                button: "Aceptar",
            });
        }
    </script>
    
    
    
     <style type="text/css">
        .auto-style3 {
            height: 20px;
            font-weight: bold;
            width: 189px;
        }



    th
    {
        text-align:center;
    }
        .auto-style4 {
        }
        .auto-style6 {
            width: 60px;
        }
        .auto-style8 {
            height: 20px;
            width: 189px;
        }
        .auto-style9 {
            width: 189px;
        }
        .auto-style10 {
            width: 469px;
        }
        .auto-style11 {
            height: 20px;
            width: 1293px;
        }
        .auto-style12 {
            width: 1293px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
			<h1><i class="fa fa-paste"></i>  Solicitud Técnica de Unidades:
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                 
                <asp:Label ID="lblIdUnidad" runat="server" Visible="False"></asp:Label>
                
                     </h1>
        </div>
     <div class="row">    
                    <ol class="breadcrumb">
                        
                        <li>
                        <asp:LinkButton ID="lbtSolicitud1" runat="server" OnClick="lbtSolicitud1_Click">Solic.Técnica</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtUnidadesLista1" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx">Unidades</asp:LinkButton>
                        </li>
                      
                        <li>
                        <asp:LinkButton ID="lbtResumen1" runat="server" PostBackUrl="~/bio/ventas/Unidades/RTecnico.aspx">Resumen</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtCotizacion1" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Cotización</asp:LinkButton>
                        </li>
                        
                        
                       
                    </ol>
            </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        OP =<asp:Label ID="lblopcion" runat="server" Text="10"></asp:Label>
        &nbsp;&nbsp; ESTADO=<asp:Label ID="lblEstado" runat="server"></asp:Label>
        &nbsp;&nbsp; SOLICITA=
        <asp:Label ID="lblsolicita" runat="server"></asp:Label>
        &nbsp;FECHA1:<asp:Label ID="lblFecha1" runat="server"></asp:Label>
        &nbsp; FECHA2:<asp:Label ID="lblFecha2" runat="server"></asp:Label>
        &nbsp;- nivel usuario:
        <asp:Label ID="lblnivelUsuario" runat="server"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="pPrincipal" runat="server">
    <div class="row">
        <asp:LinkButton ID="btnActualizar" CssClass="btn btn-default" runat="server" OnClick="btnActualizar_Click">Actualizar</asp:LinkButton><asp:LinkButton ID="lbtNuevaSolicitud1" CssClass="btn btn-success" runat="server" OnClick="lbtNuevaSolicitud1_Click">Nueva Solicitud Técnica</asp:LinkButton>
&nbsp;
        <hr />
        <asp:Panel ID="pAprobar" runat="server">
       
<div class="panel panel-success">
  <div class="panel-heading">APROBAR SOLICITUD
      <asp:Label ID="lblidSolicitudApro" runat="server" Visible="False"></asp:Label>
    </div>
  <div class="panel-body">
      <table class="nav-justified">
          <tr>
              <td WIDTH="250" >
                  <asp:TextBox ID="txtObservacionApprobacion" required placeholder="Detalle de aprobación..." runat="server" Width="100%"></asp:TextBox>
              </td>
              <td WIDTH="150" >
                  <asp:Button ID="btnaproreg"  runat="server" Text="REGISTRAR" OnClick="btnaproreg_Click" />
                  <asp:LinkButton ID="lbtCancelarAprob" CssClass="btn btn-default" runat="server" OnClick="lbtCancelarAprob_Click">CANCELAR</asp:LinkButton>
              </td>
          </tr>
      </table>
    </div>
</div>
    </asp:Panel>
    <asp:Panel ID="pRechazar" runat="server">
        
<div class="panel panel-danger">
  <div class="panel-heading">ANULAR SOLICITUD
      <asp:Label ID="lblidSolicitudRechazo" runat="server" Visible="False"></asp:Label>
    </div>
  <div class="panel-body">
      <table class="nav-justified">
          <tr>
              <td WIDTH="250" >
                  <asp:TextBox ID="txtObservacionRechazo" required placeholder="Detalle de observación..." runat="server" Width="100%"></asp:TextBox>
              </td>
              <td WIDTH="150" >
                  <asp:Button ID="btnRechazarReg" runat="server" Text="REGISTRAR" OnClick="btnRechazarReg_Click" ForeColor="#990000" />
                  <asp:LinkButton ID="lbtCancelarRechazo" CssClass="btn btn-default" runat="server" OnClick="lbtCancelarRechazo_Click">CANCELAR</asp:LinkButton>
              </td>
          </tr>
      </table>
    </div>
</div>

    </asp:Panel>




        <table class="nav-justified">
            <tr>
                <td class="auto-style4">

                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                        <asp:ListItem Value="10">GENERAL</asp:ListItem>
                        <asp:ListItem Value="1">POR ESTADO</asp:ListItem>
                        <asp:ListItem Value="2">POR ASESOR</asp:ListItem>
                        <asp:ListItem Value="4">POR PLACA</asp:ListItem>
                        <asp:ListItem Value="3">POR FECHA</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        </div>
    <div class="row">
        <asp:Panel ID="pAsesor" runat="server">
            INDICAR ASESOR:
            <asp:DropDownList ID="ddlSolicita" runat="server" DataSourceID="SqlDataSourceasesores" DataTextField="NOMBRELARGO" DataValueField="COD" OnSelectedIndexChanged="ddlSolicita_SelectedIndexChanged" Width="300px" AutoPostBack="True" Height="25px">
            </asp:DropDownList>
            <asp:Button ID="btnAsesor" runat="server" OnClick="btnAsesor_Click" Text="BUSCAR" />
        </asp:Panel>
        <asp:Panel ID="pEstado" runat="server">
            INDICAR ESTADO:
            <asp:DropDownList ID="ddlEstado" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged" Width="250px" Height="25px">
                <asp:ListItem Value="0">SOLIC. RECHAZADA</asp:ListItem>
                <asp:ListItem Value="1">SOLIC. APROBADA</asp:ListItem>
                <asp:ListItem Value="5">SOLIC. ATENDIDA</asp:ListItem>
                <asp:ListItem Selected="True" Value="1">SOLIC. POR APROBAR</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnEstado" runat="server" OnClick="btnEstado_Click" Text="BUSCAR" />
        </asp:Panel>
        <asp:Panel ID="pPlaca" runat="server">
            INDICAR PLACA:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlPlaca" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceUnidades" DataTextField="PLACA" DataValueField="IdEquipo" OnSelectedIndexChanged="ddlPlaca_SelectedIndexChanged" Width="250px" Height="25px">
            </asp:DropDownList>
            <asp:Button ID="btnplaca" runat="server" OnClick="btnplaca_Click" Text="BUSCAR" />
            <asp:SqlDataSource ID="SqlDataSourceUnidades" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_Unidades" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            &nbsp;</asp:Panel>
        <asp:Panel ID="pFecha" runat="server">
            INGRESAR FECHA:
            <asp:TextBox ID="txtf1" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;HASTA
            <asp:TextBox ID="txtf2" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Button ID="btnfecha" runat="server" OnClick="btnfecha_Click" Text="BUSCAR" />
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSourceasesores" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_Asesores" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="gvsolictudUND" runat="server" Class="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idsolicitud,SOLICITUD,idsolicita,PLACA,TIPO,MARCA,TITULO,DETALLE,ESTADO,FSOLICITA" DataSourceID="SqlDataSourceSolicitud" Font-Size="X-Small" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="gvsolictudUND_SelectedIndexChanged" OnRowCommand="gvsolictudUND_RowCommand" AllowSorting="True" PageSize="30">
            <Columns>
                <asp:TemplateField HeaderText="SOLICITUD" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("SOLICITUD") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    <ItemStyle Width="50px" />
                </asp:TemplateField>
                <asp:BoundField DataField="idsolicitud" HeaderText="idsolicitud" ReadOnly="True" SortExpression="idsolicitud" Visible="False" />
                <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" Visible="False" >
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="idsolicita" HeaderText="SOLICITA" SortExpression="idsolicita" >
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="fecharegistra" HeaderText="fecharegistra" SortExpression="fecharegistra" Visible="False" />
                <asp:BoundField DataField="FSOLICITA" HeaderText="F.SOLICITA" SortExpression="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" >
                <HeaderStyle Width="60px" />
                <ItemStyle Width="60px" />
                </asp:BoundField>
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="TITULO" HeaderText="DETALLE" SortExpression="TITULO" Visible="False" />
                <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" Visible="False" />
                <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA">
                <HeaderStyle Width="60px" />
                <ItemStyle Width="60px" />
                </asp:BoundField>
                <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" >
                <HeaderStyle Width="25px" />
                <ItemStyle Width="25px" />
                </asp:BoundField>
                <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />              
                     </asp:BoundField>
                       <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                        </asp:ImageField>
                
                  <asp:ImageField DataImageUrlField="idAsesorConformidad" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="**">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:ImageField>

                <asp:ButtonField CommandName="APROBAR" ShowHeader="True" Text="APROBAR" ButtonType="Button" >
                <HeaderStyle Width="25px" />
                <ItemStyle Font-Size="X-Small" Width="25px" ForeColor="#006600" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="OBSERVAR" HeaderText="OBSER" ShowHeader="True" Text="OBSER" ButtonType="Button" Visible="False" >
                <ItemStyle Width="25px" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="ANULAR" ShowHeader="True" Text="ANULAR" ButtonType="Button" >
                <HeaderStyle Width="25px" />
                <ItemStyle Width="20px" ForeColor="#990000" />
                </asp:ButtonField>
               <asp:ButtonField CommandName="ADMIN" HeaderText="AMIN" ShowHeader="True" Text="ADMIN" ButtonType="Button" >
                <HeaderStyle Width="25px" />
                <ItemStyle Width="25px" />
                </asp:ButtonField>
            
            </Columns>
            <EmptyDataTemplate>
                No registra solicitud técnica...
            </EmptyDataTemplate>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        *&nbsp; ESTADO DE SOLICITUD: APROBADA
        <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/apro1.png" Width="20px" />
     &nbsp;| RECHAZADA
        <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/apro2.png" Width="20px" />
     &nbsp;| FINALIZADA
        <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images/apro3.png" Width="20px" />
        <br />
          ** ASESOR REGISTRA CONFORMIDAD&nbsp; <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="~/images/Z1.png" Width="20px" />
        &nbsp; | ASESOR REGISTRA OBSERVACIÓN
        <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/images/Z0.png" Width="20px" />


        <asp:SqlDataSource ID="SqlDataSourceSolicitud" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_solicitud" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblEstado" Name="estado" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblsolicita" Name="idSolicita" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblFecha1" DbType="Date" Name="fsolicita1" PropertyName="Text" />
                <asp:ControlParameter ControlID="lblFecha2" DbType="Date" Name="fsolicita2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceseccion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_PlanillaEquipos_Secciones"></asp:SqlDataSource>
        <br />
        <asp:Label ID="lblmensajeGeneral" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
    </div>
 
        <br />  <hr />
    
  

        </asp:Panel>


    <asp:Panel ID="pdetalleSelecSolic" runat="server">
    <div class="row">
        <table class="nav-justified">
            <tr>
                <td colspan="4">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style6">
                                <asp:Image ID="Image5" runat="server" Height="40px" ImageUrl="~/images/tecnica.png" Width="40px" />
                            </td>
                            <td>
                                <h3>
                                    <strong>SOLICITUD TÉNICA:
                                    <asp:Label ID="lblsolicitud" runat="server" style="font-weight: 700" Text=""></asp:Label>
                                    <asp:Label ID="lblidsolicitud" runat="server" Visible="False"></asp:Label>
                                </strong>
                                    </h3>
                            </td>
                        </tr>
                    </table>
                </td>
                <td WIDTH="300">
                    <asp:LinkButton ID="LinkButton5" CssClass="btn btn-default" runat="server" OnClick="LinkButton5_Click">RETORNAR</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td width="50">&nbsp;</td>
                <td width="140">&nbsp;</td>
                <td width="300">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><b>SOLICITA:</b></td>
                <td class="auto-style10">
                    <asp:Label ID="lblnomsolicita" runat="server"></asp:Label>
                    <asp:Label ID="lblidsolicita" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>F.SOLICITA:</b></td>
                <td>
                    <asp:Label ID="lblfechaSolicita" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><b>UNIDAD:</b></td>
                <td class="auto-style10">
                    <asp:Label ID="lblUnidadv" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>ESTADO:</b></td>
                <td>
                    <asp:Label ID="lblestadosolicitud" runat="server"></asp:Label>
                    <asp:Label ID="lblidestado" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">TITULO:</td>
                <td class="auto-style11" colspan="4">
                    <asp:Label ID="lblSolicitudTitulo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><b>DETALLES TÈCNICOS:</b></td>
                <td colspan="4" class="auto-style11">
                    <asp:Label ID="lblSolicitudDetalle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>OBS/RESUMEN:</strong></td>
                <td colspan="4" class="auto-style12">
                    <asp:Label ID="lblObservacion" runat="server" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                   </td>
                <td colspan="4" class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td colspan="4" class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5"><strong>INTERVENCIONES REGISTRADAS:</strong></td>
            </tr>
            <tr>
                <td colspan="5">
                    
                    <div class="table-responsive">
                    <asp:GridView ID="gvSolcicitudOC" Class="table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="idsolicitud" HeaderText="idsolicitud" SortExpression="idsolicitud" Visible="False" />
                            <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" Visible="False" />
                            <asp:BoundField DataField="idoc" HeaderText="idoc" SortExpression="idoc" Visible="False" />
                            <asp:BoundField DataField="ORDENCOMPRA" HeaderText="OC" ReadOnly="True" SortExpression="ORDENCOMPRA" >
                            <HeaderStyle Width="70px" />
                            <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="KM" HeaderText="KM" SortExpression="KM">
                            <HeaderStyle Width="50px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="unidmed" HeaderText="unidmed" SortExpression="unidmed" Visible="False" />
                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                            <HeaderStyle Width="60px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRECIO" DataFormatString="{0:0,0.00}" HeaderText="PRECIO" SortExpression="PRECIO">
                            <HeaderStyle Width="70px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" SortExpression="SUBTOTAL">
                            <HeaderStyle Width="70px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" SortExpression="IGV">
                            <HeaderStyle Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                            <HeaderStyle Width="40px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="70px" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registra atención...
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_SolGastos_Sol" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidsolicitud" Name="idsolicitud" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                        </div>
                    <br />
                    <div class="table-responsive">
                                            <asp:GridView ID="gvImporteTT" runat="server" Class="table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourcetotal" GridLines="None" Width="500px">
                        <Columns>
                            <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB.TOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" ReadOnly="True" SortExpression="IGV">
                            <HeaderStyle ForeColor="Maroon" />
                            <ItemStyle ForeColor="Maroon" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcetotal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_SolGastos_ResumTT_Sol" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidsolicitud" Name="idsolicitud" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                        </div>
                   
                    <asp:Label ID="lblmensajesi" runat="server" ForeColor="#009933"></asp:Label>
                    <asp:Label ID="lblmensajeno" runat="server" ForeColor="Maroon"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btRegistrarREsumen" runat="server" OnClick="btRegistrarREsumen_Click" Text="Reg. RESUMEN" Width="95%" Height="60px" />
                </td>
                <td colspan="4" class="auto-style12">
                    Resumen final:<small><asp:Label ID="lblcaracteres" runat="server"></asp:Label>
                    </small>
                    <asp:TextBox ID="txtresumenfinal" placeholder="Observación / resumen ..." runat="server" Height="50px" MaxLength="10" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                   
                    <asp:LinkButton ID="lbtnAlta" runat="server"  CssClass="btn btn-warning" OnClick="lbtnAlta_Click" Width="100%">DAR DE ALTA</asp:LinkButton>
                   
                </td>
                <td class="auto-style12" colspan="4">
                    <asp:LinkButton ID="lbtnFinalizar" runat="server" CssClass="btn btn-success" OnClick="lbtnFinalizar_Click" OnClientClick=" return confirm('FINALIZAR SOLICITUD TÉCNICA,ud. confirma la atención al 100%. Desea finalizar dicha solicitud?');" Width="100%">FINALIZAR SOLICITUD</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />

    </div>
    </asp:Panel>


</asp:Content>
