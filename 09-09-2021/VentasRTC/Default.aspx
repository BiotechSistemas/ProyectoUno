<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.VentasRTC.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 650px;
            height: 376px;
        }
        .auto-style18 {
            width: 4px;
        }
        .auto-style21 {
            height: 100px;
        }
        .auto-style23 {
            width: 200px;
            border: 2px solid #e1f5c8;
            background : #e1f5c8;
        }
        .auto-style24 {
            width: 600px;
        }
        .auto-style25 {
            color: #698F3A;
            width: 150px;
        }
        .auto-style26 {
            color: #698F3A;
            }
        .auto-style27 {
            width: 92px;
        }
        .auto-style28 {
            color: #698F3A;
            width: 120px;
            height: 34px;
        }
        .auto-style29 {
            height: 34px;
        }
        .auto-style30 {
            width: 100%;
        }

        a:link, a:visited, a:active
{
font-family: Arial,Verdana,Sans-serif,serif;


text-decoration: none;
color: #838383;
}

        </style>

   

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script>
       $(document).ready(function () {
           $("#mostrarmodal").modal("show");
       });
    </script>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Bienvenido    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

    <asp:Panel ID="PanelAviso" runat="server">

   
    <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
           <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h3><strong><MARQUEE>
                  <asp:Label ID="lblmensajeTitulo" runat="server" Text="FELIZ CUMPLEAÑOS"></asp:Label></MARQUEE></strong>
                  </h3>
           </div>
           <div class="modal-body">
              <center>
            <%--<img src="https://elastoquim.com/wp-content/uploads/2016/12/Navidad-Elastoquim-800x843.jpg" border="1" alt="Este es el ejemplo de un texto alternativo" width="100%" height="400">--%>
               <asp:Image ID="Image2" runat="server" border="0"  Width="90%" Height="250px" />
               <p  class="text-center">
                   <br />
                   <asp:Label ID="lblmensajeNombre" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                   <br /><small><asp:Label ID="lblmensajecargo" runat="server" Font-Size="Medium" ForeColor="#999999"></asp:Label></small>
                   
              
                  <H3> <asp:Label ID="lblmensajeFecha" runat="server" Font-Size="Medium"></asp:Label></H3>

                   <p>
                   </p>
                  
                       <asp:Label ID="lblmensajeConcepto" runat="server" Font-Size="Medium"></asp:Label>
                   
                   <asp:Label ID="lblmensajeCodUsu" runat="server" Visible="False"></asp:Label>
                   
                   <%--<asp:Image ID="Image3" runat="server" ImageUrl="https://www.contenidoweb.info/images/carta-de-felicitaciones.jpg" border="0"   Width="100%" Height="100"/>--%>

                   <p>
                   </p>

                   <p>
                   </p>

                   <p>
                   </p>

                   <p>
                   </p>

               </p>
               
               </center>
       </div>
           <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn btn-success">Cerrar</a>
           </div>
      </div>
   </div>
</div>
         </asp:Panel>



    <div class="title_section_offer_fake"></div>
   <br />
    <center>
    <table class="auto-style16">
        <tr>
            <td class="auto-style21" valign=top>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style25" colspan="7">
                            <h3>PERFIL DE USUARIO</h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style25">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26">NOMBRE</td>
                        <td>:</td>
                        <td>
                    <strong>
                    <asp:Label ID="lblnombres" runat="server"></asp:Label>
                    </strong>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style25">DNI</td>
                        <td>:</td>
                        <td><strong>
                    <asp:Label ID="lbldni" runat="server"></asp:Label>
                    </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style26">APELLIDOS</td>
                        <td>:</td>
                        <td><strong>
                    <asp:Label ID="lblapellidos" runat="server"></asp:Label>
                    </strong></td>
                        <td>&nbsp;</td>
                        <td class="auto-style25">F. NAC.</td>
                        <td>:</td>
                        <td><strong>
                    <asp:Label ID="lblfechanac" runat="server"></asp:Label>
                    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26">CARGO:</td>
                        <td>:</td>
                        <td colspan="5">
                    <strong>
                   <asp:Label ID="lblcargo" runat="server"></asp:Label>
                    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">ZONA</td>
                        <td>:</td>
                        <td>
                    <asp:Label ID="lblZona" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26">DIRECCIÓN</td>
                        <td>:</td>
                        <td colspan="5"><strong>
                    <asp:Label ID="lbldomicilio" runat="server"></asp:Label>
                    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">N° LICENCIA</td>
                        <td>:</td>
                        <td>
                    <strong> <asp:Label ID="lbllicencia" runat="server"></asp:Label>
                        
                        
                    </strong></td>
                        <td>&nbsp;</td>
                        <td class="auto-style25"></td>
                        <td>:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style26">CORREO</td>
                        <td>:</td>
                        <td colspan="5">
                    <strong><asp:Label ID="lblcorreo" runat="server"></asp:Label>
                    </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style26">CELULAR</td>
                        <td>:</td>
                        <td colspan="3">
                    <strong><asp:Label ID="lblcelular" runat="server"></asp:Label>
                    </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="auto-style26">CTA. BANCO</td>
                        <td>:</td>
                        <td>
                        <strong><asp:Label ID="lblBanco" runat="server"></asp:Label>    
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style25">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            
                    </strong>

                        </td>
                    </tr>






                    <tr>
                        <td class="auto-style26">N° CUENTA</td>
                        <td>:</td>
                        <td>
                    <strong><asp:Label ID="lblncuenta" runat="server"></asp:Label>
                    </strong></td>
                        <td>&nbsp;</td>
                        <td class="auto-style25">N° CTA. CCI</td>
                        <td>:</td>
                        <td>
                    <strong><asp:Label ID="lblncuentafree" runat="server"></asp:Label>
                    </strong></td>
                    </tr>

                    <tr>
                        <td class="auto-style26" colspan="7"><hr></td>
                    </tr>

                    <tr>
                        <td class="auto-style26"><b>Km. Último Mantenimiento:</td>
                        <td>:</b></td>
                        <td><strong>
                            <asp:Label ID="lblKMultimoMantenimiento" runat="server"> </asp:Label> Km.
                            

                            </strong>
                   </td>
                        <td>&nbsp;</td>
                        <td class="auto-style26"><strong>Ult. Km. Registrado (Recorrido)</strong></td>
                        <td>:</td>
                        <td>
                           <asp:Label ID="lblKilometrajeActual" runat="server"></asp:Label> Km.
                    </td>
                    </tr>

                    <tr>
                        <td class="auto-style28">Km. Próximo Mantenimiento</td>
                        <td class="auto-style29">:</td>
                        <td class="auto-style29">
                            <asp:Label ID="lblKmProxMant" runat="server"></asp:Label>
