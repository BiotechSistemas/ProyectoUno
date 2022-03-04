<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ReqSistemas.aspx.cs" Inherits="biotech.bio.ventas.Admin.ReqSistemas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    th
    {
        text-align:center;
    }
         .auto-style1 {
             width: 600px;
         }
         .auto-style3 {
             width: 115px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="page-header"><i class="glyphicon fa-laptop"></i> CUADRO DE ACTIVADES<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
     </h2>
    <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                        <asp:GridView ID="gvActividades" class="table table-condensed table-striped table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idactividad" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvActividades_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="ACTIVIDAD" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ACTIV") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="80px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="idactividad" HeaderText="idactividad" ReadOnly="True" SortExpression="idactividad" Visible="False" />
                                <asp:BoundField DataField="ACTIV" HeaderText="ACTIV" SortExpression="ACTIV" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                                <asp:BoundField DataField="ENCARGADO" HeaderText="AREA" SortExpression="ENCARGADO" />
                                <asp:BoundField DataField="codEncargado" HeaderText="codEncargado" SortExpression="codEncargado" Visible="False" />
                                <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
                                <asp:BoundField DataField="FINICIO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.INICIO" SortExpression="FINICIO" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DIAS2" HeaderText="DIAS2" SortExpression="DIAS2" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                <asp:BoundField DataField="V1" HeaderText="V1" SortExpression="V1" />
                                <asp:BoundField DataField="ejecutar" HeaderText="ejecutar" SortExpression="ejecutar" />
                                <asp:BoundField DataField="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.TERMINO" ReadOnly="True" SortExpression="FTERMINO">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ORDEN" SortExpression="ORDEN" >
                                <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="30px" />
                                <ItemStyle Font-Size="XX-Small" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                No se encontraron registros...
                            </EmptyDataTemplate>
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cuadroAct" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                                <asp:ControlParameter ControlID="lblusuario" DefaultValue="" Name="idUsuario" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Label ID="lblusuario" runat="server" Text="RICAR"></asp:Label>
                        </div>
                  </div>
   </div>
     <div class="row">
         <div class="col-md-6">
         <table class="auto-style1">
             <tr>
                 <td class="auto-style3">ENCARGADO:</td>
                 <td>
                     <asp:Label ID="lblencargado" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">DESCRIPCIÓN:</td>
                 <td colspan="4">
                     <asp:Label ID="lbldescripcion" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">F.INICIO:</td>
                 <td>
                     <asp:Label ID="lblfechaInicio" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">DIAS EJECUCIÓN:</td>
                 <td>
                     <asp:Label ID="lbldiasEjecucion" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>V.GERENCIA:</td>
                 <td>
                     <asp:Label ID="lblvgerencia1" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">ESTADO EJEC.:</td>
                 <td>
                     <asp:Label ID="lblestadoEjecucion" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">PRORROGA</td>
                 <td>
                     <asp:Label ID="lbldprorroga" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>V.PRORROGA:</td>
                 <td>
                     <asp:Label ID="lblvGerencia2Pro" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">DETALLE PROR.</td>
                 <td>
                     <asp:Label ID="lblDestProrroga" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">V. ENCARGADO:</td>
                 <td>
                     <asp:Label ID="lblvEncargado" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">DETALLE</td>
                 <td colspan="4">
                     <asp:Label ID="lblDetalleVEncargado" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">SUSTENTO:</td>
                 <td colspan="4">
                     <asp:Label ID="lblsustento" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>

         </div>
           <div class="col-md-6">


               DETALLE:<br />
               <asp:Label ID="lbldetalle" runat="server"></asp:Label>


               </div>

    <br />
    <br />
     <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                        <asp:GridView ID="gvFinalizado" class="table table-condensed table-striped table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idactividad" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:TemplateField HeaderText="ACTIVIDAD" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ACTIV") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="80px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="idactividad" HeaderText="idactividad" ReadOnly="True" SortExpression="idactividad" Visible="False" />
                                <asp:BoundField DataField="ACTIV" HeaderText="ACTIV" SortExpression="ACTIV" ReadOnly="True" />
                                <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                                <asp:BoundField DataField="ENCARGADO" HeaderText="AREA" SortExpression="ENCARGADO" />
                                <asp:BoundField DataField="codEncargado" HeaderText="codEncargado" SortExpression="codEncargado" Visible="False" />
                                <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
                                <asp:BoundField DataField="FINICIO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.INICIO" SortExpression="FINICIO" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DIAS2" HeaderText="DIAS2" SortExpression="DIAS2" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                <asp:BoundField DataField="V1" HeaderText="V1" SortExpression="V1" />
                                <asp:BoundField DataField="ejecutar" HeaderText="ejecutar" SortExpression="ejecutar" />
                                <asp:BoundField DataField="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.TERMINO" ReadOnly="True" SortExpression="FTERMINO">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ORDEN" SortExpression="ORDEN" Visible="False" >
                                <HeaderStyle Width="30px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                No se encontraron registros....
                            </EmptyDataTemplate>
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_cuadroAct" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="3" Name="estado" Type="Int32" />
                                <asp:ControlParameter ControlID="lblusuario" DefaultValue="" Name="idUsuario" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                  </div>
   </div>

</asp:Content>
