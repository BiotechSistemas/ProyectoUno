<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudReg.aspx.cs" Inherits="biotech.bio.ventas.Unidades.SolicitudReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
 <%-- <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>--%><%--<link href="../../a_lib/css/bootstrap.min.css" rel="stylesheet">--%>
<link href="../../vendorF/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="../../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="/bio/vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <title>Solicitud Unidades</title>
    <style type="text/css">
        .auto-style1 {
            color: #006600;
        }
        .auto-style2 {
            width: 500px;
        }
        .auto-style3 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal" role="form">
    <div>

        <div class="container">
		  <div class="row-fluid">
			<div class="col-md-12">
			<h2><%--<span class="glyphicon glyphicon-edit"></span>--%>
                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/logoicono.png" Width="30px" />
                 <span class="auto-style1">SOLICITUD TÉCNICA:</span><small>&nbsp; <asp:Label ID="lblFecha" runat="server"></asp:Label>
                </small>
                     </h2>
			<hr>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    idunidad:
                    <asp:Label ID="lblIdUnidad" runat="server"></asp:Label>
                    coreo envio:
                    <asp:Label ID="lblcorreoenvio" runat="server"></asp:Label>
                    &nbsp;encargados:
                    <asp:Label ID="lblcorreosencargados" runat="server"></asp:Label>
                    &nbsp;<br /> nivel2:<asp:Label ID="lblnivel2" runat="server"></asp:Label>
                    &nbsp; idregistra:<asp:Label ID="lblidregistra" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; id suario:
                    <asp:Label ID="lblidusuario" runat="server"></asp:Label>
                </asp:Panel>
			
                <div class="form-group row">
				  <label for="txtusuario" class="col-md-1 control-label">Usuario a cargo:</label>
				  <div class="col-md-4">
                                               <asp:TextBox ID="txtvendedor" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                         
                      <asp:DropDownList ID="ddlVendedor" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceVendedor" DataTextField="NOMBRELARGO" DataValueField="COD" Height="40px" OnSelectedIndexChanged="ddlVendedor_SelectedIndexChanged" Width="100%">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSourceVendedor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_Asesores" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      </div>
                  <label for="txtfecha" class="col-md-1 control-label">Unidad:</label>
                     <div class="col-md-3">
                         <asp:TextBox ID="txtunidad" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                         </div>

                    <label for="txtkmactual" class="col-md-1 control-label">Km:</label>
                     <div class="col-md-2">
                         <asp:TextBox ID="txtkmactual" class="form-control" required runat="server"></asp:TextBox>
                         </div>

                    </div>



				<div class="form-group row">
				 

                  <label for="ddlTiposol" class="col-md-1 control-label">Tipo:</label>
				  <div class="col-md-4">
                      <asp:DropDownList ID="ddlTiposol" class="form-control" runat="server" DataSourceID="SqlDataSourcemanttp" DataTextField="mantenimiento" DataValueField="idMantenimiento" AutoPostBack="True" OnSelectedIndexChanged="ddlTiposol_SelectedIndexChanged"></asp:DropDownList>
				      <asp:SqlDataSource ID="SqlDataSourcemanttp" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_PlanillaEquiposMantenimiento
"></asp:SqlDataSource>
                        </div>
                   
               </div>

                
                 <div class="form-group row">
                    <label for="tel1" class="col-md-1 control-label">Detalles:</label>
							<div class="col-md-11">
                                <asp:TextBox ID="txtdetalles" Style="text-transform: uppercase" required placeholder="Detalles generales y/o especificaciones ..."  class="form-control" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
								
					</div>
				</div>
                 <div class="form-group row">
                    <label for="tel1" class="col-md-1 control-label">Adjuntar: *</label>
							<div class="col-md-11">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Label ID="lblrutatt" runat="server"></asp:Label>
                                <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
					</div>
				</div>
                <%--<div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Empresa:</label>
							<div class="col-md-3">
								<input type="text" class="form-control" id="empresa" placeholder="Nombre de la empresa">
							</div>
							<label for="tel2" class="col-md-1 control-label">Teléfono:</label>
							<div class="col-md-2">
								<input type="text" class="form-control" id="tel2" placeholder="Teléfono empresa">
							</div>
							<label for="email" class="col-md-1 control-label">Email:</label>
							<div class="col-md-3">
								<input type="email" class="form-control" id="email" placeholder="Email">
							</div>
						</div>--%>
				
				
				<div class="col-md-10 col-offset-md-1">
                    <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/correo.gif" Width="30px" />
                    <asp:LinkButton ID="lbtNuevo" runat="server" class="btn btn-default" OnClick="lbtNuevo_Click">Nuevo</asp:LinkButton>
                   
					
                    <asp:Button ID="btnRegistrar" class="btn btn-success" runat="server" Text="Enviar solicitud" OnClick="btnRegistrar_Click" />
                    
					 <asp:LinkButton ID="lbtCancelar" runat="server"  class="btn btn-danger"  OnClick="lbtCancelar_Click">Cerrar</asp:LinkButton>
				   
					
				</div>
                <br />
                 <hr />
                    *Adjuntar imagen referencial del tablero de control Km. y/o detalle particular.<br />
                <br />
                    <asp:Label ID="lblmensaje" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                <asp:Label ID="lblmensajesi" runat="server" ForeColor="#006600"></asp:Label>
                <br />
&nbsp;<table class="auto-style2">
                    <tr>
                        <td><b>Km. Último Mantenimiento:</b></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblkmMaxMantenimientoGeneral" runat="server"></asp:Label>
                            
                    &nbsp;Km</td>
                    </tr>
                    <tr>
                        <td><b>Ult. Km. Registrado (Recorrido):</b></td>
                        <td class="auto-style3">
                           <asp:Label ID="lblKmViaticos" runat="server"></asp:Label>
&nbsp;Km</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbldifKmMant" runat="server" style="font-weight: 700" Visible="False">0</asp:Label>
                            <asp:Label ID="lblKmRegaMant" runat="server" Visible="False">0</asp:Label>
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td><b>Km. Proximo Mantenimiento:</b></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblProxMant" runat="server"></asp:Label>
                            <asp:Label ID="lblProxMant1" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
&nbsp;</td>
                    </tr>
                </table>
                <br />
                </div>
              </div>
            </div>
			






    </div>
    </form>
</body>
</html>
