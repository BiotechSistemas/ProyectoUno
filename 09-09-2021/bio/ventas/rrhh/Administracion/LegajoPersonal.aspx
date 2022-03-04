<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LegajoPersonal.aspx.cs" Inherits="biotech.bio.ventas.rrhh.Administracion.LegajoPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">


         body {
  font-family: Arial, Helvetica, sans-serif;
   font-size: x-small;
}

        .borde {
        border-radius: 13px 13px 13px 13px;
        -moz-border-radius: 13px 13px 13px 13px;
        -webkit-border-radius: 13px 13px 13px 13px;
        border: 1px solid #000000;
        }

         .bordeCUADRA {
        border-radius: 0px 0px 0px 0px;
        -moz-border-radius: 0px 0px 0px 0px;
        -webkit-border-radius: 0px 0px 0px 0px;
        border: 1px solid #000000;
        }

* {
margin:0;
padding:0;
}

         .auto-style2 {
             width: 800px;
             /*background: #fff;*/
         }

         .auto-style3 {
             width: 100%;
         }
         .auto-style4 {
             height: 15px;
         }

         .footer, .push {
height: 4em;
}
         </style>
       <script type="text/javascript">




           function imprime() {
               //desaparece el boton
               document.getElementById("btnImprimir").style.display = 'none'
               //se imprime la pagina
               window.print()
               //reaparece el boton
               document.getElementById("btnImprimir").style.display = 'inline'
           }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table align="center" bgcolor="white" class="auto-style2">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/baner1.PNG" Width="800px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">FECHA DE APERTURA:<asp:Label ID="lblfechalegajo" runat="server" style="font-weight: 700"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td><center>
                    <h1>LEGAJO PERSONAL:
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </h1>
                    <h2>&nbsp;<asp:Label ID="lblnombre" runat="server"></asp:Label>
                    <asp:Label ID="lblidpersonal" runat="server" Visible="False"></asp:Label>
                    
                    </h2>

                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblidUsuarioAdmin" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>A.- DOCUMENTO DE INGRESO:</strong></td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style3">
                        <tr>
                            <td WIDTH="20">&nbsp;</td>
                            <td WIDTH="500">
                    <asp:Label ID="lbl1FichaTrabajador0" runat="server"></asp:Label>
                            </td>
                            <td WIDTH="200">
                    <asp:Label ID="lblestadoA1" runat="server">NO</asp:Label>
                            </td>
                            <td WIDTH="60">
                    <asp:Label ID="lblfa1" runat="server"></asp:Label>
                            </td>
                            <td WIDTH="20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td WIDTH="20">&nbsp;</td>
                            <td WIDTH="500">
                                &nbsp;</td>
                            <td WIDTH="200">
                                &nbsp;</td>
                            <td WIDTH="60">
                                &nbsp;</td>
                            <td WIDTH="20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl1FichaTrabajador1" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA2" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa2" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <strong>A. Documentos requisitos de ingreso:</strong></td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="4">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id,iddocAdmDescripcion,DOC" DataSourceID="SqlDataSourcerequisitos" Width="100%" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                        <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" Visible="False" />
                                        <asp:BoundField DataField="iddocAdmDescripcion" HeaderText="iddocAdmDescripcion" SortExpression="iddocAdmDescripcion" Visible="False" />
                                        <asp:BoundField DataField="DOCUMENTO" HeaderText="DOCUMENTO" SortExpression="DOCUMENTO" />
                                        <asp:BoundField DataField="DOC" HeaderText="DOC" SortExpression="DOC" Visible="False" />
                                        <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                                        <HeaderStyle Width="60px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO"  Visible="False" SortExpression="ESTADO" />
                                        <asp:BoundField DataField="EDOC" HeaderText="EDOC"  Visible="False" ReadOnly="True" SortExpression="EDOC" />
                                        <asp:ImageField DataImageUrlField="EDOC" HeaderText="DOC." DataImageUrlFormatString="~/images/doc{0}.png" Visible="False">
                                            <ControlStyle Height="18px" Width="18px" />
                                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ImageField>
                                        <asp:ButtonField CommandName="BAJAR" HeaderText="" ShowHeader="True" Text="Bajar" ButtonType="Image" 
                                            ImageUrl="~/images/BAJAR.png" >                     
                                            <ControlStyle Height="16px" Width="16px" />
                                            <HeaderStyle Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />                     
                                        </asp:ButtonField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra documentos requisitos.
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="WhiteSmoke" />
                                </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourcerequisitos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.listadodocRequisitosPersonal" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidpersonal" Name="idpersonal" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                               
                                <br />
                               
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl1FichaTrabajador2" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA3" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa3" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Label ID="lbladoc4" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl1FichaTrabajador3" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA4" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa4" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="15px" OnClick="ImageButton4_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Label ID="lbladoc5" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl1FichaTrabajador4" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA5" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa5" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="15px" OnClick="ImageButton5_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Label ID="lbladoc6" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl1FichaTrabajador5" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA6" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa6" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="15px" OnClick="ImageButton6_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Label ID="lbladoc7" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl1FichaTrabajador6" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA7" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa7" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="15px" OnClick="ImageButton7_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Label ID="lbladoc8" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl1FichaTrabajador7" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA8" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa8" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="15px" OnClick="ImageButton8_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Label ID="lbladoc9" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl1FichaTrabajador8" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoA9" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfa9" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/BAJAR.png" ToolTip="Descargar archivo." Width="15px" OnClick="ImageButton9_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>B.- GESTIÓN ADMINISTRATIVA:</strong></td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style3">
                        <tr>
                            <td WIDTH="20">&nbsp;</td>
                            <td WIDTH="500">
                    <asp:Label ID="lbl2ficha1" runat="server"></asp:Label>
                            </td>
                            <td WIDTH="200">
                    <asp:Label ID="lblestadoB1" runat="server">NO</asp:Label>
                            </td>
                            <td WIDTH="80">
                    <asp:Label ID="lblfb1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style4">
                    <asp:Label ID="lbl2ficha2" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblestadoB2" runat="server">NO</asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblfb2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style4">
                    <asp:Label ID="lbl2ficha3" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblestadoB3" runat="server">NO</asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblfb3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha4" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB4" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb4" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha5" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB5" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style4">
                    <asp:Label ID="lbl2ficha6" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblestadoB6" runat="server">NO</asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblfb6" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha7" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB7" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb7" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha8" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB8" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb8" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha9" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB9" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb9" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha10" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB10" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb10" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha11" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB11" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha12" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB12" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb12" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha13" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB13" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb13" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl2ficha14" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoB14" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfb14" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>C.- DOCUMENTOS POR CESE LABORAL</strong></td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style3">
                        <tr>
                            <td WIDTH="20">&nbsp;</td>
                            <td WIDTH="500">
                    <asp:Label ID="lbl310" runat="server"></asp:Label>
                            </td>
                            <td WIDTH="200">
                    <asp:Label ID="lblestadoC1" runat="server">NO</asp:Label>
                            </td>
                            <td WIDTH="80">
                    <asp:Label ID="lblfc1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl311" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoC2" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfc2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                    <asp:Label ID="lbl312" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblestadoC3" runat="server">NO</asp:Label>
                            </td>
                            <td>
                    <asp:Label ID="lblfc3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style4">
                    <asp:Label ID="lbl313" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblestadoC4" runat="server">NO</asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="lblfc4" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr class="text-center">
                
                <td class="text-center">
                    <br /><br /><br /><br /><br /><br />
                   <center> <hr />
                 
    
                       <h4>
                 
    
                    <strong>BIOTECH CORP S.A.C. RUC: 20601613396</strong> </h4>
                       FECHA:
                       <asp:Label ID="lblfechaactual" runat="server" style="font-weight: 700"></asp:Label>
                       
                         </center>
                       </td>
                  
            </tr>
        </table>
        </center>
        
    </div>
    </form>
</body>
</html>
