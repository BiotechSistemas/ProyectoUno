<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="RemuneracionAdministrativa.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.RemuneracionAdministrativa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }

      .auto-style4 {
            width: 27px;
            background-color: #DCFCE0;
        }
         .auto-style43 {
            width: 27px;
            background-color: #FFE1E1;
        }

        </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
              
      <h3>PLANILLA ADMINISTRATIVA: <asp:Label ID="lblano1" runat="server"></asp:Label>
                  /<asp:Label ID="lblmes1" runat="server"></asp:Label>&nbsp;<asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>



        </h3>

       
             <table class="auto-style1">
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>AÑO</td>
                          <td>:</td>
                          <td>
                     <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px" OnSelectedIndexChanged="rbAno_SelectedIndexChanged" AutoPostBack="True">
                     </asp:RadioButtonList>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style2">MES</td>
                          <td class="auto-style2">:</td>
                          <td class="auto-style2">
                     <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                     </asp:DropDownList>
                          </td>
                          <td class="auto-style2">&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>

                 <asp:Panel ID="Panel1" runat="server" Visible="False">
                      <tr>
                          <td>Nº Personal habilitado<br />
&nbsp;(BÁSICO &gt;=2500)</td>
                          <td>&nbsp;</td>
                          <td>
                              <asp:Label ID="lblNPersonal5ta" runat="server"></asp:Label>
&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>Nº Registros en periodo</td>
                          <td>:</td>
                          <td>
                              <asp:Label ID="lblnPErsonalRegistrados" runat="server"></asp:Label>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>

                 </asp:Panel>

                  </table>
      

     <div class="panel-group">
            <div class="panel panel-success">
              <div class="panel-heading">
                <h3> <strong>
                  PLANILLA ADMINISTRACIÓN:</strong>
                              <asp:Label ID="lblidUsuario" runat="server" Visible="False">ALLUZ</asp:Label>
                          &nbsp;</h3>
                          </div>
              <div class="panel-body">
                  <div class="table-responsive">
                  <asp:GridView ID="gvAdministrativa" class="table table-condensed table-bordered table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL" DataSourceID="SqlDataSourceAdmin" Font-Size="X-Small" OnRowDataBound="gvAdministrativa_RowDataBound" ShowFooter="True">
                      <Columns>
                         <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                              <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NODLABORADOS" HeaderText="NODLABORADOS" ReadOnly="True" SortExpression="NODLABORADOS" Visible="False" />
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="DIAS VACACIONES" ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="IMP. BASICO" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="FALTAS" ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="VACACIONES" ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" SortExpression="VENTA" Visible="False" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" SortExpression="ACTUAL_PRESUP" Visible="False" />
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" Visible="False" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True" SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" Visible="False" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." ReadOnly="True" SortExpression="BONOXDESEMPENO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUBPEDITADA" ReadOnly="True" SortExpression="BONOPEDIDATA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="TTREMBRUTA" HeaderText="TOTAL REM. BRUTA" ReadOnly="True" SortExpression="TTREMBRUTA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" Font-Bold="True" />
                              <ItemStyle Font-Bold="True" BackColor="#DCFCE0" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ONP" HeaderText="ONP" ReadOnly="True" SortExpression="ONP" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              </asp:BoundField>
                              <asp:BoundField DataField="VALORONP" HeaderText="ONP" ReadOnly="True" SortExpression="VALORONP" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RETENCIONID" HeaderText="RETENCIONID" ReadOnly="True" SortExpression="RETENCIONID" Visible="False" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RETENCIONDESCRIPCION" HeaderText="AFP" ReadOnly="True" SortExpression="RETENCIONDESCRIPCION" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="APORTE ROBLIGATORIO" ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="RCOMISION % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RPRIMA" HeaderText="PRIMA SEGURO" ReadOnly="True" SortExpression="RPRIMA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="TOTAL_AFP" HeaderText="TOTAL AFP" ReadOnly="True" SortExpression="TOTAL_AFP" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle BackColor="#FFEBE6" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPQUINTA" HeaderText="RENTA 5TA" ReadOnly="True" SortExpression="IMPQUINTA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="TOTALDESCUENTO" HeaderText="TOTAL DSCTO" ReadOnly="True" SortExpression="TOTALDESCUENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle BackColor="#FFE1E1" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REMUNERACION NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO EQUIPO/OTROS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle Font-Bold="True" ForeColor="#990000" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEPS" HeaderText="DSCTO EPS" ReadOnly="True" SortExpression="DESCUENTOSEPS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle ForeColor="#0066FF" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="REMUNERACIONAPERCIBIR" HeaderText="REM. A PERCIBIR" ReadOnly="True" SortExpression="REMUNERACIONAPERCIBIR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="TOTALAPORTEESSALUD" HeaderText="APORTE ESSALUD" ReadOnly="True" SortExpression="TOTALAPORTEESSALUD" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#99CCFF" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="TOTALAPORTEEPS" HeaderText="APORTE EPS" ReadOnly="True" SortExpression="TOTALAPORTEEPS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#99CCFF" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                      </Columns>
                  </asp:GridView>
                      </div>
                  <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_remBruta_Administrativo" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                          <asp:Parameter DefaultValue="2" Name="idzona" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>

                  </div>
                </div>

         <table >
                      <tr>
                          <td class="auto-style4">&nbsp;</td>
                          <td>INGRESO DEL TRABAJADOR</td>
                      </tr>
                      <tr>
                          <td class="auto-style43">&nbsp;</td>
                          <td>RETENCIONES A CARGO DEL TRABAJADOR</td>
                      </tr>
                  </table>
         </div>
    </div>
    

</asp:Content>
