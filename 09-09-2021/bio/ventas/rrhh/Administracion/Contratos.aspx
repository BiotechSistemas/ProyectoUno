<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="Contratos.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Administracion.Contratos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
     <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> CONTRATOS<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                   
                    </h2>
                </div>
              </div>
          
     
    <asp:Panel ID="payuda" runat="server" Visible="False">
        idarea
        <asp:Label ID="lblidarea" runat="server"></asp:Label>

        &nbsp;idop:
        <asp:Label ID="lblidop" runat="server" Text="3"></asp:Label>
        &nbsp;IDSELECCION :
        <asp:Label ID="blidPersonalSeleccion" runat="server"></asp:Label>

        &nbsp; CONTRATOS REGISTRADOS:&nbsp;&nbsp; /&nbsp; estado contratos :
        <asp:Label ID="lblidEstadocntratos" runat="server"></asp:Label>
     </asp:Panel>
    <div class="row">
         <div class="col-md-3">
             <strong>PLANILLA BIOTECH: </strong>
             <asp:DropDownList ID="ddlCargos" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceCargos" DataTextField="Area" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlCargos_SelectedIndexChanged"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSourceCargos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from [dbo].[tb_PlanillaAreas]"></asp:SqlDataSource>
             <asp:ListBox ID="lbPersonalTT" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="PERSONAL" DataValueField="codTrabajador" Rows="15" AutoPostBack="True" OnSelectedIndexChanged="lbPersonalTT_SelectedIndexChanged" Font-Size="Small"></asp:ListBox>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.personalHabilitadoxCargo" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblidop" Name="op1" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidarea" Name="idcargo" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>

             <asp:Button ID="btnPersonalSesado" runat="server" Text="PERSONAL CESADO" OnClick="btnPersonalSesado_Click" Width="100%" />
             </div>

           <div class="col-md-9">

               <strong>CONTRATOS REGISTRADOS:</strong>&nbsp;&nbsp;<asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Medium" Text="CONTRATOS ACTIVOS"></asp:Label>
&nbsp;<asp:LinkButton ID="lbtnVercontratos" runat="server" OnClick="lbtnVercontratos_Click" Visible="False">VER CONTRATOS</asp:LinkButton>

               &nbsp;<br />

               <asp:LinkButton ID="lbtnporVencer" runat="server" OnClick="lbtnporVencer_Click" Visible="False">CONTRATOS POR VENCER</asp:LinkButton>
              
               <asp:LinkButton ID="lbtnContratosActivos" runat="server" OnClick="lbtnContratosActivos_Click">CONTRATOS ACTIVOS</asp:LinkButton>
                &nbsp;|
               <asp:LinkButton ID="lbtncontratosvencidos" runat="server" OnClick="lbtncontratosvencidos_Click">CONTRATOS VENCIDOS</asp:LinkButton>
               
               <asp:LinkButton ID="lbtnContratosFinalizados" runat="server" OnClick="lbtnContratosFinalizados_Click" Visible="False">CONTRATOS FINALIZADOS</asp:LinkButton>
