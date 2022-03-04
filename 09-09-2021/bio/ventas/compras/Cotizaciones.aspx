<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Cotizaciones.aspx.cs" Inherits="biotech.bio.ventas.compras.Cotizaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-sign-out"></i> COTIZACIONES<asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
                           
                            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>  </div> 
             <div class="row">    
   <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/Proveedor.aspx">Proveedores</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotizaciones</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Compras-Servicios</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>
                    </ol>
     </div>
    <div class="row">

        <asp:Panel ID="Panel1" runat="server">

            <div class="alert alert-success alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                              <asp:Label ID="lblmensajett" runat="server" Text=""></asp:Label>
                            </div>

            
        </asp:Panel>
       

        <div class="panel panel-default">
                       
                          <div class="panel-body">
                            <asp:Label ID="lblestado" runat="server" Text="15" Visible="False"></asp:Label>
                                   
        <asp:Label ID="lbldato" runat="server" Visible="False"></asp:Label>
                              <asp:LinkButton ID="lbActualizar" CssClass="btn btn-info" runat="server" OnClick="lbActualizar_Click" Width="120px">Actualizar</asp:LinkButton>
  
                     
                              <asp:Button ID="Button6" CssClass="btn btn-success" runat="server" Text="Nuevo" OnClick="Button6_Click" Width="120px" />
  
                     
        Estado:
             
        <asp:DropDownList ID="ddlEstado"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged" DataSourceID="SqlDataSourceestado" DataTextField="estado" DataValueField="idcotestado" Width="150px" Height="26px">
        </asp:DropDownList>

    
        <asp:SqlDataSource ID="SqlDataSourceestado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [ComprasEstado] where idtipo = 'COTIZ'"></asp:SqlDataSource>
        <asp:TextBox ID="txtdatobuscar" runat="server"  AutoPostBack="True" placeholder="Ingresar proveedor..." OnTextChanged="txtdatobuscar_TextChanged" Width="300px"></asp:TextBox>
  
                     
                            </div>


            <asp:Panel ID="PanelAdmins" runat="server">
        <div class="table-responsive">
        <asp:GridView ID="gvCotizaciones" class="table table table-striped table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idCotizacion,RAZONSOCIAL,COTIZACION" DataSourceID="SqlDataSourcCot" Font-Size="X-Small" GridLines="None" AllowPaging="True" OnRowCommand="gvCotizaciones_RowCommand" OnSelectedIndexChanged="gvCotizaciones_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField ShowHeader="False" HeaderText="N° COT.">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("COTIZACION") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="80px" />
                </asp:TemplateField>
                <asp:BoundField DataField="idCotizacion" HeaderText="idCotizacion" ReadOnly="True" SortExpression="idCotizacion" Visible="False" />
                <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION" Visible="False" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL" >
                </asp:BoundField>
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FEXPIRA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EXPIRA" SortExpression="FEXPIRA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLICITA" HeaderText="COD. SOLICITA" SortExpression="SOLICITA" >
                <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="CODAUTORIZA" HeaderText="COD. AUTORIZA" SortExpression="CODAUTORIZA" >
                <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="condicion" HeaderText="CONDICIÓN" SortExpression="condicion" />
                <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TT">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                  <asp:ButtonField CommandName="Aprobar" HeaderText="" ShowHeader="True" Text="" >
<ControlStyle CssClass="btn btn-success btn-sm fa fa-check" Width="30px"></ControlStyle>
                <HeaderStyle Width="30px" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="Observar" HeaderText="" ShowHeader="True" Text="" >
<ControlStyle CssClass="btn btn-warning  btn-sm fa fa-search " Width="30px"></ControlStyle>
                <HeaderStyle Width="40px" />
                </asp:ButtonField>
                 <asp:ButtonField ControlStyle-CssClass="" CommandName="Rechazar" HeaderText="" ShowHeader="True" Text="" >
            
<ControlStyle CssClass="btn btn-danger btn-sm fa fa-times" Width="30px"></ControlStyle>
                <HeaderStyle Width="40px" />
                </asp:ButtonField>
                
            
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcCot" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasCot_ListadoEstado" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblestado" Name="estado" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lbldato" Name="dato" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</div>

