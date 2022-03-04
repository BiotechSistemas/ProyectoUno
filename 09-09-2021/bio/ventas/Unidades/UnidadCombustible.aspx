<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadCombustible.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadCombustible" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
    <div class="col-lg-12">
                    <h1 class="page-header"><i class="fa fa-car"></i> Registro de combustible:
                    </h1>
                </div>
        </div>
    <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Unidades Registradas</asp:LinkButton>
                        </li>
                       
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Accesorios - Servicios </asp:LinkButton>
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
<div class="row">
                     <div class="col-md-6">
                
                            <div class="panel panel-default">
                              <div class="panel-heading">Registro de combustible:
                                  <asp:Label ID="lblidCombustible" runat="server" Visible="False"></asp:Label>
                                </div>
                              <div class="panel-body">

                                 <div class="form-group">
                                     <asp:TextBox ID="txtcombustible" CssClass="form-control" runat="server"></asp:TextBox> 
                                </div>
                                  <div class="form-group">
                                      <asp:ListBox ID="lbCombustible" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="combustible" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="lbCombustible_SelectedIndexChanged" Rows="15"></asp:ListBox>
                                      <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000" Font-Size="X-Small"></asp:Label>
                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,combustible from tb_PlanillaEquiposCombustible where id>0"></asp:SqlDataSource>
                                 </div>
                              </div>
                              <div class="panel-footer">
                                  <asp:Button ID="btNuevo" runat="server" Text="Nuevo" OnClick="btNuevo_Click" />
                                  <asp:Button ID="btRegistrar" runat="server" Text="Registrar" OnClick="btRegistrar_Click" />
                                  <asp:Button ID="btEliminar" runat="server" Text="Eliminar" OnClick="btEliminar_Click" OnClientClick="return confirm('Ud. eliminar el registro?');" />
      
                            </div>
                            </div>
                    </div>
</div>


</asp:Content>
