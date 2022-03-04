<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadActualizar.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadActualizar" %>
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
            swal("Error!, no se registraron los datos correctamente...", { icon: "error",dangerMode: true, });
        }

        function successRegistrado() {
          
            swal({
                title: "Registro correcto!",
                text: "Los datos se registraron correctamente...",
                icon: "success",
                button: "Aceptar",
            })

            // .then((willDelete) => {
            //     if (willDelete) {
            // window.location.href = '/bio/ventas/Unidades/UnidadesLista.aspx';
            //}});

        }
       

    </script>

    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
			<h2><i class="fa fa-paste"></i> ACTUALIZAR UNIDADES
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>


     <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Unidades</asp:LinkButton>
                        </li>
                       
                      <%--  <li>
                        <asp:LinkButton ID="lbtnNuevo" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadRegistrar.aspx">Registrar Unidad </asp:LinkButton>
                        </li>--%>
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/AdmAccesorio.aspx">Accesorios - Servicios </asp:LinkButton>
                        </li>
                       
                         <li>
                        <asp:LinkButton ID="lbtnMarca" runat="server" PostBackUrl="~/bio/ventas/Unidades/AdmUnidMarcas.aspx">Marcas - Modelo</asp:LinkButton>
                        </li>

                         <li>
                        <asp:LinkButton ID="lbtnCombustible" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadCombustible.aspx">Combustible</asp:LinkButton>
                        </li>
                         <li>
                        <asp:LinkButton ID="lbtnCondicion" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadCondicion.aspx">Condición</asp:LinkButton>
                        </li>
                       
                        
                    </ol>
      </div>

        <asp:Label ID="lblMensaje" runat="server" ForeColor="#990000"></asp:Label>

    <div class="row">   
          <div class="col-sm-12 col-md-7">


  <div class="panel panel-default">
  <div class="panel-heading">1.-DATOS PRINCIPALES UNIDAD
        <asp:Label ID="lblIdUnidad" runat="server" Visible="False"></asp:Label>
        &nbsp;</div>
  <div class="panel-body">

       <div class="form-row">
           <div class="form-group col-md-6">
               <label for="txtfregistro">Condición:</label>
               <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                   <asp:ListItem Value="N" Selected="True">Nuevo</asp:ListItem>
                   <asp:ListItem Value="S">Con uso</asp:ListItem>
               </asp:RadioButtonList>
               </div>
            <div class="form-group col-md-6">
         <label for="txtkilometraje">Kilometraje de ingreso:</label>
          <asp:TextBox ID="txtkilometrajeIngreso" required class="form-control"  type="number" runat="server"></asp:TextBox>
        </div>
           
           </div>


         <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Placa</label>
           <asp:TextBox ID="txtplaca"  class="form-control" readonly runat="server"></asp:TextBox>
        </div>
             <div class="form-group col-md-6">
         <label for="txtkilometraje">Motor:</label>
          <asp:TextBox ID="txtmotor" required class="form-control" runat="server"></asp:TextBox>
        </div>
       
       
  </div>

   <div class="form-row">
       <div class="form-group col-md-6">
         <label for="txtkilometraje">Marca:<asp:Label ID="lblidmarca" runat="server" Visible="False"></asp:Label>
           </label>
           &nbsp;<asp:DropDownList ID="ddlmarca"  class="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="marca" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlmarca_SelectedIndexChanged"></asp:DropDownList> 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from [dbo].[tb_PlanillaEquiposMarca] where idtipo=3"></asp:SqlDataSource>
        
        </div>

        <div class="form-group col-md-6">
          <label for="txtfregistro">Modelo:<asp:Label ID="lblidModelo" runat="server" Visible="False"></asp:Label>
            </label>
            &nbsp;<asp:DropDownList ID="ddlModelo" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceModelo" DataTextField="modelo" DataValueField="idModelo"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceModelo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposModelo] WHERE ([idMarca] = @idMarca)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidmarca" Name="idMarca" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
          </div>
         
       
  </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="txtVersion">Versión:</label>
               <asp:TextBox ID="txtVersion" class="form-control" required runat="server"></asp:TextBox>
          </div>
          
           
        <div class="form-group col-md-6">
          <label for="txtfregistro">Color:</label>
               <asp:TextBox ID="txtcolor" class="form-control" required runat="server"></asp:TextBox>
          </div>
            </div>
           
        


        <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Chasis:</label>
              <asp:TextBox ID="txtchasis" required class="form-control" runat="server"></asp:TextBox>
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">Combustible:<asp:Label ID="lblTpCombustible" runat="server" Visible="False"></asp:Label>
            </label>
            &nbsp;<asp:DropDownList ID="ddlcombustible" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="combustible" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposCombustible]"></asp:SqlDataSource>
      
        </div>
       
    </div>


       <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Año de Fabricación:</label>
              <asp:TextBox ID="txtano" class="form-control" required type="number"  runat="server"></asp:TextBox>
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">Timón:<asp:Label ID="lblIdTimon" runat="server" Visible="False"></asp:Label>
            </label>
            &nbsp;<asp:DropDownList ID="ddlTimon" CssClass="form-control" runat="server">
                <asp:ListItem Selected="True" Value="No indica">Seleccionar</asp:ListItem>
                <asp:ListItem Value="Cambiado"></asp:ListItem>
                <asp:ListItem>Original</asp:ListItem>
            </asp:DropDownList>
        </div>
       
  </div>

        <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Condición:<asp:Label ID="lblidAdqisicion" runat="server" Visible="False"></asp:Label>
            </label>
              &nbsp;<asp:DropDownList ID="ddladquisicion" class="form-control"  runat="server" DataSourceID="SqlDataSource3" DataTextField="origen" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddladquisicion_SelectedIndexChanged"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposOrigen]"></asp:SqlDataSource>
      
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">Propietario:</label>
          <asp:TextBox ID="txttitular" required class="form-control" runat="server"></asp:TextBox>
        </div>       
        </div>


         <div class="form-row">
        
      
             <div class="form-group col-md-6">
          <label for="txtfregistro">F.Registro:</label>
               <asp:TextBox ID="txtfregistro"  class="form-control" MaxLength="10" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtfregistro" Display="Dynamic" Text="Error, fecha incorrecta!" Operator="DataTypeCheck" Type="Date" Runat="Server" ForeColor="Maroon" /> 
      
          </div>
       
  </div>


       
         <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">km. a recorrer por mantenimiento:</label>
               <asp:TextBox ID="txtkmMantenimiento" class="form-control" required type="number"  runat="server"></asp:TextBox>
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">N° puertas
            <asp:Label ID="lblidpuertas" runat="server" Visible="False"></asp:Label>
            </label>
            &nbsp;<asp:DropDownList ID="ddlPuertas" CssClass="form-control" runat="server">
                <asp:ListItem Value="No indica" Selected="True">Seleccionar</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>Más de 5</asp:ListItem>
            </asp:DropDownList>
        </div>
       
  </div>      

       <div class="form-row">
           <div class="form-group col-md-6">
         <label for="txtcilindro">Motor (Cilindrada):</label>
          <asp:TextBox ID="txtnmotorcilindrada"   required  class="form-control" placeholer="Cilindrada" runat="server"></asp:TextBox>
        </div>
           <div class="form-group col-md-6">
         <label for="txtcilindro">Nro. Cilindros:</label>
               <asp:DropDownList ID="ddlnCilindros" CssClass="form-control" runat="server">
                   <asp:ListItem Selected="True" Value="0">Seleccionar</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
                   <asp:ListItem>12</asp:ListItem>
                   <asp:ListItem>14</asp:ListItem>
               </asp:DropDownList>
        </div>


      
       
  </div>      
       <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Tracción:</label>
            <asp:DropDownList ID="ddlTraccion" CssClass="form-control" runat="server">
                <asp:ListItem Selected="True" Value="No indica">Seleccionar</asp:ListItem>
                <asp:ListItem>4 Matic</asp:ListItem>
                <asp:ListItem>4 Motion</asp:ListItem>
                <asp:ListItem>4WD</asp:ListItem>
                <asp:ListItem>4X2</asp:ListItem>
                <asp:ListItem>4X4</asp:ListItem>
                <asp:ListItem>6X4</asp:ListItem>
                <asp:ListItem>8X4</asp:ListItem>
                <asp:ListItem>AWD</asp:ListItem>
                <asp:ListItem>Delantera</asp:ListItem>
                <asp:ListItem>Posterior</asp:ListItem>
                <asp:ListItem>Quattro</asp:ListItem>
                <asp:ListItem>Tiptronic</asp:ListItem>
            </asp:DropDownList>
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">Tipo Transmisión:</label>
            <asp:DropDownList ID="ddlTransmision" CssClass="form-control" runat="server">
                <asp:ListItem Selected="True" Value="No indica">Seleccionar</asp:ListItem>
                <asp:ListItem>Automática</asp:ListItem>
                <asp:ListItem>Automática (Secuencial)</asp:ListItem>
                <asp:ListItem>Mecánica</asp:ListItem>
            </asp:DropDownList>
        </div>
       

  </div>    
       <div class="form-row">
          <div class="form-group col-md-6">
          <label for="txtfregistro">Llantas/aro:</label>
               <asp:TextBox ID="txtLlantasAro" required class="form-control" runat="server"></asp:TextBox>
          </div>
             
             </div>
        

       



         <div class="form-row">
        <div class="form-group col-md-12">
          <label for="txtfregistro">Comentario:</label>
              <asp:TextBox ID="txtdescripcion" required Style="text-transform: uppercase" class="form-control" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
       
  </div>   


  </div>
  <div class="panel-footer">
      <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-success" Text="ACTUALIZAR DATOS PRINCIPALES" OnClick="btnActualizar_Click" />
      <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Text="Cancelar" />

      <asp:LinkButton ID="lbtnPrincipal" CssClass="btn btn-info" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx">RETORNAR PRINCIPAL</asp:LinkButton>

  </div>
