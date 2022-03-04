<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Honomastico.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Honomastico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="panel panel-default">
                        <div class="panel-heading">
                          <h4><i class="fa fa-gift fa-fw"></i> HONOMÁSTICOS <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                              <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            </h4>
                        </div>
                        
           
   
    
        <div class="table-responsive">
        <asp:GridView ID="GridView2" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" SelectText="Saludo" ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="dni" HeaderText="DNI" SortExpression="dni" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="apellidos" HeaderText="APELLIDOS" ReadOnly="True" SortExpression="apellidos" />
                <asp:BoundField DataField="nombres" HeaderText="NOMBRES" ReadOnly="True" SortExpression="nombres" />
                <asp:BoundField DataField="fechanac" HeaderText="FECHA (Día/Mes)" SortExpression="fechanac" DataFormatString="{0:dd/MM}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Descripcion" HeaderText="CARGO" ReadOnly="True" SortExpression="Descripcion" />
                <asp:BoundField DataField="Zona" HeaderText="ZONA" ReadOnly="True" SortExpression="Zona" />
                <asp:BoundField DataField="estadoSaludo" HeaderText="estadoSaludo" SortExpression="estadoSaludo" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_honomasticos_lista" SelectCommandType="StoredProcedure" UpdateCommand="update tb_planillaPersonal set dni=@dni, fechanac=@fechanac  where id=@id">
            <UpdateParameters>
                <asp:Parameter Name="dni" />
                <asp:Parameter Name="fechanac" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
                
        </div>

    <asp:Panel ID="PanelAdmonHonomastico" runat="server">
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-default">
                        <div class="panel-heading">
                           Administrarción mensaje por Honomástico:
                        </div>
                        <div class="panel-body">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Titulo</label>                                        
                                            <asp:TextBox class="form-control" Style="text-transform: uppercase" ID="txtTitulo" runat="server" required></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Descripción del saludo</label>
                                             <asp:TextBox class="form-control" ID="txtDescripcion" runat="server" required TextMode="MultiLine"></asp:TextBox>
                                           
                                        </div>
                                         <div class="form-group">
                                            <label>Ruta de imagen</label>
                                             <asp:TextBox class="form-control" ID="txtimagen" required runat="server"></asp:TextBox>
                                        </div>
                                       
                                        
                                      
                                        <asp:Button ID="BTREGISTRAR" CssClass="btn btn-default" runat="server" Text="REGISTRAR" OnClick="BTREGISTRAR_Click" />
                                        <button type="reset" class="btn btn-default">RESET</button>
                                    </form>
                                    <asp:Label ID="lblmensajehono" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                            </div>
                </div>
           
                                </div>

    </div>
   </asp:Panel>
</asp:Content>
