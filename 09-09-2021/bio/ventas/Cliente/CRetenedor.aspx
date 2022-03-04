<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="CRetenedor.aspx.cs" Inherits="biotech.bio.ventas.Cliente.CRetenedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-users"></i> Clientes - Retenedores<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>   
                 </div>
    <ol class="breadcrumb">
  <li><a href="Clientes.aspx">Principal</a></li>
  <li><a href="CRetenedor.aspx">Retención</a></li>
        <li><a href="http://www.sunat.gob.pe/cl-ti-itmrconsruc/FrameCriterioBusquedaMovil.jsp" target="_blank">Consulta RUC</a></li>
  <%--<li class="active">Bootstrap 3</li>--%>
</ol>

    <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-6">

            <div class="btn-group btn-group-justified">
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" class="btn btn-default" Text="POR VERIFICAR" Width="130px" />
        <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" class="btn btn-default" Text="CLIENTE RETENEDORES" Width="250px" />
        <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" class="btn btn-default" Text="CLIENTES NO RETENEDORES" Width="250px" />
        <asp:Label ID="lblEstado" runat="server" Text="5" Visible="False"></asp:Label>
     </div>

        </div>
        <div class="col-xs-6 col-sm-4 col-md-6">
            <asp:TextBox ID="txtbkCliente" placeholder="Cliente ó RUC" class="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtbkCliente_TextChanged"></asp:TextBox></div>

       
       
        </div>
    <br />
    <asp:Panel ID="Panel1" runat="server"  class="alert alert-warning alert-dismissable" Visible="False">
  
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <strong>CLIENTE: <asp:Label ID="lblidruc" runat="server"></asp:Label> -  <asp:Label ID="lblcliente" runat="server"></asp:Label></strong>
        <br />
                <asp:Button ID="btniretenedor" runat="server" OnClick="btniretenedor_Click" Text="SI ES RETENEDOR" Width="300px" Height="40px" />
                <asp:Button ID="btnoretenedor" runat="server" OnClick="btnoretenedor_Click" Text="NO ES RETENEDOR" Width="300px" Height="40px" />
                <br />
                <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style2" ForeColor="#990000"></asp:Label>
          <asp:Label ID="lblbkcliente" runat="server" Visible="False"></asp:Label>
    </asp:Panel>




    <div class="row">



            <asp:Panel ID="PanelPrincipal" runat="server">
                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False"  BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RUC,RAZONSOCIAL" DataSourceID="SqlDataSource1"  GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" Font-Size="X-Small">
                    <Columns>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" ReadOnly="True" SortExpression="RUC" >
                        <HeaderStyle Width="100px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TPLINEACRED" HeaderText="TPLINEACRED" SortExpression="TPLINEACRED" Visible="False" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="20px" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:BoundField DataField="RETENEDOR" HeaderText="RETENEDOR" SortExpression="RETENEDOR">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:CommandField SelectImageUrl="~/images/1editar.png" ShowSelectButton="True">
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                    </Columns>
                    <EmptyDataTemplate>
                        No hay registro de clientes por evaluar...
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Creditos_Retenedor" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEstado" Name="estado" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblbkcliente" Name="cliente" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <span class="auto-style4">* ESTADO : Clientes aprobados:
                <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/apro1.png" Width="15px" />
                ; Clientes Observados
                <asp:Image ID="Image2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/apro55.png" Width="15px" />
                ;&nbsp; Clientes por completar datos:
                <asp:Image ID="Image3" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/apro2.png" Width="15px" />
                ;&nbsp; sin verificar:
                <asp:Image ID="Image4" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/apro0.png" Width="20px" />
                </span>
            </asp:Panel>



    </div>



</asp:Content>
