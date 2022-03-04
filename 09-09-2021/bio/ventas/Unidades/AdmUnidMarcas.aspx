<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="AdmUnidMarcas.aspx.cs" Inherits="biotech.bio.ventas.Unidades.AdmUnidMarcas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
			<h2><i class="fa fa-paste"></i> Marcas
                de Unidades Vehiculares
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
                        
                    </ol>
            </div>

     <div class="row">
            <div class="col-md-6">
                
<div class="panel panel-default">
  <div class="panel-heading">Registro de marcas:
      <asp:Label ID="lblidMarca" runat="server" Visible="False"></asp:Label>
    </div>
  <div class="panel-body">

     <div class="form-group">
         <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server"></asp:TextBox> 
    </div>
      <div class="form-group">
          <asp:ListBox ID="lbMarca" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="marca" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="lbMarca_SelectedIndexChanged" Rows="10"></asp:ListBox>
          <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000" Font-Size="X-Small"></asp:Label>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,marca  from tb_PlanillaEquiposMarca where idtipo = 3  and id>0"></asp:SqlDataSource>
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
  <div class="panel-heading">Registro de Modelos:
      <asp:Label ID="lblidmodelo" runat="server" Visible="False"></asp:Label>
      &nbsp;<asp:Label ID="lblidmarcar2" runat="server"></asp:Label>
    </div>
  <div class="panel-body">
      <div class="form-group">
          <asp:DropDownList ID="ddlmarca" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="marca" DataValueField="id" OnSelectedIndexChanged="ddlmarca_SelectedIndexChanged"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_PlanillaEquiposMarca where idtipo=3
"></asp:SqlDataSource>
          </div>
     <div class="form-group">
         <asp:TextBox ID="txtmodelo" CssClass="form-control" runat="server"></asp:TextBox> 
    </div>
      <div class="form-group">
          <asp:ListBox ID="lbmodelo" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="modelo" DataValueField="idModelo" AutoPostBack="True" OnSelectedIndexChanged="lbmodelo_SelectedIndexChanged" Rows="8"></asp:ListBox>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idModelo,modelo,idMarca FROM tb_PlanillaEquiposModelo where idMarca =  @idMarca">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblidmarcar2" Name="idMarca" PropertyName="Text" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:Label ID="lblmensaje2" runat="server" ForeColor="#990000" Font-Size="X-Small"></asp:Label>
     </div>
  </div>
  <div class="panel-footer">
      <asp:Button ID="btNuevo2" runat="server" Text="Nuevo" OnClick="btNuevo2_Click" />
      <asp:Button ID="btRegistrar2" runat="server" Text="Registrar" OnClick="btRegistrar2_Click" />
      <asp:Button ID="btEliminar2" runat="server" Text="Eliminar" OnClick="btEliminar2_Click" OnClientClick="return confirm('Ud. eliminar el registro?');" />
      
</div>
            </div>

                </div>
</asp:Content>
