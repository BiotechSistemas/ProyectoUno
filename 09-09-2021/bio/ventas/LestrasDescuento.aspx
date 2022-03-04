<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="LestrasDescuento.aspx.cs" Inherits="biotech.bio.ventas.LestrasDescuento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style26 {
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" type="text/css" />

    <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> LETRAS EN DESCUENTO <asp:Label ID="lbltitulo" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblbanco" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label></h2>
                         
                           <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Principal</asp:LinkButton>
      </li>
                               <li>
      <asp:LinkButton ID="lbletrasdescuento" runat="server" OnClick="lbletrasdescuento_Click"  >Letra Descuento</asp:LinkButton>
      </li>
                               <li>
      <asp:LinkButton ID="lbDocTransicion" runat="server" OnClick="lbDocTransicion_Click">Letra Transición</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="LinkButtonFPAGADAS" runat="server" OnClick="LinkButtonFPAGADAS_Click" >Fact. pagadas</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Letras pagadas</asp:LinkButton>
      </li>
    
  
</ol> 
                       </div></div>
    <asp:Panel ID="PanelBANCOS" runat="server" Class="row">
    <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/scotiabank.jpg" OnClick="ImageButton1_Click" Width="200px" />
    
    <asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/banbif.jpg" OnClick="ImageButton2_Click" Width="200px" />
    
    <asp:ImageButton ID="ImageButton3" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/bcp.jpg" OnClick="ImageButton3_Click" Width="200px" />
        <asp:ImageButton ID="IBinterbank" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/interbank.jpg" OnClick="IBinterbank_Click" Width="200px" />
</asp:Panel>

    <asp:Panel ID="PanelPrincipal" runat="server" Class="row">
        <br />
       
        <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" class="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="COD,LETRA" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" ShowFooter="True" Font-Size="X-Small">
            <Columns>
                <asp:TemplateField HeaderText="LETRA" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("LETRA") %>' ForeColor="#006600"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" Visible="False">
                <HeaderStyle Width="85px" />
                <ItemStyle BackColor="#EEF5E0" Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FECHA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO">
                <HeaderStyle Width="80px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
                <ItemStyle Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="MONEDA" SortExpression="MONEDA">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                <HeaderStyle Width="70px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPRENOVADO" DataFormatString="{0:0,0.00}" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" Visible="False">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPAMORTIZADO" DataFormatString="{0:0,0.00}" HeaderText="IMPAMORTIZADO" SortExpression="IMPAMORTIZADO" Visible="False">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NUNICO" HeaderText="N.UNICO" SortExpression="NUNICO">
                <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PROTESTO" HeaderText="ESTADO" SortExpression="PROTESTO">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
              
                        
                <asp:BoundField DataField="ESTADOBANCO1" HeaderText="ESTADOBANCO1" SortExpression="ESTADOBANCO1" Visible="False" />
                <asp:ButtonField ButtonType="Image" CommandName="buscar" HeaderText="FACT" ImageUrl="~/images/buscarr.png" ShowHeader="True" Visible="False">
                <ControlStyle Font-Bold="False" ForeColor="Red" Height="20px" Width="30px" />
                <HeaderStyle Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button" CommandName="Pagar" ImageUrl="~/images/1pagar.png" ShowHeader="True" Text="REGISTRAR PAGO" HeaderText="REGISTRAR PAGO">
                <ControlStyle Font-Bold="False" ForeColor="#006600" />
                <HeaderStyle Font-Size="XX-Small" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" Font-Size="XX-Small" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button" CommandName="Amortizar" ImageUrl="~/images/1renovar.png" Text="RENOVAR">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="XX-Small" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button" CommandName="Protestar" ImageUrl="~/images/1prorroga.png" ShowHeader="True" Text="PROTESTAR">
                <ControlStyle Font-Bold="False" ForeColor="Red" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="XX-Small" />
                </asp:ButtonField>
                  <asp:BoundField DataField="HISTORIAL" HeaderText="HISTORIAL" SortExpression="HISTORIAL" >
                                      
                                      <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" Width="250px" />
                                      </asp:BoundField>
                   <asp:ButtonField CommandName="estadocuenta"  HeaderText="RELACIÓN DOC." ShowHeader="True" Text="print" ImageUrl="~/images/cuentasestado.png" ButtonType="Image" >
                     <ControlStyle Height="26px" Width="24px" />
                     <HeaderStyle Width="40px" Font-Size="XX-Small" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
            </Columns>
            <EmptyDataTemplate>
                NO REGISTRA LETRAS EN DESCUENTO...
            </EmptyDataTemplate>
            <HeaderStyle BackColor="WhiteSmoke" />
            <PagerTemplate>
                No se encontratron registros...
            </PagerTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDsctoxBanco" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblbanco" Name="banco" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
        <span class="auto-style3">
        <asp:Label ID="lblrow1" runat="server"></asp:Label>
        </span>
        </asp:Panel>

    <asp:Panel ID="PanelProtestar" runat="server" Class="row">
                    <h2><strong>Registrar protesto</strong></h2>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style13">Letra:</td>
                            <td class="auto-style7">
                                <asp:Label ID="lblletra0" runat="server" CssClass="auto-style889"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Monto:</td>
                            <td class="auto-style8"><asp:Label ID="lblmoneda0" runat="server"></asp:Label>
                                &nbsp;<asp:Label ID="lblmonto0" runat="server" CssClass="auto-style35"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Observación</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtconcepto0" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="lblcoddsctProtesto" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:Button ID="Button5" runat="server" Height="40px" OnClick="Button5_Click" Text="REGISTRAR PROTESTO" Width="250px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:Label ID="lblmensaje4" runat="server" CssClass="auto-style15"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>


    <asp:Panel ID="PanelAmortizar" runat="server" Class="row">
                    <h2><strong>Registrar Renovado</strong></h2>