</div>
              </div>

        <div class="col-sm-12 col-md-5">
             <div class="panel panel-default">
                <div class="panel-heading">2.-ACCESORIOS: 
                  </div>
                <div class="panel-body">
                    <div class="table-responsive">
                    <asp:GridView ID="gvAccesorios" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAcceReg" DataKeyNames="COD,IDACCESORIOS" OnSelectedIndexChanged="gvAccesorios_SelectedIndexChanged" Font-Size="X-Small">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                            <asp:BoundField DataField="IDACCESORIOS" HeaderText="IDACCESORIOS" SortExpression="idServAcce" Visible="False" />
                            <asp:BoundField DataField="ACCESORIOS" HeaderText="ACCESORIOS" SortExpression="ACCESORIOS" />
                            <asp:BoundField DataField="FECHAINGRESO" HeaderText="FECHA REGISTRO" SortExpression="FECHAINGRESO" DataFormatString="{0:dd/MM/yyyy}" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>

                        <asp:Label ID="lblmensaje2" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                        <br />

                    <asp:SqlDataSource ID="SqlDataSourceAcceReg" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_AccesoriosxCod" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIdUnidad" Name="idunidad" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                        </div>
                    <asp:CheckBoxList ID="checkAccesorios"  runat="server" DataSourceID="SqlDataSourceAccesorios" DataTextField="Servicio" DataValueField="idServicio" RepeatColumns="2" Width="100%"></asp:CheckBoxList>



                         <asp:SqlDataSource ID="SqlDataSourceAccesorios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_UnidadesServicios where idCategoria = 20 order by Servicio
