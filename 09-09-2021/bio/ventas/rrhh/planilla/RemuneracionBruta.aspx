<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="RemuneracionBruta.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.RemuneracionBruta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
    <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
    <div class="container-fluid">
              
    
          <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>



        

       
             <table class="nav-justified">
                 <tr>
                     <td>  <h3>PRE PLANILLA: <asp:Label ID="lblano1" runat="server"></asp:Label>
                  /<asp:Label ID="lblmes1" runat="server"></asp:Label>&nbsp;&nbsp; IMP. GENERAL: S/.
                         <asp:Label ID="lblImportettGeneral" runat="server" Text="0"></asp:Label>
          </h3>
                        <a href="https://e-consulta.sunat.gob.pe/cl-at-ittipcam/tcS01Alias" target="_blank">SUNAT TP. CAMBIO</a> &nbsp; VENTA:
                             <asp:Label ID="lbltpCambiocierremesVENTA" runat="server"></asp:Label>
         

                     &nbsp;|&nbsp; COMPRA:
                             <asp:Label ID="lbltpCambiocierremesCOMPRA" runat="server"></asp:Label>
         

                     </td>
                     <td WIDTH="150">
                         AÑO:<asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px" OnSelectedIndexChanged="rbAno_SelectedIndexChanged" AutoPostBack="True">
                     </asp:RadioButtonList>
                          </td>
                     <td WIDTH="150">
                         MES:<asp:Label ID="lblEstadoGrati" runat="server" Text="0" Visible="False"></asp:Label>
                         <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                     </asp:DropDownList>
                          </td>
                    
                 </tr>
                 </table>
          <asp:Panel ID="Panel1" runat="server" Visible="False">
              <asp:Label ID="lblNPersonal5ta" runat="server"></asp:Label>
              <asp:Label ID="lblnPErsonalRegistrados" runat="server"></asp:Label>
              &nbsp; BONOAPLAZADO:
              <asp:Label ID="lblimportebonoAplazado" runat="server"></asp:Label>
              &nbsp;-
              <asp:Label ID="lblCodUsuarioBonoAplazado" runat="server"></asp:Label>
          </asp:Panel>

       
             



     <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading">
                 <strong>
                  PLANILLA ASESORES COMERCIALES:</strong>
                              <asp:Label ID="lblidUsuario" runat="server" Visible="False">ALLUZ</asp:Label>
                          &nbsp;
                          S/.<asp:Label ID="lbltt1" runat="server">0</asp:Label>
                 

                          </div>
              <div class="panel-body">

                 <%-- <div class="table-responsive">--%>

                      <strong>ASESOR COMERCIAL: ICA</strong><asp:Label ID="lblzona1" runat="server" Text="2" Visible="False"></asp:Label>

                      &nbsp;<small> IMP. PLANILLA: S/.<asp:Label ID="lblI" runat="server"></asp:Label>
                  <br />PRESUPUESTO:US$ <asp:Label ID="lblPreIcaD" runat="server"></asp:Label>
                    &nbsp;VENTA :&nbsp; US$
                    <asp:Label ID="lblventaIcaD" runat="server" style="font-weight: 700"></asp:Label>
                &nbsp; |&nbsp; Tipo cambio: PRESUPUESTO
                    S/.
                    <asp:Label ID="lblPreIcaS" runat="server"></asp:Label>
                    &nbsp; VENTA:
                    S/.
                    <asp:Label ID="lblVentaIcaS" runat="server"></asp:Label></small>
                    &nbsp;<div class="table-responsive">
                      <asp:GridView ID="GridViewICA" runat="server" class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL,NODLABORADOS,DIAS_VACACIONES,IMPBASICO,ASIGFAMILIAR,IMP_FALTAS,IMP_VACACIONES,BONOCUMPLIMIENTOAPLAZADO,BONOEXTRACUMPLIMIENTO,BONOXDESEMPENO,BONOPEDIDATA,VALORONP,RETENCIONID,ROBLIGATORIO,RCOMISION,RPRIMA,IMPQUINTA,DESCUENTOSEQUIPOSOTROS,DESCUENTOSEPS,TOTALAPORTEESSALUD,TOTALAPORTEEPS,DIASSUBSIDIOS,IMPSUBSIDIO,TTREMBRUTA,BONOXPRODUCTIVIDAD,BONOXCONTRATO,BASICO,BONOCUMPLIMIENTO,COMISIONRESULTADO" DataSourceID="SqlDataSource1" Font-Size="X-Small" OnSelectedIndexChanged="GridViewICA_SelectedIndexChanged" OnRowCommand="GridViewICA_RowCommand">
                          <Columns>
                              <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="200px" />
                                  <ItemStyle Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" >
                              <HeaderStyle Width="200px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            
                                <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="NODLABORADOS" HeaderText="DIAS NO LAB." ReadOnly="True" SortExpression="NODLABORADOS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="D. V." ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIASSUBSIDIOS" HeaderText="D. S." ReadOnly="True" SortExpression="DIASSUBSIDIOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                            
                             
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BASICO" HeaderText="SUELDO BASICO" ReadOnly="True" SortExpression="BASICO" DataFormatString="{0:0,0.00}" >                            
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="IMP. NO LAB." ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="IMP. VAC." ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPSUBSIDIO" HeaderText="IMP SUB." ReadOnly="True" SortExpression="IMPSUBSIDIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" Visible="False"  SortExpression="VENTA" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" Visible="False"  SortExpression="ACTUAL_PRESUP" />
                             <asp:BoundField DataField="BONOCUMPLIMIENTOAPLAZADO" HeaderText="B/C APLAZADO" ReadOnly="True" Visible="true" SortExpression="BONOCUMPLIMIENTOAPLAZADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True"  Visible="true"  SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." SortExpression="BONOXDESEMPENO" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXPRODUCTIVIDAD" HeaderText="BONO PRODUCTIVIDAD" SortExpression="BONOXPRODUCTIVIDAD" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BONOXCONTRATO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUB" SortExpression="BONOPEDIDATA" Visible="false"  DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="AFP OBLIG." ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="COM. % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REM. NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO INTERNOS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
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
                         
                              <asp:BoundField DataField="ASESORPORCENTAJE2" HeaderText="INTERV. % VENTA" ReadOnly="True" SortExpression="ASESORPORCENTAJE2" DataFormatString="{0:0,0.0000}" >                         
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ImpExdenteRangueado" HeaderText="IMP. EXTRA APLI. RANGO %" ReadOnly="True" Visible="false" SortExpression="ImpExdenteRangueado" DataFormatString="{0:0,0.0000}" >
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" Visible="False" >
                              <HeaderStyle BackColor="#FFCC99" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFCC99" />
                              </asp:BoundField>
                              <asp:ButtonField CommandName="aplazarbono" HeaderText="APLAZAR" ShowHeader="True"  Text="COMISIÓN" ButtonType="Button" >
                              <HeaderStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              <ItemStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              </asp:ButtonField>


                                <asp:BoundField DataField="BONOCOMISION" HeaderText="COMISION BASE" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISION" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOCOMISIONDESCUENTO" HeaderText="COM % DESCUENTO" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISIONDESCUENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="COMISIONRESULTADO" HeaderText="COMISION RESULTADO" ReadOnly="True"  Visible="true"  SortExpression="COMISIONRESULTADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <HeaderStyle BackColor="WhiteSmoke" />
                      </asp:GridView></div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_remBruta_AsesorZona" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblzona1" Name="idzona" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  <strong>
                  <br />
                  ASESOR COMERCIAL: PIURA</strong> <asp:Label ID="lblzona2" runat="server" Text="1" Visible="False"></asp:Label>
                   &nbsp;
                  <small>
                      IMP. PLANILLA:
                      S/.
                  <asp:Label ID="lblP" runat="server"></asp:Label>
                      <br />
                       PRESUPUESTO: US$ <asp:Label ID="lblPrePiura" runat="server"></asp:Label>
                    &nbsp;VENTA :
                    US$
                    <asp:Label ID="lblventaPiuraD" runat="server" style="font-weight: 700"></asp:Label>
                  &nbsp; | Tipo cambio: PRESUPUESTO
                    S/.
                    <asp:Label ID="lblPrePiraS" runat="server"></asp:Label>
                    &nbsp; VENTA:&nbsp; S/.<asp:Label ID="lblVentaPiuraS" runat="server"></asp:Label>
                  </small>
                  <div class="table-responsive">
                  <asp:GridView ID="GridViewPIURA" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL,NODLABORADOS,DIAS_VACACIONES,IMPBASICO,ASIGFAMILIAR,IMP_FALTAS,IMP_VACACIONES,BONOCUMPLIMIENTOAPLAZADO,BONOEXTRACUMPLIMIENTO,BONOXDESEMPENO,BONOPEDIDATA,VALORONP,RETENCIONID,ROBLIGATORIO,RCOMISION,RPRIMA,IMPQUINTA,DESCUENTOSEQUIPOSOTROS,DESCUENTOSEPS,TOTALAPORTEESSALUD,TOTALAPORTEEPS,DIASSUBSIDIOS,IMPSUBSIDIO,TTREMBRUTA,BONOXPRODUCTIVIDAD,BONOXCONTRATO,BASICO,BONOCUMPLIMIENTO,COMISIONRESULTADO" DataSourceID="SqlDataSourcePIURA" Font-Size="X-Small" OnSelectedIndexChanged="GridViewPIURA_SelectedIndexChanged" OnRowCommand="GridViewPIURA_RowCommand">
                      <Columns>
                              <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="200px" />
                                  <ItemStyle Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" >
                              <HeaderStyle Width="200px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            
                                <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="NODLABORADOS" HeaderText="DIAS NO LAB." ReadOnly="True" SortExpression="NODLABORADOS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="D. V." ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIASSUBSIDIOS" HeaderText="D. S." ReadOnly="True" SortExpression="DIASSUBSIDIOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                            
                             
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BASICO" HeaderText="SUELDO BASICO" ReadOnly="True" SortExpression="BASICO" DataFormatString="{0:0,0.00}" >                            
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="IMP. NO LAB." ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="IMP. VAC." ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPSUBSIDIO" HeaderText="IMP SUB." ReadOnly="True" SortExpression="IMPSUBSIDIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" Visible="False"  SortExpression="VENTA" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" Visible="False"  SortExpression="ACTUAL_PRESUP" />
                             <asp:BoundField DataField="BONOCUMPLIMIENTOAPLAZADO" HeaderText="B/C APLAZADA" ReadOnly="True" Visible="true" SortExpression="BONOCUMPLIMIENTOAPLAZADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True"  Visible="true"  SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." SortExpression="BONOXDESEMPENO" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXPRODUCTIVIDAD" HeaderText="BONO PRODUCTIVIDAD" SortExpression="BONOXPRODUCTIVIDAD" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BONOXCONTRATO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUB" SortExpression="BONOPEDIDATA" Visible="false"  DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="AFP OBLIG." ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="COM. % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REM. NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO INTERNOS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
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
                         
                              <asp:BoundField DataField="ASESORPORCENTAJE2" HeaderText="INTERV. % VENTA" ReadOnly="True" SortExpression="ASESORPORCENTAJE2" DataFormatString="{0:0,0.0000}" >                         
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ImpExdenteRangueado" HeaderText="IMP. EXTRA APLI. RANGO %" ReadOnly="True" Visible="false" SortExpression="ImpExdenteRangueado" DataFormatString="{0:0,0.0000}" >
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" Visible="False" >
                              <HeaderStyle BackColor="#FFCC99" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFCC99" />
                              </asp:BoundField>
                              <asp:ButtonField CommandName="aplazarbono" HeaderText="APLAZAR" ShowHeader="True"  Text="COMISIÓN" ButtonType="Button" >
                              <HeaderStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              <ItemStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              </asp:ButtonField>


                                <asp:BoundField DataField="BONOCOMISION" HeaderText="COMISION BASE" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISION" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOCOMISIONDESCUENTO" HeaderText="COM % DESCUENTO" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISIONDESCUENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="COMISIONRESULTADO" HeaderText="COMISION RESULTADO" ReadOnly="True"  Visible="true"  SortExpression="COMISIONRESULTADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                      </Columns>
                      <HeaderStyle BackColor="WhiteSmoke" />
                  </asp:GridView>
                      </div>
                  <asp:SqlDataSource ID="SqlDataSourcePIURA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_remBruta_AsesorZona" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblzona2" Name="idzona" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <strong>ASESOR COMERCIAL: CHICLAYO</strong> <asp:Label ID="lblzona3" runat="server" Text="4" Visible="False"></asp:Label>
                  &nbsp;<small>  IMP. PLANILLA:  S/.
                  <asp:Label ID="lblCH" runat="server"></asp:Label>
                  
                      <br />
                      PRESUPUESTO:US$ <asp:Label ID="lblPreChiclayo" runat="server"></asp:Label>
                    &nbsp;VENTA :
                    US$
                    <asp:Label ID="lblventaChiclayoD" runat="server" style="font-weight: 700"></asp:Label>
                  &nbsp; | Tipo cambio: PRESUPUESTO
                    S/.
                    <asp:Label ID="lblPreChiclayoS" runat="server"></asp:Label>
                    &nbsp; VENTA:
                    S/.
                    <asp:Label ID="lblVentaChiclayoS" runat="server"></asp:Label>
                  </small>
                  <div class="table-responsive">
                  <asp:GridView ID="GridViewCHICLAYO" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL,NODLABORADOS,DIAS_VACACIONES,IMPBASICO,ASIGFAMILIAR,IMP_FALTAS,IMP_VACACIONES,BONOCUMPLIMIENTOAPLAZADO,BONOEXTRACUMPLIMIENTO,BONOXDESEMPENO,BONOPEDIDATA,VALORONP,RETENCIONID,ROBLIGATORIO,RCOMISION,RPRIMA,IMPQUINTA,DESCUENTOSEQUIPOSOTROS,DESCUENTOSEPS,TOTALAPORTEESSALUD,TOTALAPORTEEPS,DIASSUBSIDIOS,IMPSUBSIDIO,TTREMBRUTA,BONOXPRODUCTIVIDAD,BONOXCONTRATO,BASICO,BONOCUMPLIMIENTO,COMISIONRESULTADO" DataSourceID="SqlDataSourceCHICLAYO" Font-Size="X-Small" OnSelectedIndexChanged="GridViewCHICLAYO_SelectedIndexChanged" OnRowCommand="GridViewCHICLAYO_RowCommand">
                     <Columns>
                              <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="200px" />
                                  <ItemStyle Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" >
                              <HeaderStyle Width="200px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            
                                <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="NODLABORADOS" HeaderText="DIAS NO LAB." ReadOnly="True" SortExpression="NODLABORADOS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="D. V." ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIASSUBSIDIOS" HeaderText="D. S." ReadOnly="True" SortExpression="DIASSUBSIDIOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                            
                             
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BASICO" HeaderText="SUELDO BASICO" ReadOnly="True" SortExpression="BASICO" DataFormatString="{0:0,0.00}" >                            
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="IMP. NO LAB." ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="IMP. VAC." ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPSUBSIDIO" HeaderText="IMP SUB." ReadOnly="True" SortExpression="IMPSUBSIDIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" Visible="False"  SortExpression="VENTA" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" Visible="False"  SortExpression="ACTUAL_PRESUP" />
                             <asp:BoundField DataField="BONOCUMPLIMIENTOAPLAZADO" HeaderText="B/C APLAZADA" ReadOnly="True" Visible="true" SortExpression="BONOCUMPLIMIENTOAPLAZADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True"  Visible="true"  SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." SortExpression="BONOXDESEMPENO" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXPRODUCTIVIDAD" HeaderText="BONO PRODUCTIVIDAD" SortExpression="BONOXPRODUCTIVIDAD" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BONOXCONTRATO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUB" SortExpression="BONOPEDIDATA" Visible="false"  DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="AFP OBLIG." ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="COM. % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REM. NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO INTERNOS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
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
                         
                              <asp:BoundField DataField="ASESORPORCENTAJE2" HeaderText="INTERV. % VENTA" ReadOnly="True" SortExpression="ASESORPORCENTAJE2" DataFormatString="{0:0,0.0000}" >                         
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ImpExdenteRangueado" HeaderText="IMP. EXTRA APLI. RANGO %" ReadOnly="True" Visible="false" SortExpression="ImpExdenteRangueado" DataFormatString="{0:0,0.0000}" >
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" Visible="False" >
                              <HeaderStyle BackColor="#FFCC99" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFCC99" />
                              </asp:BoundField>
                              <asp:ButtonField CommandName="aplazarbono" HeaderText="APLAZAR" ShowHeader="True"  Text="COMISIÓN" ButtonType="Button" >
                              <HeaderStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              <ItemStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              </asp:ButtonField>


                                <asp:BoundField DataField="BONOCOMISION" HeaderText="COMISION BASE" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISION" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOCOMISIONDESCUENTO" HeaderText="COM % DESCUENTO" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISIONDESCUENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="COMISIONRESULTADO" HeaderText="COMISION RESULTADO" ReadOnly="True"  Visible="true"  SortExpression="COMISIONRESULTADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                          </Columns>
                      <HeaderStyle BackColor="WhiteSmoke" />
                  </asp:GridView>
                    </div>
                  <asp:SqlDataSource ID="SqlDataSourceCHICLAYO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_remBruta_AsesorZona" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                          <asp:ControlParameter ControlID="lblzona3" Name="idzona" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                 

                  </div>

                </div>
         <br />

          <div class="panel panel-default">
              <div class="panel-heading">
                 <strong>
                  PLANILLA GERENCIA COMERCIAL / APOYO TÉCNICO:</strong><asp:Label ID="lblZonatecnica" runat="server" Text="3" Visible="False"></asp:Label>
                  &nbsp;IMP. PLANILLA: S/.
                  <asp:Label ID="lbltt2" runat="server">0</asp:Label>
                  </div>
              <div class="table-responsive">
                  <strong>
                      <asp:GridView ID="GridViewICA0" runat="server" class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL,NODLABORADOS,DIAS_VACACIONES,IMPBASICO,ASIGFAMILIAR,IMP_FALTAS,IMP_VACACIONES,BONOCUMPLIMIENTOAPLAZADO,BONOEXTRACUMPLIMIENTO,BONOXDESEMPENO,BONOPEDIDATA,VALORONP,RETENCIONID,ROBLIGATORIO,RCOMISION,RPRIMA,IMPQUINTA,DESCUENTOSEQUIPOSOTROS,DESCUENTOSEPS,TOTALAPORTEESSALUD,TOTALAPORTEEPS,DIASSUBSIDIOS,IMPSUBSIDIO,TTREMBRUTA,BONOXPRODUCTIVIDAD,BONOXCONTRATO,BASICO,BONOCUMPLIMIENTO,COMISIONRESULTADO" DataSourceID="SqlDataSource1gc" Font-Size="X-Small" OnSelectedIndexChanged="GridViewICA0_SelectedIndexChanged" OnRowCommand="GridViewICA0_RowCommand">
                          <Columns>
                              <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="200px" />
                                  <ItemStyle Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" >
                              <HeaderStyle Width="200px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            
                                <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="NODLABORADOS" HeaderText="DIAS NO LAB." ReadOnly="True" SortExpression="NODLABORADOS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="D. V." ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIASSUBSIDIOS" HeaderText="D. S." ReadOnly="True" SortExpression="DIASSUBSIDIOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                            
                             
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BASICO" HeaderText="SUELDO BASICO" ReadOnly="True" SortExpression="BASICO" DataFormatString="{0:0,0.00}" >                            
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="IMP. NO LAB." ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="IMP. VAC." ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPSUBSIDIO" HeaderText="IMP SUB." ReadOnly="True" SortExpression="IMPSUBSIDIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" Visible="False"  SortExpression="VENTA" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" Visible="False"  SortExpression="ACTUAL_PRESUP" />
                             <asp:BoundField DataField="BONOCUMPLIMIENTOAPLAZADO" HeaderText="B/C APLAZADO" ReadOnly="True" Visible="true" SortExpression="BONOCUMPLIMIENTOAPLAZADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True"  Visible="true"  SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." SortExpression="BONOXDESEMPENO" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXPRODUCTIVIDAD" HeaderText="BONO PRODUCTIVIDAD" SortExpression="BONOXPRODUCTIVIDAD" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BONOXCONTRATO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUB" SortExpression="BONOPEDIDATA" Visible="false"  DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="AFP OBLIG." ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="COM. % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REM. NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO INTERNOS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
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
                         
                              <asp:BoundField DataField="ASESORPORCENTAJE2" HeaderText="INTERV. % VENTA" ReadOnly="True" SortExpression="ASESORPORCENTAJE2" DataFormatString="{0:0,0.0000}" >                         
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ImpExdenteRangueado" HeaderText="IMP. EXTRA APLI. RANGO %" ReadOnly="True" Visible="false" SortExpression="ImpExdenteRangueado" DataFormatString="{0:0,0.0000}" >
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" Visible="False" >
                              <HeaderStyle BackColor="#FFCC99" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#FFCC99" />
                              </asp:BoundField>
                              <asp:ButtonField CommandName="aplazarbono" HeaderText="APLAZAR" ShowHeader="True"  Text="COMISIÓN" ButtonType="Button" >
                              <HeaderStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              <ItemStyle BackColor="#FFCC99" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                              </asp:ButtonField>


                                <asp:BoundField DataField="BONOCOMISION" HeaderText="COMISION BASE" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISION" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOCOMISIONDESCUENTO" HeaderText="COM % DESCUENTO" ReadOnly="True"  Visible="true"  SortExpression="BONOCOMISIONDESCUENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="COMISIONRESULTADO" HeaderText="COMISION RESULTADO" ReadOnly="True"  Visible="true"  SortExpression="COMISIONRESULTADO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFEBD7" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <HeaderStyle BackColor="WhiteSmoke" />
                      </asp:GridView></strong> 
                      <asp:SqlDataSource ID="SqlDataSource1gc" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_remBruta_AsesorZonaGC" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />

                          </SelectParameters>
                      </asp:SqlDataSource>
              <asp:GridView ID="GridViewTecnico" runat="server" class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL,NODLABORADOS,DIAS_VACACIONES,IMPBASICO,ASIGFAMILIAR,IMP_FALTAS,IMP_VACACIONES,BONOCUMPLIMIENTO,BONOEXTRACUMPLIMIENTO,BONOXDESEMPENO,BONOPEDIDATA,VALORONP,RETENCIONID,ROBLIGATORIO,RCOMISION,RPRIMA,IMPQUINTA,DESCUENTOSEQUIPOSOTROS,DESCUENTOSEPS,TOTALAPORTEESSALUD,TOTALAPORTEEPS,DIASSUBSIDIOS,IMPSUBSIDIO,TTREMBRUTA,BONOXPRODUCTIVIDAD,BONOXCONTRATO,BASICO" DataSourceID="SqlDataSourceTECNICO" Font-Size="X-Small" OnSelectedIndexChanged="GridViewTecnico_SelectedIndexChanged">
                 <Columns>
                             <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="200px" />
                                  <ItemStyle Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" >
                              <HeaderStyle Width="200px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            
                                <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="NODLABORADOS" HeaderText="DIAS NO LAB." ReadOnly="True" SortExpression="NODLABORADOS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="D. V." ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIASSUBSIDIOS" HeaderText="D. S." ReadOnly="True" SortExpression="DIASSUBSIDIOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                            
                             
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                                <asp:BoundField DataField="BASICO" HeaderText="SUELDO BASICO" ReadOnly="True" SortExpression="BASICO" DataFormatString="{0:0,0.00}" >
                             
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="IMP. NO LAB." ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="IMP. VAC." ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPSUBSIDIO" HeaderText="IMP SUB" ReadOnly="True" SortExpression="IMPSUBSIDIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" Visible="False"  SortExpression="VENTA" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" Visible="False"  SortExpression="ACTUAL_PRESUP" />
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" Visible="False" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True"  Visible="False"  SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." SortExpression="BONOXDESEMPENO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                           <asp:BoundField DataField="BONOXCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BONOXCONTRATO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUB" SortExpression="BONOPEDIDATA" Visible="false"  DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="AFP OBLIG." ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="COM. % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REM. NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO INTERNOS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
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
                  <HeaderStyle BackColor="WhiteSmoke" />
              </asp:GridView>
                  &nbsp;</div>
              <asp:SqlDataSource ID="SqlDataSourceTECNICO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_remBruta_TecnicosZona" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblZonatecnica" Name="idzona" PropertyName="Text" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
              </div>

         <br />

           <div class="panel panel-default">
              <div class="panel-heading">
                 <strong>
                  PLANILLA ADMINISTRACIÓN:</strong>
                              <asp:Label ID="Label1" runat="server" Visible="False">ALLUZ</asp:Label>
                          
                          &nbsp; IMP. PLANILLA: S/. <asp:Label ID="lbltt3" runat="server"></asp:Label>

                 
                          </div>
          
                  <div class="table-responsive">
                  <asp:GridView ID="gvAdministrativa" class="table table-condensed table-bordered table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="CODPERSONAL,NODLABORADOS,DIAS_VACACIONES,IMPBASICO,ASIGFAMILIAR,IMP_FALTAS,IMP_VACACIONES,BONOCUMPLIMIENTO,BONOEXTRACUMPLIMIENTO,BONOXDESEMPENO,BONOPEDIDATA,VALORONP,RETENCIONID,ROBLIGATORIO,RCOMISION,RPRIMA,IMPQUINTA,DESCUENTOSEQUIPOSOTROS,DESCUENTOSEPS,TOTALAPORTEESSALUD,TOTALAPORTEEPS,DIASSUBSIDIOS,IMPSUBSIDIO,TTREMBRUTA,BONOXPRODUCTIVIDAD,BONOXCONTRATO,BASICO" DataSourceID="SqlDataSourceAdmin" Font-Size="X-Small" OnRowDataBound="gvAdministrativa_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="gvAdministrativa_SelectedIndexChanged">
                      <Columns>
                               <asp:TemplateField HeaderText="PERSONAL" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERSONAL") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="200px" />
                                  <ItemStyle Font-Size="X-Small" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" ReadOnly="True" SortExpression="CODPERSONAL" Visible="False" />
                              <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" Visible="False" />
                              <asp:BoundField DataField="CUENTACORRIENTE" HeaderText="CUENTACORRIENTE" SortExpression="CUENTACORRIENTE" Visible="False" />
                              <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" >
                              <HeaderStyle Width="200px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" Visible="False" />
                            
                                <asp:BoundField DataField="DLABORADOS" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DLABORADOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="NODLABORADOS" HeaderText="DIAS NO LAB." ReadOnly="True" SortExpression="NODLABORADOS" >
                              <ItemStyle ForeColor="#990000" HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIAS_VACACIONES" HeaderText="D. V." ReadOnly="True" SortExpression="DIAS_VACACIONES" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIASSUBSIDIOS" HeaderText="D. S." ReadOnly="True" SortExpression="DIASSUBSIDIOS" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                            
                             
                              <asp:BoundField DataField="OPASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="OPASIGFAMILIAR" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BASICO" HeaderText="SUELDO BASICO" ReadOnly="True" SortExpression="BASICO" DataFormatString="{0:0,0.00}" >
                             
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBASICO" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="IMPBASICO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ASIGFAMILIAR" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_FALTAS" HeaderText="IMP. NO LAB." ReadOnly="True" SortExpression="IMP_FALTAS" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#990000" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMP_VACACIONES" HeaderText="IMP. VAC." ReadOnly="True" SortExpression="IMP_VACACIONES" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPSUBSIDIO" HeaderText="IMP SUB." ReadOnly="True" SortExpression="IMPSUBSIDIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="ACTUAL_VENTA" HeaderText="ACTUAL_VENTA" ReadOnly="True" Visible="False"  SortExpression="VENTA" />
                              <asp:BoundField DataField="ACTUAL_PRESUP" HeaderText="PRESUP" ReadOnly="True" Visible="False"  SortExpression="ACTUAL_PRESUP" />
                              <asp:BoundField DataField="BONOCUMPLIMIENTO" HeaderText="BONO CUMP." ReadOnly="True" Visible="False" SortExpression="BONOCUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOEXTRACUMPLIMIENTO" HeaderText="BONO EXTRA" ReadOnly="True"  Visible="False"  SortExpression="BONOEXTRACUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="BONOXDESEMPENO" HeaderText="INSENT. DESEMP." SortExpression="BONOXDESEMPENO" Visible="false"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXPRODUCTIVIDAD" HeaderText="BONO PRODUCTV." SortExpression="BONOXPRODUCTIVIDAD"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="BONOXCONTRATO" HeaderText="BONO CONTRATO" SortExpression="BONOXCONTRATO"  DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#DCFCE0" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="BONOPEDIDATA" HeaderText="MOV. SUB" SortExpression="BONOPEDIDATA"  DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="ROBLIGATORIO" HeaderText="AFP OBLIG." ReadOnly="True" SortExpression="ROBLIGATORIO" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#FFE1E1" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="RCOMISION" HeaderText="COM. % RA" ReadOnly="True" SortExpression="RCOMISION" DataFormatString="{0:0,0.00}" >
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
                              <asp:BoundField DataField="REMUNERACION_NETA" HeaderText="REM. NETA" ReadOnly="True" SortExpression="REMUNERACION_NETA" DataFormatString="{0:0,0.00}" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              <ItemStyle BackColor="#E2F9D2" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IDZONA" HeaderText="IDZONA" SortExpression="IDZONA" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="NPERSONAL" HeaderText="NPERSONAL" ReadOnly="True" SortExpression="NPERSONAL" Visible="False" >
                              <HeaderStyle BackColor="#E2F9D2" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DESCUENTOSEQUIPOSOTROS" HeaderText="DSCTO INTERNOS" ReadOnly="True" SortExpression="DESCUENTOSEQUIPOSOTROS" DataFormatString="{0:0,0.00}" >
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
                      <HeaderStyle Font-Size="X-Small" BackColor="WhiteSmoke" />
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



  <SMALL>
         <table >
           
                      <tr>
                          <td class="auto-style4">&nbsp;</td>
                          <td>INGRESO DEL TRABAJADOR </td>
                      </tr>
                      <tr>
                          <td class="auto-style43">&nbsp;</td>
                          <td>RETENCIONES A CARGO DEL TRABAJADOR</td>
                      </tr>
                  </table>
 </SMALL>
            <asp:Panel ID="Panel2" runat="server">
                <hr />
                
                <strong>PLANILLA FINAL SEGÚN PERIODO:</strong>
                <div class="table-responsive">
                <asp:GridView ID="gvPlanilla" runat="server" class=" table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcePlanillla" Font-Size="X-Small" OnSelectedIndexChanged="gvPlanilla_SelectedIndexChanged" Width="100%" OnRowCommand="gvPlanilla_RowCommand">
                    <Columns>
                        <asp:CommandField SelectText="Ver Boleta" ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" Visible="False" />
                        <asp:BoundField DataField="perido" HeaderText="perido" SortExpression="perido" Visible="False" />
                        <asp:BoundField DataField="PERIODOPLANILLA" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODOPLANILLA" >
                        </asp:BoundField>
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                        <asp:BoundField DataField="DIAS_LAB" HeaderText="DIAS LAB." ReadOnly="True" SortExpression="DIAS_LAB" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="IBASE" HeaderText="SUELDO BÁSICO" SortExpression="IBASE" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                        </asp:BoundField>

                        <asp:BoundField DataField="SUELDOBASICO" HeaderText="REM. BRUTA" SortExpression="SUELDOBASICO" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ASIGFAM" HeaderText="ASIG. FAM." SortExpression="ASIGFAM" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FALTAS" HeaderText="DIAS NO LAB." SortExpression="FALTAS" DataFormatString="{0:0,0.00}" >
                       <HeaderStyle BackColor="#EBFCF0" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#CC0000" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VACACIONES" HeaderText="IMP. VAC." SortExpression="VACACIONES" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#EBFCF0" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUBSIDIO" HeaderText="IMP. SUB." SortExpression="SUBSIDIO" DataFormatString="{0:0,0.00}" >
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
                         <asp:BoundField DataField="IMPSUBPEDITADA" HeaderText="MOV. SUBPEDITADA" SortExpression="IMPSUBPEDITADA" DataFormatString="{0:0,0.00}" >
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
                        <asp:BoundField DataField="D_TTDESCUENTOS" HeaderText="TT. DSTOS" SortExpression="D_TTDESCUENTOS" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle BackColor="#FDF4F5" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
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
                         <asp:ButtonField CommandName="eliminar" HeaderText="" ShowHeader="True" Text="Eliminar" />
               
                    </Columns>
                    <EmptyDataTemplate>
                        No registra cierre de planilla...
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourcePlanillla" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_listadoPeriodo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblmes1" Name="mes" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="0" Name="idGrupo" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                <br />
                <asp:SqlDataSource ID="SqlDataSourcePagosListar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planillaPagosListar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </asp:Panel>
            <br />
            <asp:Panel ID="pBonoxCuumplimiento" runat="server">
            </asp:Panel>
         </div>
        </div>
</asp:Content>
