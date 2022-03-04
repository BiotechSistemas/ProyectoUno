<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarSolicitud.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Solicitud.RegistrarSolicitud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 
       <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <!-- Bootstrap core CSS -->

  <link href="../../../a_lib/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../../../a_lib/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../../../a_lib/css/style.css" rel="stylesheet">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      
    <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
      

<title>Cotización</title>

     


    
      </head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
		  <div class="row-fluid">
              <div class="card">

                    <div class="card-header  py-4">
                        <h2>
                        <span class="fas fa-leaf green-text fa-sm"></span> <strong>SOLICITUD GDH</strong>
                      
                       
                    </div>

                  <div class="card-body">
                           <div class="form-group row">
                               <div class="col-md-4">
                                   <asp:DropDownList ID="ddlGrupoTipoSolicitud" class="form-control form-control-sm" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idGrupotipo" OnSelectedIndexChanged="ddlGrupoTipoSolicitud_SelectedIndexChanged"></asp:DropDownList>
                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idGrupotipo,descripcion from solic.grupoTipoSolicitud"></asp:SqlDataSource>                                  
                                      <small id="Small1" class="form-text text-muted mb-2">Tipo de solicitud </small>
                                  </div>
                               <div class="col-md-4">
                                      <asp:DropDownList ID="ddlTipoSolicitud" class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="idTipoSolicitud"></asp:DropDownList>
                                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_listadotipoSolicitud" SelectCommandType="StoredProcedure">
                                          <SelectParameters>
                                              <asp:ControlParameter ControlID="ddlGrupoTipoSolicitud" Name="idTipoSolicitud" PropertyName="SelectedValue" Type="Int32" />
                                          </SelectParameters>
                                      </asp:SqlDataSource>
                                      <small id="Small2" class="form-text text-muted mb-2">Solicitud </small>
                                  </div>
                               <div class="col-md-4">
                                      <asp:TextBox ID="txtfechaSolc" runat="server" class="form-control form-control-sm" required="" TextMode="Date"></asp:TextBox>
                                      <small id="Small4" class="form-text text-muted mb-2">Fecha Ejecución/Inicio </small>
                                  </div>
                              
                          </div>

                      <asp:Panel ID="pprestamo" runat="server">
                          <div class="form-group row">
                               <div class="col-md-4">
                                   <asp:TextBox ID="txtImporte"  type="number" step="0.01" required class="form-control form-control-sm" runat="server"></asp:TextBox>
                                        <small id="Small3" class="form-text text-muted mb-2">Importe </small>
                               </div>
                              <div class="col-md-4">
                                  <asp:RadioButtonList ID="rbMoneda" runat="server" RepeatDirection="Horizontal" Width="100%">
                                      <asp:ListItem Value="S" Selected="True">SOLES</asp:ListItem>
                                      <asp:ListItem Value="D">DÓLARES</asp:ListItem>
                                  </asp:RadioButtonList>
                                        <small id="Small5" class="form-text text-muted mb-2">Moneda </small>
                               </div>
                              <div class="col-md-4">
                                  <asp:TextBox ID="txtCuotas" required  type="number" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                        <small id="Small6" class="form-text text-muted mb-2">Cuotas </small>
                               </div>
                         </div>
                      </asp:Panel>

                       
                          <div class="form-group row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtDescripcion" class="form-control form-control-sm" Style="text-transform: uppercase" required runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                        <small id="Small7" class="form-text text-muted mb-2">Descripción </small>
                                   </div>
                          </div>

                      <asp:Button ID="btnRegistrarSolicitud" runat="server" Text="REGISTRAR SOLICITUD &gt;&gt;"  Height="40" OnClick="btnRegistrarSolicitud_Click" OnClientClick="return confirm('FINALIZAR SOLICITUD, los datos ingresados serán enviados al área correcpondiente, desea confirmar el registro?');" />
                      <asp:LinkButton ID="LinkButton1" runat="server" Height="40px" CssClass="btn btn-danger" OnClick="LinkButton1_Click" Width="200px">Cerrar</asp:LinkButton>
                      </div>
                 
                 <small> <p>
                        <asp:Label ID="lblmensajePredet6" runat="server" ForeColor="#CC0000"></asp:Label>
                   <br />
                     <asp:Label ID="lblmensajePredet7" runat="server" ForeColor="#CC0000"></asp:Label>
                  </p></small>
                      
                



              </div>
        </div>
        
    </div>
        <asp:Panel ID="pAyuda" runat="server" Visible="False">
            Id personal:
            <asp:Label ID="lblidpersonal" runat="server"></asp:Label>
            &nbsp; regpor =
            <asp:Label ID="lblRegPor" runat="server"></asp:Label>
            , correo emisor:
            <asp:Label ID="lblcorreoEmisor" runat="server"></asp:Label>
            <br />
            correos:
            <asp:Label ID="lblcorreos" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblidusuario" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
