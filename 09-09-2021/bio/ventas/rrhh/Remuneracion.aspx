<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Remuneracion.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Remuneracion" %>
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
            swal("Error! No se pudo registrar información ingresada...", { icon: "error",dangerMode: true, });
        }

        function successRegistrado() {
          
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
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-users"></i> REMUNERACIÓN<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                    </h2>
                </div>
                <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->

    <div class="row">
     <div class="col-sm-12 col-lg-6">
       
    <div class="panel panel-success">
  <div class="panel-heading">REMUNERACIÓN POR PERSONAL:
      <asp:Label ID="lblidPersonal" runat="server" Visible="False"></asp:Label>
        &nbsp;<asp:Label ID="lblidArea" runat="server" Visible="False"></asp:Label>
        </div>
  <div class="panel-body">

   

      <table class="auto-style1">
          <tr>
              <td WIDTH="250">AREA</td>
              <td WIDTH="50">:</td>
              <td>
                  <asp:DropDownList ID="ddlarea" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcearea" DataTextField="Area" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="ddlarea_SelectedIndexChanged"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourcearea" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_PlanillaAreas where estado = 1
"></asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td WIDTH="250">PERSONAL </td>
              <td>:</td>
              <td>
                  <asp:DropDownList ID="ddlEmpleados" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceempeladoxarea" DataTextField="EMPLEADO" DataValueField="COD" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlEmpleados_SelectedIndexChanged">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSourceempeladoxarea" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="TrabajadoresListadosxArea" SelectCommandType="StoredProcedure">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblidArea" Name="idArea" PropertyName="Text" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>SUELDO BASE</td>
              <td>:</td>
              <td>
                  <asp:TextBox ID="txtimpBase" required  type="number" step="0.01" class="form-control" runat="server" Width="200px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>
                  <h4>BONIFICACIÓN</h4>
              </td>
              <td>&nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td>POR CUMPLIMIENTO CUOTA</td>
              <td>:</td>
              <td>
                  <asp:TextBox ID="txtimpBonoCumpCuota" required  type="number" step="0.01" class="form-control" runat="server" Width="200px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>EXTRA CUMPLIMIENTO CUOTA</td>
              <td>:</td>
              <td>
                  <asp:TextBox ID="txtbonCumpExtra" required  type="number" step="0.01" class="form-control" runat="server" Width="200px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>BONO DESEMPEÑO</td>
              <td>:</td>
              <td>
                  <asp:TextBox ID="txtBonoimpDesempeno" required  type="number" step="0.01" class="form-control" runat="server" Width="200px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>BONO MOV. SUPEDITADA</td>
              <td>:</td>
              <td>
                  <asp:TextBox ID="txtbonoimpPeditada" required  type="number" step="0.01" class="form-control" runat="server" Width="200px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>
                  
              </td>
          </tr>
      </table>

   <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-success" Text="REGISTRAR" Width="100%" OnClick="btnRegistrar_Click" />

  </div>
</div>

           </div>
        </div>

    <div class="row">

          <div class="panel panel-default">
  <div class="panel-heading">REMUNERACIÓN BRUTA DEL PERSONAL BIOTECH:
      <asp:Label ID="lblop" runat="server" Text="10" Visible="False"></asp:Label>
      <asp:Label ID="lblidAreas" runat="server" Visible="False"></asp:Label>
              </div>
 
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" Class="table table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="COD,idArea" DataSourceID="SqlDataSourceEmpleados" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                <Columns>
                    <asp:TemplateField HeaderText="COD" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("COD") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="idArea" HeaderText="idArea" SortExpression="idArea" Visible="False" />
                    <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" Visible="False" />
                    <asp:BoundField DataField="CARGO" HeaderText="CARGO U OCUPACIÓN" SortExpression="CARGO" />
                    <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                    <asp:BoundField DataField="IMPBASE" HeaderText="SUELDO BÁSICO" ReadOnly="True" SortExpression="IMPBASE" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPXCUMPLIMIENTO" HeaderText="BONO POR CUMPLIMIENTO" ReadOnly="True" SortExpression="IMPXCUMPLIMIENTO" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPEXTRA" HeaderText="BONO EXTRA POR CUMP." ReadOnly="True" SortExpression="IMPEXTRA" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPDESEMPENO" HeaderText="BONO POR DESEMPEÑO" ReadOnly="True" SortExpression="IMPDESEMPENO" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPPEDITADA" HeaderText="BONO PEDITADA" ReadOnly="True" SortExpression="IMPPEDITADA" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="TT" HeaderText="TOTAL" ReadOnly="True" SortExpression="TT" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    Seleccionar área....
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceEmpleados" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="TrabajadoresListadosImportes" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="ddlarea" Name="idarea" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
     </div>
    </div>
</asp:Content>
