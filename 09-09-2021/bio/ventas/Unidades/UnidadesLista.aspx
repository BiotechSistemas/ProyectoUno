<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadesLista.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadesLista" %>
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


        function elimarUnidad(){
            swal("UNIDAD ELIMINADA!", "Unidad eliminada correctamente...", "error");
        }

        function debaja(){
            swal("RETIRAR ASIGNACIÓN!", "Se retiró la asignación de la unidad", "error")

            
            .then((willDelete) => {
                if (willDelete) {
    window.location.href = '/bio/ventas/Unidades/UnidadesLista.aspx';
        }});
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
    window.location.href = '/bio/ventas/Unidades/UnidadesLista.aspx';
        }});
        }
       
        function successRegistradoAsignar() {
          
            swal({
                title: "Registro correcto!",
                text: "Unidad asignada correctamente!",
                icon: "success",
                button: "Aceptar",
            })


            .then((willDelete) => {
                if (willDelete) {
    window.location.href = '/bio/ventas/Unidades/UnidadesLista.aspx';
        }});
        }
    </script>



    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
     <div class="col-md-12">
                    <h1 class="page-header"><i class="fa fa-car"></i> Registro de unidades:  
                        
                        <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        
                    </h1>
                </div>
        </div>

     <div class="row">    
                    <ol class="breadcrumb">
                        
                        <li>
                        <asp:LinkButton ID="lbtSolicitud1" runat="server" PostBackUrl="~/bio/ventas/Unidades/SolicitudListar.aspx">Solic.Técnica</asp:LinkButton>
                        </li>
                       
                        <li>
                        <asp:LinkButton ID="lbtnNuevaUnidad" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadRegistrar.aspx">Registrar Unidad</asp:LinkButton>
                        </li>                     
                        
                        
                        <li>
                        <asp:LinkButton ID="lbtCotizacion1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotización</asp:LinkButton>
                        </li>

                        
                         <li>
                        <asp:LinkButton ID="lbtnCargos" runat="server" PostBackUrl="~/bio/ventas/Unidades/CargosUnidades.aspx">Cargos-Recepción</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtResumen1" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen</asp:LinkButton>
                        </li>

                       <%-- <li>
                        <asp:LinkButton ID="lbtActualizar" runat="server" OnClick="lbtActualizar_Click">Actualizar</asp:LinkButton>
                        </li>
                        --%>
                        <%--<div class="panel-body">--%>
                    </ol>
            </div>

    <asp:Panel ID="Panel2Asignar" runat="server">
        <div class="row">
             <div class="panel panel-info">
                        <div class="panel-heading">
                           <strong> ASIGNAR UNIDAD: <asp:Label ID="lbl2idseleccion" runat="server" Visible="False"></asp:Label> &nbsp;<asp:Label ID="lbl2placa" runat="server"></asp:Label>
                            &nbsp;
                            <asp:Label ID="lbl2idCargo" runat="server" Visible="False"></asp:Label></strong>
                        </div>
                  <div class="panel-body">
 
                            <div class="form-row">
                               
                                <div class="form-group col-md-5">
                                    <asp:DropDownList ID="ddlPersonalSinUnidad" class="form-control" runat="server" DataSourceID="SqlDataSourcesununidad" DataTextField="PERSONAL" DataValueField="id"></asp:DropDownList>
                                   
                                    <asp:SqlDataSource ID="SqlDataSourcesununidad" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidad_personalSinUnidad" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                   
                                    <small id="Small3" class="form-text text-muted">Personal:</small>
                                </div>
                                <div class="form-group col-md-3">
                                 
                                    <asp:DropDownList ID="ddlTpAsignacion" CssClass="form-control" runat="server">
                                        <asp:ListItem Value="1">ASIGNACIÓN SELECTIVA</asp:ListItem>
                                        <asp:ListItem Value="2">ASIGNACIÓN TEMPORAL</asp:ListItem>
                                    </asp:DropDownList>
                                    <small id="Small1" class="form-text text-muted">Motivo asignación</small>
                                </div>
                                <div class="form-group col-md-2">
                                  
                                    <asp:Button ID="lbtnAsingnar" runat="server" class="btn btn-info" Text="ASIGNAR" OnClick="lbtnAsingnar_Click" OnClientClick="return confirm('ASINGNAR UNIDAD, Desea asignar unidad al personal seleccionado?');" Width="100%" />
                                </div>
                                <div class="form-group col-md-2">
                                    <asp:LinkButton ID="lbtn2cancelar" CssClass="btn btn-danger" runat="server" OnClick="lbtn2cancelar_Click" Width="100%">CANCELAR</asp:LinkButton>
                                    </div>
                              </div>
                            
                            
                           
                           
                 </div>
                 </div>
        </asp:Panel>


    <asp:Panel ID="Panel1" runat="server">
        <div class="row">
             <div class="panel panel-warning">
                        <div class="panel-heading">
                           <strong> QUITAR ASIGNACIÓN DE UNIDAD: <asp:Label ID="lblidSelecionado" runat="server" Visible="False"></asp:Label> &nbsp;<asp:Label ID="lblplaca" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Label1" runat="server" Visible="False">3</asp:Label>
                            &nbsp;
                            <asp:Label ID="lblidCargo" runat="server" Visible="False"></asp:Label></strong>
                        </div>
                 <asp:GridView ID="gvfechacargo" runat="server" class="table  table-sm  table-hover"  AutoGenerateColumns="False" DataKeyNames="idcargo" DataSourceID="SqlDataSourcefechacargo1" GridLines="None">
                     <Columns>
                         <asp:BoundField DataField="idcargo" HeaderText="idcargo" ReadOnly="True" SortExpression="idcargo" Visible="False" />
                         <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                         <asp:BoundField DataField="idusuario" HeaderText="idusuario" SortExpression="idusuario" Visible="False" />
                         <asp:BoundField DataField="PLACA" HeaderText="UNIDAD" SortExpression="PLACA"  >
                         <HeaderStyle Width="60px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                         </asp:BoundField>
                         <asp:BoundField DataField="FechaCargo" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.  CARGO" SortExpression="FechaCargo">
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL A CARGO" ReadOnly="True" SortExpression="PERSONAL" />
                         <asp:BoundField DataField="descripcionCargo" HeaderText="DESCRIPCIÓN CARGO" SortExpression="descripcionCargo" >
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="FechaBaja" HeaderText="FechaBaja" SortExpression="FechaBaja" Visible="False" />
                         <asp:BoundField DataField="descripcionBaja" HeaderText="descripcionBaja" SortExpression="descripcionBaja" Visible="False" />
                         <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                     </Columns>
                        <HeaderStyle BackColor="#FCF8E3" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourcefechacargo1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidad_FechaAcargo_AltaBaja" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidSelecionado" Name="idunidad" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <div class="panel-body">
 
                            <div class="form-row">
                                <div class="form-group col-md-7">
                                    <asp:DropDownList ID="ddlDetbaja" CssClass="form-control" runat="server">
                                        <asp:ListItem>CESE LABORAL</asp:ListItem>
                                        <asp:ListItem>CAMBIO DE UNIDAD</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                    <small id="passwordHelpBlock" class="form-text text-muted">  Concepto / motivo de baja:</small>
                                </div>
                                <div class="form-group col-md-3">
                                  
                                    <asp:Button ID="btnBaja" runat="server" class="btn btn-warning" Text="QUITAR ASIGNACIÓN" OnClick="btnBaja_Click" OnClientClick="return confirm('RETIRAR CARGO, Ud. desea retirar cargo asignación de la unidad..?');" Width="100%" />
                                </div>
                                <div class="form-group col-md-2">
                                    <asp:LinkButton ID="lbtnCancelar1" CssClass="btn btn-danger" runat="server" OnClick="lbtnCancelar1_Click" Width="100%">CANCELAR</asp:LinkButton>
                                    </div>
                              </div>
                            
                            
                           
                           
                 </div>
                 </div>
        </div>


    </asp:Panel>



