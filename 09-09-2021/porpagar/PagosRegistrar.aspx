<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="PagosRegistrar.aspx.cs" Inherits="biotech.porpagar.PagosRegistrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <link href="../../scripts/jquery.dataTables.min.css" rel="stylesheet" />  
    <script src="../../scripts/jquery.dataTables.min.js"></script>

    <script src="../scripts/sweetalert.min.js"></script>

    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }

        function successError() {
            swal("Error! Pagos registrados en su totalidad!", { icon: "error",dangerMode: true, });
        }

        function successRegistrado2() {
          
            swal({
                title: "Registro correcto!",
                text: "el registro se guardo corectamente!",
                icon: "success",
                button: "Aceptar",
            })


            .then((willDelete) => {
                if (willDelete) {
    window.location.href = '/porpagar/PagosRegistrar.aspx';
        }});
        }
       

    </script>

       
  
    <script>

        $(document).ready(function () {
            $('#dvcuentaxpagar').DataTable();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">
		  <div class="row-fluid">
		<div class="col-md-12">
			<h2><span class="glyphicon glyphicon-edit"></span> CUENTAS POR PAGAR
                <asp:Label ID="lblIDusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
                <asp:Label ID="lblidpago1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidproveedor1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                </h2>
			<hr>
       
			<div class="form-horizontal">
                
          <asp:Panel ID="ppagoreg" runat="server" Visible="False">
              <div class="form-group row">
                 
                    <div class="col-md-2">
					    <asp:TextBox ID="txtfecha1" runat="server" class="form-control" ToolTip="Fecha de registro de cuenta"></asp:TextBox>
					    <asp:TextBox ID="txtfecha" runat="server" required class="form-control"  TextMode="Date" ToolTip="Fecha de registo de cuenta"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:DropDownList ID="ddlempresa" class="form-control"  runat="server" DataSourceID="SqlDataSourceEmpresa" DataTextField="empresa" DataValueField="id"></asp:DropDownList>
				        <asp:SqlDataSource ID="SqlDataSourceEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
				    </div>                  
                    <div class="col-md-2">
                        <asp:TextBox ID="txtproveedor" runat="server" placeholder="Proveedor" class="form-control" ToolTip="Ingresar proveedor a buscar"></asp:TextBox>
				    </div>
                    <div class="col-md-1">                
                        <asp:LinkButton ID="lbBuscar" class="btn btn-success" runat="server" OnClick="lbBuscar_Click">Buscar</asp:LinkButton>
                    </div>                   
                        
                    <asp:Label ID="lblproveedorDetalle" class="col-md-5 control-label" runat="server"></asp:Label>
                                  
                </div>

                <div class="form-group row">                 
                    <div class="col-md-2">
                        <asp:TextBox ID="txtndocumento" runat="server" required placeholder="N° documento" class="form-control" ToolTip="Número de documento"></asp:TextBox>					  
				    </div>
                    <div class="col-md-4">
                      <asp:TextBox ID="txtTitular" runat="server" required placeholder="Titular" class="form-control" ToolTip="Titular de cuenta"></asp:TextBox>						  
				    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtimporte" runat="server" required type="number" step="0.01" placeholder="importe" class="form-control" ToolTip="Importe a pagar"></asp:TextBox>						  
				    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtadelanto" runat="server"  type="number" step="0.01"  placeholder="adelanto" class="form-control" ToolTip="Importe de adelanto"></asp:TextBox>						  
				    </div> 
                    
                    <div class="col-md-2">
                        <asp:RadioButtonList ID="rbmoneda" class="radio-inline" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbmoneda_SelectedIndexChanged">                            
                            <asp:ListItem Value="D">DOLARES</asp:ListItem>
                            <asp:ListItem Value="S">SOLES</asp:ListItem>                               
                        </asp:RadioButtonList>					  
				    </div> 
                          
                </div>

              <div class="form-group row"> 
                    <div class="col-md-6">
                      <div class="row">
                    <label for="rbcuotas" class="col-md-4 control-label">Pago en cuotas:</label>


                    <div class="col-md-3">
                        <asp:RadioButtonList ID="rbcuotas"  RepeatDirection="Horizontal" runat="server"  Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbcuotas_SelectedIndexChanged">                            
                            <asp:ListItem Value="SI">SI</asp:ListItem>
                            <asp:ListItem Value="NO">NO</asp:ListItem>                               
                        </asp:RadioButtonList>					  
				    </div>   

                    <div class="col-md-3">
                        <asp:TextBox ID="txtcuotas" runat="server" required type="number"  placeholder="Cuotas" class="form-control" ToolTip="Cantidad de cuotas"></asp:TextBox>						  
				    </div>
                </div>

                  </div>
                  <div class="col-md-6">
                  <asp:Panel ID="Paneldetaccion" runat="server" class="row">                      
                        <label for="rbcuotas" class="col-md-4 control-label">Imp. por detacción:</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtimportedetaccion" type="number" step="0.01" class="form-control" placeholder="Cuotas" runat="server"></asp:TextBox>
                        <%--<asp:TextBox ID="txtimportedetaccion" runat="server" required type="number"  placeholder="Cuotas" class="form-control" ToolTip="Importe de detracción"></asp:TextBox>--%>						  
				        </div>  
                  </asp:Panel>
                  </div>
                    
               </div>

                <div class="form-group row">
                    <div class="col-md-12">
                    <asp:TextBox ID="txtglosa"  rows="2" class="form-control" runat="server" TextMode="MultiLine" placeholder="Descripcion de cuenta" ToolTip="Asunto o descripción"></asp:TextBox>
                    </div>
                </div>
                

                <div class="form-group row">
                    <div class="col-md-12">
                <asp:Button ID="Button2" CssClass="col-md-1 btn btn-success"  runat="server" Text="Registrar" OnClick="Button2_Click" Visible="False" OnClientClick="successRegistrado2"></asp:Button>
                <asp:Button ID="btmodificar" CssClass="col-md-1 btn btn-success"  runat="server" Text="Modificar" OnClick="btmodificar_Click"></asp:Button>
                <asp:Button ID="bteliminar" CssClass="col-md-1 btn btn-danger"  runat="server" Text="Eliminar" OnClick="bteliminar_Click"></asp:Button>
                        
                        <asp:LinkButton ID="lbtcacelar" runat="server" CssClass="col-md-2 btn btn-danger" OnClick="lbtcacelar_Click">CANCELAR</asp:LinkButton>
                        
                </div>
                    </div>
          </asp:Panel>
                <br />

                <div class="form-group row">
                     <div class="col-md-12">
                <asp:Button ID="Button1" CssClass="col-md-2 btn btn-success" runat="server" Text="Nuevo" OnClick="Button1_Click"></asp:Button>
                    <asp:GridView ID="dvcuentaxpagar" class="table table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="idpago,idempresa,idProveedor,NCTAS,RAZONSOCIAL" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="dvcuentaxpagar_SelectedIndexChanged" GridLines="Horizontal" OnRowCommand="dvcuentaxpagar_RowCommand" PageSize="15" AllowPaging="True">
                        <Columns>
                            <asp:ButtonField CommandName="CUOTAS" ShowHeader="True" Text="CUOTAS" ButtonType="Image" ImageUrl="~/images/1buscar.png" >
            
                            <ControlStyle Height="30px" Width="40px" />
            
                            <HeaderStyle Width="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
            
                            <asp:ButtonField CommandName="EDITAR" ShowHeader="True" Text="EDITAR" ButtonType="Image" ImageUrl="~/images/1editar.png" >
                            <ControlStyle Height="30px" Width="40px" />
                            <HeaderStyle Width="30px" />
                            </asp:ButtonField>
                            <asp:BoundField DataField="idpago" HeaderText="idpago" ReadOnly="True" SortExpression="idpago" Visible="False" />
                            <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                            <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                            <asp:BoundField DataField="NCTA" HeaderText="CUENTA" SortExpression="NCTA" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="FREGISTRO" HeaderText="F. REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="GLOSA" HeaderText="ASUNTO" SortExpression="GLOSA" />
                            
                            <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" Visible="False" />
                            <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CUOTAS" SortExpression="CUOTAS" />
                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                            
                            <asp:BoundField DataField="CREGISTRADAS" HeaderText="**" SortExpression="CREGISTRADAS" Visible="False" />
                            <asp:ImageField DataImageUrlField="CREGISTRADAS" DataImageUrlFormatString="~/images/{0}.png">
                                <ControlStyle Height="10px" Width="10px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>
                            <asp:BoundField DataField="NCTAS" HeaderText="NCTAS" SortExpression="NCTAS" Visible="False" />
                            
                        </Columns>
                        <HeaderStyle BackColor="#E9E9E9" />
                        <PagerStyle BorderStyle="Double" BorderWidth="2px" Font-Overline="True" Font-Size="Large" Wrap="True" />
                    </asp:GridView>
                         <span class="help-block">&nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/images/1.png" Width="12px" />
&nbsp;Por registrar cronograma de pago ,
                         <asp:Image ID="Image5" runat="server" ImageUrl="~/images/2.png" Width="12px" />
                         &nbsp;Cuenta registrada con pago parcial.</span><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_registrados" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
               </div>
 </div>
            <br />
                <asp:Panel ID="pDetallePagos" runat="server" class="form-horizontal" Visible="False">
                    <h4>DETALLE DE PAGOS CP-<asp:Label ID="lblidcuenta" runat="server"></asp:Label>
                        :&nbsp;<asp:Label ID="lblproveedor" runat="server" style="font-weight: 700"></asp:Label>
                        &nbsp;, CUOTAS:
                        <asp:Label ID="lblcuotas" runat="server"></asp:Label>
                        /<asp:Label ID="lblcuotasregistadas" runat="server"></asp:Label>
                        <asp:Label ID="lbliddetallepagoElim" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblestadoCuota" runat="server" Visible="False"></asp:Label>
                    </h4>
                    <hr>
                    <div class="form-group row">
                            <label for="txtimporte" class="col-md-1 control-label">N°:<asp:Label ID="lblnewcuota" runat="server" class="control-label"></asp:Label></label>
                          
                           
                            <label for="txtimporte" class="col-md-1 control-label">Importe:</label>
							<div class="col-md-2">
                                <asp:TextBox ID="txtmontocuota" runat="server"  class="form-control" ></asp:TextBox>
								
							</div>
                            <label for="txtfechavencto" class="col-md-1 control-label">F.Vencto:</label>
							<div class="col-md-3">
								<asp:TextBox ID="txtfechavencto" runat="server"  class="form-control" TextMode="Date" ></asp:TextBox>								
							</div>
                        <asp:Button ID="btNuevoDetalle" CssClass="col-md-1 btn btn-success" runat="server" Text="Nuevo" OnClick="btNuevoDetalle_Click" Visible="False"  ></asp:Button>
                        <asp:Button ID="brregistrarDetalle" CssClass="col-md-1 btn btn-success" runat="server" Text="Registrar" OnClick="brregistrarDetalle_Click" ></asp:Button>
                        <asp:LinkButton ID="lbEliminar" CssClass="col-md-1 btn btn-danger" runat="server" OnClick="lbEliminar_Click" OnClientClick="return confirm('*Eliminar registro de cuota, desea eliminar registro?');">Eliminar</asp:LinkButton>
                        <asp:LinkButton ID="btCancel2" CssClass="col-md-1 btn btn-danger" runat="server" OnClick="btCancel2_Click">Cancelar</asp:LinkButton>
                    </div>
                    <br />
                    <div class="form-group row">
                        <asp:GridView ID="gvDetallePagos" runat="server" class="table   table-hover table-sm  table-responsive thead-light"  AutoGenerateColumns="False" DataKeyNames="idDetalle,ESTADO" DataSourceID="SqlDataSourceDetallePagos" OnSelectedIndexChanged="gvDetallePagos_SelectedIndexChanged" Width="100%">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ButtonType="Image" ShowSelectButton="True" CancelImageUrl="~/images/cancel.png" EditImageUrl="~/images/1editar.png" SelectImageUrl="~/images/eliminarr.png" UpdateImageUrl="~/images/guadar.png" >
                                <ControlStyle Height="30px" Width="40px" />
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                </asp:CommandField>
                                <asp:BoundField DataField="NCUOTA" HeaderText="N°" ReadOnly="True" SortExpression="NCUOTA" />
                                <asp:TemplateField HeaderText="FVENCIMIENTO" SortExpression="FVENCIMIENTO">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FVENCIMIENTO","{0:dd/MM/yyyy}") %>' Width="120px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FVENCIMIENTO","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="MONTO" DataFormatString="{0:0,0.00}" HeaderText="MONTO" SortExpression="MONTO">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" SortExpression="idDetalle" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                                <asp:TemplateField HeaderText="MEDIOPAGO" SortExpression="MEDIOPAGO" Visible="False">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSourceMP" DataTextField="medioPago" DataValueField="medioPago" SelectedValue='<%# Bind("MEDIOPAGO") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceMP" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MEDIOPAGO") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="SERIE" HeaderText="SERIE" SortExpression="SERIE" Visible="False" />
                                <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO" Visible="False" />
                                <asp:BoundField DataField="FPAGADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FPAGADA" SortExpression="FPAGADA" Visible="False" />
                                <asp:BoundField DataField="IMPPAGADO" HeaderText="IMPPAGADO" SortExpression="IMPPAGADO" Visible="False" />
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                <asp:BoundField DataField="VALIDAD" HeaderText="VALIDAD" SortExpression="VALIDAD" Visible="False" />
                                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png">
                                    <ControlStyle Height="20px" Width="20px" />
                                    <HeaderStyle Width="25px" />
                                </asp:ImageField>
                            </Columns>
                            <HeaderStyle BackColor="#E9E9E9" />
                            <SelectedRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceDetallePagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_detallexID" SelectCommandType="StoredProcedure" UpdateCommand="update PagosDetalle set monto=@monto,fechavencto= @FVENCIMIENTO FROM PagosDetalle WHERE idDetalle = @idDetalle ">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidcuenta" Name="idpago" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="monto" />
                                <asp:Parameter Name="FVENCIMIENTO" />
                                <asp:Parameter Name="idDetalle" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <span class="help-block">
            Eliminar registro  &lt;&lt;Seleccionar&gt;&gt;. <asp:Image ID="Image2" runat="server" ImageUrl="~/images/a0.png" Width="12px" />
                        Cuota registrada sin realización de pago &lt;&lt;Eliminar cuota&gt;&gt;;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/a1.png" Width="12px" />
                        &nbsp;Cuota registrada con pago realizado.</span>
                    </div>

                   



                </asp:Panel>

            




               <asp:Panel ID="Panel1" runat="server" Visible="False">
                   <asp:Label ID="lblretenedor" runat="server"></asp:Label>
                   <br />
                   <asp:Label ID="lblidproveedor" runat="server"></asp:Label>
                   <br />
                   <asp:Label ID="lblmaxid" runat="server"></asp:Label>
                   <br />
                   <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                   <br />
                   maxid Detalle:
                   <asp:Label ID="lblnewIdDetalle" runat="server"></asp:Label>
                   &nbsp;<br /> new cuota:
                   <br />
               </asp:Panel>

           

          </div>
    </div>


        <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
            <asp:Button ID="bt4" runat="server" Text="ohaberr" OnClick="bt4_Click" />
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

    </div>

   
</asp:Content>