</asp:Panel>
            <asp:Panel ID="panelJefZona" runat="server">
                <div class="table-responsive">

                    <asp:GridView ID="GridView2" runat="server" class="table table table-striped table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="idCotizacion" DataSourceID="SqlDataSourcevendedores" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="COTIZACION" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("COTIZACION") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="idCotizacion" HeaderText="idCotizacion" ReadOnly="True" SortExpression="idCotizacion" />
                            <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION" />
                            <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                            <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" ReadOnly="True" SortExpression="PROVEEDOR" />
                            <asp:BoundField DataField="SOLICITA" HeaderText="SOLICITA" SortExpression="SOLICITA" />
                            <asp:BoundField DataField="AUTORIZA" HeaderText="AUTORIZA" SortExpression="AUTORIZA" />
                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                            <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                            <asp:BoundField DataField="FCOTIZACION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.COTZACION" SortExpression="FCOTIZACION" />
                            <asp:BoundField DataField="FEXPIRA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EXPIRA" SortExpression="FEXPIRA" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                             <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcevendedores" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasCot_ListarVendedores" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblop2" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lbldato2" Name="dato" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblestado2" Name="estado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="lblop2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbldato2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblestado2" runat="server" Visible="False"></asp:Label>

                </div>
            </asp:Panel>


            Aprobada:<asp:Image ID="Image2" runat="server" Height="15px" ImageUrl="~/images/apro1.png" Width="15px" />
&nbsp;, Observada:
            <asp:Image ID="Image3" runat="server" Height="15px" ImageUrl="~/images/apro55.png" Width="15px" />
            , Rechazada:
            <asp:Image ID="Image4" runat="server" Height="15px" ImageUrl="~/images/apro2.png" Width="15px" />
            , Compra realizada:
            <asp:Image ID="Image5" runat="server" Height="15px" ImageUrl="~/images/apro3.png" Width="15px" />
    

    </div>
          
   </div>



    <div class="row">
        <asp:Panel ID="Panelprobar" runat="server">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                          <strong>COTIZACIÓN: 
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:Label ID="lblid1" runat="server" Visible="False"></asp:Label>
                              </strong>
                        </div>
                        <div class="panel-body">

                             <div class="form-group row">
							
							    <div class="col-md-2">
                                    <label>Nota / Observación:</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtconceptoAprobar" required class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="help-block">Nota de aprobación previo a realización de compra...</p>
                                </div>
                                        <asp:Button ID="btregAprobado" class="btn btn-success" runat="server" Text="APROBAR" OnClick="btregAprobado_Click" />



                                 <asp:LinkButton ID="LinkButton5" runat="server" class="btn btn-default" OnClick="LinkButton5_Click">Cancelar</asp:LinkButton>



                              </div>

                           
                        </div>
                  </div>
               </asp:Panel>
        <asp:Panel ID="PanelObservar" runat="server">
               
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                           <strong>COTIZACIÓN: 
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <asp:Label ID="lblid2" runat="server" Visible="False"></asp:Label>
                               </strong>
                        </div>
                        <div class="panel-body">

                             <div class="form-group row">
							
							    <div class="col-md-2">
                                    <label>Nota / Observación:</label>
                                </div>
                                <div class="col-md-8">
                                  <asp:TextBox ID="txtconceptoObservar" required class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="help-block">Detalle de la observación registrada de la cotización...</p>
                                </div>
                               
                                        <asp:Button ID="brregobservado" class="btn btn-warning" runat="server" Text="OBSERVAR" OnClick="brregobservado_Click" />



                                 <asp:LinkButton ID="LinkButton6" runat="server" class="btn btn-default" OnClick="LinkButton6_Click">Cancelar</asp:LinkButton>



                              </div>

                           
                        </div>
                  </div>
               
  </asp:Panel>

        <asp:Panel ID="PanelRechazer" runat="server">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                         <strong>COTIZACIÓN: 
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <asp:Label ID="lblid3" runat="server" Visible="False"></asp:Label>
                             </strong>
                        </div>
                        <div class="panel-body">

                             <div class="form-group row">
							
							    <div class="col-md-2">
                                    <label>Nota / Observación:</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtconceptorechazar" required class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="help-block">Detalle u observación de rechazo de la cotización...</p>
                                </div>
                                  
                                        <asp:LinkButton ID="LinkButton7" runat="server" class="btn btn-default"  OnClick="LinkButton7_Click">Cancelar</asp:LinkButton>
                                        <asp:Button ID="btregAnulado" class="btn btn-danger" runat="server" Text="RECHAZAR" OnClick="btregAnulado_Click" />



                              </div>

                           
                        </div>
                  </div>
     </asp:Panel>         
    </div>
     
</asp:Content>
