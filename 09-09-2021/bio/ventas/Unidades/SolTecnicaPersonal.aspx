<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="SolTecnicaPersonal.aspx.cs" Inherits="biotech.bio.ventas.Unidades.SolTecnicaPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    


    <div class="row">
			<h1><i class="fa fa-paste"></i>  Solicitud Técnica Vehicular:
                 
                <asp:Label ID="lblIdUnidad" runat="server"></asp:Label>
                
                     </h1>
        </div>
     <div class="row">    
                    <ol class="breadcrumb">
                        
                        <li>
                        <asp:LinkButton ID="lbtSolicitud1" runat="server" OnClick="lbtSolicitud1_Click">Solicituc Técnica</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtnNuevasolicitud" runat="server" OnClick="lbtnNuevasolicitud_Click" >Nueva Técnica</asp:LinkButton>
                        </li>

                       <%-- <li>
                        <asp:LinkButton ID="lbtUnidadesLista1" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx">Unidades</asp:LinkButton>
                        </li>
                      
                        <li>
                        <asp:LinkButton ID="lbtResumen1" runat="server" PostBackUrl="~/bio/ventas/Unidades/RTecnico.aspx">Resumen</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtCotizacion1" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Cotización</asp:LinkButton>
                        </li>--%>
                        
                        
                       
                    </ol>
            </div>

    <div class="row"> 
        
    




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
            <asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;&nbsp; tipo solicud:
            <asp:Label ID="lbltpsolicitud" runat="server"></asp:Label>
            &nbsp;/ asunto:
            <asp:Label ID="lblasunto" runat="server"></asp:Label>
            &nbsp; rutaweb:
            <asp:Label ID="lbl1ruta" runat="server"></asp:Label>
        </asp:Panel>

    <asp:Panel ID="pconformidad" runat="server" Visible="False">
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
        <hr />
   </asp:Panel>


        
        
     <asp:Panel ID="Panel1" runat="server" Visible="False">
         <asp:Label ID="lblidUsuario0" runat="server"></asp:Label>
         &nbsp;placa:
         <asp:Label ID="lblidUnidadVehicular" runat="server"></asp:Label>
         &nbsp;-
         <asp:Label ID="lblplaca" runat="server"></asp:Label>
         &nbsp;&nbsp; fecha1:<asp:Label ID="lblf1" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp; fecha2:
         <asp:Label ID="lblf2" runat="server"></asp:Label>
         &nbsp; op=<asp:Label ID="lblop" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; idusuario entra:<asp:Label ID="lblidUsuario" runat="server" Visible="False"></asp:Label>
         <br />
         <asp:Label ID="lblmensajeGeneral" runat="server"></asp:Label>
     </asp:Panel>


         <asp:TextBox ID="txtfecha1" runat="server" TextMode="Date"></asp:TextBox>
     <asp:TextBox ID="txtfecha2" runat="server" TextMode="Date"></asp:TextBox>
 <asp:Button ID="btnBuscar" runat="server" CssClass="btn-success" Text="BUSCAR" Height="30px" OnClick="btnBuscar_Click" />

  

   
       

         <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="30px" />

  

   
       <div class="table-responsive">

         <asp:GridView ID="gvSolicitud" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="idsolicitud,SOLICITUD,idsolicita,PLACA,TIPO,MARCA,TITULO,DETALLE,ESTADO,FSOLICITA" DataSourceID="SqlDataSourceSolicitud" Width="100%" Font-Size="X-Small" AllowPaging="True" AllowSorting="True" PageSize="20" OnSelectedIndexChanged="gvSolicitud_SelectedIndexChanged" OnRowCommand="gvSolicitud_RowCommand">
             <Columns>
                 <asp:TemplateField HeaderText="SOLICITUD" ShowHeader="False">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("SOLICITUD") %>'></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="idsolicitud" HeaderText="idsolicitud" ReadOnly="True" SortExpression="idsolicitud" Visible="False" />
                 <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" Visible="False" />
                 <asp:BoundField DataField="idsolicita" HeaderText="idsolicita" SortExpression="idsolicita" Visible="False" />
                 <asp:BoundField DataField="fecharegistra" HeaderText="FREGISTRA" SortExpression="fecharegistra" DataFormatString="{0:dd/MM/yyyy}" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="FSOLICITA" HeaderText="FSOLICITA" SortExpression="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                 <asp:BoundField DataField="TITULO" HeaderText="DETALLE" SortExpression="TITULO"  Visible="False"  />
                 <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" Visible="False" />
                 <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" />
                 <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                 <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
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
                <asp:ButtonField CommandName="CONFIRMAR" HeaderText="CONFIRMAR / OBSERV" ShowHeader="True" Text="CONFIRMAR" ImageUrl="~/images/Edit.gif" >
            
  </asp:ButtonField>
             </Columns>
             <EmptyDataTemplate>
                 No registra datos....
             </EmptyDataTemplate>
             <HeaderStyle BackColor="WhiteSmoke" />
         </asp:GridView></div>
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
        </div>
</asp:Content>
