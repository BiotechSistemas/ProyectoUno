<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="PedMuestras.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.PedMuestras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i> MUESTRAS/ENSAYOS SOLICITADOS:
                            <asp:Label ID="lblidUsuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        &nbsp;<asp:LinkButton ID="lbtVentas" runat="server">Ventas</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="lbtDesarrollo" runat="server" PostBackUrl="~/1logistica/Ensayo_listar.aspx">Desarrollo</asp:LinkButton>
                        </h3>
</div>
         </div>

     <div class="row">

<ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbPedido" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaPedido.aspx" >Nota de pedido</asp:LinkButton>
      </li>
     <li>
      <asp:LinkButton ID="lbtMuestas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/PedMuestras.aspx" >Muestras</asp:LinkButton>
      </li>

      <li>
      <asp:LinkButton ID="lbGuias" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/GuiaRemision.aspx" >Guia Remisión</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="lbFacturas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/Factura_Det.aspx">Facturación</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbLetras" runat="server" ForeColor="#006600"  PostBackUrl="~/bio/ventas/FactLetra/Letras.aspx"  >Letras</asp:LinkButton>
      </li>

    <li>
      <asp:LinkButton ID="lbncredito" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaCredito.aspx" >Nota de Crédito</asp:LinkButton>
      </li>
</ol>    

             </div>

    <div class="panel panel-default">
    <div class="panel-body">
     <p>
        MUESTRAS VENTAS : 
         <asp:Label ID="lblestaTitulo" runat="server" Font-Bold="True"></asp:Label>
&nbsp;<asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
         <asp:Label ID="lblvalor" runat="server" Visible="False"></asp:Label>
         <asp:LinkButton ID="lbtxatender" runat="server" OnClick="lbtxatender_Click">Por atender</asp:LinkButton>
&nbsp;|
         <asp:LinkButton ID="lbtAtendidos" runat="server" OnClick="lbtAtendidos_Click">Atendidos</asp:LinkButton>
&nbsp;|
         <asp:LinkButton ID="lbtAnulados" runat="server" OnClick="lbtAnulados_Click">Anulados</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp; Filtrar:
         <asp:TextBox ID="txtBuscar" runat="server" placeholder="Cliente / Acesor ..." Width="200px" AutoPostBack="True" OnTextChanged="txtBuscar_TextChanged"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
     </p>
    <div class="table-responsive">
        <asp:GridView ID="GridView1" DataKeyNames="COD,ESTADO"  runat="server" class="table table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="font-size: x-small" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" GridLines="None" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="ENSAYO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ENSAYO") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                   
                    <asp:BoundField DataField="FREGISTRO" HeaderText="F.REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO" >
                    </asp:BoundField>
                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                    <asp:BoundField DataField="fecharequerida" HeaderText="F. ENSAYO" SortExpression="fecharequerida" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                    </asp:BoundField>
                    <asp:BoundField DataField="RazonSocial" HeaderText="RazonSocial" SortExpression="RazonSocial" >
                    </asp:BoundField>
                    <asp:BoundField DataField="FTERMINO" HeaderText="F.TERMINO" SortExpression="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" Visible="False" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLLEGADA" HeaderText="P.LLEGADA" SortExpression="PLLEGADA" />
                    <asp:BoundField DataField="GERENTE" HeaderText="APROB" SortExpression="GERENTE" >

                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" >
                    </asp:BoundField>
                    <asp:ButtonField CommandName="atender" HeaderText="" ShowHeader="True" Text="Atender" ButtonType="Button" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                     <ControlStyle CssClass="btn btn-success btn-xs"/>
                  
                    </asp:ButtonField>
                    <asp:ButtonField CommandName="anular" HeaderText="" ShowHeader="True" Text="Anular" ButtonType="Button" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                         <ControlStyle CssClass="btn btn-danger btn-xs"/>
                    </asp:ButtonField>
                    <asp:ButtonField CommandName="poratender" HeaderText="" ShowHeader="True" Text="Por Atender" ButtonType="Button" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                          <ControlStyle CssClass="btn btn-default btn-xs"/>
                    </asp:ButtonField>
                </Columns>
                <EditRowStyle CssClass="btn-default" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVend2019" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblestado" Name="estado" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblvalor" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblmensaje1" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" Class="table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="idDetalleEnsayo" DataSourceID="SqlDataSource2" Width="600px">
            <Columns>
                <asp:BoundField DataField="idDetalleEnsayo" HeaderText="idDetalleEnsayo" ReadOnly="True" SortExpression="idDetalleEnsayo" Visible="False" />
                <asp:BoundField DataField="idensayo" HeaderText="idensayo" SortExpression="idensayo" Visible="False" />
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" >
                <HeaderStyle Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" />
                <asp:BoundField DataField="atendido" HeaderText="EST" SortExpression="atendido" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Ensayo_listDet" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idEnsayo" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
       </div>
  </div>



   

</asp:Content>
