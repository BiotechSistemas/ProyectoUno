<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="UnidadAcesorioServ.aspx.cs" Inherits="biotech.bio.ventas.Unidades.UnidadAcesorioServ" %>
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
			<h2><i class="fa fa-paste"></i> ASIGNAR ACCESORIOS/SERVICIOS: 
                <asp:LinkButton ID="lbtnplaca" runat="server" OnClick="lbtnplaca_Click"></asp:LinkButton>
                <asp:Label ID="lblPlaca" runat="server" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
             </h2>
        </div>
    <asp:Panel ID="Panel1" runat="server">
    <div class="row">
         <div class="panel panel-default">
                        <div class="panel-heading">
                            UNIDAD VEHICULAR:
                            <asp:Label ID="lblidUnidad" runat="server" Visible="False"></asp:Label>
&nbsp;</div>
             <div class="table-responsive">
             <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="IdEquipo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                 <Columns>
                     <asp:TemplateField HeaderText="PLACA" ShowHeader="False">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("NOMBRE") %>'></asp:LinkButton>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:TemplateField>
                     <asp:BoundField DataField="IdEquipo" HeaderText="IdEquipo" ReadOnly="True" SortExpression="IdEquipo" Visible="False" />
                     <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" Visible="False" />
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" Visible="False" />
                     <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                     <asp:BoundField DataField="IdMarca" HeaderText="IdMarca" SortExpression="IdMarca" Visible="False" />
                     <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="idModelo" HeaderText="idModelo" SortExpression="idModelo" Visible="False" />
                     <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="proc_motor_SIM" HeaderText="Nº MOTOR" SortExpression="proc_motor_SIM" />
                     <asp:BoundField DataField="memoriaram_chasis_IMEI" HeaderText="Nº CHASIS" SortExpression="memoriaram_chasis_IMEI" />
                     <asp:BoundField DataField="ANO" HeaderText="ANO FAB." SortExpression="ANO" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="EstadoDisponible" HeaderText="EstadoDisponible" SortExpression="EstadoDisponible" Visible="False" />
                 </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_verEquipo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidUnidad" Name="idEquipo" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                 </div>
             </div>
        </div>
        </asp:Panel>
    <div class="row">
           <div class="panel panel-success">
                        <div class="panel-heading">
                          <strong>SERVICIOS REGISTRADOS:</strong>  
                            
                            <asp:LinkButton ID="lbtnServActivos" runat="server" OnClick="lbtnServActivos_Click">Activos</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="lbtnServBaja" runat="server" OnClick="lbtnServBaja_Click">De baja</asp:LinkButton>
                            
                        &nbsp;<asp:Label ID="lblestadoServicios" runat="server" Visible="False">1</asp:Label>
                            
                        </div>
                       
                        <asp:GridView ID="gvServ" class="table table-condensed table-bordered  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idServicios" DataSourceID="SqlDataSourceServicio" AllowPaging="True" Font-Size="Small">
                            <Columns>
                                 <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" >
                                    <ControlStyle Height="20px" Width="20px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                    </asp:CommandField>
                                <asp:BoundField DataField="idServicios" HeaderText="idServicios" ReadOnly="True" SortExpression="idServicios" Visible="False" />
                                <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                                <asp:BoundField DataField="idServAcce" HeaderText="idServAcce" SortExpression="idServAcce" Visible="False" />
                                <asp:BoundField DataField="SERVICIO" HeaderText="SERVICIO" SortExpression="SERVICIO" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                <asp:BoundField DataField="FECHA_E" HeaderText="F. EMISIÓN" SortExpression="FECHA_E" DataFormatString="{0:dd/MM/yyyy}" >
                                 <HeaderStyle Width="90px" />
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="FECHA_V" HeaderText="F. VENCTO" SortExpression="FECHA_V" DataFormatString="{0:dd/MM/yyyy}" >
                                 <HeaderStyle Width="90px" />
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" Visible="False" />
                                <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                                   <asp:ButtonField CommandName="baja" HeaderText="" ShowHeader="True" Text="Baja" >        
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>

                                     <asp:ButtonField CommandName="alta" HeaderText="" ShowHeader="True" Text="Alta" >        
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                No registra Servicios...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#DFF0D8" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceServicio" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_listarServAccexUnidad" SelectCommandType="StoredProcedure" DeleteCommand="DELETE tb_PlanillaEquiposServicios WHERE idServicios = @idServicios">
                            <DeleteParameters>
                                <asp:Parameter Name="idServicios" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidUnidad" Name="idUnidad" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblestadoServicios" Name="estado" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="10" Name="grupo" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                            <asp:Label ID="lblmensaje2" runat="server" ForeColor="Maroon"></asp:Label>
                     <div class="panel-body">
                            <div class="row">

                                 <div class="form-row">
                                        <div class="form-group col-md-2">
                                          <label for="txtplaca">Servicio:</label>                                           
                                            <asp:DropDownList ID="ddlServicio" class="form-control input-sm" runat="server" DataSourceID="SqlDataSourceServ" DataTextField="Servicio" DataValueField="idServicio"></asp:DropDownList> 
                                            <asp:SqlDataSource ID="SqlDataSourceServ" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idServicio,Servicio FROM tb_UnidadesServicios WHERE idCategoria = 10"></asp:SqlDataSource>
                                        </div>
                                        <div class="form-group col-md-5">
                                          <label for="txtplaca">Descripción:</label>
                                            <asp:TextBox ID="txtdescripServ" Style="text-transform: uppercase" class="form-control input-sm" runat="server"></asp:TextBox>   
                                        </div>
                                        <div class="form-group col-md-2">
                                          <label for="txtplaca">F.Emisión:</label>
                                            <asp:TextBox ID="txtfemision" class="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>   
                                        </div>
                                        <div class="form-group col-md-2">
                                          <label for="txtplaca">F.Vencimiento:</label>
                                            <asp:TextBox ID="txtfvencimiento" class="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>   
                                        </div>
                                       <div class="form-group col-md-1">
                                            <asp:LinkButton ID="lbtRegServicio" CssClass="btn btn-success" runat="server" OnClick="lbtRegServicio_Click"> + </asp:LinkButton>
                                      </div>
                                  </div>
       

                             </div>
                       </div>
        </div>
        
    </div>

    <div class="row">
           <div class="panel panel-info">
                        <div class="panel-heading">
                            <strong>ACCESORIOS REGISTRADOS:</strong> 
                            
                            <asp:LinkButton ID="lbtnAcceActivos" runat="server" OnClick="lbtnAcceActivos_Click">Activos</asp:LinkButton>