&nbsp;<asp:Panel ID="PanelRenovado2" runat="server" Visible="False">
                        importe: pagado:
                        <asp:Label ID="lbl2impPagado" runat="server"></asp:Label>
                        &nbsp; porcentaje pagado :
                        <asp:Label ID="lbl2porcentajePagado" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp; IMPORTE TT:&nbsp;
                        <asp:Label ID="lbl2importeTT" runat="server"></asp:Label>
                        COD LETRA :<asp:Label ID="lblcoddsctRenovado" runat="server"></asp:Label>
                    </asp:Panel>
                    <br />
                    <table class="auto-style24">
                        <tr>
                            <td class="auto-style17">Letra:</td>
                            <td class="auto-style18">
                                <asp:Label ID="lblletra1" runat="server" CssClass="auto-style890"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>F.V.:</strong><asp:Label ID="lblfechavencto" runat="server"></asp:Label>
                                &nbsp;&nbsp; <strong>F. EMISION:</strong>
                                <asp:Label ID="lblfemision" runat="server"></asp:Label>
                                <asp:Label ID="lbldiass" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Monto:</td>
                            <td class="auto-style27">&nbsp;<asp:Label ID="lblmoneda1" runat="server"></asp:Label>
                                &nbsp;<asp:Label ID="lblmonto1" runat="server" CssClass="auto-style33"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">por procentaje:</td>
                            <td class="auto-style27">
                                <asp:TextBox ID="txtporcentajerenov" type="number" runat="server" Width="80px"></asp:TextBox>
                                &nbsp;<asp:Button ID="Button7" runat="server" Text="%" Width="40px" OnClick="Button7_Click" />
                                ,&nbsp; Importe a renovar:
                                <asp:Label ID="lblimporteseria" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">por monto:</td>
                            <td class="auto-style27">
                                <asp:TextBox ID="txtimporterenov"  type="number" step="0.01" runat="server" Width="80px"></asp:TextBox>
                                <asp:Button ID="Button8" runat="server" Text="US$" Width="40px" OnClick="Button8_Click" />
                                , correspondiente al
                                <asp:Label ID="lblporcetajeseria" runat="server"></asp:Label>
                                &nbsp;%</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Nuevo monto:</td>
                            <td class="auto-style27">
                                <asp:Label ID="lblnuevoimporte" runat="server" CssClass="auto-style26"></asp:Label>
                                <asp:Label ID="lblmoneda11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Observación</td>
                            <td class="auto-style27">
                                <asp:TextBox ID="txtconcepto1" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style27">
                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="CONFIRMAR RENOVACION" Height="40px" Width="250px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style27">
                                <asp:Label ID="lblmensaje5" runat="server" CssClass="auto-style15"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton3_Click1">Retornar</asp:LinkButton>
                            </td>
                            <td class="auto-style27">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>

     <asp:Panel ID="Panelpagar" runat="server">
                    <h2><strong>Registrar pago</strong></h2>
