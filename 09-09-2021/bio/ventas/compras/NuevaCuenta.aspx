<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="NuevaCuenta.aspx.cs" Inherits="biotech.bio.ventas.compras.NuevaCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../../../scripts/sweetalert.min.js"></script>
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
     window.location.href = '/bio/ventas/compras/PagosRegistrar.aspx';
         }});
         }
       

    </script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row-fluid">
		
			<h3><span class="glyphicon glyphicon-edit"></span> CTA. POR PAGAR - NUEVA CUENTA
                <asp:Label ID="lblIDusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
                <asp:Label ID="lblidpago1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                </h3>
			<div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/Proveedor.aspx">Proveedores</asp:LinkButton>
                        </li>
                            <%--<li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotizaciones</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Compras</asp:LinkButton>
                        </li>--%>
                       
                        <li>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRegistrar.aspx">Administrar Cuenta</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbt_Facturados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosFacturados.aspx">Cta. Facturadas</asp:LinkButton>
                        </li>
                    </ol>
            </div>
       
            <div class="panel panel-default">
                <%--<div class="panel-heading">Panel with panel-default class</div>--%>
      <div class="panel-body">
			<div class="form">

  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="txtfecha">Fecha Emisión:</label>
        <asp:TextBox ID="txtfecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label for="ddlempresa">Empresa:</label>
      <asp:DropDownList ID="ddlempresa" class="form-control"  runat="server" DataSourceID="SqlDataSourceEmpresa" DataTextField="empresa" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlempresa_SelectedIndexChanged"></asp:DropDownList>
				        <asp:SqlDataSource ID="SqlDataSourceEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([estado] = @estado)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
    </div>
     <div class="form-group col-md-4">
      <label for="txttitular">Titular</label>
      <asp:TextBox ID="txttitular" CssClass="form-control" runat="server"></asp:TextBox>
   
    </div>
  </div>

   <div class="form-row">
    <div class="form-group col-md-4">
        <label for="txtbuscarProveedor">Ingresar proveedor:</label>
         <div class="input-group">
             <asp:TextBox ID="txtbuscar" CssClass="form-control" runat="server"></asp:TextBox>
      <span class="input-group-btn">
          <asp:LinkButton ID="lbtnbuscar" class="btn btn-default" runat="server" OnClick="lbtnbuscar_Click">Buscar</asp:LinkButton>
             <%-- <button class="btn btn-default" type="button">Buscar</button>--%>
      </span>
    </div>
    </div>
   
     <div class="form-group col-md-8">
      <label for="txttitular">Proveedor:<asp:Label ID="lblidProveedor" runat="server" Text=""></asp:Label></label>
      <asp:TextBox ID="txtProveedor" CssClass="form-control" runat="server" readonly></asp:TextBox>
   
    </div>
  </div>

<div class="form-row">
    <div class="form-group col-md-4">
        <label for="txtimporte">Importe:</label>
        <asp:TextBox ID="txtimporte" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
        <label for="rbmoneda">Moneda:</label>
        <asp:RadioButtonList ID="rbmoneda" runat="server" Width="100%" AutoPostBack="True" RepeatDirection="Horizontal">                            
                            <asp:ListItem Value="S" Selected="True">SOLES</asp:ListItem>                               
                            <asp:ListItem Value="D">DOLARES</asp:ListItem>
                        </asp:RadioButtonList>	
    </div>
     <div class="form-group col-md-4">
        <label for="txtimporte">Meses a usar servicio:</label>
        <asp:TextBox ID="txtcuotas" type="number"  CssClass="form-control" runat="server"></asp:TextBox>
    </div>

</div>


  <div class="form-group">
      <div class="form-group col-md-12">
    <label for="txtglosa">Descripcion de cuenta:</label>
        <asp:TextBox ID="txtglosa"  rows="2" class="form-control" runat="server" TextMode="MultiLine" placeholder="Descripcion de cuenta" ToolTip="Asunto o descripción"></asp:TextBox>
  </div>
      </div>
 
                <div class="form-group">
                    <div class="form-group col-md-12">
                <asp:Button ID="btnRegistrar" class="btn btn-success" runat="server" Text="REGISTRAR CUENTA" OnClick="btnRegistrar_Click" />
                    </div>
                    </div>
  <br />
                <asp:Label ID="lblmensaje" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>

  
                </div>

          </div>
    </div>
       

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
                        <asp:GridView ID="gvDetallePagos" runat="server" class="table   table-hover table-sm  table-responsive thead-light"  AutoGenerateColumns="False" DataKeyNames="idDetalle,ESTADO" DataSourceID="SqlDataSourceDetallePagos" OnSelectedIndexChanged="gvDetallePagos_SelectedIndexChanged" Width="100%" Font-Size="Small">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ButtonType="Image" ShowSelectButton="True" CancelImageUrl="~/images/cancel.png" EditImageUrl="~/images/1editar.png" SelectImageUrl="~/images/eliminarr.png" UpdateImageUrl="~/images/guadar.png" >
                                <ControlStyle Height="25px" Width="25px" />
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                </asp:CommandField>
                                <asp:BoundField DataField="NCUOTA" HeaderText="N°" ReadOnly="True" SortExpression="NCUOTA" />
                                <asp:TemplateField HeaderText="F. VENCTO" SortExpression="FVENCIMIENTO">
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
                            <EditRowStyle Font-Size="Small" />
                            <HeaderStyle BackColor="#E9E9E9" />
                            <PagerStyle Font-Size="Small" />
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




          </div>
    
</asp:Content>
