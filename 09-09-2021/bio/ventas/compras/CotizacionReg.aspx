<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CotizacionReg.aspx.cs" Inherits="biotech.bio.ventas.compras.CotizacionReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">




       <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <!-- Bootstrap core CSS -->

  <link href="../../a_lib/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../../a_lib/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../../a_lib/css/style.css" rel="stylesheet">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

      
    <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
      

<title>Cotización</title>

     


    
      <style type="text/css">
          .auto-style1 {
              width: 600px;
          }
          
          .auto-style3 {
              width: 191px;
          }
          .auto-style4 {
              width: 135px;
          }
          </style>

     


    
    </head>
<body>
    <form id="form1" runat="server">
        <div class="container">
		  <div class="row-fluid">
              <div class="card">

                    <div class="card-header  py-4">
                        <h2>
                        <span class="fas fa-leaf green-text fa-sm"></span> <strong> COTIZACIÓN N°:</strong>
                        <asp:Label ID="lblcot" runat="server"></asp:Label>
                     
                        <asp:Label ID="lblIdCot" runat="server" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        <asp:HiddenField ID="hfCustomerId" runat="server" />
                    </h2>
                        <table class="auto-style1">
                            <tr>
                                <td>Solicitud Técnica:<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Sin solicitud</asp:ListItem>
                                    <asp:ListItem Value="1">Con solicitud</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:Label ID="lblidsolicitudTec" runat="server" Text="0" Visible="False"></asp:Label>
                                </td>
                                <td>
                                    <asp:Panel ID="Psolicitud" runat="server" Width="300px" Visible="False">
                                        <table class="auto-style2">
                                            <tr>
                                                <td class="auto-style3">N° solicitud:<asp:DropDownList ID="ddlsolicitucTec" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcetv" DataTextField="SOLICITUD" DataValueField="idsolicitud" OnSelectedIndexChanged="ddlsolicitucTec_SelectedIndexChanged" Width="150px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourcetv" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SolicitudTecnicaTipo" SelectCommandType="StoredProcedure">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                                <td class="auto-style4">&nbsp;UNIDAD:<asp:Label ID="lblIdUnidadSol" runat="server" Visible="False"></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lblunidadsolic" runat="server"></asp:Label>
                                                    <asp:Label ID="lblidtipoGruposolc" runat="server" Visible="False"></asp:Label>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>

  <div class="card-body">

      <asp:Panel ID="PanelPrincipal" runat="server">
      </asp:Panel>
          <asp:Panel ID="Panel2" runat="server" Visible="False">
              iD UNIDAD vEHICULAR:
              <asp:Label ID="Label2" runat="server"></asp:Label>
              &nbsp;&nbsp;&nbsp; id cargotraabajador:
              <asp:Label ID="lblidCargoTrab" runat="server" Text="0"></asp:Label>
              <br />
              idcentrocosto:<asp:Label ID="lblidCentrocostoTec" runat="server"></asp:Label>
              &nbsp; ID SOLICITA:
              <asp:Label ID="lblCodSolicita" runat="server"></asp:Label>
              &nbsp;AREA:<asp:Label ID="lblidarea" runat="server"></asp:Label>
              &nbsp;- idareaparacostos:
              <asp:Label ID="lblidAreaCosto" runat="server"></asp:Label>
              &nbsp;</asp:Panel>

          <asp:Panel ID="Panel10" runat="server">

         


          <div class="form-group row">
              <div class="col-md-2">
                  <asp:TextBox ID="txtFemision" runat="server" class="form-control form-control-sm" required="" TextMode="Date"></asp:TextBox>
                  <small id="Small3" class="form-text text-muted mb-2">Fecha Emisión </small>
              </div>

               <asp:Panel ID="Panel3" runat="server"> </asp:Panel>
              <div class="col-md-4">
                  <asp:DropDownList ID="ddlSolicita" runat="server" class="form-control form-control-sm mdb-select" DataSourceID="SqlDataSourcesolicita" DataTextField="NOMBRE" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlSolicita_SelectedIndexChanged">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourcesolicita" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="compra_CotAutorizados" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="10" Name="todos" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <small id="Small1" class="form-text text-muted mb-2">Solicita: </small>
              </div>
             
                  
                   <div class="col-md-4">
                  <asp:DropDownList ID="ddlAutoriza" runat="server" DataSourceID="SqlDataSourceAuto" DataTextField="NOMBRE" DataValueField="id" Height="30px" OnSelectedIndexChanged="ddlAutoriza_SelectedIndexChanged">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceAuto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="compra_CotAutorizados" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="1" Name="todos" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <small id="Small2" class="form-text text-muted">Autoriza: </small>
              </div>
             
             
              <div class="col-md-2">
                  <asp:DropDownList ID="ddlTipo" runat="server" AutoPostBack="True" class="form-control form-control-sm " DataSourceID="SqlDataSource1" DataTextField="tipo" DataValueField="idTipo" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [CompraCotTipo] where idTipo &lt;3"></asp:SqlDataSource>
                  <small id="Small4" class="form-text text-muted mb-2">Tipo: </small>
              </div>
          </div>
          <div class="form-group row">
              <div class="col-md-2">
                  <asp:DropDownList ID="ddlCondPago" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSourceCondPago" DataTextField="condicion" DataValueField="idCondpago">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceCondPago" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [CompraCotCondPago]"></asp:SqlDataSource>
                  <small id="Small1" class="form-text text-muted mb-2">Cond. pago: </small>
              </div>
              <div class="col-md-5">
                  <asp:TextBox ID="txtDetallePago" runat="server"  class="form-control form-control-sm text-uppercase" placeholder="Detalle de pago..." required="" ToolTip="Detalle condición de pago"></asp:TextBox>
                  <small id="Small6" class="form-text text-muted mb-2">Cond. pago / Días cred... </small>
              </div>
              <div class="col-md-3">
                  <asp:DropDownList ID="ddcentrocosto" runat="server" AutoPostBack="True" class="form-control input-sm" DataSourceID="SqlDataSource4" DataTextField="DESCRIPCION" DataValueField="id" OnSelectedIndexChanged="ddcentrocosto_SelectedIndexChanged" Width="100%">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="CentroCompra_areas" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblidAreaCosto" Name="idarea" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <small id="Small7" class="form-text text-muted mb-2">Centro de costo: </small>
              </div>
              <div class="col-md-2">
                  <asp:Label ID="lblplaca" runat="server" Text="No indica"></asp:Label>
                  <asp:DropDownList ID="ddlplaca" runat="server" AutoPostBack="True" class="form-control input-sm" DataSourceID="SqlDataSourceUnidades" DataTextField="PLACA" DataValueField="IdEquipo" OnSelectedIndexChanged="ddlplaca_SelectedIndexChanged">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceUnidades" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                  <small id="Small21" class="form-text text-muted mb-2">Unidad vehicular:<asp:Label ID="lblidunidad" runat="server" Visible="False"></asp:Label>
                  </small>
              </div>
          </div>
          <div class="form-group row">
              <div class="col-md-2">
                  <asp:TextBox ID="txtfexpira" runat="server" class="form-control form-control-sm" required="" TextMode="Date"></asp:TextBox>
                  <small id="materialRegisterFormPasswordHelpBlock" class="form-text text-muted mb-2">Fecha estimada de pago:</small>
              </div>
              <div class="col-md-10">
                  <asp:TextBox ID="txtasunto" runat="server" Style="text-transform: uppercase" class="form-control form-control-sm text-uppercase" placeholder="Asunto..." required=""></asp:TextBox>
                  <small id="Small5" class="form-text text-muted mb-2">Asunto / motivo: </small>
              </div>
          </div>
               <div class="form-group row">
              <div class="col-md-12">
                  <asp:TextBox ID="txtDetalleObservacion" runat="server" Style="text-transform: uppercase" class="form-control form-control-sm" required="" TextMode="MultiLine" ToolTip="Ingresar observación precisa, motivo de pago, negociaciones ,etc..."></asp:TextBox>
                  <small id="Small8" class="form-text text-muted mb-2">Detalle u observación:</small>
                  </div>
                   </div>

          <p>
          </p>
          <%--<hr class="my-2">--%>
          <div class="row">
              <div class="col-md-8">
                  <i class="far fa-address-book"></i>DETALLE PROVEEDOR:</span><asp:Label ID="lblidproveedor" runat="server" Visible="False"></asp:Label>
              </div>
              <%--<div class="col-md-1">
                 Moneda</div>--%>
              <div class="col-md-3 col-offset-1">
                  <asp:RadioButtonList ID="rbtpmoneda" runat="server" DataSourceID="SqlDataSourcemoneda" DataTextField="descripcion" DataValueField="idmoneda" RepeatDirection="Horizontal" ToolTip="Tipo de moneda" Width="100%">
                  </asp:RadioButtonList>
                  <asp:SqlDataSource ID="SqlDataSourcemoneda" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tipoMoneda]"></asp:SqlDataSource>
              </div>
          </div>

              <div class="form-row">
               <div class="col-md-2">
                  <!-- Last name -->
                 <asp:TextBox ID="txtruc" runat="server" AutoPostBack="True" class="form-control form-control-sm" OnTextChanged="txtruc_TextChanged"></asp:TextBox>
                   
                 <label class="small" for="txtruc">
                  RUC</label>
                    </div>


                   <div class="col-md-4">
                  <!-- Last name -->
                 <asp:TextBox ID="txtrazonsocial" runat="server" class="form-control form-control-sm text-uppercase"></asp:TextBox>    
                 <label class="small" for="txtrazonsolicial">
                  Razón social</label>
                    </div>

                  
                   <div class="col-md-2">
                  <!-- Last name -->
                 <asp:TextBox ID="txttelefono"   runat="server" class="form-control form-control-sm"></asp:TextBox>
                 <label class="small" for="txttelefono">
                  Teléfono</label>
                    </div>

                   <div class="col-md-2">
                  <!-- Last name -->
                  <asp:TextBox ID="txtmail" runat="server"  class="form-control form-control-sm" type="email"></asp:TextBox> 
                 <label class="small" for="txtemail">
                  E-mail</label>
                    </div>

                   <div class="col-md-2">
                  <!-- Last name -->
                  <asp:TextBox ID="txtVendedor" runat="server"   class="form-control form-control-sm"></asp:TextBox>
                 <label class="small" for="txtvendedor">
                 Vendedor</label>
                    </div>


                  </div>





 



              <div class="form-row">
               <div class="col-md-10">
                  <!-- Last name -->                
                    <asp:TextBox ID="txtdireccion" runat="server" class="form-control form-control-sm text-uppercase"></asp:TextBox>
                   			 <label class="small" for="txtdireccion">
                  Dirección</label>
               </div>
                    <div class="col-md-2">
                  <!-- Last name -->                
                   <asp:DropDownList ID="ddlzona" runat="server" class="form-control form-control-sm"  DataSourceID="SqlDataSourceZona" DataTextField="descripcion" DataValueField="idZona" Width="100%" Height="30px">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceZona" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idZona], [descripcion] FROM [tb_Zona]"></asp:SqlDataSource>
              
                   			 <label class="small" for="txtzona">
                  Zona</label>
                    </div>


               </div>

              <asp:LinkButton ID="lbRegProveedor" runat="server" OnClick="lbRegProveedor_Click"></asp:LinkButton>
              &nbsp;
              <asp:Label ID="lblmensajeproveedor" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
              <asp:Label ID="lblestadoProveedor" runat="server" Visible="False"></asp:Label>
              <br />
              <asp:Label ID="lblmensajeprincipal" runat="server" ForeColor="#990000"></asp:Label>

 </asp:Panel>


          <asp:Panel ID="Panel20" runat="server">



          <div class="form-group row">
              <div class="col-md-12 ">
             
                 
                  <asp:Panel ID="payuda" runat="server" Visible="False">
                      producto:
                      <asp:Label ID="lblproductoBk" runat="server"></asp:Label>                      
                      &nbsp;idcentro costo:
                      <asp:Label ID="lblidCentrocosto" runat="server"></asp:Label>
                      &nbsp;tpmoneda:
                      <asp:Label ID="lblIdtpmoneda" runat="server"></asp:Label>
                      
                      &nbsp; condicion de pago:
                      <asp:Label ID="lblidcondpago" runat="server"></asp:Label>
                      
                  </asp:Panel>
                  <asp:TextBox ID="txtbuscarproducto" placeholder="Ingresar producto..." runat="server" AutoPostBack="True" OnTextChanged="txtbuscarproducto_TextChanged" Width="400px"></asp:TextBox>
                  <asp:Button ID="btnBuscarProducto" runat="server" OnClick="btnBuscarProducto_Click" Text="BUSCAR PRODUCTO" />
                  <asp:Button ID="btnNuevoProducto" runat="server" BackColor="#E8F3FF" OnClick="btnNuevoProducto_Click" Text="REGISTRAR NUEVO PRODUCTO" />
                  <asp:CheckBox ID="CheckBoxIGV" runat="server" Checked="True" Text=" IGV (18%)" />
                  <asp:GridView ID="gvListaProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table-striped table-bordered table-sm  table-hover"   DataKeyNames="COD" DataSourceID="SqlDataSource3" OnRowCommand="gvListaProductos_RowCommand" Width="100%">
                      <Columns>
                          <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                          <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                          <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                          <asp:TemplateField HeaderText="CANTIDAD COMPRA" SortExpression="CANTIDADCOMPRA">
                              <EditItemTemplate>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("CANTIDADCOMPRA") %>'></asp:Label>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:TextBox ID="txt" runat="server" Text='<%# Bind("CANTIDADCOMPRA") %>' Width="70px"></asp:TextBox>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="PRECIO" SortExpression="PRECIO">
                              <EditItemTemplate>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRECIO") %>'></asp:Label>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:TextBox ID="txt2" runat="server" Width="70px"></asp:TextBox>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="idmax" HeaderText="idmax" ReadOnly="True" SortExpression="idmax" Visible="False" />
                          <asp:ButtonField ButtonType="Button" CommandName="AGREGAR" ShowHeader="True" Text="+">
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                          </asp:ButtonField>
                      </Columns>
                  </asp:GridView>
                
              </div>
             
            
              <%--    <div class="col-md-2">
                         <button type="submit" class="btn btn-default">
						  <span class="glyphicon glyphicon-print"></span> Imprimir
						</button>
                </div>--%>
          </div>
               <strong>Listado de productos cotizados:</strong>
          <asp:GridView ID="GridView1" runat="server" class="table" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="CODIGO">
              <Columns>
                  <asp:ButtonField CommandName="Delete" HeaderText="" ShowHeader="True" Text="Eliminar" />
              </Columns>
              <EmptyDataTemplate>
                  Agregar productos a cotizar....
              </EmptyDataTemplate>
              <HeaderStyle BackColor="#DDDDDD" />
          </asp:GridView>
          <p class="text-right">
              items(<asp:Label ID="lblitemrow" runat="server">0</asp:Label>
              )<asp:Label ID="lbltipoCat" runat="server" Text="1" Visible="False"></asp:Label>
              <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SUB-TOTAL:</strong>
              <asp:Label ID="lblsubtt" runat="server">0.00</asp:Label>
              &nbsp;<strong>IGV:</strong>
              <asp:Label ID="lblttigv" runat="server" ForeColor="#990000">0.00</asp:Label>
              &nbsp;&nbsp;<strong> TOTAL:</strong>
              <asp:Label ID="lblTotal" runat="server">0.00</asp:Label>
              <asp:Label ID="Label1" runat="server"></asp:Label>
          </p>
          <p class="text-right">
              <asp:Label ID="lblmenasjereg" runat="server"></asp:Label>
          </p>
          <div class="form-group row">
              <div class="col-md-9 ">
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                  <asp:Label ID="lblrutatt" runat="server" Visible="False"></asp:Label>
                  <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
              </div>
             
          </div>
         

      <asp:Panel ID="pSelecProductos" runat="server">


          <div class="table-responsive">
                            <%--<input type="text" class="form-control" id="q" placeholder="Buscar productos" onkeyup="load(1)">--%>
                          
       
        
                            <asp:Label ID="lblmensaje2" runat="server" Text=""></asp:Label>

		    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="compra_listProducCat_filtro" SelectCommandType="StoredProcedure">
                
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbltipoCat" Name="idcat" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblproductoBk" Name="producto" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          



                          <%--<asp:LinkButton ID="lbPasardatos" runat="server" OnClick="lbPasardatos_Click">REGISTRAR</asp:LinkButton>--%>
					  </div>

      </asp:Panel>
              </asp:Panel>
      <br />
      <asp:Panel ID="PanelBotones" runat="server">
          <asp:Button ID="btnAgregarProducto" runat="server" Text="AGREGAR PRODUCTO &gt;&gt;" OnClick="btnAgregarProducto_Click" Height="40" />
          <asp:Button ID="btnRetornar10"  runat="server" OnClick="btnRetornar10_Click" Text="&lt;&lt; RETORNAR" Height="40" />
          <asp:Button ID="btRegCotizacionPrincipal" runat="server" class="btn btn-default" OnClick="btRegCotizacionPrincipal_Click" Text="FINALIZAR COTIZACIÓN" Height="40px" />

          <asp:LinkButton ID="LinkButton1" runat="server" Height="40px" CssClass="btn btn-danger" OnClick="LinkButton1_Click">Cerrar</asp:LinkButton>

      </asp:Panel>

  </div>
