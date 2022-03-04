<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadRegistrar.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadRegistrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
			<h2><i class="fa fa-paste"></i> Registrar unidad
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>


     <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Principal</asp:LinkButton>
                        </li>
                       
                        <li>
                        <asp:LinkButton ID="lbtnNuevo" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadRegistrar.aspx">Registrar Unidad </asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/AdmAccesorio.aspx">Accesorios - Servicios </asp:LinkButton>
                        </li>
                       
                         <li>
                        <asp:LinkButton ID="lbtnMarca" runat="server" PostBackUrl="~/bio/ventas/Unidades/AdmUnidMarcas.aspx">Marcas</asp:LinkButton>
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
         <asp:Label ID="lblMensaje" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label> 
         </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">   
          <div class="col-md-6">


  <div class="panel panel-default">
  <div class="panel-heading">1.-DATOS PRINCIPALES DE LA UNIDAD:
      <asp:Label ID="lblFechaRegistro" runat="server"></asp:Label>
      </div>
  <div class="panel-body">


       <div class="form-row">
           <div class="form-group col-md-6">
               <label for="txtfregistro">Condición:</label>
               <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="100%">
                   <asp:ListItem Value="N" Selected="True">Nuevo</asp:ListItem>
                   <asp:ListItem Value="S">Con uso</asp:ListItem>
               </asp:RadioButtonList>
               </div>
            <div class="form-group col-md-6">
         <label for="txtkilometraje">Kilometraje:</label>
          <asp:TextBox ID="txtkilometrajeIngreso" required class="form-control"  type="number" runat="server"></asp:TextBox>
        </div>
           
           </div>

   
         <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Placa</label>
           <asp:TextBox ID="txtplaca" required class="form-control" runat="server"></asp:TextBox>
        </div>
             <div class="form-group col-md-6">
         <label for="txtkilometraje">Motor:</label>
          <asp:TextBox ID="txtmotor" required class="form-control" runat="server"></asp:TextBox>
        </div>
       
       
  </div>

   <div class="form-row">
       <div class="form-group col-md-6">
         <label for="txtkilometraje">Marca:</label>
           <asp:DropDownList ID="ddlmarca"  class="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="marca" DataValueField="id" AutoPostBack="True"></asp:DropDownList> 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from [dbo].[tb_PlanillaEquiposMarca] where idtipo=3"></asp:SqlDataSource>
        
        </div>

        <div class="form-group col-md-6">
          <label for="txtfregistro">Modelo:</label>
            <asp:DropDownList ID="ddlModelo" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceModelo" DataTextField="modelo" DataValueField="idModelo"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceModelo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposModelo] WHERE ([idMarca] = @idMarca)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlmarca" Name="idMarca" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
          </div>       
  </div>

       <div class="form-row">
       <div class="form-group col-md-6">
         <label for="txtVersion">Versión:</label>
           <asp:TextBox ID="txtVersion" required class="form-control" runat="server"></asp:TextBox>
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
         <label for="txtkilometraje">Combustible:</label>
            <asp:DropDownList ID="ddlcombustible" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="combustible" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposCombustible]"></asp:SqlDataSource>
      
        </div>
       
    </div>


       <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Año de fabricación:</label>
              <asp:TextBox ID="txtano" class="form-control" required type="number"  runat="server"></asp:TextBox>
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">Timón:</label>
            <asp:DropDownList ID="ddlTimon" CssClass="form-control" runat="server">
                <asp:ListItem Selected="True" Value="No indica">Seleccionar</asp:ListItem>
                <asp:ListItem Value="Cambiado"></asp:ListItem>
                <asp:ListItem>Original</asp:ListItem>
            </asp:DropDownList>
        </div>
       
  </div>

        <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">Condición:</label>
              <asp:DropDownList ID="ddladquisicion" class="form-control"  runat="server" DataSourceID="SqlDataSource3" DataTextField="origen" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddladquisicion_SelectedIndexChanged"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposOrigen]"></asp:SqlDataSource>
      
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">Propietario:</label>
          <asp:TextBox ID="txttitular" required class="form-control" runat="server"></asp:TextBox>
        </div>       
        </div>


     
       
         <div class="form-row">
        <div class="form-group col-md-6">
          <label for="txtfregistro">km.Mantenimiento:</label>
               <asp:TextBox ID="txtkmMantenimiento" class="form-control" required type="number"  runat="server"></asp:TextBox>
          </div>
        <div class="form-group col-md-6">
         <label for="txtkilometraje">N° puertas</label>
            <asp:DropDownList ID="ddlPuertas" CssClass="form-control" runat="server">
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
          <asp:TextBox ID="txtnmotorcilindrada" required class="form-control" placeholer="CC" runat="server"></asp:TextBox>
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
      <asp:Button ID="btNuevo" runat="server" Text="Nuevo" OnClick="btNuevo_Click" />
      <asp:Button ID="btRegistrar" runat="server" Text="Continuar &gt;&gt;" OnClick="btRegistrar_Click" />

  </div>
</div>
              </div>
        <asp:Panel ID="Panel2" runat="server">
               <div class="col-md-6">
         <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>--%>
                         

              <div class="panel panel-default">
                <div class="panel-heading">2.-ACCESORIOS: <asp:Label ID="lblIdmaxItem" runat="server"></asp:Label>
                  </div>
                <div class="panel-body">

  
                    <asp:CheckBoxList ID="checkAccesorios"  runat="server" DataSourceID="SqlDataSourceAccesorios" DataTextField="Servicio" DataValueField="idServicio" RepeatColumns="2" Width="100%"></asp:CheckBoxList>



                         <asp:SqlDataSource ID="SqlDataSourceAccesorios" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_UnidadesServicios where idCategoria = 20 order by Servicio
"></asp:SqlDataSource>



                   

                         </div>

                   <div class="panel-footer">
                       <asp:Button ID="btRegistrarUnidad" runat="server" Text="REGISTRAR" OnClick="btRegistrarUnidad_Click" />
                   </div>
               </div>

                      <%--   </ContentTemplate>
                         </asp:UpdatePanel>--%>
       </div>
            </asp:Panel>
</div>

</asp:Content>
