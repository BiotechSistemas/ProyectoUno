<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="CuentasXCobrar.aspx.cs" Inherits="biotech.bio.ventas.CuentasXCobrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <script src="../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" type="text/css" />
 

     <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> Por cobrar<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                            <asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h2>
                            
                           <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Principal</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbletrasdescuento" runat="server" OnClick="lbletrasdescuento_Click"  >Letra Descuento</asp:LinkButton>
      </li>
                               <li>
      <asp:LinkButton ID="lbDocTransicion" runat="server" OnClick="lbDocTransicion_Click" PostBackUrl="~/bio/ventas/CtaDocTransicion.aspx">Letra Transición</asp:LinkButton>
                               </li>
      <li>
      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Reporte de Facturas</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Reporte de Letras</asp:LinkButton>
      </li>
    <li>
      <asp:LinkButton ID="lbtn10consollidado" runat="server" OnClick="lbtn10consollidado_Click" >Consolidado</asp:LinkButton>
      </li>
     <%-- <li>
      <asp:LinkButton ID="lbtnAdminLetra" runat="server" >Administrar Letra</asp:LinkButton>
      </li>--%>
 <%-- <li>&nbsp;&nbsp;</li>--%>
</ol> 
                       </div></div>

<asp:Panel ID="Panel13" runat="server" class="form-group row">
                                            <h3>REGISTRAR COBRO</h3>
                                            <strong>LETRA:</strong>
                                            <asp:Label ID="lblletra2" runat="server"></asp:Label>
                                            &nbsp;<asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <strong>CLIENTE: </strong>
                                            <asp:Label ID="lblrazon2" runat="server"></asp:Label>
                                            <br />
                                            <strong>MONEDA:&nbsp; </strong>
                                            <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                            <br />
                                            <strong>IMPORTE A PAGAR:</strong>
                                            <asp:TextBox ID="txtimporte" runat="server" Enabled="False"></asp:TextBox>
                                            <br />
                                            <strong>IMPORTE PAGADO:</strong>
                                            <asp:TextBox ID="txtimportepagado" runat="server" step="0.01" type="number"></asp:TextBox>
                                            <br />
                                            <strong>DETALLE PAGO:</strong><br />
                                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                            <br />
                                            <asp:Button ID="btRegistrarpago" runat="server" OnClick="btRegistrarpago_Click" Text="REGISTRAR" CssClass="btn btn-success" />
                                            <asp:LinkButton ID="lbProtesto" runat="server" CssClass="btn btn-default" OnClick="lbProtesto_Click">PROTESTAR</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton5" CssClass="btn btn-default" runat="server" OnClick="LinkButton5_Click">Retornar</asp:LinkButton>
                                            <br />
                                            <asp:Label ID="lblmensaje5" runat="server"></asp:Label>
                                            <br />
                                        </asp:Panel>

                <asp:Panel ID="panelAdmin" runat="server">
                    <h3>MODIFICAR FECHA DE EMISIÓN:
                        <asp:Label ID="lbl10idLetra" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbl10Letra" runat="server"></asp:Label>
                    </h3>
                    Dias de crédito:
                    <asp:Label ID="lbl10diascredito" runat="server" style="font-weight: 700"></asp:Label>
                    &nbsp;días.<table class="auto-style1">
                        <tr>
                            <td class="auto-style2">Fecha de Emisiòn:<br />
                                <asp:Label ID="lbl10femision1" runat="server" CssClass="auto-style3"></asp:Label>
                            </td>
                            <td class="auto-style2">Fecha de Vencimiento:<br />
                                <asp:Label ID="lbl10fVencimiento1" runat="server" CssClass="auto-style3"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Nueva Fecha de emisión:<br />
                                <asp:TextBox ID="txtFechaEmision1" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnCambiarFecha" runat="server" OnClick="btnCambiarFecha_Click" Text="GENERAR NUEVA FECHA" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Nueva Fecha de Emisión:<br />
                                <asp:Label ID="lbl10femision2" runat="server" CssClass="auto-style3"></asp:Label>
                            </td>
                            <td>Nueva Fecha de Vencimiento:<br />
                                <asp:Label ID="lbl10fVencimiento2" runat="server" CssClass="auto-style3"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR NUEVA FECHA" Width="100%" />
                                <br />
                                <asp:Label ID="lblmensajeFecha" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                               <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>

                </asp:Panel>
                      
