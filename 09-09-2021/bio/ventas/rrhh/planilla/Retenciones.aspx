<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="Retenciones.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.Retenciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
<style type="text/css">
    .auto-style1 {
        height: 20px;
    }
    .auto-style2 {
        height: 25px;
    }
    .auto-style3 {
        font-size: x-small;
    }
</style>

    <script src="../../../../scripts/sweetalert.min.js"></script>
    
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }

        function successError() {
            swal("Error! Pagos registrados en su totalidad!", { icon: "error",dangerMode: true, });
        }

        function successRegistrado() {         
            swal({
                title: "Registro correcto!",
                text: "Los datos se registraron correctamente...!",
                icon: "success",
                button: "Aceptar",
            })


    //        .then((willDelete) => {
    //            if (willDelete) {
    //window.location.href = '/porpagar/PagosRegistrar.aspx';
    //    }});
        }
       

    </script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
              
      
     <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading"><h3>RENTENCIONES VALOR PORCENTUAL:<small>
                              <asp:Label ID="lblfechaactualiz" runat="server" ForeColor="#999999"></asp:Label>
                          <asp:Label ID="lblidUsuario" runat="server" Visible="False">ALLUZ</asp:Label>
                  </small>
                  </h3>
                          </div>
              <div class="panel-body">

                  <div class="table-responsive">
                  <table align="center" class="nav-justified">
                      <tr>
                          <td class="auto-style1"><b></b></td>
                          <td  WIDTH="20" >&nbsp;</td>
                          <td class="auto-style1"><b>SNP/ONP</b></td>
                          <td class="auto-style1"><b>PRIMA</b></td>
                          <td class="auto-style1"><b>HABITAT</b></td>
                          <td class="auto-style1"><b>INTEGRA</b></td>
                          <td class="auto-style1"><b>PROFUTURO</b></td>
                          <td class="auto-style1"></td>
                      </tr>
                      <tr>
                          <td>APORTE OBLIGATORIO&nbsp;</td>
                          <td>:</td>
                          <td>
                              <asp:TextBox ID="txtop1ONP" required type="number" step="0.01" runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop1prima" required type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop1habitat" required type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop1Integra" required type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop1Profuturo"  required type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style2">COMISIÓN % SOBRE R.A.</td>
                          <td class="auto-style2">:</td>
                          <td class="auto-style2">
                              &nbsp;</td>
                          <td class="auto-style2">
                              <asp:TextBox ID="txtop2prima" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td class="auto-style2">
                              <asp:TextBox ID="txtop2habitat" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td class="auto-style2">
                              <asp:TextBox ID="txtop2Integra" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td class="auto-style2">
                              <asp:TextBox ID="txtop2Profuturo" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td class="auto-style2"></td>
                      </tr>
                      <tr>
                          <td>PRIMA SEGURO&nbsp;</td>
                          <td>:</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              <asp:TextBox ID="txtop3prima" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop3habitat" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop3Integra" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtop3Profuturo" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>&nbsp;</td>
                      </tr>
                      <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <tr>
                          <td>TOTAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>
                              <asp:Label ID="ttonp" runat="server"></asp:Label>
                          </td>
                          <td>
                              <asp:Label ID="ttprima" runat="server"></asp:Label>
                          </td>
                          <td>
                              <asp:Label ID="tthabitat" runat="server"></asp:Label>
                          </td>
                          <td>
                              <asp:Label ID="ttintegra" runat="server"></asp:Label>
                          </td>
                          <td>
                              <asp:Label ID="ttProfuturo" runat="server"></asp:Label>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>

                      </asp:Panel>
                    
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>SIN EPS</td>
                          <td>CON EPS</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>ESSALUD</td>
                          <td>:</td>
                          <td>
                              <asp:TextBox ID="txtopEssalud1" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>
                              <asp:TextBox ID="txtopEssalud2" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>&nbsp;</td>
                          <td>
                              RMV:</td>
                          <td>
                              <asp:TextBox ID="txtoprmv" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>EPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          <td>:</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              <asp:TextBox ID="txtopeps" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>&nbsp;</td>
                          <td>
                              A. FAMILIAR:</td>
                          <td>
                              <asp:TextBox ID="txtopasigFamiliar" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>SCTR&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          <td>:</td>
                          <td>
                              <asp:TextBox ID="txtopsctr" required  type="number" step="0.01"  runat="server" Width="80px"></asp:TextBox>
                              %</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td class="auto-style3">REM. MÁX. ASEGURABLE:</td>
                          <td>
                              <asp:TextBox ID="txtRetMaxAsegurable" runat="server" Width="80px"></asp:TextBox>
                          </td>
                          
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td colspan="2">
                              <asp:TextBox ID="txtremmaxasegDescripcion" runat="server" Width="100%"></asp:TextBox>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                  </table>
</div>

              </div>
                <div class="panel-footer">
                    <asp:Button ID="btnRegistrar" CssClass="btn btn-default" runat="server" Text="REGISTRA / ACTUALIZAR INFORMACIÓN" Width="100%" OnClick="btnRegistrar_Click" />
                </div>
            </div>
         </div>


    </div>
</asp:Content>
