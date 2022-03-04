<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="Inasistencias.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.Inasistencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 100%;
        }
    </style>


      <script src="../../../scripts/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }

        function successError() {
            swal("Error! Pagos registrados en su totalidad!", { icon: "error",dangerMode: true, });
        }

        function successRegistrado2() {
          
            swal({
                title: "Registro correcto!",
                text: "el registro se guardo corectamente!",
                icon: "success",
                button: "Aceptar",
            })



        }
       

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
              
      <h2>CONTROL DE ASISTENCIAS<asp:Label ID="lblidUsuario" runat="server" Visible="False">ALLUZ</asp:Label>
                          <asp:Label ID="lblano" runat="server"></asp:Label>
                  -<asp:Label ID="lblmes" runat="server"></asp:Label>
                          </h2>

           <ol class="breadcrumb">
               <li>
      <asp:LinkButton ID="lbtnResumen" runat="server" OnClick="lbtnResumen_Click">Resumen</asp:LinkButton></li>
  <li>
      <asp:LinkButton ID="lbtnRegAsistencia" runat="server" OnClick="lbtnRegAsistencia_Click">Registrar inasistencia</asp:LinkButton></li>
  

</ol>

         <asp:Panel ID="Panelfaltas" runat="server">
              <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>

              <table class="auto-style1">
                  <tr>
                      <td>
                             Año:<asp:Label ID="lblopcion" runat="server" Text="1" Visible="False"></asp:Label>
                             <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="rbAno_SelectedIndexChanged" AutoPostBack="True">
                     </asp:RadioButtonList>

                      </td>
                      <td class="auto-style2">
                         <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                     </asp:DropDownList>

                      </td>
                      <td class="auto-style2">
                          <asp:LinkButton ID="lbtnMensual" CssClass="btn btn-default" runat="server" OnClick="lbtnMensual_Click" Width="100%">MENSUAL</asp:LinkButton>
                      </td>
                      <td class="auto-style2">
                          <asp:LinkButton ID="LinkButton4" CssClass="btn btn-default" runat="server" OnClick="LinkButton4_Click" Width="100%">INFORME ANUAL:</asp:LinkButton>
                      </td>
                  </tr>
                  </table>
              
                  <asp:Label ID="lblTitulo1" runat="server" style="font-size: x-large">RESUMEN MENSUAL:</asp:Label>
            
            <div class="table-responsive">
             <asp:GridView ID="gvRegistroFfaltas" Class="table  table-bordered table-sm  table-hover"  runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="IDUSUARIO">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />
                     <asp:BoundField DataField="IDUSUARIO" HeaderText="COD. USUARIO" SortExpression="IDUSUARIO" Visible="False" />
                     <asp:BoundField DataField="PERSONNAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONNAL" />
                     <asp:BoundField DataField="FALTA" HeaderText="FALTA" ReadOnly="True" SortExpression="FALTA" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="JUSTIFICADA" HeaderText="JUSTIFICADA" ReadOnly="True" SortExpression="JUSTIFICADA" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="VACACIONES" HeaderText="VACACIONES" ReadOnly="True" SortExpression="VACACIONES" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCANSO MEDICO" HeaderText="DESCANSO MEDICO" ReadOnly="True" SortExpression="DESCANSO MEDICO" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TOTAL" HeaderText="DIAS NO LABORADOS" ReadOnly="True" SortExpression="TOTAL">
                     <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
                 <EmptyDataTemplate>
                     No registra inasistencias...
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="WhiteSmoke" />
             </asp:GridView>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_ControlAsistencias" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
                <asp:Panel ID="Panelfaltas2" runat="server">
                    <asp:GridView ID="gvPlanillasPersonalFaltasDet" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" Visible="False" />
                            <asp:BoundField DataField="fecha" HeaderText="FECHA" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                            <asp:BoundField DataField="idTpAsistencia" HeaderText="idTpAsistencia" SortExpression="idTpAsistencia" Visible="False" />
                            <asp:BoundField DataField="DINASISTENCIA" HeaderText="DETALLE INASISTENCIA" SortExpression="DINASISTENCIA" />
                                <asp:BoundField DataField="OBSERV" HeaderText="DETALLE" SortExpression="OBSERV" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_PlanillaPersonalFaltasResum" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="gvRegistroFfaltas" Name="idUsurio" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                </div>
         </asp:Panel>

         <asp:Panel ID="Panelregistro" runat="server">

         <div class="panel-group" id="accordion">
   
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">RESUMEN DE INASISTENCIAS:</a>
            </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">
       
                              <asp:Panel ID="PanelDetalle" runat="server">
                      <div class="panel panel-danger">
                              <div class="panel-heading">DETALLE DE INASISTENCIAS:
                                  <asp:Label ID="lbl3fecha" runat="server" Font-Bold="True"></asp:Label>
                                  &nbsp;&nbsp;<asp:Label ID="lbl3nombre" runat="server"></asp:Label>
                                  &nbsp;<asp:Label ID="lbl2idPersonal" runat="server" ViewStateMode="Disabled"></asp:Label>
                              </div>
                             
                                   <div class="panel-body">

                      <div class="table-responsive">
                      <asp:GridView ID="gvFaltas" runat="server" AutoGenerateColumns="False" DataKeyNames="id,fecha,idTpAsistencia,idUsuario" DataSourceID="SqlDataSourcePErsonalfaltas" OnSelectedIndexChanged="gvFaltas_SelectedIndexChanged" OnRowDataBound="gvFaltas_RowDataBound">
                          <Columns>
                              <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" SelectImageUrl="~/images/editar.png" ShowDeleteButton="True" ShowSelectButton="True">
                              <ControlStyle Height="25px" Width="25px" />
                              <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:CommandField>
                              <asp:BoundField DataField="id" HeaderText="COD*" ReadOnly="True" SortExpression="id" />
                              <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" />
                              <asp:BoundField DataField="idTpAsistencia" HeaderText="idTpAsistencia" SortExpression="idTpAsistencia" Visible="False" />
                              <asp:BoundField DataField="fecha" HeaderText="F. INASISTENCIA" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DINASISTENCIA" HeaderText="INASISTENCIA" SortExpression="DINASISTENCIA" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <HeaderStyle BackColor="#F2DEDE" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcePErsonalfaltas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_PlanillaPersonalFaltas" SelectCommandType="StoredProcedure" DeleteCommand="delete tb_PlanillaPersonalInasistencias where id=@id">
                          <DeleteParameters>
                              <asp:Parameter Name="id" />
                          </DeleteParameters>
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbl2ano" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lbl2mes" Name="mes" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lbl2idPersonal" Name="idUsurio" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                          </div>
                         
                      <asp:Panel ID="PanelModifica" runat="server">
                          <div class="panel panel-danger">
                              <div class="panel-heading">ADMINISTRAR INASISTENCIA: COD*=
                                  <asp:Label ID="lbl4cod" runat="server"></asp:Label>
                              </div>
                              <div class="panel-body">

                                      <div class="form-horizontal">
                                        
                                          <div class="form-group">
                                          
                                          <div class="col-sm-2">
                                              <asp:TextBox ID="txt4fecha" readonly class="form-control" runat="server"></asp:TextBox>
                                              <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txt4fecha" Display="Dynamic" Text="Error, (dia/mes/año)" Operator="DataTypeCheck" Type="Date" Runat="Server" ForeColor="Maroon" /> 
  
                                          </div>
                                          <div class="col-sm-3">
                                              <asp:DropDownList ID="ddl4tpinasistencia" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcetpinasisten" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>
                                              <asp:SqlDataSource ID="SqlDataSourcetpinasisten" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_tipofaltas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                          </div>
                                            <div class="col-sm-4">
                                                <asp:TextBox ID="txt4descripcion" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                              <asp:Button ID="btnRegistrarJustificacion" CssClass="btn btn-warning" runat="server" Text="REGISTRAR" OnClick="btnRegistrarJustificacion_Click" />
                                              <asp:Button ID="btnCancelar" CssClass="btn btn-default" runat="server" Text="RETORNAR" OnClick="btnCancelar_Click" />
                                        </div>
                                     
                                      </div>

                              </div>
                            </div>
                      </asp:Panel>

 </div>
                          </div>

                  </asp:Panel>

