<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="AdmAccesorio.aspx.cs" Inherits="biotech.bio.ventas.Unidades.AdmAccesorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
			<h2><i class="fa fa-paste"></i> Accesorios - Servicios:
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>


      <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Unidades Registradas</asp:LinkButton>
                        </li>
                       
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
                         <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/Unidades/AdmManualProcedimiento.aspx">Manual de Procedimiento</asp:LinkButton>
                        </li>
                    </ol>
            </div>



     <div class="row">
            <div class="col-md-6">
                
<div class="panel panel-default">
  <div class="panel-heading">Servicios:
      <asp:Label ID="lblidServicio" runat="server" Visible="False"></asp:Label>
    </div>
  <div class="panel-body">

     <div class="form-group">
         <asp:TextBox ID="txtServicio" CssClass="form-control" runat="server"></asp:TextBox> 
    </div>
      <div class="form-group">
          <asp:ListBox ID="lbServicio" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Servicio" DataValueField="idServicio" AutoPostBack="True" OnSelectedIndexChanged="lbServicio_SelectedIndexChanged" Rows="20"></asp:ListBox>
          <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000" Font-Size="X-Small"></asp:Label>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select  idServicio, Servicio from [dbo].[tb_UnidadesServicios] where idCategoria=10 "></asp:SqlDataSource>
          </div>
  </div>
  <div class="panel-footer">
      <asp:Button ID="btNuevo" runat="server" Text="Nuevo" OnClick="btNuevo_Click" />
      <asp:Button ID="btRegistrar" runat="server" Text="Registrar" OnClick="btRegistrar_Click" />
      <asp:Button ID="btEliminar" runat="server" Text="Eliminar" OnClick="btEliminar_Click" OnClientClick="return confirm('Ud. eliminar el registro?');" />
      
</div>
            </div>
                </div>
            <div class="col-md-6">

                
<div class="panel panel-default">
  <div class="panel-heading">Accesorios: <asp:Label ID="lblidAccesorio" runat="server" Visible="False"></asp:Label></div>
  <div class="panel-body">
       <div class="form-group">
         <asp:TextBox ID="txtAccesorio" CssClass="form-control" runat="server"></asp:TextBox> 
    </div>
      <div class="form-group">
          <asp:ListBox ID="lbAccesorio" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Servicio" DataValueField="idServicio" AutoPostBack="True" OnSelectedIndexChanged="lbAccesorio_SelectedIndexChanged" Rows="20"></asp:ListBox>
          <asp:Label ID="lblmensaje2" runat="server" ForeColor="#990000" Font-Size="X-Small"></asp:Label>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select  idServicio, Servicio from [dbo].[tb_UnidadesServicios] where idCategoria=20"></asp:SqlDataSource>
          </div>

  </div>
  <div class="panel-footer">
       <asp:Button ID="btNuevo2" runat="server" Text="Nuevo" OnClick="btNuevo2_Click" />
      <asp:Button ID="btRegistrar2" runat="server" Text="Registrar" OnClick="btRegistrar2_Click" />
      <asp:Button ID="btEliminar2" runat="server" Text="Eliminar" OnClick="btEliminar2_Click" />
  </div>
</div>

            </div>
   </div>



</asp:Content>
