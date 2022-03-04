<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="IngresoProducto.aspx.cs" Inherits="biotech.bio.ventas.Almacen.IngresoProducto" %>
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
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> Ficha de ingreso productos<asp:LinkButton ID="LinkButton2" runat="server" Visible="False"></asp:LinkButton>
                        </h2>
                            
                           <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbAlmacen" runat="server" OnClick="lbAlmacen_Click" >Almacen</asp:LinkButton>
      </li>
     
   
</ol> 
                       </div>
     </div>
    <div class="row">
        FICHA DE INGRESO POR APROBAR
        <div CLASS="table-responsive">
            <asp:GridView ID="GridView1" Class="table table-condensed  table-hover table-sm thead-light"  runat="server" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField HeaderText="GUIA" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("idguia") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                    <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" Visible="False" />
                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" ReadOnly="True" SortExpression="MOTIVO" />
                    <asp:BoundField DataField="IdordenVenta" HeaderText="IdordenVenta" SortExpression="IdordenVenta" Visible="False" />
                    <asp:BoundField DataField="idalmacen" HeaderText="idalmacen" SortExpression="idalmacen" Visible="False" />
                    <asp:BoundField DataField="ALFINAL" HeaderText="ALMACEN" ReadOnly="True" SortExpression="ALFINAL" />
                    <asp:BoundField DataField="idVendedor" HeaderText="SOLICITA" SortExpression="idVendedor" />
                    <asp:BoundField DataField="ESTADO" SortExpression="ESTADO" />
                    <asp:BoundField DataField="Aprobacion" HeaderText="Aprobacion" SortExpression="Aprobacion" Visible="False" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_guiaRemIngreso" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="aprobado" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
        </div>
    <div class="row">
        FICHA INGRESO APROBADAS
         <div CLASS="table-responsive">
            <asp:GridView ID="GridView2" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("idguia") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                    <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" Visible="False" />
                    <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" ReadOnly="True" SortExpression="MOTIVO" />
                    <asp:BoundField DataField="IdordenVenta" HeaderText="IdordenVenta" SortExpression="IdordenVenta" Visible="False" />
                    <asp:BoundField DataField="idalmacen" HeaderText="idalmacen" SortExpression="idalmacen" Visible="False" />
                    <asp:BoundField DataField="ALFINAL" HeaderText="ALMACEN" ReadOnly="True" SortExpression="ALFINAL" />
                    <asp:BoundField DataField="idVendedor" HeaderText="SOLICITA" SortExpression="idVendedor" />
                    <asp:BoundField DataField="ESTADO" SortExpression="ESTADO" />
                    <asp:BoundField DataField="Aprobacion" HeaderText="Aprobacion" SortExpression="Aprobacion" Visible="False" />
                </Columns>
             </asp:GridView>

             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_guiaRemIngreso" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="1" Name="aprobado" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>

        </div>
        </div>
</asp:Content>