&nbsp;<asp:Panel ID="panelcontratoPrincipal" runat="server" Visible="False">
               <asp:GridView ID="gvcontratos" runat="server" CssClass="table-condensed  table-hover table-sm thead-light"  DataSourceID="SqlDataSourcecontratos" AutoGenerateColumns="False" DataKeyNames="idcontrato,idpersonal" Width="100%" OnSelectedIndexChanged="gvcontratos_SelectedIndexChanged" AllowPaging="True" Font-Size="X-Small" AllowSorting="True">
                   <Columns>
                       <asp:CommandField ShowSelectButton="True" />
                       <asp:BoundField DataField="idcontrato" HeaderText="COD" ReadOnly="True" SortExpression="idcontrato" />
                       <asp:BoundField DataField="idpersonal" HeaderText="idpersonal" SortExpression="idpersonal" Visible="False" />
                       <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" >
                       <ItemStyle Font-Size="X-Small" />
                       </asp:BoundField>
                       <asp:BoundField DataField="FINGRESO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. INGRESO" SortExpression="FINGRESO">
                       <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       </asp:BoundField>
                       <asp:BoundField DataField="FSALIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SALIDA" SortExpression="FSALIDA">
                       <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       </asp:BoundField>
                       <asp:BoundField DataField="REMUNERACION" DataFormatString="{0:0,0.00}" HeaderText="REMUNERACIÓN" SortExpression="REMUNERACION">
                       <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                       </asp:BoundField>
                       <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                        <asp:BoundField DataField="DIASTRAB" HeaderText="DIAS LABORADOS" SortExpression="DIASTRAB" />
                       <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                       	<asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                   </Columns>
                   <EmptyDataTemplate>
                       No registra contrato...
                   </EmptyDataTemplate>
                   <HeaderStyle BackColor="WhiteSmoke" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSourcecontratos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.contratosregistrados" SelectCommandType="StoredProcedure">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="blidPersonalSeleccion" Name="idpersonal" PropertyName="Text" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>

               <asp:Panel ID="Paneladmincontratos" runat="server">
                   <div class="table-responsive">
               <table class="auto-style1">
                  
                   <tr>
                       <td>
                           <asp:TextBox ID="txt10cod" runat="server" Enabled="False" Width="110px"></asp:TextBox>
                           <br />
                           <span class="auto-style3">COD:</span></td>
                       <td>
                           <asp:TextBox ID="txt10idPersonal" runat="server" Enabled="False" Width="140px"></asp:TextBox>
                           <br />
                           <span class="auto-style3">PERSONAL:</span></td>
                       <td>
                           <asp:TextBox ID="txtfechaInicia" runat="server" TextMode="Date" Width="140px" Enabled="False"></asp:TextBox>
                           <br />
                           <span class="auto-style3">F. INGRESO CONTRATO:</span></td>
                       <td>
                           <asp:TextBox ID="txtfechatermino" runat="server" TextMode="Date" Width="140px" Enabled="False"></asp:TextBox>
                           <br />
                           <span class="auto-style3">F.TERMINO CONTRATO:</span></td>
                       <td>
                           <asp:TextBox ID="txtdiasTrabajados" runat="server" Enabled="False" TextMode="Number" Width="110px"></asp:TextBox>
                           <br />
                           <span class="auto-style3">DÍAS LABORADOS:</span></td>
                   </tr>
                   <tr>
                       <td class="auto-style2">
                           <asp:TextBox ID="txt10remuneracion" runat="server" Enabled="False"  Width="110px"></asp:TextBox>
                           <br />
                           <span class="auto-style3">REMUNERACIÓN:</span></td>
                       <td class="auto-style2" colspan="3">
                           <asp:TextBox ID="txt10cargoDescripcion" runat="server" Enabled="False" Style="text-transform: uppercase" Width="450px"></asp:TextBox>
                           <br />
                           <span class="auto-style3">CARGO:</span></td>
                       <td class="auto-style2">
                           <asp:RadioButtonList ID="RadioButtonList1" runat="server" Enabled="False" RepeatDirection="Horizontal" Width="100px">
                               <asp:ListItem Value="1">SI</asp:ListItem>
                               <asp:ListItem Selected="True" Value="0">NO</asp:ListItem>
                           </asp:RadioButtonList>
                           <span class="auto-style3">HABILITADO:</span></td>
                   </tr>
                   <tr>
                       <td class="auto-style2">
                           <asp:Button ID="btnNuevo" runat="server" OnClick="Button1_Click" Text="NUEVO" Width="100px" />
                       </td>
                       <td class="auto-style2">
                           <asp:Button ID="btnregistrar" runat="server" OnClick="btnregistrar_Click" Text="REGISTRAR" Width="140px" />
                       </td>
                       <td class="auto-style2">
                           <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="MODIFICAR" Width="140px" />
                       </td>
                       <td class="auto-style2">
                           <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" OnClientClick="return confirm('Ud. desea eliminar el contrato seleeccionado?');" Text="ELIMINAR" Width="140px" />
                       </td>
                       <td class="auto-style2"></td>
                   </tr>
                   <tr>
                       <td colspan="5">
                           <asp:Label ID="lblmensajesi" runat="server" ForeColor="#006600"></asp:Label>
                           <asp:Label ID="lblmensajeno" runat="server" ForeColor="#CC0000"></asp:Label>
                       </td>
                   </tr>
               </table>
                       </div>
                   </asp:Panel>
                   </asp:Panel>

               <asp:Panel ID="pContratosopciones" runat="server">
                   <asp:GridView ID="gvcontratosRegistradosEstado" runat="server"  CssClass="table-condensed  table-hover table-sm thead-light" DataSourceID="SqlDataSourceestado" Width="100%" AutoGenerateColumns="False" DataKeyNames="idcontrato" AllowPaging="True" PageSize="20" Font-Size="X-Small">
                       <Columns>
                           <asp:BoundField DataField="idcontrato" HeaderText="COD" ReadOnly="True" SortExpression="idcontrato" />
                           <asp:BoundField DataField="idpersonal" HeaderText="idpersonal" SortExpression="idpersonal" Visible="False" />
                           <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                           <asp:BoundField DataField="FINGRESO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. INGRESO" SortExpression="FINGRESO">
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="FSALIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SALIDA" SortExpression="FSALIDA">
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="REMUNERACION" HeaderText="REMUNERACIÓN" SortExpression="REMUNERACION" DataFormatString="{0:0,0.00}" >
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                             <asp:BoundField DataField="DIASTRAB" HeaderText="DIAS LABORADOS" SortExpression="DIASTRAB" />
                           <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            	<asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                       </Columns>
                       <HeaderStyle BackColor="WhiteSmoke" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSourceestado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.EstadoContratosregistrados" SelectCommandType="StoredProcedure">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="lblidEstadocntratos" Name="op" PropertyName="Text" Type="Int32" />
                       </SelectParameters>
                   </asp:SqlDataSource>

               </asp:Panel>
             </div>

   </div>
         </div>
                
    <%--<hr />
     <div class="row">
         <div class="col-md-6">
            <i class="fa fa-users"></i> INFORME VACACIONAL 
             </div>
           <div class="col-md-6">
             <i class="fa fa-users"></i>  VACACIONES EJECUTADAS
             </div>
         </div>--%>
    
    
</asp:Content>
