<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="biotech.bio.ventas.compras.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
$(document).ready(function () {
$("#myModal").modal({
  backdrop: 'static',
});
});
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
             <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-sign-out"></i> PRODUCTOS / SERVICIOS COMPRADOS<asp:Label ID="lblcodusu" runat="server" Visible="True"></asp:Label>
                           
                             <asp:Label ID="lblidCodigo" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblIDusuario" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>  

             </div> 

    <div class="">
        
  <!-- Trigger the modal with a button -->


        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
         

    </div>

    <asp:Panel ID="PanelProSinCot" runat="server">
                                        CENTRO COSTO: <asp:DropDownList ID="ddlCentroCot" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id" OnSelectedIndexChanged="ddlCentroCot_SelectedIndexChanged" Height="30px" Width="200px">
                                        </asp:DropDownList>
                                        <asp:TextBox ID="txtbuscarpro" runat="server" AutoPostBack="True" Height="30px" placeholder="Ingresar producto/servicio..." OnTextChanged="txtbuscarpro_TextChanged" Width="300px"></asp:TextBox>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OdenCompraCentro]"></asp:SqlDataSource>
                                        <asp:Button ID="Button2" runat="server" Class="btn btn-default btn-md" OnClick="Button2_Click" Text="Filtrar" />
                                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-info btn-md" data-target="#myModal" data-toggle="modal" OnClientClick="return false;" Text="REGISTRAR" />
                                        <asp:Label ID="lblidop" runat="server" Text="0" Visible="False"></asp:Label>
                                        <asp:Label ID="lblbuscarop" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Green" Text="" />
                                        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="" />
                                        <asp:GridView ID="GridViewProSinCot" class="table table table-striped table-sm  table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="COD,DESCRIPCION" DataSourceID="SqlDataSource3" Font-Size="Small" GridLines="None" AllowSorting="True" OnRowDeleting="GridViewProSinCot_RowDeleting" OnRowUpdating="GridViewProSinCot_RowUpdating" OnSelectedIndexChanged="GridViewProSinCot_SelectedIndexChanged" PageSize="20">
                                            <Columns>
                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1"  runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" OnClick="LinkButton1_Click"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="100px" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                                                <HeaderStyle Width="60px" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("DESCRIPCION") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DESCRIPCION") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="UND" SortExpression="UND">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceumed" DataTextField="unidad" DataValueField="id" SelectedValue='<%# Bind("U") %>' Width="120px">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSourceumed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select  *  from UnidadMedida"></asp:SqlDataSource>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("UND") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="120px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="CENTRO" SortExpression="CENTRO">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceCENTRO" DataTextField="descripcion" DataValueField="id" SelectedValue='<%# Bind("C") %>' Width="160px">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSourceCENTRO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [OdenCompraCentro]"></asp:SqlDataSource>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CENTRO") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="200px" />
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="TIPO" SortExpression="TIPO">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceTIPO" DataTextField="tipo" DataValueField="idTipo" SelectedValue='<%# Bind("IDTIPO") %>' Width="160px">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSourceTIPO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [CompraCotTipo] where idTipo <3"></asp:SqlDataSource>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("TIPO") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="200px" />
                                                </asp:TemplateField>

                                                 <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/editar.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/eliminar.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/guadar.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ID="ImageButton4" ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ID="ImageButton5" ImageUrl="~/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>


                                            </Columns>

                                            <EmptyDataTemplate>
                                                * No hay productos registrados ...
                                            </EmptyDataTemplate>

                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasOC_ListarProductp" SelectCommandType="StoredProcedure" DeleteCommand="DELETE CompraProducto WHERE idproducto = @idcproducto
" UpdateCommand="update CompraProducto  set nombre = @nombre,unidMedida=@und , idcentro =@idcentro WHERE idproducto = @idcproducto
">
                                            <DeleteParameters>
                                                <asp:Parameter Name="idcproducto" />
                                            </DeleteParameters>
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblidop" Name="op" PropertyName="Text" Type="Int32" />
                                                <asp:ControlParameter ControlID="lblbuscarop" Name="producto" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="nombre" />
                                                <asp:Parameter Name="und" />
                                                <asp:Parameter Name="idcentro" />
                                                <asp:Parameter Name="idcproducto" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>


       

  

                                    </asp:Panel>
                                    &nbsp;


     <!-- Modal -->
 
<!-- Bootstrap Modal Dialog --> 
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
    <div class="modal-dialog"> 
     <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional"> 
      <ContentTemplate> 
       <div class="modal-content"> 
        <div class="modal-header"> REGISTAR PRODUCTO / SERVICIO
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
         <h4 class="modal-title"><asp:Label ID="lblModalTitle" runat="server" Text=""></asp:Label></h4> 
        </div> 
        <div class="modal-body form-horizontal" >
  <div class="form-group">
    <label for="txtproducto" class="col-md-3 control-label">Descripción:</label>
    <div class="col-md-9">
        <asp:TextBox ID="txtproducto" class="form-control" runat="server"></asp:TextBox>
     
    </div>
  </div>
 
   <div class="form-group">
    <label for="txtproducto" class="col-md-3 control-label">Categoria:</label>
    <div class="col-md-9">
          <asp:DropDownList ID="ddlcategoriapro"  class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="idCat"></asp:DropDownList>

                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM CompraCategoria"></asp:SqlDataSource>

        
    </div>
  </div>

   <div class="form-group">
    <label for="ddlundmed" class="col-md-3 control-label">Uns. Medida:</label>
    <div class="col-md-9">
    
        <asp:DropDownList ID="ddlundmed" class="form-control"  runat="server" DataSourceID="SqlDataSourceUNDM" DataTextField="unidad" DataValueField="ID"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceUNDM" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT ID,unidad FROM UnidadMedida
"></asp:SqlDataSource>
                                        
     
     
    </div>
  </div>
    <div class="form-group">
    <label for="ddlCentroCosto" class="col-md-3 control-label">Centro Costo:</label>
    <div class="col-md-9">
              <asp:DropDownList ID="ddlCentroCosto"  class="form-control" runat="server" DataSourceID="SqlDataSourceCENTRR" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>

                                        <asp:SqlDataSource ID="SqlDataSourceCENTRR" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM OdenCompraCentro
"></asp:SqlDataSource>
    </div>
  </div>
 
 


         <asp:Label ID="lblModalBody" runat="server" Text=""></asp:Label> 
        </div> 
        <div class="modal-footer">
            <asp:Button ID="btregpro" class="btn btn-success" runat="server"  Text="Registrar" OnClick="btregpro_Click" />
         <button class="btn btn-info" data-dismiss="modal" aria-hidden="true">Close</button> 
        </div> 
       </div> 
      </ContentTemplate> 
     </asp:UpdatePanel> 
    </div> 
</div> 

</asp:Content>
