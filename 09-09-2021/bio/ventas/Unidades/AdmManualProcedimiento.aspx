<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="AdmManualProcedimiento.aspx.cs" Inherits="biotech.bio.ventas.Unidades.AdmManualProcedimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="row">
			<h2><i class="fa fa-paste"></i> MANUAL DE PROCEDIMIMENTO
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

         <asp:Panel ID="psubir" class="row" runat="server">
                
<div class="panel panel-default">
  <div class="panel-heading">
      MANUAL PROCEDIMIENTO DE UNIDADES:</div>
  <div class="panel-body">
   
                            Adjuntar:<asp:Label ID="lblRuta" runat="server"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <br />
                            <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                       </div>
  <div class="panel-footer"><asp:Button ID="btnsubir" runat="server" Text="REGISTRAR MANUAL DE PROCEDIMIENTO" OnClick="btnsubir_Click"/>
    </div>
</div>

                
               

            </asp:Panel>

         </div>
</asp:Content>
