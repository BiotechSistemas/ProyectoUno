<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnsayoTecnico.aspx.cs" Inherits="biotech.bio.ventas.AreaTecnica.EnsayoTecnico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
            



* {
margin:0;
padding:0;
}

*, *:before, *:after {
  -webkit-border-sizing: border-box;
  -moz-border-sizing: border-box;
  border-sizing: border-box;
}

         .auto-style16 {
             text-align: center;
         }
                
         .auto-style29 {
             height: 24px;
             text-align: right;
         }
       
         h1{font-size:2em;margin:.67em 0}
       
         .auto-style30 {
             height: 24px;
             text-align: center;
         }
       
         .auto-style50 {
             height: 24px;
             width: 222px;
             text-align: left;
             font-weight: bold;
         }
         .auto-style38 {
             width: 78%;
             height: 24px;
             text-align: left;
         }
         .auto-style19 {
             font-weight: 700;
         }
         .auto-style42 {
             height: 24px;
             width: 222px;
             text-align: left;
         }
                
         .auto-style18 {
             font-weight: 700;
         }
         .auto-style20 {
             font-weight: 700;
         }
       
         .auto-style49 {
             width: 222px;
             text-align: left;
             font-weight: bold;
         }
                
         .auto-style48 {
             width: 78%;
             text-align: left;
         }
       
         .auto-style51 {
             width: 222px;
             text-align: left;
             font-weight: bold;
             height: 46px;
         }
         .auto-style52 {
             width: 78%;
             text-align: left;
             height: 46px;
         }
       
         .auto-style41 {
             height: 24px;
             text-align: left;
         }
         .auto-style44 {
             text-align: left;
         }
                
         .auto-style12 {
             font-size: small;
         }
         .auto-style43 {
             width: 222px;
         }
                
         .auto-style36 {
             width: 78%;
         }
         .auto-style14 {
             font-size: small;
         }
       
         .auto-style13 {
             font-size: small;
         }
         .auto-style45 {
             text-align: center;
         }
       
         .auto-style15 {
             text-align: center;
         }
         [type=submit], [type=reset],button,html [type=button]{-webkit-appearance:button}button,input,optgroup,select,textarea{font-family:sans-serif;font-size:100%;line-height:1.15;margin:0}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">

            <div id="muestra"> 

                <table class="auto-style2" align="right">
                    <tr>
                        <td class="auto-style29">
                            <h1>&nbsp;</h1>
                        </td>
                        <td class="auto-style29">
                            <asp:Image ID="Image3" runat="server" Height="63px" ImageUrl="~/images/logobiotech.jpg" Width="141px" />
                        </td>
                    </tr>
                </table>
                <br />

                <br />
                <br />
                <br />

            <table class="auto-style2">
                <tr>
                    <td class="auto-style30" colspan="2">
                        <h1>SOLICITUD DE ENSAYO N°:&nbsp;
                            <asp:Label ID="lblnensayo" runat="server"></asp:Label>
                            &nbsp;<asp:Label ID="lblidensayo" runat="server" Visible="False"></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50">Nombre de ensayo:</td>
                    <td class="auto-style38">
                        <asp:Label ID="lblensayo" runat="server" CssClass="auto-style19"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50">Fecha Registrada:</td>
                    <td class="auto-style38">
                        <asp:Label ID="lblfecharegistrada" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style38"></td>
                </tr>
                <tr>
                    <td class="auto-style50">Fecha Requedida:</td>
                    <td class="auto-style38">
                        <asp:Label ID="lblfecharequerida" runat="server" CssClass="auto-style18"></asp:Label>
                    </td>
                </tr>

                 <tr>
                    <td class="auto-style50">Cliente:</td>
                    <td class="auto-style38">
                        <asp:Label ID="lblcliente" runat="server" CssClass="auto-style20"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style49">Depart/Prov.:</td>
                    <td class="auto-style48">
                        <asp:Label ID="lbldepartamentoprov" runat="server"></asp:Label>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style49">Dirección Fiscal:</td>
                    <td class="auto-style48">
                        <asp:Label ID="lbldireccion" runat="server" CssClass="auto-style17"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style50">Cultivo:</td>
                    <td class="auto-style38">
                        <asp:Label ID="lblcultivo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50">Ha. a ensayar:</td>
                    <td class="auto-style38">
                        <asp:Label ID="lblhectareaensayar" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style51">Responsable Técnico del fundo:</td>
                    <td class="auto-style52">
                        <asp:Label ID="lblresponsabletecnicocultivo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49">Responsable :</td>
                    <td class="auto-style48">
                        <asp:Label ID="lblresponsablertc" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49">Punto de llegada:</td>
                    <td class="auto-style48">
                        <asp:Label ID="lblpuntollegada" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49">Solicita:</td>
                    <td class="auto-style48">
                        <asp:Label ID="lblsolicita" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style44" colspan="2">
                        <strong>Tratamiento</strong><asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Width="100%" CssClass="auto-style12">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="APLICACION" HeaderText="APLICACION" SortExpression="APLICACION" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NUMAPLICACION" HeaderText="N° APLICACION" SortExpression="NUMAPLICACION" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. QUERIDA" SortExpression="FREQUERIDA" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoTratamiento" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style36">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        <div class="auto-style44">
                            <strong>Variables a evaluar</strong></div>
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="idVariables" DataSourceID="SqlDataSource4" ShowHeader="False" Width="400px" CssClass="auto-style14">
                            <Columns>
                                <asp:BoundField DataField="idVariables" HeaderText="idVariables" ReadOnly="True" SortExpression="idVariables" Visible="False" />
                                <asp:BoundField DataField="idensayo" HeaderText="idensayo" SortExpression="idensayo" Visible="False" />
                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_EnsayoVariables] WHERE ([idensayo] = @idensayo)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style36">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        <div class="auto-style44">
                            <strong>Cronograma de actividades</strong></div>
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource5" Width="100%" CssClass="auto-style13">
                            <Columns>
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoCronoActividades" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
                </div>
            <asp:Panel ID="Panelautorizado" runat="server" CssClass="auto-style44">
                <div class="auto-style45">
                </div>
            </asp:Panel>
            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
            <br />
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style15">
                <a href="Javascript:window.close()">Cerrar</a>
                &nbsp;| &nbsp;|  <a href='javascript:window.print(); void 0;'>Imprimir</a> 
                <br />
            </asp:Panel>
            <br />
        </asp:Panel>
    </form>
    

</body>
</html>
