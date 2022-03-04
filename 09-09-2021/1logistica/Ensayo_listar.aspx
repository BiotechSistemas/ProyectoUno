<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="Ensayo_listar.aspx.cs" Inherits="biotech._1logistica.Ensayo_listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
               
         .auto-style2 {
             width: 100%;
         }
         .auto-style9 {
         }
       
         .auto-style12 {
             font-size: small;
         }
         .auto-style13 {
             font-size: small;
         }
         .auto-style14 {
             font-size: small;
         }
       
         .auto-style15 {
             text-align: center;
         }
         .auto-style16 {
             text-align: center;
         }
         .auto-style17 {
         }
       
         .auto-style18 {
             font-weight: 700;
         }
         .auto-style19 {
             font-weight: 700;
         }
         .auto-style20 {
             font-weight: 700;
         }
       
         .auto-style29 {
             height: 24px;
             text-align: right;
         }
       
         .auto-style30 {
             height: 24px;
             text-align: center;
         }
       
         .auto-style36 {
             width: 78%;
         }
         .auto-style38 {
             width: 78%;
             height: 24px;
             text-align: left;
         }
         .auto-style41 {
             height: 24px;
             text-align: left;
         }
         .auto-style42 {
             height: 24px;
             width: 222px;
             text-align: left;
         }
         .auto-style43 {
             width: 222px;
         }
         .auto-style44 {
             text-align: left;
         }
         .auto-style45 {
             text-align: center;
         }
       
         .auto-style46 {
             font-size: x-small;
         }
         .auto-style47 {
             font-size: x-small;
         }
       
         .auto-style48 {
             width: 78%;
             text-align: left;
         }
       
         .auto-style49 {
             width: 222px;
             text-align: left;
             font-weight: bold;
         }
         .auto-style50 {
             height: 24px;
             width: 222px;
             text-align: left;
             font-weight: bold;
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
       
         .auto-style53 {
             text-decoration: underline;
         }
       
    </style>
    <script type="text/javascript">
        function imprSelec(muestra)
        { var ficha = document.getElementById(muestra); var ventimp = window.open(' ', 'popimpr'); ventimp.document.write(ficha.innerHTML); ventimp.document.close(); ventimp.print(); ventimp.close(); }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelSOLITUDENSAYO" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <h1>SOLICITUDES TÉCNICAS POR APROBAR</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style46" HorizontalAlign="Center">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="ID" HeaderText="COD" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO">
                    <ItemStyle Font-Size="Smaller" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" ReadOnly="True" SortExpression="PROVINCIA" />
                    <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha" />
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" ReadOnly="True" SortExpression="CULTIVO" Visible="False" />
                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ensayoLogistica" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="False" Name="estado" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            ENSAYOS CLIENTES EXTERNOS<asp:GridView ID="gvNoclientes" runat="server" AutoGenerateColumns="False" DataKeyNames="idensayo,COD" DataSourceID="SqlDataSourcenoClientes" OnSelectedIndexChanged="gvNoclientes_SelectedIndexChanged" style="font-size: x-small" Width="100%">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="22px" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idensayo" HeaderText="COD" ReadOnly="True" SortExpression="idensayo" />
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRO" SortExpression="FREGISTRO">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREQUERIDA" SortExpression="FREQUERIDA">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
                    <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                    <asp:BoundField DataField="REPRESENTANTE" HeaderText="REPRESENTANTE" SortExpression="REPRESENTANTE" />
                    <asp:BoundField DataField="fundoempresa" HeaderText="FUNDO / EMPRESA" SortExpression="fundoempresa" />
                    <asp:BoundField DataField="autor" HeaderText="SOLICITA" SortExpression="autor" />
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                    <asp:BoundField DataField="AREENSAYO" HeaderText="AREENSAYO" SortExpression="AREENSAYO" />
                </Columns>
                <EmptyDataTemplate>
                    No registra ensayos, clientes externos....
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcenoClientes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idensayo,idensayo COD,fecha FREGISTRO, fecharequerida FREQUERIDA,nombre TITULO,dni DNI,responsabletecnicofundo REPRESENTANTE,fundoempresa,autor,cultivo CULTIVO,areaensayo AREENSAYO 
from tb_ensayo where estadoCliente=0 and idClienteCultivo=0 and estado=0 order by idensayo desc"></asp:SqlDataSource>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">

            <div id="muestra"> 

                <table class="auto-style2" align="right">
                    <tr>
                        <td class="auto-style29">
                            <h1>&nbsp;</h1>
                        </td>
                        <td class="auto-style29">
                            <asp:Image ID="Image1" runat="server" Height="63px" ImageUrl="~/images/logobiotech.jpg" Width="141px" />
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
                        <h1>SOLICITUD DE ENSAYO N°:&nbsp; 2018 -
                            <asp:Label ID="lblidensayo" runat="server"></asp:Label>
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
                    <td class="auto-style49">Responsable RTC:</td>
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
                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
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
                <br />
                Autorizado por,<br />
                <div class="auto-style45">
                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/images/autorizadoACHAC.jpg" Width="231px" />
                </div>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style15">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
                &nbsp;|
                <asp:Button ID="Button1" runat="server" Text="Aprobar Solicitud" OnClick="Button1_Click" />
                &nbsp;| <a href="javascript:imprSelec('muestra')">Imprimir</a>
                <br />
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
            </asp:Panel>
            <br />
        </asp:Panel>
        <h2></h2>
    </asp:Panel>
    <hr />


    <br />

    <asp:Panel ID="Panelensayoaprobados" runat="server">
        <h1>SOLICITUDES APROBADAS</h1>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="Black" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CssClass="auto-style47" AllowPaging="True">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" />
                    <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" ReadOnly="True" SortExpression="PROVINCIA" />
                    <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA REG" SortExpression="fecha" />
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" ReadOnly="True" SortExpression="CULTIVO" />
                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ensayoLogistica" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            SOLICITUDES TÉCNICAS:<asp:GridView ID="GVATENDIDONOCLIENTE" runat="server" AutoGenerateColumns="False" DataKeyNames="idensayo,COD" DataSourceID="SqlDataSourceaTENDIDOSnOcLIENTES" OnSelectedIndexChanged="GVATENDIDONOCLIENTE_SelectedIndexChanged" style="font-size: x-small" Width="100%" AllowPaging="True">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="22px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idensayo" HeaderText="COD" ReadOnly="True" SortExpression="idensayo" />
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="REGISTRO" SortExpression="FREGISTRO">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="REQUERIDA" SortExpression="FREQUERIDA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
                    <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                    <asp:BoundField DataField="REPRESENTANTE" HeaderText="REPRESENTANTE" SortExpression="REPRESENTANTE" />
                    <asp:BoundField DataField="fundoempresa" HeaderText="FUNDO/EMPRESA" SortExpression="fundoempresa" />
                    <asp:BoundField DataField="autor" HeaderText="SOLICITA" SortExpression="autor" />
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                    <asp:BoundField DataField="AREENSAYO" HeaderText="ARE ENSAYO" SortExpression="AREENSAYO">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceaTENDIDOSnOcLIENTES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idensayo,idensayo COD,fecha FREGISTRO, fecharequerida FREQUERIDA,nombre TITULO,dni DNI,responsabletecnicofundo REPRESENTANTE,fundoempresa,autor,cultivo CULTIVO,areaensayo AREENSAYO 
from tb_ensayo where estadoCliente=0 and idClienteCultivo=0 and estado=1 ORDER BY idensayo DESC"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
    </asp:Panel>
    <p>
</asp:Content>