<div class="row">
             
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            UNIDADES ASIGNADAS:
                            <asp:Label ID="lblidTipo" runat="server" Visible="False">3</asp:Label>
                        </div>
                        <%--<div class="panel-body">--%>
                            <div class="table-responsive">
                                

                                    <asp:GridView ID="gvUnidades" runat="server" class="table table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="IdEquipo,UNIDAD" DataSourceID="SqlDataSourceLiestarUnid" OnSelectedIndexChanged="gvUnidades_SelectedIndexChanged" OnRowCommand="gvUnidades_RowCommand" OnRowDataBound="gvUnidades_RowDataBound" Font-Size="X-Small">
                                        <Columns>
                                           
                                            <asp:TemplateField HeaderText="UNIDAD" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("UNIDAD") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:TemplateField>
                                           
                                            <asp:BoundField DataField="IdEquipo" HeaderText="IdEquipo" ReadOnly="True" SortExpression="IdEquipo" Visible="False" />
                                            <asp:BoundField DataField="UNIDAD" HeaderText="UNIDAD" SortExpression="UNIDAD" Visible="False" />
                                            <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" />
                                            <asp:BoundField DataField="DETALLE" HeaderText="DETALLE" SortExpression="DETALLE" Visible="False" />
                                            <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" Visible="False" />
                                            <asp:BoundField DataField="idmarca" HeaderText="idmarca" SortExpression="idmarca" Visible="False" />
                                            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                            <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                           <asp:BoundField DataField="ANO" HeaderText="AÑO" SortExpression="ANO" Visible="False" />
                                            <asp:BoundField DataField="FVREVTEC" HeaderText="FV. RT Nº1"  SortExpression="FVREVTEC" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idorigen" HeaderText="idorigen" SortExpression="idorigen" Visible="False" />
                                             <asp:BoundField DataField="ORIGEN" HeaderText="ORIGEN" SortExpression="ORIGEN" Visible="False" />
                                             <asp:BoundField DataField="idusuario" HeaderText="idusuario" SortExpression="idusuario" Visible="False" />
                                           
                                            <asp:BoundField DataField="KMMANTENIMIENTO1" HeaderText="KM. INGRESO A MANTENIMIENTO" SortExpression="KMMANTENIMIENTO1" ReadOnly="True" >
                                            <HeaderStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="KMACTUAL" HeaderText="KM. ACTUAL" ReadOnly="True" SortExpression="KMACTUAL" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />                                          
                                            </asp:BoundField>
                                             <asp:BoundField DataField="dif" HeaderText="RECORRIDO" ReadOnly="True" SortExpression="dif" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MANTENIMIENTO" HeaderText="KM MANT*"  SortExpression="MANTENIMIENTO" >
                                            <HeaderStyle Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MESREVTEC" HeaderText="MESREVTEC" SortExpression="MESREVTEC" Visible="False" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="FVANOREVTEC" HeaderText="FVANOREVTEC"  SortExpression="FVANOREVTEC" Visible="False" >
                                            </asp:BoundField>
                                              <asp:BoundField DataField="SVENCIDO" HeaderText="V*" SortExpression="SVENCIDO" ReadOnly="True" Visible="False" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                             <asp:BoundField DataField="SPROXIMOV1_2" HeaderText="PROX*" SortExpression="SPROXIMOV1_2" ReadOnly="True" Visible="False" >
                                            <HeaderStyle Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>

                                            <asp:ImageField DataImageUrlField="difSimbolo" DataImageUrlFormatString="~/images/{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                                             <asp:ButtonField CommandName="edita" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/1editar.png" >
            
                                            <ControlStyle Height="25px" Width="25px" />
                                            <HeaderStyle Width="25px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ButtonField>

                                             

                                              <asp:ButtonField CommandName="servicios" HeaderText="" ShowHeader="True" Text="Serv" >
                                                    <ControlStyle CssClass="btn btn-success btn-sm"></ControlStyle>
                                              <HeaderStyle Width="50px" />
                                              </asp:ButtonField>
                                            
                                              <asp:ButtonField CommandName="baja" HeaderText="" ShowHeader="True" Text="Baja" >
                                                    <ControlStyle CssClass="btn btn-default btn-sm"></ControlStyle>
                                              <HeaderStyle Width="40px" />
                                              </asp:ButtonField>




                                        </Columns>
                                        <HeaderStyle BackColor="#DFF0D8" />
                                        <PagerTemplate>
                                            No registra unidades en actividad....
                                        </PagerTemplate>
                                    </asp:GridView>

                                
                                    <asp:SqlDataSource ID="SqlDataSourceLiestarUnid" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_Listar" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidTipo" Name="idTipo" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
           
   

    <div class="panel panel-default">
                        <div class="panel-heading">
                            UNIDADES SIN ASIGNAR:
                            
                        </div>
                        
                            <div class="table-responsive">
                                <asp:GridView ID="gvUndDisponibles" runat="server" class="table table-bordered table-sm  table-hover"  AutoGenerateColumns="False" DataKeyNames="IdEquipo,UNIDADES" DataSourceID="SqlDataSourceUndDisponible" Font-Size="X-Small" OnSelectedIndexChanged="gvUndDisponibles_SelectedIndexChanged" OnRowCommand="gvUndDisponibles_RowCommand">
                                    <Columns>
                                        <asp:TemplateField HeaderText="PLACA" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("UNIDADES") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        
                                        <asp:BoundField DataField="IdEquipo" HeaderText="IdEquipo" ReadOnly="True" SortExpression="IdEquipo" Visible="False" />
                                        <asp:BoundField DataField="UNIDADES" HeaderText="UNIDADES" SortExpression="UNIDADES" Visible="False" />
                                        <asp:BoundField DataField="idmarca" HeaderText="idmarca" SortExpression="idmarca" Visible="False" />
                                        <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                        <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                                        <asp:BoundField DataField="AÑO" HeaderText="AÑO" SortExpression="AÑO" Visible="False" />
                                        <asp:BoundField DataField="idorigen" HeaderText="idorigen" SortExpression="idorigen" Visible="False" />
                                        <asp:BoundField DataField="ORIGEN" HeaderText="ORIGEN" SortExpression="ORIGEN" Visible="False" />
                                      
                                       
                                         <asp:BoundField DataField="FVREVTEC" HeaderText="FVREVTEC"  SortExpression="FVREVTEC" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MESREVTEC" HeaderText="MESREVTEC" SortExpression="MESREVTEC" Visible="False" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="FVANOREVTEC" HeaderText="FVANOREVTEC"  SortExpression="FVANOREVTEC" Visible="False" >
                                            </asp:BoundField>

                                         <asp:BoundField DataField="KMMANTENIMIENTO1" HeaderText="KM. INGRESO A MANTENIMIENTO" SortExpression="KMMANTENIMIENTO1" ReadOnly="True" >
                                            <HeaderStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="KMACTUAL" HeaderText="KM. ACTUAL" ReadOnly="True" SortExpression="KMACTUAL" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />                                          
                                            </asp:BoundField>
                                             <asp:BoundField DataField="dif" HeaderText="RECORRIDO" ReadOnly="True" SortExpression="dif" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:ImageField DataImageUrlField="difSimbolo" DataImageUrlFormatString="~/images/{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                                        <asp:BoundField DataField="MANTENIMIENTO" HeaderText="KM MANT*"  SortExpression="MANTENIMIENTO" >
                                            <HeaderStyle Width="50px" />
                                            </asp:BoundField>
                                         <asp:BoundField DataField="SVENCIDO" HeaderText="V*" ReadOnly="True" SortExpression="SVENCIDO" Visible="False">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="SPROXIMOV1_2" HeaderText="PROX*" ReadOnly="True" SortExpression="SPROXIMOV1_2" Visible="False" >
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                         
                                            <asp:ButtonField CommandName="edita" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/1editar.png" >
            
                                            <ControlStyle Height="25px" Width="25px" />
                                            <HeaderStyle Width="40px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ButtonField>

                                             

                                              <asp:ButtonField CommandName="servicios" HeaderText="" ShowHeader="True" Text="Serv" >
                                                    <ControlStyle CssClass="btn btn-success btn-sm"></ControlStyle>
                                              <HeaderStyle Width="60px" />
                                              </asp:ButtonField>
                                            
                                              <asp:ButtonField CommandName="baja" HeaderText="" ShowHeader="True" Text="Asignar" >
                                                    <ControlStyle CssClass="btn btn-default btn-sm"></ControlStyle>
                                              <HeaderStyle Width="50px" />
                                              </asp:ButtonField>
                                         <asp:ButtonField CommandName="elimina" ShowHeader="True" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >
                                            <ControlStyle Height="25px" Width="25px" />
                                            <HeaderStyle Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                        
                                    </Columns>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                <asp:Label ID="lblmensaje2" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                                <asp:SqlDataSource ID="SqlDataSourceUndDisponible" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_UndDisponibles" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                
                            </div>
        </div>
    </div>
    <hr />
</asp:Content>