&nbsp;|
                            <asp:LinkButton ID="lbtnAcceBaja" runat="server" OnClick="lbtnAcceBaja_Click">De baja</asp:LinkButton>
                            
                        &nbsp;<asp:Label ID="lblAccesorioEstado" runat="server" Visible="False">1</asp:Label>
                            
                        </div>
          
                                       
                       
                        <asp:GridView ID="gvAcce" runat="server" class="table table-condensed table-bordered  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idServicios" DataSourceID="SqlDataSourceAccesorio" AllowPaging="True" OnRowCommand="gvAcce_RowCommand" OnRowDeleted="gvAcce_RowDeleted" Font-Size="Small">
                            <Columns>
                                 <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" >
                                    <ControlStyle Height="20px" Width="20px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                    </asp:CommandField>
                                <asp:BoundField DataField="idServicios" HeaderText="idServicios" ReadOnly="True" SortExpression="idServicios" Visible="False" />
                                <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                                <asp:BoundField DataField="idServAcce" HeaderText="idServAcce" SortExpression="idServAcce" Visible="False" />
                                <asp:BoundField DataField="SERVICIO" HeaderText="SERVICIO" SortExpression="SERVICIO" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                <asp:BoundField DataField="CONDICION" HeaderText="ESTADO" SortExpression="CONDICION" >
                                 <HeaderStyle Width="70px" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="FECHA_E" HeaderText="F. REGISTRO" SortExpression="FECHA_E" DataFormatString="{0:dd/MM/yyyy}" >
                                 <HeaderStyle Width="110px" />
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="FECHA_V" HeaderText="FECHA_V" SortExpression="FECHA_V" Visible="False" />
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                <asp:BoundField DataField="grupo" HeaderText="CI" SortExpression="grupo" Visible="False" >

                                  <HeaderStyle Width="50px" />
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>

                                  <asp:ButtonField CommandName="baja" HeaderText="" ShowHeader="True" Text="Baja" >         
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>
                                     <asp:ButtonField CommandName="alta" HeaderText="" ShowHeader="True" Text="Alta" >          
                                    <HeaderStyle Width="20px" />
                                    </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                No registra accesorios...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#D9EDF7" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceAccesorio" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicios_listarServAccexUnidad" SelectCommandType="StoredProcedure" DeleteCommand="DELETE tb_PlanillaEquiposServicios WHERE idServicios = @idServicios">
                            <DeleteParameters>
                                <asp:Parameter Name="idServicios" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidUnidad" Name="idUnidad" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblAccesorioEstado" Name="estado" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="20" Name="grupo" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
          
                                       
                       
                                        <asp:Label ID="lblmensaje3" runat="server" ForeColor="Maroon"></asp:Label>
                                       
                       
         <div class="panel-body">
                            <div class="row">

                                 <div class="form-row">
                                     <div class="form-group col-md-2">
                                          <label for="txtaccesorio">Accesorio:</label>
                                        
                                         <asp:DropDownList ID="ddlAccesorio"  CssClass="form-control input-sm"  runat="server" DataSourceID="SqlDataSourceAcce" DataTextField="Servicio" DataValueField="idServicio"></asp:DropDownList>
                                          <asp:SqlDataSource ID="SqlDataSourceAcce" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idServicio,Servicio FROM tb_UnidadesServicios WHERE idCategoria = 20"></asp:SqlDataSource>
                                     </div>
                                     <div class="form-group col-md-5">
                                          <label for="txtDetalle">Detalle/Observación:</label>
                                            <asp:TextBox ID="txtDetalle" Style="text-transform: uppercase" class="form-control input-sm" runat="server"></asp:TextBox>   
                                        </div>
                                     <div class="form-group col-md-2">
                                          <label for="ddlCondicion">Condición</label>
                                            <asp:DropDownList ID="ddlCondicion" runat="server" class="form-control input-sm" DataSourceID="SqlDataSourceCondicion" DataTextField="descripcion" DataValueField="idCondicion"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceCondicion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquiposCondicion] WHERE ([tipo] = @tipo) ORDER BY descripcion ">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="1" Name="tipo" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                      <div class="form-group col-md-2">
                                          <label for="txtfechaCompra">F. Adquiere:</label>
                                            <asp:TextBox ID="txtfAdquiere" class="form-control input-sm" runat="server" TextMode="Date"></asp:TextBox>   
                                        </div>

                                        <div class="form-group col-md-1">
                                            <asp:LinkButton ID="lbt_regAccesorios" CssClass="btn btn-info " runat="server" OnClick="lbt_regAccesorios_Click"> + </asp:LinkButton>
                                      
                                           </div>
                                        
                                       
                                       
                                            
                                  </div>
       

                             </div>
                       </div>
         </div>


    </div>


    <div class="row">
        <asp:LinkButton ID="lbtnRetornar" CssClass="btn btn-default" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx">RETORNAR</asp:LinkButton>
    </div>




</asp:Content>
