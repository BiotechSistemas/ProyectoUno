<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadesNormas.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadesNormas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../../scripts/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }

        function successError() {
            swal("Error! No se puedo registrar la norma ingresada...!", { icon: "error",dangerMode: true, });
        }

        function successRegistrado2() {
          
            swal({
                title: "Registro correcto!",
                text: "el registro se guardo corectamente!",
                icon: "success",
                button: "Aceptar",
            })


           
        }
       

    </script>
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row-fluid">
			<div class="col-md-12">
			<h2>
                <span class="glyphicon glyphicon-edit"></span>
                
                 <span class="auto-style1">NORMAS VEHICULARES ESTABLECIDAS:</span><asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                 
               
                     </h2>

               

                <div class="panel panel-default">
  <div class="panel-heading">NORMAS REGISTRADAS:</div>
  

                

                <div class="table-responsive">
                    <asp:GridView ID="gvNormas" Class="table table-striped table-bordered table-sm  table-hover" runat ="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idnormas" DataSourceID="SqlDataSourceNorma" Font-Size="X-Small">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/eliminarr.png" EditImageUrl="~/images/editar.png" UpdateImageUrl="~/images/guadar.png" >
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="idnormas" HeaderText="idnormas" ReadOnly="True" SortExpression="idnormas" Visible="False" />
                            <asp:BoundField DataField="Column1" HeaderText="Nº" ReadOnly="True" SortExpression="Column1" >
                            <HeaderStyle Width="50px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="TITULO" SortExpression="TITULO">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TITULO") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TITULO") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Rows="5" Text='<%# Bind("DESCRIPCION") %>' TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DESCRIPCION") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ADJUNTO" HeaderText="ADJUNTO" SortExpression="ADJUNTO" Visible="False" />
                        </Columns>
                        <EmptyDataTemplate>
                            No se encontraron registros....
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceNorma" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_normas" SelectCommandType="StoredProcedure" DeleteCommand="delete tb_UnidadesNormas where idnormas = @idnormas
" UpdateCommand="update tb_UnidadesNormas set normas=@TITULO, descripcion = @descripcion where idnormas = @idnormas
">
                        <DeleteParameters>
                            <asp:Parameter Name="idnormas" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TITULO" />
                            <asp:Parameter Name="descripcion" />
                            <asp:Parameter Name="idnormas" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>


                    <asp:LinkButton ID="lbtnNuevo" CssClass="btn btn-default" runat="server" OnClick="lbtnNuevo_Click">NUEVA NORMA VEHICULAR</asp:LinkButton>
                </div>

                <br />

                <asp:Panel ID="Panel1" runat="server">

                  <div class="panel panel-default">
                     <div class="panel-body">
                <div class="form-group">
    <label for="txtnorma">NORMA VEHICULAR:</label>
     <asp:TextBox    Style="text-transform: uppercase" placeholder="Titulo..." ID="txtnorma" CssClass="form-control" runat="server"></asp:TextBox>
                    
  </div>
                
                <div class="form-group">
    <label for="txtdescripcion">DESCRIPCIÓN:</label>
      <asp:TextBox    Style="text-transform: uppercase" placeholder="Descripción..." ID="txtdescripcion" class="form-control" runat="server" Rows="7" TextMode="MultiLine"></asp:TextBox>
                                    
  </div>

     <div class="form-group">
     <asp:Button ID="tbnRegistrarnorma" CssClass="btn btn-success" runat="server" Text="REGISTRAR NORMA" OnClick="tbnRegistrarnorma_Click" />                                 
  </div>
</div>
</div>
                    </asp:Panel>

</div></div>
</asp:Content>
