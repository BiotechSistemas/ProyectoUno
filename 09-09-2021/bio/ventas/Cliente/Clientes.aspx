<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="biotech.bio.ventas.Cliente.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#gvFichaCliente tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
</script>

    <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-users"></i> FICHA DE CLIENTES<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
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
    <asp:Panel ID="pficha" runat="server">
        <h4><i class="fa fa-laptop"></i> POR EVALUACIÓN: </h4><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id,RUC" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                <asp:BoundField DataField="idzona" HeaderText="idzona" SortExpression="idzona" Visible="False" />
                <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" SortExpression="CONDPAGO" />
                <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" />
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                <asp:BoundField DataField="EF" HeaderText="EF" SortExpression="EF" visible="false" />
                <asp:BoundField DataField="ECC" HeaderText="ECC" SortExpression="ECC"  visible="false" />
                <asp:BoundField DataField="EGG" HeaderText="EGG" SortExpression="EGG"  visible="false" />
                <asp:ImageField DataImageUrlField="EF"  HeaderText="EF" DataImageUrlFormatString="~/images/z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                <asp:ImageField DataImageUrlField="ECC" HeaderText="ECC" DataImageUrlFormatString="~/images/z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                <asp:ImageField DataImageUrlField="EGG" HeaderText="EGG" DataImageUrlFormatString="~/images/z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                <asp:BoundField DataField="FFFECHA" HeaderText="FFFECHA" SortExpression="FFFECHA" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_porevaluarFicha" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
       

        Estado:
        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
        &nbsp;aprobado |&nbsp;
        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Z4.png" Width="15px" />
        &nbsp;anulado |&nbsp;
        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z3.png" Width="15px" />
        &nbsp;por evaluar |
        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
        &nbsp;observado.</asp:Panel>




      <asp:Panel ID="PanelSoloGerencia" class="row" runat="server" Visible="False">
                   
                  <h4><i class="fa fa-laptop"></i> POR APROBACIÓN GERENCIA:
                        </h4>
                  
                     
                     
                          <div class="table-responsive">
                          <asp:GridView ID="gvAprobGerencia" class="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idRuc" DataSourceID="SqlDataSourcexevalgenrecia" OnSelectedIndexChanged="gvAprobGerencia_SelectedIndexChanged" Font-Size="Small">

                              <Columns>
                                  <asp:CommandField ShowSelectButton="True" >
                                  <ItemStyle ForeColor="#006600" HorizontalAlign="Center" VerticalAlign="Middle" />
                                  </asp:CommandField>
                                  <asp:BoundField DataField="idRuc" HeaderText="idRuc" ReadOnly="True" SortExpression="idRuc" Visible="False" />
                                  <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                                  <asp:BoundField DataField="CONDICIONASESOR" HeaderText="ASESOR" ReadOnly="True" SortExpression="CONDICIONASESOR" Visible="False" />
                                  <asp:BoundField DataField="CONDCREDITO" HeaderText="COND. CREDITO" ReadOnly="True" SortExpression="CONDCREDITO" />
                                  <asp:BoundField DataField="CREDIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="CREDIMPORTE">
                                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="CREDMONEDA" HeaderText="MONENDA" ReadOnly="True" SortExpression="CREDMONEDA" />
                                  <asp:BoundField DataField="ASESORC" HeaderText="COD. ASESOR" SortExpression="ASESORC" />
                                  <asp:BoundField DataField="OBS_CREDITOS" HeaderText="OBS_CREDITOS" SortExpression="OBS_CREDITOS" Visible="False" />
                                  <asp:BoundField DataField="FEVALUACION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EVAL. CREDITOS" SortExpression="FEVALUACION">
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="ESTCREDITO" HeaderText="ESTCREDITO" SortExpression="ESTCREDITO" Visible="False" />
                                  <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                  <asp:BoundField DataField="observacionjefatura" HeaderText="observacionjefatura" SortExpression="observacionjefatura" Visible="False" />
                                  <asp:BoundField DataField="AuditoriaFecha" HeaderText="AuditoriaFecha" SortExpression="AuditoriaFecha" Visible="False" />
                              </Columns>

                              <EmptyDataTemplate>
                                  No hay clientes por aprobar GERENCIA...
                              </EmptyDataTemplate>

                              <HeaderStyle BackColor="WhiteSmoke" />

                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSourcexevalgenrecia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Cliente_xevalGerencia" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      
                          </div>

                </asp:Panel>  

                <hr />
     <asp:Panel ID="Panel1" class="row" runat="server" >
            
               <div class="col-lg-1 col-md-1 col-xs-2">
                <asp:ImageButton ID="ImageButton3" Class="btn btn-default" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton3_Click" Height="35px"  />
                </div>
                <div class="col-lg-2 col-md-4 col-xs-9">
                    <asp:TextBox ID="txtbcliente" runat="server" CssClass="form-control" placeholder="Cliente..." AutoPostBack="True" OnTextChanged="txtbcliente_TextChanged" ToolTip="Presionar ENTER para filtrar"></asp:TextBox>
                    &nbsp;</div>
                <div class="col-lg-9 col-md-7 col-xs-12">
                    <div class="btn-group btn-group-justified">
                        <div class="btn-group">
                    <asp:Button ID="Button5" runat="server" Class="btn btn-success"  OnClick="Button5_Click" Text="POR EVALUAR"  />
                            </div>
                        <div class="btn-group">
                    <asp:Button ID="Button2" runat="server" Class="btn btn-success" Text="OBSERVADOS"  OnClick="Button2_Click"  />
                            </div>
                        <div class="btn-group">
                    <asp:Button ID="Button3" runat="server" Class="btn btn-success" OnClick="Button3_Click" Text="APROBADOS" />
                            </div>
                   </div>
                   </div>
             
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" class="row" Visible="False">   
       
            <asp:Label ID="lblopcion" runat="server"></asp:Label>
            <asp:Label ID="lblcliente" runat="server"></asp:Label>
            <asp:Label ID="lblestado" runat="server"></asp:Label>
            </asp:Panel>  

      <asp:Panel ID="PanelCREDITOS" runat="server" class="row">
            <div class="col-lg-12">
           
              

                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                <asp:HiddenField ID="hfCustomerProducto" runat="server" />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_FichaTotales" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblopcion" Name="op" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblcliente" Name="cliente" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lblestado" Name="estado" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="table-responsive">
                <asp:GridView ID="gvFichaCliente" class="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False"  DataKeyNames="idRuc" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="gvFichaCliente_SelectedIndexChanged" PageSize="25" OnRowCommand="gvFichaCliente_RowCommand" Font-Size="X-Small">
                    <Columns>
                        <asp:BoundField DataField="idRuc" HeaderText="RUC" ReadOnly="True" SortExpression="idRuc" Visible="False" />
                        <asp:TemplateField HeaderText="RUC" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="Green" Text='<%# Eval("idRuc") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="ASESOR" HeaderText="COR. ASESOR" SortExpression="ASESOR" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OPLINEA" HeaderText="CONDICION" ReadOnly="True" SortExpression="OPLINEA" Visible="False" />
                        <asp:BoundField DataField="CONDICIONPAGO" HeaderText="DIAS" ReadOnly="True" SortExpression="CONDICIONPAGO" Visible="False" />
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" Visible="False" />
                        <asp:BoundField DataField="CREDITOS" HeaderText="CREDITOS" SortExpression="CREDITOS" Visible="False" />
                        <asp:BoundField DataField="GERENCIA" HeaderText="GERENCIA" SortExpression="GERENCIA" Visible="False" />
                        <asp:ImageField DataImageUrlField="CREDITOS" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="CRED">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:ImageField DataImageUrlField="GERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="G.G.">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:ButtonField CommandName="edita" HeaderText="CREDITOS Y C." ShowHeader="True" Text="Evaluar" Visible="False" >
                        <ItemStyle ForeColor="#006600" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ButtonField>

                        <asp:ButtonField CommandName="admin" HeaderText="ADMINISTRAR" ShowHeader="True" Text="ADMINISTRAR" >
            
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ButtonField>
            
                        <asp:ButtonField CommandName="estadocuenta"  HeaderText="ESTADO CUENTA" ShowHeader="True" Text="print" ImageUrl="~/images/cuentasestado.png" ButtonType="Image" >
                     <ControlStyle Height="26px" Width="24px" />
                     <HeaderStyle Width="32px" Font-Size="XX-Small" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>


                       
                    </Columns>
                    <HeaderStyle BackColor="#DFF0D8" />
                </asp:GridView>
                    </div>
                            <p>
                                ESTADO:
                                <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/apro2.png" Width="20px" />
                                &nbsp; = observados,
                                <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/apro1.png" Width="20px" />
                                &nbsp;= aprobados.
                            </p>
               
                <asp:Label ID="lblitem2" runat="server" CssClass="auto-style119"></asp:Label>
                <span class="auto-style119">&nbsp;</span>

            </div>
         
        
                </asp:Panel>


</asp:Content>
