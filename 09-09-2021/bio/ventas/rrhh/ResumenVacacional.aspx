<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenVacacional.aspx.cs" Inherits="biotech.bio.ventas.rrhh.ResumenVacacional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> RESUMEN VACACIONAL:
                          
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
      <asp:LinkButton ID="lbtnLegajo" runat="server"   PostBackUrl="~/bio/ventas/rrhh/ResumenVacacional.aspx">Resumen Vacacional</asp:LinkButton>
      </li>
  
     
</ol> 



      <div class="row">
         <asp:Panel ID="Panel1" runat="server" Visible="False">
             <asp:Label ID="lblop" runat="server" Text=""></asp:Label>
             <asp:Label ID="lblidAdministracion" runat="server" Text=""></asp:Label>
             &nbsp; idempleado selecc
             <asp:Label ID="lblIdempleadoSeleccionado" runat="server"></asp:Label>
         </asp:Panel>
         <asp:Button ID="btnHabilitados" runat="server" Text="TRABAJADORES HABILITADOS" OnClick="btnHabilitados_Click" /><asp:Button ID="btnCesados" runat="server" Text="TRABAJADORES CESADOS" OnClick="btnCesados_Click" />


         <br />
         <asp:Panel ID="Panel2" runat="server">
             Planilla vacacional:<br />
             <asp:GridView ID="gvPlanillaVacacional" CssClass="table table-striped table-bordered table-sm  table-hover" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Width="100%" DataKeyNames="IDPERSONAL" OnSelectedIndexChanged="gvPlanillaVacacional_SelectedIndexChanged">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />
                     <asp:BoundField DataField="IDPERSONAL" HeaderText="IDPERSONAL" SortExpression="IDPERSONAL" Visible="False" />
                     <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                     <asp:BoundField DataField="DIASLABORADOS" HeaderText="DIAS LABORADOS" ReadOnly="True" SortExpression="DIASLABORADOS" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="NCONTRATOS" HeaderText="Nª CONTRATOS" ReadOnly="True" SortExpression="NCONTRATOS" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DIASVACACIONES" HeaderText="DIAS VACACIONES" ReadOnly="True" SortExpression="DIASVACACIONES" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DIASVACGOZADAS" HeaderText="DIAS VAC. GOZADAS" ReadOnly="True" SortExpression="DIASVACGOZADAS" >
                     <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DIASVACPENDIENTES" HeaderText="DIAS VAC. PENDIENTES" ReadOnly="True" SortExpression="DIASVACPENDIENTES" DataFormatString="{0:0,0.00}" >
                     <ItemStyle ForeColor="#CC0000" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="ULTREMUNERACION" HeaderText="ULTIMA REMUNERACION" ReadOnly="True" SortExpression="ULTREMUNERACION" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="VAC_TRUNCAS" HeaderText="VACACIONES TRUNCAS" ReadOnly="True" SortExpression="VAC_TRUNCAS" DataFormatString="{0:0,0.00}" >
                     <ItemStyle ForeColor="#CC0000" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FTERMINO" HeaderText="FECHA TERMINO" SortExpression="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
                 <EmptyDataTemplate>
                     No registra información...
                 </EmptyDataTemplate>
             </asp:GridView>
             <span class="auto-style2"><small>Para aplicar el calculo vacacional, es necesario el registro total de contratos.<br /> </small></span>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.CalculoVacacional" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </asp:Panel>

          </div>
         <asp:LinkButton ID="lbtnocultar" runat="server" OnClick="lbtnocultar_Click" Visible="False">Ocultar detalles</asp:LinkButton>
         <asp:Panel ID="panelDEtalles" runat="server">
             <hr />
                         <div class="row">
                <div class="col-12 col-md-6">
                    <strong>GOCE VACACIONAL:&nbsp; </strong><span class="auto-style1">(<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </span>)
                    <asp:GridView ID="gvAsistenciaVac" class="table table-condensed table-bordered table-hover" runat="server" DataSourceID="SqlDataSourceLsitVac" Width="100%" AutoGenerateColumns="False" DataKeyNames="id" Font-Size="X-Small">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" >
                            <HeaderStyle Width="30px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                            <HeaderStyle Width="70px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                            <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                            <asp:BoundField DataField="AUTOR" HeaderText="AUTOR" SortExpression="AUTOR" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceLsitVac" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.VacacionesListar" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIdempleadoSeleccionado" Name="idempleado" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <strong>VACACIONES GOZADAS ANTERIOR A LA FECHA ASISTENCIAL:</strong>
                    <asp:Label ID="lbldiasanterioresVac" runat="server"></asp:Label>
                    &nbsp;días.</div>
                <div class="col-12 col-md-6">
                    <strong>CONTRATOS REGISTRADOS:</strong> <span class="auto-style1">(<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </span>)
                    <asp:GridView ID="gvcontratosReg" class="table table-condensed table-bordered table-hover" runat="server" DataSourceID="SqlDataSourceContratosReg" AutoGenerateColumns="False" DataKeyNames="idcontrato" Width="100%" Font-Size="X-Small">
                        <Columns>
                            <asp:BoundField DataField="idcontrato" HeaderText="COD. CONTRATO" ReadOnly="True" SortExpression="idcontrato" >
                            <HeaderStyle Width="30px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="idpersonal" HeaderText="idpersonal" SortExpression="idpersonal" Visible="False" />
                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                            <asp:BoundField DataField="FINGRESO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA INGRESO" SortExpression="FINGRESO">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FSALIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA TERMINO" SortExpression="FSALIDA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="REMUNERACION" HeaderText="REMUNERACION" SortExpression="REMUNERACION" Visible="False" />
                            <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="DIASTRAB" HeaderText="DIAS LABORADOS" SortExpression="DIASTRAB">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                     
                    <asp:SqlDataSource ID="SqlDataSourceContratosReg" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.contratosregistrados" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIdempleadoSeleccionado" Name="idpersonal" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                
              </div>
         </asp:Panel>
         <br />


</asp:Content>