&nbsp;</td>
                        <td class="auto-style29"></td>
                        <td class="auto-style29" colspan="3">
                            <asp:Label ID="lblKMmensaje" runat="server"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="lblUnidad" runat="server" Visible="False"></asp:Label>
                            </td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style29">
                            <asp:Label ID="lblidequipo" runat="server" Visible="False"></asp:Label>
                            </td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style29" colspan="3">
                            <asp:Label ID="lblKmDiferencia" runat="server" Visible="False"></asp:Label> 
                            <asp:Label ID="lblkmaMantenimiento" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style25"><b>VEHICULO</b></td>
                        <td>:</td>
                        <td>
                           
                            <asp:LinkButton ID="lbtVerDetVehicular" runat="server" OnClick="lbtVerDetVehicular_Click" ForeColor="#0033CC"></asp:LinkButton>
                           
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style25">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style27">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                    <asp:Label ID="lblcuota" runat="server" Visible="False"></asp:Label>




                    <asp:Label ForeColor="Red" size="70" ID="lblcuotadebe" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table>
   

      
            </td>
            <td valign=top align=right >

                <table align="right" bgcolor="green" cellpadding="0" cellspacing="0" class="auto-style23">
                    <tr>
                        <td>

                <table  >
                    <tr>
                        <td WIDTH="50">Presupuesto</td>
                        <td class="auto-style18">:</td>
                        <td  WIDTH="100" align=right>
                            <asp:Label ID="lblPresupuesto" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Actual</td>
                        <td class="auto-style18">:</td>
                        <td align=right>
                            <strong><asp:Label ID="lblactual" runat="server"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Diferencia</td>
                        <td class="auto-style18">:</td>
                        <td align=right >
                            <asp:Label ID="lbldiferencia" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                            </td>
                    </tr>
                </table>
                <asp:Label ID="lblporcentica" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblporcentPiura" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/VentasRTC/VentasZonal.aspx" ForeColor="#0033CC">Ver más</asp:LinkButton>
                <br />
                <br />
                    <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/_archivos/PersonalFotos/NOIND.jpg" OnClick="Image1_Click" Width="191px" />
                <br />
   

      
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" ForeColor="#0033CC">Ver ficha</asp:LinkButton>




                &nbsp;|
                <asp:LinkButton ID="lbttnAdminFicha" runat="server" ForeColor="#0033CC" OnClick="lbttnAdminFicha_Click">Administrar</asp:LinkButton>
    <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
   

      
                <br />




                <br />
                <br />
   

      

                <asp:ImageButton ID="bt_mantPreventivo" runat="server" ImageUrl="~/images/botonmantenimientoprev.png" OnClick="bt_mantPreventivo_Click" Width="200px" />
   

      

                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/botonacta.png" OnClick="ImageButton1_Click" Width="200px" />
   

      

            </td>
        </tr>
        
        <tr>
            <td class="auto-style21" valign=top>
                &nbsp;</td>
            <td valign=top align=right >


      
                &nbsp;</td>
        </tr>
        
        </table>
    </center>
    

   

</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style30">
            <tr>
                <td>Políticas y Normas Biotech:
                    
                    <asp:Label ID="lblidSelect" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbldoc" runat="server" Visible="False"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px" DataKeyNames="id,doc" DataSourceID="SqlDataSourceNormas" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeader="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("descripcion") %>' ForeColor="#0066FF"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" Visible="False" />
                            <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                            <asp:BoundField DataField="grupo" HeaderText="grupo" SortExpression="grupo" Visible="False" />
                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceNormas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="sp_NormasLista" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#DDEBCD" Height="40px" OnClick="Button1_Click" Text="Cerrar sesión" Width="191px" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
