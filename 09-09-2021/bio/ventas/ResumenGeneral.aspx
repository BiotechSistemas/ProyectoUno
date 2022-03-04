<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenGeneral.aspx.cs" Inherits="biotech.bio.ventas.ResumenGeneral" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> RESUMEN VENTAS</h2>
                            
                         <ol class="breadcrumb">
                              <li class="active">
                                  <asp:LinkButton ID="lbPrincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx" >R.Principal</asp:LinkButton>
                              </li>

                                <li>
                                    <asp:LinkButton ID="lbComparativo" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">R.Comparativo Ventas</asp:LinkButton>
                                </li>
                              <li>
                                  <asp:LinkButton ID="lbDetallado" runat="server" PostBackUrl="~/bio/ventas/ResumenGeneral.aspx" >R.General Ventas</asp:LinkButton>      
                              </li>
                              <%--  <li>
                                    <asp:LinkButton ID="lbProyectado" runat="server" PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">R.Proyectado</asp:LinkButton>
                                </li>--%>
                                <li>
                                    <asp:LinkButton ID="lbProducto" runat="server" PostBackUrl="~/bio/ventas/Resumen/facturacion.aspx">R.Facturación</asp:LinkButton>
                                </li>

                                 <li>
                                    <asp:LinkButton ID="lbViaticos" runat="server" PostBackUrl="~/bio/ventas/costos/Viaticos.aspx">R.Viáticos</asp:LinkButton>
                                </li>
                                 <li>
                                    <asp:LinkButton ID="LinkButtonTOP" runat="server" PostBackUrl="~/bio/ventas/Resumen/TopProductos.aspx">Ranking Productos</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbtnHostorialPrecios" runat="server" PostBackUrl="~/bio/ventas/ResumProductos.aspx">Historial Productos-Precios</asp:LinkButton>
                                </li>
                                 <%--<li>--%>
                                    
                                     <asp:LinkButton ID="lbAnalisisB" runat="server" PostBackUrl="~/bio/ventas/ResumAnalisisb.aspx" Visible="False">Presupuesto</asp:LinkButton>
                                <%--</li>--%>
                            </ol> 
    </div>
        
        <%--<asp:Panel ID="panelReporteGeneral" runat="server" Class="container">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="biotech.CorporacionAgroDataSetTableAdapters.st_reportVentastotalesTableAdapter"></asp:ObjectDataSource>
            <%--<rsweb:ReportViewer ID="ReportViewer3" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="800px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%"><LocalReport DisplayName="ResumenVentas.rdlc" ReportEmbeddedResource="biotech.reporte.ResumenVentas.rdlc" ReportPath="reporte/ResumenVentas.rdlc"><DataSources><rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" /></DataSources></LocalReport></rsweb:ReportViewer>--%>
            <br />
        </asp:Panel>--%>


     </div>


</asp:Content>