<asp:Panel ID="Panel3" runat="server" class="form-group row">
            
    <div class="col-md-6">
            TOTAL GENERAL: US$.
            <asp:Label ID="lblttdolares" runat="server" style="font-weight: 700"></asp:Label>
            + S/.<asp:Label ID="lblsoles" runat="server" style="font-weight: 700"></asp:Label>
            = <strong>
            <asp:Label ID="lblttgen" runat="server"></asp:Label>
            </strong>&nbsp;Dólares
               <div class="table-responsive">

                   <table class="table table-hover table-striped" border="0">
                       <tr>
                           <td WIDTH="20" class="bg-success">&nbsp;</td>
                           <td align=center class="bg-success"><strong>
                               FACTURAS POR COBRAR</strong></td>
                           <td align=center class="bg-success"><strong>DOLARES</strong></td>
                           <td align=center class="bg-success"><strong>SOLES</strong></td>
                       </tr>
                       <tr>
                           <td>
                               <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/images/buscarr.png" OnClick="ImageButton1_Click" Width="25px" />
                           </td>
                           <td>FACTURAS<asp:Label ID="lblfacanexasttD" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblfacturasttD" runat="server" Visible="False"></asp:Label>
                           </td>
                           <td align=right>
                               <asp:Label ID="lblfacttDolares" runat="server"></asp:Label>
                           </td>
                           <td align=right>
                               <asp:Label ID="lblFactttSoles" runat="server"></asp:Label>
                               <asp:Label ID="lblfacttSolesaDolares" runat="server" Visible="False"></asp:Label>
                           </td>
                       </tr>
                   </table>
                   </div>

         <div class="table-responsive"> 
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_LetrasporCobrarFINAL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-hover table-striped" DataKeyNames="cod" DataSourceID="SqlDataSource1" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                       <Columns>
                           <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                           <ControlStyle Height="25px" Width="25px" />
                           <HeaderStyle Width="25px" />
                           </asp:CommandField>
                           <asp:BoundField DataField="cod" HeaderText="cod" SortExpression="cod" Visible="False" />
                           <asp:BoundField DataField="ESTADO" HeaderText="LETRAS POR COBRAR" SortExpression="ESTADO" />
                           <asp:BoundField DataField="DOLARES" DataFormatString="{0:0,0.00}" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES">
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="SOLES" DataFormatString="{0:0,0.00}" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES">
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                       </Columns>
                       <HeaderStyle BackColor="#DFF0D8" />
                   </asp:GridView>
        </div> 

               </div>
              
      
        </asp:Panel>


   
                      
    <asp:Panel ID="Panel2" runat="server" class="form-group row">
        
         <div class="panel panel-success">
 
              <div class="panel-heading"><strong>Detalle:<asp:Label ID="lblestadoselec" runat="server" style="font-weight: 700"></asp:Label><asp:Label ID="lblcodcod" runat="server" Visible="False"></asp:Label> &nbsp;<asp:ImageButton ID="lbtnExportarExcel" runat="server" Height="20px" ImageAlign="Top" ImageUrl="~/images/excel.png" OnClick="lbtnExportarExcel_Click" Width="18px" />
                  </strong></div>
          <div class="table-responsive"> 
              <table class="table">  

               <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderColor="#CCCCCC" Class="table table-condensed table-hover table-sm thead-light" DataKeyNames="ID,LETRA,CLIENTE,RUC" DataSourceID="SqlDataSource2" Font-Size="X-Small" GridLines="Horizontal" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True">
                                  <Columns>
                                      <asp:TemplateField HeaderText="Nº LETRA" ShowHeader="False">
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("LETRA") %>'></asp:LinkButton>
                                          </ItemTemplate>
                                          <HeaderStyle Width="100px" />
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                                      <asp:BoundField DataField="LETRA" HeaderText="Nº LETRA" ReadOnly="True" SortExpression="LETRA" Visible="False">
                                      <ControlStyle Width="90px" />
                                      <ItemStyle Font-Bold="True" />
                                      </asp:BoundField>
                                     
                                      <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION">
                                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                       <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO">
                                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                       <asp:BoundField DataField="RUC" HeaderText="RUC" ReadOnly="True" SortExpression="RUC">
                                      <%--<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />--%>
                                      </asp:BoundField>
                                      <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE">
                                      <ItemStyle HorizontalAlign="Left" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="M" SortExpression="M">
                                      <ControlStyle Width="15px" />
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="IMPORT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORT">
                                      <ControlStyle Width="90px" />
                                      <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                      <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION">
                                      <ItemStyle HorizontalAlign="Left" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" />
                                      <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" />
                                      <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" />
                                      <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FBANCO" SortExpression="FBANCO" />
                                      <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="false" />
                                      <asp:BoundField DataField="TRANS" HeaderText="D" ReadOnly="True" SortExpression="TRANS">
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                      <asp:TemplateField HeaderText="ANEXAR" SortExpression="ID">
                                          <EditItemTemplate>
                                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="Large" />
                                              <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>' Visible="False"></asp:Label>
                                          </ItemTemplate>
                                          <HeaderStyle Width="20px" />
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO">
                                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                      </asp:BoundField>
                                      <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                      <asp:BoundField DataField="HISTORIAL" HeaderText="HISTORIAL" SortExpression="HISTORIAL" >
                                      
                                      <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" Width="250px" />
                                      </asp:BoundField>
                                      
                                       <asp:ButtonField CommandName="estadocuenta"  HeaderText="RELACIÓN DOC." ShowHeader="True" Text="print" ImageUrl="~/images/cuentasestado.png" ButtonType="Image" >
                                           
                     <ControlStyle Height="26px" Width="24px" />
                     <HeaderStyle Width="32px" Font-Size="XX-Small" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                                        <asp:ButtonField CommandName="ConfirmarLetraCartera"  HeaderText="LETRA ACEPTADA" ShowHeader="True" Text="Enviar cartera"  ButtonType="Button">
                                           
                     <ControlStyle Height="26px" Width="80px" />
                     <HeaderStyle Width="32px" Font-Size="XX-Small" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                                  </Columns>
                                  <HeaderStyle BackColor="#DFF0D8" />
                                  <RowStyle BorderColor="#CCCCCC" />
                              </asp:GridView>
                
        
                              <asp:Label ID="lblmensaje" runat="server" ForeColor="Maroon" style="color: #800000"></asp:Label>
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasporestado" SelectCommandType="StoredProcedure">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="GridView1" Name="estadoletra" PropertyName="SelectedValue" Type="String" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                
            
               </table> 
              <asp:Panel ID="PanelCobroCobranzaLibre" runat="server" Visible="False">

                  <asp:Label ID="LBLT2letra" runat="server"></asp:Label>
                  <asp:LinkButton ID="lbRegCobro" runat="server" Class="btn btn-default" OnClick="lbRegCobro_Click">REGISTRAR COBRO</asp:LinkButton>
                  <asp:LinkButton ID="lblregVerletra2" runat="server" Class="btn btn-default" OnClick="lblregVerletra2_Click">VER LETRA</asp:LinkButton>

              </asp:Panel>
              <asp:Panel ID="PanelBtAccion" runat="server" >

         


                  <div>
                      <asp:Panel ID="panelporaceptar" runat="server" class="form-group row" style="text-align: center">
                          &nbsp;<asp:Label ID="Label1" runat="server" BackColor="#FF9999" BorderColor="Black" Text="_____"></asp:Label>
                          &nbsp;Letras enviadas por aceptar (15 dias de emisión)

                      </asp:Panel>

                  </div>
                      <br />
                      <asp:LinkButton ID="LBCONFIRMAR" runat="server" Class="btn btn-success" OnClick="LBCONFIRMAR_Click" Visible="False">LETRA ACEPTADA</asp:LinkButton>
                      &nbsp;&nbsp;<asp:Button ID="btcargarletras" runat="server" Class="btn btn-success" OnClick="btcargarletras_Click" Text="GENERAR DOC. TRANSICIÓN" />
                  &nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" Class="btn btn-info" OnClick="LinkButton4_Click">REGISTRAR COBRO / PROTESTAR</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" Class="btn btn-default" OnClick="LinkButton7_Click">RENOVAR LETRA</asp:LinkButton>
                      <asp:Button ID="btnAdminLetra" runat="server" Height="30px" Text="MODIFICAR FECHA" OnClick="btnAdminLetra_Click" />
                      <asp:Label ID="lblletra" runat="server" Visible="False"></asp:Label>
                      <asp:Label ID="lblidletraconfirmar" runat="server" Visible="False"></asp:Label>
             
                  </asp:Panel>
              </div>
              
        
    </asp:Panel>
   
                                
                                    <asp:Panel ID="pcartera"  class="form-group row" runat="server" style="text-align: center" Width="800px">
                                        
                                        <table class="" align="center">
                                            <tr><td style="text-align: left">
                                                    <span class="auto-style12"><strong>PROCESO DE TRANSICIÓN : DOC. N°
                                                    <asp:Label ID="lblidDocPresentado" runat="server" CssClass="auto-style18"></asp:Label>
                                                    &nbsp;
                                                    </strong></span>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="txtfechadoc" runat="server" style="text-align: left" Width="200px" Height="30px" TextMode="Date"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:DropDownList ID="ddlbestadodoc" runat="server" style="font-weight: 700" Height="30px">
                                                        <asp:ListItem Value="DSCTO">DESCUENTO</asp:ListItem>
                                                        <asp:ListItem Value="CBRAL">COBRANZA LIBRE</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr><td style="text-align: left">Nº OPERACION</td>
                                                <td style="text-align: left">FECHA</td>
                                                <td style="text-align: left">MODALIDAD</td>
                                                <td style="text-align: left">&nbsp;</td>
                                            </tr>
                                              <tr><td style="text-align: left">
                                                  <asp:DropDownList ID="ddlbanco" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="banco" DataValueField="idBanco" OnSelectedIndexChanged="ddlbanco_SelectedIndexChanged" style="font-weight: 700" Width="200px" Height="30px">
                                                  </asp:DropDownList>
                                                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [BancoCuentas]"></asp:SqlDataSource>
                                                  </td>
                                                <td style="text-align: left; font-weight: 700;">
                                                    <asp:DropDownList ID="ddlbancotipo" runat="server" DataSourceID="SqlDataSource5" DataTextField="tipo" DataValueField="ncuenta" OnSelectedIndexChanged="ddlbancotipo_SelectedIndexChanged" Width="200px" Height="30px" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [BancoCuentaDetalle] WHERE ([idcuentabanco] = @idcuentabanco)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlbanco" Name="idcuentabanco" PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                  </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="txtnumerocuenta" runat="server" style="background-color: #FFFFCC" Height="30px"></asp:TextBox>
                                                  </td>
                                                <td style="text-align: left">&nbsp;</td>
                                            </tr>
                                              <tr><td style="text-align: left">BANCO</td>
                                                <td style="text-align: left">TIPO</td>
                                                <td style="text-align: left">NUMERO CUENTA</td>
                                                <td style="text-align: left">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">NÚMERO DE PLANILLA:</td>
                                                <td colspan="3" style="text-align: left">
                                                    Nro.
                                                    <asp:TextBox ID="txtglosadoc" runat="server" placeholder="12345645" Width="170px" style="background-color: #FFFFCC" Height="30px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">&nbsp;</td>
                                                <td colspan="3" style="text-align: left">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">IMPORTE ACOMULADO:</td>
                                                <td colspan="3" style="text-align: left">
                                                    <asp:Label ID="lblimporteSeleccionado" runat="server" Font-Size="Large"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">LETRA(S):<asp:Label ID="lblmaxDetalleDocPresent" runat="server"></asp:Label>
                                                </td>
                                                <td colspan="3" style="text-align: left">
                                                    <asp:Label ID="lblcadenaLETRAS" runat="server" style="font-weight: 700"></asp:Label>
                                                    <asp:Label ID="lblcadenaLETRASid" runat="server" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">CANTIDAD DE LETRA(S):</td>
                                                <td colspan="3" style="text-align: left"><span class="auto-style12">
                                                    <asp:Label ID="lblcantidadLetrasSelec" runat="server"></asp:Label>
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style13" style="text-align: left">
                                                    <asp:Label ID="lblcadenaplanilla" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style13" colspan="3" style="text-align: left">
                                                    <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style13" style="text-align: left">&nbsp;</td>
                                                <td class="auto-style13" colspan="3" style="text-align: left">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" style="text-align: center">
                                                    <asp:Button ID="ButtonREGISTRARDOCUMENTO" runat="server" Class="btn btn-success" OnClick="ButtonREGISTRARDOCUMENTO_Click" Text="REGISTRAR DOCUMENTO DE TRANSICIÓN" />
                                                    <asp:LinkButton ID="LinkButton6" runat="server" Class="btn btn-default" OnClick="LinkButton5_Click">Retornar</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                        <div style="text-align: right">
                                            <asp:Label ID="lblmensajedoc" runat="server" style="text-align: right; color: #FF0000"></asp:Label>
                                        </div>
                                    <br />
                                


                                    </asp:Panel>



                                        


              <div class="form-group row"></div>

                             
      
    

</asp:Content>
