<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="UnidadSolicitud.aspx.cs" Inherits="biotech.VentasRTC.UnidadSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Solicitud Técnica Vehicular
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script src="../bio/js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../bio/css/sweetalert.css" rel="stylesheet" type="text/css" />
   
     <asp:LinkButton ID="lbtnNueva" runat="server" OnClick="lbtnNueva_Click">NUEVA SOLICITUD</asp:LinkButton>
  
   <br />
     <asp:Panel ID="Panel2" runat="server" Visible="False">
         <asp:Label ID="lblidUsuario" runat="server"></asp:Label>
         &nbsp;placa:
         <asp:Label ID="lblidUnidadVehicular" runat="server"></asp:Label>
         &nbsp;- &nbsp;&nbsp; fecha1:<asp:Label ID="lblf1" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp; fecha2:
         <asp:Label ID="lblf2" runat="server"></asp:Label>
         &nbsp; op=<asp:Label ID="lblop" runat="server"></asp:Label>
         &nbsp;ruta:</asp:Panel>
    <br />
     <span class="title_section_offer">SOLICITUDES REGISTRADAS:</span>
       
      
        <div class="title_section_offer_fake">
      </div>

  

   <br />

    <asp:Label ID="lblmensajeconformidad" runat="server" Font-Size="Large" ForeColor="#990000"></asp:Label>
        <asp:Panel ID="Panelayuda" runat="server" Visible="False">
            idunidad selec:
            <asp:Label ID="lbl1idunidad" runat="server"></asp:Label>
            &nbsp;kmregsolliccitud:&nbsp; / CORREO REGISTRA:
            <asp:Label ID="lblmailregistra" runat="server"></asp:Label>
            &nbsp;encargados:
            <asp:Label ID="lblmailencargados" runat="server"></asp:Label>
            &nbsp;SOLICITA:<asp:Label ID="lblnombresolicita" runat="server"></asp:Label>
            &nbsp; placa:
            <asp:Label ID="lblplaca" runat="server"></asp:Label>
            &nbsp;&nbsp; tipo solicud:
            <asp:Label ID="lbltpsolicitud" runat="server"></asp:Label>
            &nbsp;/ asunto:
            <asp:Label ID="lblasunto" runat="server"></asp:Label>
            &nbsp; rutaweb:
            <asp:Label ID="lbl1ruta" runat="server"></asp:Label>
        </asp:Panel>
      <br /> 

    <asp:Panel ID="pconformidad" runat="server" Visible="False">
        <br />
        <span class="auto-style2"><strong>CONFIRMAR EJECUCIÓN:</strong></span>
            <asp:Label ID="lbl1idsoltec" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl1soltec" runat="server"></asp:Label>
            &nbsp;km. ingreso:
            <asp:Label ID="lblKmRegsolicitud" runat="server"></asp:Label>
        
        <p>
            KILOMETRAJE SALIDA:
            <asp:TextBox ID="txt1kilometraje" runat="server"  type="number" ></asp:TextBox>
        </p>
        <asp:TextBox ID="txt1observacion" runat="server" Height="60px" placeholder="Registrar detalles de conformidad y/o observación..." Style="text-transform: uppercase"  TextMode="MultiLine" Width="95%" ToolTip="Registrar detalles de conformidad y/o observación..."></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Adjuntar imagen referencial" />
                                <asp:Label ID="lblrutatt" runat="server"></asp:Label>
                                <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
        <br />
        <asp:Button ID="btnconformidad" runat="server" CssClass="btn" Text="REGISTRAR CONFORMIDAD" BackColor="#83BA3F" OnClick="btnconformidad_Click" />
        <asp:Button ID="btnobservacion" runat="server" CssClass="btn btn-danger" Text="REGISTRAR OBSERVACIÓN" OnClick="btnobservacion_Click" />
        <br />
        <br />
        <hr />
   </asp:Panel>
    
     <asp:TextBox ID="txtfecha1" runat="server" TextMode="Date"></asp:TextBox>
     <asp:TextBox ID="txtfecha2" runat="server" TextMode="Date"></asp:TextBox>
 <asp:Button ID="btnBuscar" runat="server" CssClass="btn-success" Text="BUSCAR" Height="30px" OnClick="btnBuscar_Click" />

  

   
       

         <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="30px" />

  

   
      

         <asp:GridView ID="gvSolicitud" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="idsolicitud,SOLICITUD,idsolicita,PLACA,TIPO,MARCA,TITULO,DETALLE,ESTADO,FSOLICITA" DataSourceID="SqlDataSourceSolicitud" Width="100%" Font-Size="X-Small" AllowPaging="True" AllowSorting="True" PageSize="20" OnSelectedIndexChanged="gvSolicitud_SelectedIndexChanged" OnRowCommand="gvSolicitud_RowCommand">
             <Columns>
                 <asp:TemplateField HeaderText="SOLICITUD" ShowHeader="False">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("SOLICITUD") %>'></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="idsolicitud" HeaderText="COD" ReadOnly="True" SortExpression="idsolicitud" Visible="False" />
                 <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" Visible="False" />
                 <asp:BoundField DataField="idsolicita" HeaderText="SOLICTA" SortExpression="idsolicita" />
                 <asp:BoundField DataField="fecharegistra" HeaderText="FREGISTRA" SortExpression="fecharegistra" DataFormatString="{0:dd/MM/yyyy}" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="FSOLICITA" HeaderText="FSOLICITA" SortExpression="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                 <asp:BoundField DataField="TITULO" HeaderText="DETALLE" SortExpression="TITULO" Visible="False" >
                 <ItemStyle Font-Size="XX-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" Visible="False" />
                 <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" />
                 <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                 <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                 <%--<asp:BoundField DataField="idAsesorConformidad" HeaderText="CONFORMIDAD" SortExpression="idAsesorConformidad" />--%>
                  

                  <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="*">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                  <asp:ImageField DataImageUrlField="idAsesorConformidad" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="**">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                <asp:ButtonField CommandName="CONFIRMAR" HeaderText="CONFIRMAR" ShowHeader="True" Text="CONF. / OBSER." >
            
                </asp:ButtonField>
             </Columns>
             <EmptyDataTemplate>
                 No registra datos....
             </EmptyDataTemplate>
             <HeaderStyle BackColor="WhiteSmoke" />
         </asp:GridView>
     * ESTADO DE SOLICITUD: APROBADA
        <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/apro1.png" Width="20px" />
     &nbsp;| RECHAZADA
        <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/apro2.png" Width="20px" />
     &nbsp;| FINALIZADA
        <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images/apro3.png" Width="20px" />
         <asp:SqlDataSource ID="SqlDataSourceSolicitud" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_solicitud" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblop" DefaultValue="" Name="op" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="0" Name="estado" Type="Int32" />
                <asp:ControlParameter ControlID="lblidUsuario" Name="idSolicita" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblf1" Name="fsolicita1" PropertyName="Text" DbType="Date" />
                <asp:ControlParameter ControlID="lblf2" Name="fsolicita2" PropertyName="Text" DbType="Date" />
            </SelectParameters>
        </asp:SqlDataSource>
   <br />
     ** ASESOR REGISTRA CONFORMIDAD&nbsp; <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/images/Z1.png" Width="20px" />
