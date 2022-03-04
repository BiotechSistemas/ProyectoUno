<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="PrestamosAprobAdmin.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Solicitud.PrestamosAprobAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i>SOLIC. PRESTAMOS APROBADOS:
                          
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
      <asp:LinkButton ID="lbtnLegajo" runat="server" OnClick="lbtnLegajo_Click">Resumen de Solicitudes</asp:LinkButton>
      </li>


           <li>
      <asp:LinkButton ID="lbtnSolPrestamosAprobados" runat="server" OnClick="lbtnSolPrestamosAprobados_Click">Prestamos Aprobados</asp:LinkButton>
      </li>
  <li>
      <asp:LinkButton ID="lbtnNuevaSolicitud" runat="server" OnClick="lbtnNuevaSolicitud_Click" >Nueva Solicitud</asp:LinkButton>
      </li>
     
</ol> 



      <div class="row">
          <asp:RadioButtonList ID="rbtEstadoDeposito" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtEstadoDeposito_SelectedIndexChanged" RepeatDirection="Horizontal">
              
              <asp:ListItem Selected="True" Value="4">DEPOSITOS EN PROCESO</asp:ListItem>
              <asp:ListItem Value="1">DEPOSITOS REALIZADOS</asp:ListItem>
              <asp:ListItem Value="0">DEPOSITOS OBSERVADOS</asp:ListItem>
              <asp:ListItem  Value="5">PRESTAMOS APROBADOS</asp:ListItem>
          </asp:RadioButtonList>
          <br />
          <asp:GridView ID="gvResumensolicitudes" CssClass="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="15" OnSelectedIndexChanged="gvResumensolicitudes_SelectedIndexChanged" OnRowCommand="gvResumensolicitudes_RowCommand">
              <Columns>
                  <%--<asp:BoundField DataField="AsesorEstado" HeaderText="AsesorEstado" SortExpression="AsesorEstado" />--%>
                  <%--<asp:BoundField DataField="GDHEstado" HeaderText="GDHEstado" SortExpression="GDHEstado" />--%>

                  <%--<asp:BoundField DataField="EstadoDescuento" HeaderText="ESTADO SOLICITUD" SortExpression="EstadoDescuento" />--%>
                  <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                  <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" />
                  <asp:BoundField DataField="idUsuario" HeaderText="COD. SOLICITA" SortExpression="idUsuario" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. A EJECUTAR / INICIAR" SortExpression="fecha">
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                  <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLICITUD" SortExpression="descripcion" />
                 
                  <%-- <asp:ImageField DataImageUrlField="EstadoDescuento" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="SOLICITUD ESTADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>--%>
                   <asp:ImageField DataImageUrlField="EstadoDeposito" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO DEPOSITO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>

                  <asp:ImageField DataImageUrlField="EstadoCobrado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="DESCUENTO APLICADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                  <asp:BoundField DataField="sistemaFecha" HeaderText="FECHA REGISTRA" SortExpression="sistemaFecha">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:ButtonField CommandName="mostrar" ShowHeader="True" Text="Ver solicitud" >
<ControlStyle CssClass="btn btn-success "></ControlStyle>
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
              </Columns>
              <EmptyDataTemplate>
                  No registra depósitos por realizar...
              </EmptyDataTemplate>
              <HeaderStyle BackColor="WhiteSmoke" />
          </asp:GridView><strong>DEPOSITO :&nbsp; </strong>&nbsp;EN PROCESO
          <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z4.png" Width="15px" />
          &nbsp;&nbsp;&nbsp;&nbsp; REALIZADO
          <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; OBSERVADO
          <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_ResumenSolicitudesPrestamos" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblestadoPrestamo" Name="opSol" PropertyName="Text" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:Panel ID="payuda" runat="server" Visible="False">
              <asp:Label ID="lblestadoPrestamo" runat="server"></asp:Label>
          </asp:Panel>
          </div>
    
</asp:Content>
