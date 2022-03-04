<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="LetrasGeneral.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.LetrasGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            width: 800px;
        }
        .auto-style5 {
            width: 9px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style6 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />



     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i>REPORTE DE LETRAS:
                            <asp:Label ID="lbl10estado" runat="server"></asp:Label>
                            <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </h3>
</div>
         </div>
 <div class="row">

     <asp:Panel ID="Panel2" runat="server" Visible="False">
         op:<asp:Label ID="lblop" runat="server" Text="1"></asp:Label>
         &nbsp;dato:
         <asp:Label ID="lbldato" runat="server"></asp:Label>
         &nbsp;fecha1:
         <asp:Label ID="lblfecha1" runat="server"></asp:Label>
         &nbsp;fecha2:
         <asp:Label ID="lblfecha2" runat="server"></asp:Label>
         &nbsp; estado cobrado:
         <asp:Label ID="lblEstadocobrado" runat="server" Text="1"></asp:Label>
     </asp:Panel>
     <asp:Panel ID="pmenuPrincipal" runat="server">
         <asp:RadioButtonList ID="rblEstadoCobrado" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblEstadoCobrado_SelectedIndexChanged" RepeatDirection="Horizontal" Width="500px">
             <asp:ListItem Selected="True" Value="1">POR COBRAR</asp:ListItem>
             <asp:ListItem Value="0">COBRADAS</asp:ListItem>
             <asp:ListItem Value="10">GENERAL</asp:ListItem>
             <asp:ListItem Value="4">ANULADAS</asp:ListItem>
         </asp:RadioButtonList>
         <asp:ImageButton ID="ImageButtonActualizar" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/btactualizar.png" OnClick="ImageButtonActualizar_Click" Width="30px" />
         <asp:TextBox ID="TextBox3" placeholder="Buscar" runat="server" ToolTip="Ingresar valor a buscar...." Width="200px" Visible="False"></asp:TextBox>
         <asp:Button ID="Button1Letra" runat="server" OnClick="Button1Letra_Click" Text="N° LETRA" />
         <asp:Button ID="Button1cliente" runat="server" OnClick="Button1cliente_Click" Text="CLIENTE" />
         <asp:Button ID="ButtonEstadoLetra" runat="server" Text="ESTADO DE LETRA" OnClick="ButtonEstadoLetra_Click" />
         <asp:Button ID="Button1femision" runat="server" Text="F. EMISIÓN" OnClick="Button1femision_Click" />
         <asp:Button ID="Button1fvencimiento" runat="server" Text="F. VNCTO" OnClick="Button1fvencimiento_Click" />
         <asp:Button ID="btnFPago" runat="server" OnClick="btnFPago_Click" Text="F. PAGO" />
         <asp:Button ID="Button1banco" runat="server" Text="BANCO" OnClick="Button1banco_Click" />
         <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" OnClick="ImageButton1_Click" Width="25px" ImageAlign="Top" ImageUrl="~/images/excel.png" />
     </asp:Panel>
     <asp:Panel ID="pFechaPago" runat="server">
         <span class="auto-style1"><strong>SEGÚN FECHA PAGO:</strong></span><br /> FECHA DESDE:<asp:TextBox ID="txtFechaDesdePago" runat="server" TextMode="Date"></asp:TextBox>
         &nbsp;HASTA
         <asp:TextBox ID="txtFechaHastaPago" runat="server" TextMode="Date"></asp:TextBox>
         <asp:Button ID="btnxFechaPagofiltro" runat="server" Text="FILTRAR" OnClick="btnxFechaPagofiltro_Click" />
     </asp:Panel>

     <asp:Panel ID="pFechaemision" runat="server">
         <span class="auto-style1"><strong>SEGÚN FECHA DE EMISIÓN:</strong></span><br /> FECHA DESDE:<asp:TextBox ID="txtFechaDesde" runat="server" TextMode="Date"></asp:TextBox>
         &nbsp;HASTA
         <asp:TextBox ID="txtFechaHasta" runat="server" TextMode="Date"></asp:TextBox>
         <asp:Button ID="btnxFecha" runat="server" Text="FILTRAR" OnClick="btnxFecha_Click" />
     </asp:Panel>

     <asp:Panel ID="pFechaVencimiento" runat="server">
         <span class="auto-style1"><strong>SEGÚN FECHA DE VENCIMIENTO:<br /> </strong></span>FECHA DESDE:<asp:TextBox ID="txtfvDesde" runat="server" TextMode="Date"></asp:TextBox>
         &nbsp;HASTA
         <asp:TextBox ID="txtfvHasta" runat="server" TextMode="Date"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" Text="FILTRAR" OnClick="Button1_Click" />
     </asp:Panel>

     <asp:Panel ID="Panelcliente" runat="server">
         <span class="auto-style1"><strong>SEGÚN CLIENTE:</strong></span><br />
         INGRESAR CLIENTE:
         <asp:TextBox ID="txtruc" runat="server" placeholder="RUC / RAZÓN SOCIAL ..." Width="250px" AutoPostBack="True" OnTextChanged="txtruc_TextChanged"></asp:TextBox>
         <asp:Button ID="btl2fiiltroruc" runat="server" Text="FILTRAR" OnClick="btl2fiiltroruc_Click" />
     </asp:Panel>
     <asp:Panel ID="PanelLetra" runat="server">
         <span class="auto-style1"><strong>SEGÚN LETRA:<br /> </strong></span>INGRESAR NÚMERO DE LETRA:
         <asp:TextBox ID="txtnumLetra" runat="server" AutoPostBack="True" OnTextChanged="txtnumLetra_TextChanged"></asp:TextBox>
         <asp:Button ID="btn_xnumLetra" runat="server" Text="FILTRAR" OnClick="btn_xnumLetra_Click" />
     </asp:Panel>
     <asp:Panel ID="PanelEstadoLetra" runat="server">
         <span class="auto-style1"><strong>SEGÚN ESTADO:<br /> </strong></span>
         <asp:Button ID="btn_2estadoaceptar" runat="server" Text="POR ACEPTAR" Width="120px" OnClick="btn_2estadoaceptar_Click" />
         <asp:Button ID="btn_2estadocartera" runat="server" Text="EN CARTERA" Width="120px" OnClick="btn_2estadocartera_Click" />
         <asp:Button ID="btn_2estadocobranzaLibre" runat="server" Text="COBRANZA LIBRE" OnClick="btn_2estadocobranzaLibre_Click" />
         <asp:Button ID="btn_2estadoDescuento" runat="server" Text="DESCUENTO" Width="150px" OnClick="btn_2estadoDescuento_Click" />
         <asp:Button ID="btn_2estadojudicial" runat="server" Text="JUDICIAL" Width="150px" OnClick="btn_2estadojudicial_Click" />
         <asp:Button ID="Button2Renovadas" runat="server" OnClick="Button2Renovadas_Click" Text="RENOVADAS" />
         <asp:Button ID="Button2Protestadas" runat="server" OnClick="Button2Protestadas_Click" Text="PROTESTADAS" />
         <asp:Button ID="Button2Amortizado" runat="server" OnClick="Button2Amortizado_Click" Text="AMORTIZADO" />
         <asp:Button ID="Button2Anulado" runat="server" OnClick="Button2Anulado_Click" Text="ANULADO" BackColor="#FFE8E8" ForeColor="#990000" />
     </asp:Panel>
     <asp:Panel ID="Panelbanco" runat="server">
         <span class="auto-style1"><strong>SEGÚN BANCOS:<br /> </strong></span>
         <asp:ImageButton ID="btnscotiabank" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/scotiabank.jpg" OnClick="btnscotiabank_Click" Width="200px" />
         <asp:ImageButton ID="imgBanbif" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/banbif.jpg" OnClick="imgBanbif_Click" Width="200px" />
         <asp:ImageButton ID="imgBCP" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/bcp.jpg" OnClick="imgBCP_Click" Width="200px" />
         <asp:ImageButton ID="IBinterbank" runat="server" BorderStyle="Groove" Height="40px" ImageAlign="AbsMiddle" ImageUrl="~/images/interbank.jpg" OnClick="IBinterbank_Click" Width="200px" />
     </asp:Panel>

     <div class="table-responsive">
         <asp:Panel ID="pFacturas" runat="server" Visible="False">

             <br />
             <div class="panel panel-default">
              <div class="panel-heading">
                  <span class="auto-style2"><span class="auto-style3">DETALLE DE LETRA:</span>
             <asp:Label ID="lbl1idLetra" runat="server" Visible="False"></asp:Label>
             &nbsp;<asp:Label ID="lbl1Letras" runat="server" Visible="False"></asp:Label>
             </span>

                  <asp:LinkButton ID="lbtn1Letra" runat="server" Font-Size="X-Large" OnClick="lbtn1Letra_Click"></asp:LinkButton>
                  &nbsp;&nbsp;
                  <asp:Label ID="lbl1Moneda" runat="server" Font-Size="Large"></asp:Label>
                  <asp:Label ID="lbl1importe" runat="server" Font-Size="Large"></asp:Label>

              </div>
              


              
             
                 <table class="auto-style4">
                     <tr>
                         <td colspan="4"><strong>Cliente</strong>:<asp:Label ID="lbl1Ruc" runat="server"></asp:Label>
                             -<asp:Label ID="lbl1razonsocial" runat="server"></asp:Label>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td><strong>F. Emisión:</strong><br />
                             <asp:Label ID="lbl1femision" runat="server"></asp:Label>
                         </td>
                         <td><strong>F. Vencimiento:</strong><br />
                             <asp:Label ID="lbl1fvencimiento" runat="server"></asp:Label>
                         </td>
                         <td><strong>Teléfono</strong>:<br />
                             <asp:Label ID="lbl1Telefono" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style5"><strong>Correo</strong>:<br />
                             <asp:Label ID="lbl1Correo" runat="server"></asp:Label>
                         </td>
                         <td></td>
                         <td></td>
                         <td class="auto-style5">
                             &nbsp;</td>
                     </tr>
                 </table>
              


              
             
              <asp:GridView ID="gvFacturas" runat="server" AutoGenerateColumns="False" class="table-condensed table-bordered  table-hover table-sm thead-light" DataSourceID="SqlDataSource2" OnRowDataBound="gvFacturas_RowDataBound" ShowFooter="True" Font-Size="XX-Small" DataKeyNames="COD,FACTURA" OnSelectedIndexChanged="gvFacturas_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="FACTURA" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("FACTURA") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" Visible="False" />
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                            <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMP.NETO" SortExpression="IMPNETO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PORCOBRAR" HeaderText="PORCOBRAR" SortExpression="PORCOBRAR">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" Visible="False" />
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_facturasporLETRA" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="gvLetras" Name="idletra" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                 <asp:LinkButton ID="lbtnVerhistorial" runat="server" OnClick="lbtnVerhistorial_Click" Visible="False">Ver historial</asp:LinkButton>
                 
                 <asp:Panel ID="pverhistorial" runat="server">
                      <div class="table-responsive">
                             <asp:GridView ID="gv_seguimiento" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceSeguimiento" PageSize="5" ShowHeader="False" Width="600px" GridLines="Horizontal" BorderStyle="None" Font-Size="XX-Small">
                                 <Columns>
                                     <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                     <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                                     <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" SortExpression="fecha">
                                     <HeaderStyle Width="70px" />
                                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" >
                                     <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="50px" />
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="50px" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="descripcion" HeaderText="CONCEPTO" SortExpression="descripcion" >
                                     <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                                     </asp:BoundField>
                                 </Columns>
                                 <EmptyDataTemplate>
                                     <em>No registra historial...</em>
                                 </EmptyDataTemplate>
                                 <HeaderStyle BackColor="WhiteSmoke" />
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSourceSeguimiento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ListarletraComentario" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="lbl1idLetra" Name="idletra" PropertyName="Text" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                                 </div>

                 </asp:Panel>

                 </asp:Panel>
            </div>


     <asp:Panel ID="PaneladjuntarLetra" runat="server">
          <div class="well well-sm">
             
           <div class="table-responsive">
               <table align="right" class="auto-style6">
                   <tr>
                       <td colspan="2">
                           <h3>LETRA:
                               <asp:Label ID="lbl20letra" runat="server"></asp:Label>
                           </h3>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">
                           <asp:Label ID="lbl20Letrtaruc" runat="server"></asp:Label>
                           -<asp:Label ID="lbl20razonsocial" runat="server" Text=""></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:FileUpload ID="FileUpload1" runat="server" />
                       </td>
                       <td>
                           <asp:LinkButton ID="lbtnAdjLetra" runat="server" CssClass="btn btn-info" OnClick="lbtnAdjLetra_Click" Width="140px">ADJUNTAR LETRA</asp:LinkButton>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">
                           <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#990000"></asp:Label>
                           <asp:Label ID="lblrutaletra" runat="server" Visible="False"></asp:Label>
                           <asp:Label ID="lbl20idLetra" runat="server" Visible="False"></asp:Label>
                       </td>
                   </tr>
               </table>

               </div>
             
              </div>
     </asp:Panel>
         
     <asp:GridView ID="gvLetras" class="table table-striped table-bordered table-sm  table-hover"   runat="server" AutoGenerateColumns="False" DataKeyNames="idletra,LETRA" DataSourceID="SqlDataSourceLetras" PageSize="50" AllowSorting="True" Font-Size="X-Small" OnRowDataBound="gvLetras_RowDataBound" OnSelectedIndexChanged="gvLetras_SelectedIndexChanged" OnRowCommand="gvLetras_RowCommand" Width="100%">
         <Columns>
             
             <asp:CommandField ShowSelectButton="True" />
             
             <asp:BoundField DataField="idletra" HeaderText="COD" ReadOnly="False" SortExpression="idletra" Visible="False" />
            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
             <HeaderStyle Width="80px" />
             </asp:BoundField>
             <asp:BoundField DataField="CONDLETRA" HeaderText="CONDLETRA" SortExpression="CONDLETRA" Visible="False" />
             <asp:BoundField DataField="CONDICIONLETRA" HeaderText="CONDICION LETRA" SortExpression="CONDICIONLETRA" />
             <asp:BoundField DataField="FEMISION" HeaderText="F. EMISIÓN" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
             <asp:BoundField DataField="FVNCTO" HeaderText="F. VNCTO." SortExpression="FVNCTO" DataFormatString="{0:dd/MM/yyyy}" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
             <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
             <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
             <asp:BoundField DataField="MONEDA" HeaderText="" ReadOnly="True" SortExpression="MONEDA" />
             <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
            
             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
             </asp:BoundField>
            
             <asp:BoundField DataField="protestada" HeaderText="PRO. / REN." SortExpression="protestada" Visible="False" />
             <asp:BoundField DataField="Banco" HeaderText="Banco" SortExpression="Banco" Visible="False" />
             <asp:BoundField DataField="Column1" HeaderText="BANCO" ReadOnly="True" SortExpression="Column1" />
             <asp:BoundField DataField="NumeroUnico" HeaderText="NUM. UNICO" SortExpression="NumeroUnico" />
             <asp:BoundField DataField="fechabanco" HeaderText="F. BANCO" SortExpression="fechabanco" DataFormatString="{0:dd/MM/yyyy}" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
             <asp:BoundField DataField="CancelacionFecha" HeaderText="CancelacionFecha" SortExpression="CancelacionFecha" Visible="False" />
             <asp:BoundField DataField="CancelacionMonto" HeaderText="CancelacionMonto" SortExpression="CancelacionMonto" Visible="False" />
             <asp:BoundField DataField="protestoFecha" HeaderText="protestoFecha" SortExpression="protestoFecha" Visible="False" />
             <asp:BoundField DataField="renovadafecha" HeaderText="renovadafecha" SortExpression="renovadafecha" Visible="False" />
             <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" Visible="False" />
             <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" Visible="False" />
             <asp:BoundField DataField="Distrito" HeaderText="Distrito" SortExpression="Distrito" Visible="False" />
             <asp:BoundField DataField="MOVINTERNOS" HeaderText="*" ReadOnly="True" SortExpression="MOVINTERNOS" Visible="False" />
             <asp:BoundField DataField="REGOCIACIONES" HeaderText="**" ReadOnly="True" SortExpression="REGOCIACIONES" Visible="False" />
             
            
             <asp:ImageField DataImageUrlField="ESTADOCANCEL" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="E.L.">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
              <asp:BoundField DataField="ESTADOCANCEL" HeaderText="E.L." ReadOnly="True" Visible="False" SortExpression="ESTADOCANCEL" />
              <asp:BoundField DataField="autor" HeaderText="AUDIT." SortExpression="autor" />
              <asp:ButtonField CommandName="print2019A"  HeaderText="LETRA 2019A" ShowHeader="True" Text="print" ImageUrl="~/images/imprimir_old.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
              <asp:ButtonField CommandName="print2019B"  HeaderText="LETRA 2019B" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                <asp:ImageField DataImageUrlField="DOCLETRA" DataImageUrlFormatString="~/images/LETRA{0}.png" HeaderText="L*">
                            <ControlStyle Height="20px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
                    <asp:ButtonField CommandName="ADJUNTAR" HeaderText="" ShowHeader="True" Text="Adjuntar" ButtonType="Image" ImageUrl="~/images/SUBIR.png" >           
                     <ControlStyle Height="20px" Width="18px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ButtonField>

                      <asp:ButtonField CommandName="BAJAR" HeaderText="" ShowHeader="True" Text="Ver" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >                     
                        <ControlStyle Height="20px" Width="18px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
                        </asp:ButtonField>

<%--                       <asp:ButtonField CommandName="anular" HeaderText="ANULAR" ShowHeader="True" Text="Ver" ButtonType="Image" 
                        ImageUrl="~/images/ANULAR.png" >                     
                        <ControlStyle Height="20px" Width="18px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
                        </asp:ButtonField>--%>

         </Columns>


         <EmptyDataTemplate>
             No registra letras....
         </EmptyDataTemplate>


         <HeaderStyle BackColor="WhiteSmoke" />


     </asp:GridView>
         </div>
     <asp:SqlDataSource ID="SqlDataSourceLetras" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Letras_General" SelectCommandType="StoredProcedure">
         <SelectParameters>
             <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
             <asp:ControlParameter ControlID="lbldato" Name="idrucCliente" PropertyName="Text" Type="String" />
             <asp:ControlParameter ControlID="lblfecha1" DbType="Date" Name="fecha1" PropertyName="Text" />
             <asp:ControlParameter ControlID="lblfecha2" DbType="Date" Name="fecha2" PropertyName="Text" />
             <asp:ControlParameter ControlID="lblEstadocobrado" Name="estadoPagado" PropertyName="Text" Type="Int32" />
         </SelectParameters>
     </asp:SqlDataSource>

     (<asp:Label ID="lblItems" runat="server"></asp:Label>
     ) Registros encontrados.<br />
      <br />
    <small>
      E.L. =
      Estado de&nbsp; letra:
     &nbsp;<asp:Image ID="Image2" runat="server" Height="15px" ImageUrl="~/images/Z0.png" Width="15px" />
     COBRADOS&nbsp;
     <asp:Image ID="Image3" runat="server" Height="15px" ImageUrl="~/images/Z1.png" Width="15px" />
     POR COBRAR
     <asp:Image ID="Image4" runat="server" Height="15px" ImageUrl="~/images/Z4.png" Width="15px" />
     ANULADOS

     <br />
    <small>
      <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/images/LETRA1.png" Width="18px" />
     &nbsp;Adjunta Letra |&nbsp;
   
      <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/images/BAJAR.png" Width="18px" />
     &nbsp; Descargar Letra&nbsp;</small></small></asp:Content>
