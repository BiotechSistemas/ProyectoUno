<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="PanillaRemuneracion.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.PanillaRemuneracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            width: 426px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
    <div class="container-fluid">

              <h3>PLANILLA DE REMUNERACIONES: <asp:Label ID="lblano1" runat="server"></asp:Label>
                  /<asp:Label ID="lblmes1" runat="server"></asp:Label>&nbsp;&nbsp; IMP. GENERAL: S/.
                         <asp:Label ID="lblImportettGeneral" runat="server" Text="0"></asp:Label>
          </h3>
        <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>

              <table class="auto-style1">
                  <tr>
                      <td>
                             PERIODO:<asp:Label ID="lblidGrupo" runat="server" Text="0" Visible="False"></asp:Label>
                             <asp:Label ID="lblEstadoGrati" runat="server" Text="0" Visible="False"></asp:Label>
                             <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px" OnSelectedIndexChanged="rbAno_SelectedIndexChanged" AutoPostBack="True">
                     </asp:RadioButtonList>

                      </td>
                      <td class="auto-style2">
                         <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                     </asp:DropDownList>

                      </td>
                  </tr>
                  </table>


              <asp:Panel ID="PanelAREAS" runat="server">
                  <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1area" Width="800px" DataKeyNames="idArea" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Font-Size="X-Small">
                      <Columns>
                          <asp:TemplateField HeaderText="AREA PLANILLA" ShowHeader="False">
                              <ItemTemplate>
                                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("AREAPLANILLA") %>'></asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="idArea" HeaderText="COD. ÁREA" SortExpression="idArea" Visible="False" />
                          <asp:BoundField DataField="AREAPLANILLA" HeaderText="AREA PLANILLA" ReadOnly="True" SortExpression="AREAPLANILLA" Visible="False" />
                          <asp:BoundField DataField="CANTIDAD" HeaderText="N° PERSONAL" ReadOnly="True" SortExpression="CANTIDAD" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="REMBRUTTA" HeaderText="REMUNERACIÓN BRUTA" ReadOnly="True" SortExpression="REMBRUTTA" DataFormatString="{0:0,0.00}" Visible="False" >
                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="TOTALAPERCIBIR" HeaderText="REMUNERACIÓN A PERCIBIR" ReadOnly="True" SortExpression="TOTALAPERCIBIR" DataFormatString="{0:0,0.00}" >
                          <HeaderStyle BackColor="#EBFCF0" />
                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                          </asp:BoundField>
                          <asp:BoundField DataField="ESSALUD" HeaderText="ESSALUD" ReadOnly="True" SortExpression="ESSALUD" DataFormatString="{0:0,0.00}" >
                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="EPS" HeaderText="EPS" ReadOnly="True" SortExpression="EPS" DataFormatString="{0:0,0.00}" >
                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                          </asp:BoundField>
                      </Columns>
                      <FooterStyle BackColor="WhiteSmoke" />
                      <HeaderStyle BackColor="WhiteSmoke" />
                  </asp:GridView>
                  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Visible="False">General</asp:LinkButton>
                  <asp:SqlDataSource ID="SqlDataSource1area" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_areasListadoPeriodo" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </asp:Panel>


        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="gvPlanilla0" runat="server" class=" table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcePlanillla" Font-Size="X-Small" OnSelectedIndexChanged="gvPlanilla0_SelectedIndexChanged" BorderStyle="None" OnRowDataBound="gvPlanilla0_RowDataBound" ShowFooter="True" Width="1200px">
                <Columns>
                    <asp:CommandField SelectText="Ver Boleta" ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" Visible="False" />
                    <asp:BoundField DataField="perido" HeaderText="perido" SortExpression="perido" Visible="False" />
                    <asp:BoundField DataField="IDAREA" HeaderText="COD. AREA" SortExpression="IDAREA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PERIODOPLANILLA" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODOPLANILLA" >
                    <HeaderStyle Width="250px" />
                    </asp:BoundField>
                   
                    

                    <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" >
                    <HeaderStyle Width="300px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIAS_LAB" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DIAS_LAB" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUELDOBASICO" HeaderText="SUELDO BASICO" SortExpression="SUELDOBASICO" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#EBFCF0" Width="200px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ASIGFAM" HeaderText="ASIG. FAM." SortExpression="ASIGFAM" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FALTAS" HeaderText="FALTAS" SortExpression="FALTAS" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                    </asp:BoundField>
                    <asp:BoundField DataField="VACACIONES" HeaderText="VACACIONES" SortExpression="VACACIONES" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBSIDIO" HeaderText="SUBSIDIO" SortExpression="SUBSIDIO" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BCOMPLLIMIENTO" HeaderText="BONO CUMPTO." SortExpression="BCOMPLLIMIENTO" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BEXTRA" HeaderText="BONO EXTRA" SortExpression="BEXTRA" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="INSDESEMPENO" HeaderText="INS. DESEMP." SortExpression="INSDESEMPENO" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTALREMBRUTA" HeaderText="REMUNERACIÓN BRUTA" SortExpression="TOTALREMBRUTA" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#EBFCF0" Width="200px" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_ONP" HeaderText="ONP" ReadOnly="True" SortExpression="D_ONP" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_IMP_ONP" HeaderText="IMP. ONP" SortExpression="D_IMP_ONP" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_AFP" HeaderText="AFP" SortExpression="D_AFP" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_AOBLIGATORIO" HeaderText="AFP OBLIG." SortExpression="D_AOBLIGATORIO" DataFormatString="{0:0,0.00}" Visible="False" >
                    <ControlStyle BackColor="#FDF4F5" />
                    <HeaderStyle BackColor="#FDF4F5" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_COMISIONRA" HeaderText="COMISION R.A." SortExpression="D_COMISIONRA" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_PRIMASEGURO" HeaderText="PRIMA SEGURO" SortExpression="D_PRIMASEGURO" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_TOTALAFP" HeaderText="TT.  AFP" SortExpression="D_TOTALAFP" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENTA5" HeaderText="REN. QUINTA" SortExpression="RENTA5" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#FDF4F5" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_TTDESCUENTOS" HeaderText="TOTAL RETENCIONES" SortExpression="D_TTDESCUENTOS" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#FDF4F5" Width="200px" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                    </asp:BoundField>
                    <asp:BoundField DataField="REMUNERACIONNETA" HeaderText="REM. NETA" SortExpression="REMUNERACIONNETA" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle Width="200px" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DSCTOINTERNO" HeaderText="DSCTO. INTERNO" SortExpression="DSCTOINTERNO" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DSCTOEPS" HeaderText="DSCTO EPS" SortExpression="DSCTOEPS" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                      <asp:BoundField DataField="DSCTOJDICIAL" HeaderText="DSCTO JUDICIAL" SortExpression="DSCTOJDICIAL" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle ForeColor="#CC0000" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#CC0000" />
                        </asp:BoundField>
                    <asp:BoundField DataField="TTREMPERCIBIR" HeaderText="REMUNERACIÓN A PERCIBIR" SortExpression="TTREMPERCIBIR" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle BackColor="#EBFCF0" />
                    <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTALAPORTESESSALUD" HeaderText="APORT. ESSALUD" SortExpression="TOTALAPORTESESSALUD" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#E0F3FE" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TTAPORTACIONESEPS" HeaderText="PORT. EPS" SortExpression="TTAPORTACIONESEPS" DataFormatString="{0:0,0.00}" Visible="False" >
                    <HeaderStyle BackColor="#E0F3FE" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FCIERRE" HeaderText="FECHA CIERRE" SortExpression="FCIERRE" Visible="False">
                    <HeaderStyle BackColor="#E0F3FE" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#EEF2F5" />
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
              <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/excel.png" OnClick="ImageButton1_Click" Width="30px" />
            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Exportar</asp:LinkButton>
              </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" Visible="False">

            <div class="table-responsive">
                <asp:GridView ID="gvPlanilla" runat="server" class="table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcePlanillla" Font-Size="X-Small" OnSelectedIndexChanged="gvPlanilla_SelectedIndexChanged" Width="100%">
                    <Columns>
                        <asp:CommandField SelectText="Ver Boleta" ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" Visible="False" />
                        <asp:BoundField DataField="perido" HeaderText="perido" SortExpression="perido" Visible="False" />
                         <asp:BoundField DataField="IDAREA" HeaderText="COD. AREA" SortExpression="IDAREA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                        <asp:BoundField DataField="PERIODOPLANILLA" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODOPLANILLA" >
                        </asp:BoundField>
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                        <asp:BoundField DataField="DIAS_LAB" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DIAS_LAB" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUELDOBASICO" HeaderText="SUELDO BASICO" SortExpression="SUELDOBASICO" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ASIGFAM" HeaderText="ASIG. FAM." SortExpression="ASIGFAM" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FALTAS" HeaderText="FALTAS" SortExpression="FALTAS" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VACACIONES" HeaderText="VACACIONES" SortExpression="VACACIONES" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUBSIDIO" HeaderText="SUBSIDIO" SortExpression="SUBSIDIO" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="BCOMPLLIMIENTO" HeaderText="BONO CUMPTO." SortExpression="BCOMPLLIMIENTO" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BEXTRA" HeaderText="BONO EXTRA" SortExpression="BEXTRA" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="INSDESEMPENO" HeaderText="INS. DESEMP." SortExpression="INSDESEMPENO" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="BPRODUCTIVIDAD" HeaderText="BONO PRODUCTV." SortExpression="BPRODUCTIVIDAD" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="BCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BCONTRATO" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="IMPSUBPEDITADA" HeaderText="MOV. SUPEDITADA" SortExpression="IMPSUBPEDITADA" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="TOTALREMBRUTA" HeaderText="TT REM. BRUTA" SortExpression="TOTALREMBRUTA" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_ONP" HeaderText="ONP" ReadOnly="True" SortExpression="D_ONP" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_IMP_ONP" HeaderText="IMP. ONP" SortExpression="D_IMP_ONP" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_AFP" HeaderText="AFP" SortExpression="D_AFP" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_AOBLIGATORIO" HeaderText="AFP OBLIG." SortExpression="D_AOBLIGATORIO" DataFormatString="{0:0,0.00}" >
                        <ControlStyle BackColor="#FDF4F5" />
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_COMISIONRA" HeaderText="COMISION R.A." SortExpression="D_COMISIONRA" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_PRIMASEGURO" HeaderText="PRIMA SEGURO" SortExpression="D_PRIMASEGURO" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_TOTALAFP" HeaderText="TT.  AFP" SortExpression="D_TOTALAFP" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RENTA5" HeaderText="REN. QUINTA" SortExpression="RENTA5" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="D_TTDESCUENTOS" HeaderText="TT. RETENCIONES" SortExpression="D_TTDESCUENTOS" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                        </asp:BoundField>
                        <asp:BoundField DataField="REMUNERACIONNETA" HeaderText="REM. NETA" SortExpression="REMUNERACIONNETA" DataFormatString="{0:0,0.00}" >
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DSCTOINTERNO" HeaderText="DSCTO. INTERNO" SortExpression="DSCTOINTERNO" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DSCTOEPS" HeaderText="DSCTO EPS" SortExpression="DSCTOEPS" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                          <asp:BoundField DataField="DSCTOJDICIAL" HeaderText="DSCTO JUDICIAL" SortExpression="DSCTOJDICIAL" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle ForeColor="#CC0000" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#CC0000" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TTREMPERCIBIR" HeaderText="REM. PERCIBIR" SortExpression="TTREMPERCIBIR" DataFormatString="{0:0,0.00}" >
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TOTALAPORTESESSALUD" HeaderText="APORT. ESSALUD" SortExpression="TOTALAPORTESESSALUD" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#E0F3FE" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TTAPORTACIONESEPS" HeaderText="PORT. EPS" SortExpression="TTAPORTACIONESEPS" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#E0F3FE" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FCIERRE" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA CIERRE" SortExpression="FCIERRE">
                        <HeaderStyle BackColor="#E0F3FE" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourcePlanillla" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_listadoPeriodo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblidGrupo" Name="idGrupo" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/images/excel.png" OnClick="ImageButton2_Click" Width="30px" />
                    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Exportar</asp:LinkButton>
                    </div>
        </asp:Panel>


              <br />
              <asp:LinkButton ID="lbtnvcontable" runat="server" OnClick="lbtnvcontable_Click">Vista detallada</asp:LinkButton>
              <asp:LinkButton ID="lbtnvResumen" runat="server" OnClick="lbtnvResumen_Click" Visible="False">Vista resumida</asp:LinkButton>


              <br />
              <br />
              <asp:Panel ID="Panel3" runat="server">
                  AGRUPACIÓN BANCARIA:<asp:GridView ID="gvGrupoBanco" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGRUPOBANCO" Width="800px">
                      <Columns>
                          <asp:BoundField DataField="banco" HeaderText="banco" SortExpression="banco" Visible="False" />
                          <asp:BoundField DataField="DETALLEBANCO" HeaderText="DETALLE BANCO" SortExpression="DETALLEBANCO" />
                          <asp:BoundField DataField="TOTALAPERCIBIR" HeaderText="TOTAL A PERCIBIR" ReadOnly="True" SortExpression="TOTALAPERCIBIR" DataFormatString="{0:0,0.00}" >
                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                          </asp:BoundField>
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSourceGRUPOBANCO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_PlanillaBancosPeriodo" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <br />
                  Detalle de cuentas:<br />
                  <asp:GridView ID="gvDetBanco" runat="server" class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDetBanco" Width="800px">
                      <Columns>
                          <asp:BoundField DataField="banco" HeaderText="banco" SortExpression="banco" Visible="False" />
                          <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                          <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                          <asp:BoundField DataField="DETALLEBANCO" HeaderText="DETALLE BANCO" SortExpression="DETALLEBANCO" DataFormatString="{0:0,0.00}" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="NCUENTA" HeaderText="N° CUENTA" SortExpression="NCUENTA" DataFormatString="{0:0,0.00}" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:BoundField>
                          <asp:BoundField DataField="IMP_TOTAL" HeaderText="IMP. TOTAL" ReadOnly="True" SortExpression="IMP_TOTAL" DataFormatString="{0:0,0.00}" >
                          <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                          </asp:BoundField>
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSourceDetBanco" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_PlanillaBancosDetallePeriodo" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </asp:Panel>


    </div>
    

       
            
            

</asp:Content>