<%-----------------------------------------%>
             
                   <asp:Label ID="lbl2ano" runat="server"></asp:Label>
                      <asp:Label ID="lbl2mes" runat="server"></asp:Label>
                  
                  <div class="table-responsive">
                      <asp:GridView ID="gvInasistencias" Class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceInasistencias" DataKeyNames="idUsuario,ANO,MES,FECHA,PERSONAL" OnSelectedIndexChanged="gvInasistencias_SelectedIndexChanged">
                          <Columns>
                              <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("idUsuario") %>'></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                              <asp:BoundField DataField="ANO" HeaderText="ANO" ReadOnly="True" SortExpression="ANO" Visible="False" />
                              <asp:BoundField DataField="MES" HeaderText="MES" ReadOnly="True" SortExpression="MES" Visible="False" />
                              <asp:BoundField DataField="FECHA" HeaderText="FECHA" ReadOnly="True" SortExpression="FECHA" >
                              <ItemStyle ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                              <asp:BoundField DataField="NINASISTENCIAS" HeaderText="DIAS NO LABORADOS" ReadOnly="True" SortExpression="NINASISTENCIAS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourceInasistencias" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_inasistencias_anomes" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </div>



        </div>
      </div>
    </div>
             <%----------------------------------%>


              <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">REGISTRAR INASISTENCIA</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">

            <asp:Panel ID="Panel1" runat="server">
                  <table class="nav-justified">
                      <tr>
                          <td>
                              Fecha:
                              <asp:Label ID="txtFInasistencia" runat="server"></asp:Label>
                          </td>
                          <td>
                              Área:</td>
                          <td>
                              Personal:</td>
                          <td>
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td VALIGN="TOP">
                              <asp:Calendar ID="Calendar1"  runat="server" DayNameFormat="Shortest" BackColor="White" BorderColor="#999999" CellPadding="4" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="100%">
                                  <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                  <NextPrevStyle VerticalAlign="Bottom" />
                                  <OtherMonthDayStyle ForeColor="#808080" />
                                  <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                  <SelectorStyle BackColor="#CCCCCC" />
                                  <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                  <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                  <WeekendDayStyle BackColor="#FFFFCC" />
                              </asp:Calendar>
                              </td>
                          <td VALIGN="TOP">
                              <asp:ListBox ID="lbArea" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcearea" DataTextField="Area" DataValueField="id" OnSelectedIndexChanged="lbArea_SelectedIndexChanged"></asp:ListBox>
                  <asp:SqlDataSource ID="SqlDataSourcearea" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_PlanillaAreas where estado = 1 and id>0
"></asp:SqlDataSource>
                              </td>
                          <td VALIGN="TOP">
                              <asp:ListBox ID="lbPersonal" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcePersonalarea" DataTextField="EMPLEADO" DataValueField="COD" Rows="8" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="lbPersonal_SelectedIndexChanged"></asp:ListBox>
                              <asp:SqlDataSource ID="SqlDataSourcePersonalarea" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="TrabajadoresListadosxArea" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="lbArea" Name="idArea" PropertyName="SelectedValue" Type="Int32" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                              <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" OnClick="Button1_Click" Text="REGISTRAR" Width="100%" />
                          </td>
                          
                      </tr>
                      </table>
                      <br />
                      <asp:Label ID="lblmensaje" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                      </asp:Panel>

        </div>
      </div>
    </div>

   <%-- <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Collapsible Group 3</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
      </div>
    </div>--%>




        </div>

             </asp:Panel>
     </div>
</asp:Content>