</div>

			<div class="col-md-12">	
		
                <%--<asp:ScriptManager ID="ScriptManager1" runat="server" />--%><%-- <asp:UpdatePanel runat="server" id="UpdatePanel"       updatemode="Conditional"  >

            <ContentTemplate>
             
         
                <br /><br /><br />

        <asp:Panel ID="PanelDetalleProducto" runat="server">
        </asp:Panel>


  </ContentTemplate>

            </asp:UpdatePanel>--%>&nbsp;
                <asp:Label ID="lblmensajefin" runat="server" ForeColor="Maroon"></asp:Label>










		</div><!-- Carga los datos ajax -->
	
			<!-- Modal -->
			
		 </div>
	


       




        <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="../../a_lib/js/jquery-3.3.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="../../a_lib/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="../../a_lib/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="../../a_lib/js/mdb.js"></script>



    

        <asp:Panel ID="Panelinterno" runat="server" ViewStateMode="Disabled" Visible="False">
            CORRREO EMITE:
            <asp:Label ID="lblcorreoEmisor" runat="server"></asp:Label>
            &nbsp; / CORREO ENCARGADOS:<asp:Label ID="lblcorreos" runat="server"></asp:Label>
            &nbsp;unidad:
            <asp:Label ID="lblunidadsolic3" runat="server"></asp:Label>
        </asp:Panel>



    

    </form>
</body>
</html>
