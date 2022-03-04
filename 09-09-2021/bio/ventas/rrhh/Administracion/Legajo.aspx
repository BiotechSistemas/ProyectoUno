<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Legajo.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Administracion.Legajo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
   
     <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> LEGAJO DE PERSONAL<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                   
                    </h2>
                </div>

           <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbtnPersonal" runat="server"  PostBackUrl="~/bio/ventas/rrhh/Default.aspx">RR.HH.</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbtnLegajo" runat="server"  PostBackUrl="~/bio/ventas/rrhh/Administracion/Legajo.aspx">Legajo de personal</asp:LinkButton>
      </li>
   </div>
                 <div class="row">
      <div class="col-md-8">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> LEGAJOS HABILITADOS:
                            <asp:Label ID="lblestadoActivo" runat="server" Text="ACTIVO"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="lblestadoLegajo" runat="server" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lbtnActivo" runat="server" OnClick="lbtnActivo_Click">ACTIVO</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="LbtnCesado" runat="server" OnClick="LbtnCesado_Click">CESADO</asp:LinkButton>
                        </div>
                     <asp:GridView ID="gvLegadoHabilitado" runat="server" CssClass="table-condensed  table-hover table-sm thead-light" DataSourceID="SqlDataSourceLegajo" AutoGenerateColumns="False" DataKeyNames="ID,COD" OnSelectedIndexChanged="gvLegadoHabilitado_SelectedIndexChanged" Width="100%" OnRowCommand="gvLegadoHabilitado_RowCommand">
                         <Columns>
                             <asp:CommandField ShowSelectButton="True" />
                             <asp:BoundField DataField="ID" HeaderText="Nº LEGAJO" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                             <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                              <asp:BoundField DataField="NUM" HeaderText="Nº LEGAJO" ReadOnly="True" SortExpression="NUM" >
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                             <asp:BoundField DataField="FREGISTRA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRA" SortExpression="FREGISTRA">
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                             <asp:ButtonField CommandName="administrar" HeaderText="" ShowHeader="True" Text="ADMINISTRAR" ButtonType="Button" />
                             <asp:ButtonField CommandName="edita" HeaderText="" ShowHeader="True" Text="CESAR LEGAJO" ButtonType="Button" />
                              <asp:ButtonField CommandName="habilitar" HeaderText="" ShowHeader="True" Text="HABILITAR LEGAJO" ButtonType="Button" />
                         </Columns>
                         <EmptyDataTemplate>
                             No registra información...
                         </EmptyDataTemplate>
                         <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLegajo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.ListadoLegado" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblestadoLegajo" Name="idestado" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Panel ID="Panel2" runat="server">
                        </asp:Panel>
                        </div>
          </div>
                     </div>

</ol> 
                <!-- /.col-lg-12 -->
   

</asp:Content>