"></asp:SqlDataSource>



                   

                         </div>

                   <div class="panel-footer">
                       <asp:LinkButton ID="lbtnActualizarAccesorios" CssClass="btn btn-success"  runat="server" OnClick="lbtnActualizarAccesorios_Click" Width="100%">ACTUALIZAR ACCESORIOS</asp:LinkButton>
                   </div>
               </div>



             <div class="panel panel-default">
                <div class="panel-heading">IMÁGENES REFERENCIALES:
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                    <asp:LinkButton ID="lbtnActualizarimagen" runat="server" OnClick="lbtnActualizarimagen_Click">ACTUALIZAR</asp:LinkButton>
                  </div>
                <div class="panel-body">
                    <table class="auto-style1">
                        <tr>
                            <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                            <td>
                                <asp:LinkButton ID="lbtnr1" CssClass="btn btn-info" runat="server" OnClick="lbtnr1_Click">REGISTRAR
                                </asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:FileUpload ID="FileUpload2" runat="server" /></td>
                            <td>
                                <asp:LinkButton ID="lbtnr2" CssClass="btn btn-info"  runat="server" OnClick="lbtnr2_Click">REGISTRAR</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:FileUpload ID="FileUpload3" runat="server" /></td>
                            <td>
                                <asp:LinkButton ID="lbtnr3" CssClass="btn btn-info"  runat="server" OnClick="lbtnr3_Click">REGISTRAR</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:FileUpload ID="FileUpload4" runat="server" /></td>
                            <td>
                                <asp:LinkButton ID="lbtnr4" CssClass="btn btn-info"  runat="server" OnClick="lbtnr4_Click">REGISTRAR</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <asp:Panel ID="pimagen" runat="server" Visible="False">
                        <asp:Label ID="lblnombre1" runat="server"></asp:Label>
                        &nbsp;-
                        <asp:Label ID="lblnombre2" runat="server"></asp:Label>
                        &nbsp;-<asp:Label ID="lblnombre3" runat="server"></asp:Label>
                        &nbsp;-<asp:Label ID="lblnombre4" runat="server"></asp:Label>
                        <br />
                        44444</asp:Panel>
                    <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                    <br />
                    <asp:Image ID="imagen1" runat="server" Height="80px" Alt="Imagen1" Width="100px" />
                    <asp:Image ID="imagen2" runat="server" Height="80px" Alt="Imagen2" Width="100px" />
                    <asp:Image ID="imagen3" runat="server" Height="80px" Alt="Imagen3" Width="100px" />
                    <asp:Image ID="imagen4" runat="server" Height="80px" Alt="Imagen4" Width="100px" />
                    <br />
                    <br />
                    <asp:Label ID="lblmensajeproveedor" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                    </div>
                 </div>



        </div>
</asp:Content>