&nbsp;/ ASESOR REGISTRA OBSERVACIÓN
        <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/images/Z0.png" Width="20px" />
   
    <br /><br /><br />
    <asp:Panel ID="pinspeccion" runat="server">

    

   <table class="nav-justified">
            <tr>
                <td WIDTH="100"><b>SOLICITUD:</b></td>
                <td WIDTH="400">
                    <asp:Label ID="lblsolicitud" runat="server" style="font-weight: 700" Text=""></asp:Label>
                    <asp:Label ID="lblidsolicitud" runat="server" Visible="False"></asp:Label>
                </td>
                <td WIDTH="50">&nbsp;</td>
                <td WIDTH="140">&nbsp;</td>
                <td WIDTH="300">
                    &nbsp;</td>
            </tr>
            <tr>
                <td><b>SOLICITA:</b></td>
                <td>
                    <asp:Label ID="lblnomsolicita" runat="server"></asp:Label>
                    <asp:Label ID="lblidsolicita" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>F.SOLICITA:</b></td>
                <td>
                    <asp:Label ID="lblfechaSolicita" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><b>UNIDAD:</b></td>
                <td>
                    <asp:Label ID="lblUnidadv" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td><b>ESTADO:</b></td>
                <td>
                    <asp:Label ID="lblestadosolicitud" runat="server"></asp:Label>
                    <asp:Label ID="lblidestado" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>TITULO:</strong></td>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="lblSolicitudTitulo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><b>DETALLES TÈCNICOS:</b></td>
                <td colspan="4" class="auto-style1">
                    <asp:Label ID="lblSolicitudDetalle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>OBS/RESUMEN:</strong></td>
                <td colspan="4">
                    <asp:Label ID="lblObservacion" runat="server" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
       </table>
    

             <br />

    

   
    

             <asp:GridView ID="gvInspeccion" runat="server" class="table" DataSourceID="SqlDataSourceInspeccion" AutoGenerateColumns="False" DataKeyNames="idInspeccion" OnRowDataBound="gvInspeccion_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="idInspeccion" HeaderText="idInspeccion" ReadOnly="True" SortExpression="idInspeccion" Visible="False" />
                     <asp:BoundField DataField="idSolicitud" HeaderText="idSolicitud" SortExpression="idSolicitud" Visible="False" />
                     <asp:BoundField DataField="idSeccion" HeaderText="idSeccion" SortExpression="idSeccion" Visible="False" />
                     <asp:BoundField DataField="SECCION" HeaderText="SECCION" SortExpression="SECCION" />
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHAREG" SortExpression="FECHAREG" />
                     <asp:BoundField DataField="KL" HeaderText="KL" SortExpression="KL" />
                     <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" SortExpression="FACTURA" />
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                     <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="SUBTT" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
                 <HeaderStyle BackColor="WhiteSmoke" />
             </asp:GridView>

           
                    <asp:SqlDataSource ID="SqlDataSourceInspeccion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_EquipoListInspeccion" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="gvSolicitud" Name="idsolicitud" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                       
                    </asp:SqlDataSource>     </asp:Panel>

    
     <br />
     <br /> 
   
         <br />
     <div class="row">
    <div class="offset1">
    
    <div class="control-group">
    
        </div>
        </div>
         </div>
        

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