&nbsp;<asp:Label ID="lblcoddsctPagoLetra" runat="server" Visible="False"></asp:Label>
                    <br />
                    
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style13">Letra:</td>
                                <td class="auto-style7">
                                    <asp:Label ID="lblletra" runat="server" CssClass="auto-style891"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Monto:</td>
                                <td class="auto-style8">&nbsp;<asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                    &nbsp;<asp:Label ID="lblmonto" runat="server" CssClass="auto-style34"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Importe:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtimporte"  type="number" step="0.01" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Observación</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtconcepto" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="CONFIRMAR PAGO" Height="40px" Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Label ID="lblmensaje3" runat="server" CssClass="auto-style15"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton4_Click">Retornar</asp:LinkButton>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                        </table>
                   
                </asp:Panel>






    <asp:Panel ID="Panelcancelados" runat="server" class="row">
                    <h3><i class="glyphicon glyphicon-edit"></i>Letra Canceladas</h3>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table table-condensed  table-hover table-sm thead-light" DataKeyNames="COD" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="20" Width="100%" Font-Size="X-Small">
                            <Columns>
                                <asp:TemplateField HeaderText="LETRA" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("LETRA") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" Visible="False">
                                <HeaderStyle Font-Bold="True" Width="80px" />
                                <ItemStyle BackColor="#F1F8E7" Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FCANCELADO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="CANCELADA" SortExpression="FCANCELADO">
                                <HeaderStyle Width="80px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO">
                                <HeaderStyle Width="80px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FECHA">
                                <HeaderStyle Width="80px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE">
                                <ItemStyle Font-Size="XX-Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MONEDA" SortExpression="MONEDA">
                                <HeaderStyle Width="40px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                                <HeaderStyle Width="80px" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPRENOVADO" DataFormatString="{0:0,0.00}" HeaderText="IMPRENOVADO" SortExpression="IMPRENOVADO" Visible="False">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPAMORTIZADO" DataFormatString="{0:0,0.00}" HeaderText="IMPAMORTIZADO" SortExpression="IMPAMORTIZADO" Visible="False">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PROTESTO" HeaderText="ESTADO" SortExpression="PROTESTO" Visible="False">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NUNICO" HeaderText="N.UNICO" SortExpression="NUNICO">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ESTADOBANCO1" HeaderText="ESTADOBANCO1" SortExpression="ESTADOBANCO1" Visible="False" />
                                  <asp:BoundField DataField="HISTORIAL" HeaderText="HISTORIAL" SortExpression="HISTORIAL" >
                                      
                                      <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" Width="250px" />
                                      </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDsctoxBanco" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblbanco" Name="banco" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="0" Name="estado" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="auto-style888">
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        &nbsp;<asp:LinkButton ID="LinkButtonUsuario" runat="server" PostBackUrl="~/Administracion/Default.aspx"></asp:LinkButton>
                    </div>
                    <p>
                    </p>
                    <p>
                    </p>
                    <p>
                    </p>
                </asp:Panel>



    <div class="row">

    </div>


</asp:Content>
