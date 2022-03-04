<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="CTScalc.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.CTScalc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
         .auto-style2 {
             width: 900px;
         }
         .auto-style3 {
             height: 20px;
         }
         .auto-style4 {
             width: 400px;
         }
         .auto-style5 {
            
         
             background-color: #B9CAEE;
         }
         .auto-style6 {
             background-color: #B9CAEE;
         }
         .auto-style7 {
             font-weight: normal;
             
             background-color: #B9CAEE;
         }
         .auto-style8 {
             background-color: #D8E1F5;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
    <div class="container-fluid">
         <h2>PLANILLA CTS
             <asp:Label ID="lbltitulo" runat="server"></asp:Label>
             <asp:Label ID="lblidusuario" runat="server"></asp:Label>
         </h2>
&nbsp;<asp:Panel ID="payuda" runat="server">
        <asp:Label ID="lblano" runat="server"></asp:Label>
        &nbsp;-
        <asp:Label ID="lblPeriodo" runat="server"></asp:Label>
    </asp:Panel>


    <table class="auto-style1">
        <tr>
            <td>
                <asp:DropDownList ID="ddlAno" runat="server" DataSourceID="SqlDataSource1" DataTextField="ano" DataValueField="ano" Width="150px">
                </asp:DropDownList>
                <br />
                Año:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">PRIMERO (NOV-ABR)</asp:ListItem>
                    <asp:ListItem Value="2">SEGUNDO (MAY-OCT)</asp:ListItem>
                </asp:RadioButtonList>
                Periodo:</td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="GENERAR" />
                <br />
            </td>
        </tr>
        </table>


                <asp:Label ID="lblmensajeno" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
                <asp:Label ID="lblmensajesi" runat="server" Font-Size="Small" ForeColor="#006600"></asp:Label>
            <br />
         


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select ano from tb_ano order by idano desc"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourcePersonal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.ctsPersonalpp" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblPeriodo" Name="periodo" PropertyName="Text" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:Panel ID="pplanillacts" runat="server">
             <strong>PLANILLA CTS:</strong>
             <asp:GridView ID="gvPlanillacts" class="table table-striped w-auto" runat="server" DataSourceID="SqlDataSourcePlanillacts" AutoGenerateColumns="False" DataKeyNames="id,p1,p2,p3,p4,p5,p6,poblacion,SextoGratificacion,idPersonal" Font-Size="Small" OnSelectedIndexChanged="gvPlanillacts_SelectedIndexChanged">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />
                     <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                     <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                     <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                     <asp:BoundField DataField="NOMBRES" HeaderText="NOMBRES" ReadOnly="True" SortExpression="NOMBRES" >
                     <ItemStyle Font-Size="X-Small" />
                     </asp:BoundField>
                     <asp:BoundField DataField="p1" HeaderText="1er MES" SortExpression="p1" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#B9CAEE" />
                     </asp:BoundField>
                     <asp:BoundField DataField="p2" HeaderText="2do MES" SortExpression="p2" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#B9CAEE" />
                     </asp:BoundField>
                     <asp:BoundField DataField="p3" HeaderText="3er MES" SortExpression="p3" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#B9CAEE" />
                     </asp:BoundField>
                     <asp:BoundField DataField="p4" HeaderText="4to MES" SortExpression="p4" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#B9CAEE" />
                     </asp:BoundField>
                     <asp:BoundField DataField="p5" HeaderText="5to MES" SortExpression="p5" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#B9CAEE" />
                     </asp:BoundField>
                     <asp:BoundField DataField="p6" HeaderText="6to MES" SortExpression="p6" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#B9CAEE" />
                     </asp:BoundField>
                     <asp:BoundField DataField="poblacion" HeaderText="N" SortExpression="poblacion" />
                     <asp:BoundField DataField="RemPromedio" HeaderText="REM PROMEDIO" SortExpression="RemPromedio" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="asigFamiliar" HeaderText="ASIG FAM" SortExpression="asigFamiliar" DataFormatString="{0:#,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="SextoGratificacion" HeaderText="1/6 GRATIF" SortExpression="SextoGratificacion" DataFormatString="{0:#,0.00}" >
                     <ItemStyle ForeColor="#CC0000" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="REMBRUTA" HeaderText="REM BRUTA" ReadOnly="True" SortExpression="REMBRUTA" />
                     <asp:BoundField DataField="RemNeta" HeaderText="REM NETA" SortExpression="RemNeta" DataFormatString="{0:#,0.00}" >
                     <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="importeBase" HeaderText="importeBase" SortExpression="importeBase" Visible="False" />
                     <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                     <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                      <asp:ImageField DataImageUrlField="cese" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ACTIVO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                 </Columns>
                 <EmptyDataTemplate>
                     No registra CTS.
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#E4E4E4" />
             </asp:GridView>
             *
             <asp:Label ID="lblitems" runat="server"></asp:Label>
             &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/AYUDA.jpg" OnClick="ImageButton1_Click" Width="20px" />
             &nbsp;<strong><asp:ImageButton ID="iBtnExcel" runat="server" ImageUrl="~/images/excel.png" OnClick="iBtnExcel_Click" Visible="False" Width="20px" />
             &nbsp;</strong>&nbsp;&nbsp;
             <asp:LinkButton ID="REGISTRAR" runat="server" OnClick="REGISTRAR_Click">CALCULAR</asp:LinkButton>
             &nbsp;&nbsp;&nbsp;
             <asp:LinkButton ID="lbtnmodificar" runat="server" OnClick="lbtnmodificar_Click" Visible="False">MODIFICAR</asp:LinkButton>
             &nbsp; &nbsp;
             <asp:LinkButton ID="lbtnEliminar" runat="server" OnClick="lbtnEliminar_Click" Visible="False">ELIMINAR</asp:LinkButton>
             &nbsp; <asp:SqlDataSource ID="SqlDataSourcePlanillacts" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.CTSPlanillaListar" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblPeriodo" Name="periodo" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </asp:Panel>
         <br />
         <asp:Panel ID="pEliminar" runat="server" ForeColor="#CC0000" Visible="False">
             * Eliminar CTS, código
             <asp:Label ID="lblcodeliminar" runat="server"></asp:Label>
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" Text="ELIMINAR" OnClick="Button1_Click" />
             <asp:Button ID="Button2" runat="server" ForeColor="#333333" OnClick="Button2_Click" Text="CERRAR" />
         </asp:Panel>
         <asp:Panel ID="payudin" runat="server" Visible="False">
             <span class="auto-style8"><strong>DETALLE PERIODOS:</strong></span><table class="auto-style1">
                 <tr>
                     <td class="auto-style7">CTS</td>
                     <td class="auto-style6">1er MES</td>
                     <td class="auto-style6">2do MES</td>
                     <td class="auto-style6">3er MES</td>
                     <td class="auto-style6">4to MES</td>
                     <td class="auto-style6">5to MES</td>
                     <td class="auto-style6">6to MES</td>
                 </tr>
                 <tr>
                     <td class="auto-style5">PRIMER</td>
                     <td>NOVIEMBRE</td>
                     <td>DICIMEBRE</td>
                     <td>ENERO</td>
                     <td>FEBRERO</td>
                     <td>MARZO</td>
                     <td>ABRIL</td>
                 </tr>
                 <tr>
                     <td class="auto-style5">SEGUNDO</td>
                     <td>MAYO</td>
                     <td>JUNIO</td>
                     <td>JULIO</td>
                     <td>AGOSTO</td>
                     <td>SETIEMBRE</td>
                     <td>OCTUBRE</td>
                 </tr>
             </table>
         </asp:Panel>
         <asp:Panel ID="Panel1" runat="server" Visible="False">
             <strong>GENERAR CALCULO PLANILLA CTS: </strong>
             <asp:Label ID="lblcodactualizacionTT" runat="server"></asp:Label>
             <asp:Label ID="lblcodactualizacion" runat="server" Visible="False"></asp:Label>
             <asp:Label ID="lblidpersonalActualizar" runat="server" Visible="False"></asp:Label>
             <table class="auto-style4">
                 <tr>
                     <td>PERSONAL:</td>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcePersonal" DataTextField="NOMBRES" DataValueField="idUsuario" Width="500px">
                         </asp:DropDownList>
                     </td>
                     <td>
                         <asp:Button ID="btngenerar" runat="server" OnClick="btngenerar_Click" Text="MOSTRAR IMPORTES DEL PERIODO" Width="350px" />
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
             <table class="auto-style2">
                 <tr>
                     <td class="auto-style3" colspan="2">
                         <asp:TextBox ID="txtimpBase" runat="server" step="0.0001" type="number"></asp:TextBox>
                         <br />
                         REMUNERACIÓN BASE:</td>
                     <td class="auto-style3" colspan="2">
                         <asp:TextBox ID="txtgratiSexto" runat="server" BackColor="#FFD7D7" step="0.0001" type="number" Width="120px"></asp:TextBox>
                         <br />
                         Gratificación: (1/6)</td>
                     <td class="auto-style3">
                         &nbsp;</td>
                     <td class="auto-style3">
                         &nbsp;</td>
                     <td class="auto-style3">
                         &nbsp;</td>
                     <td class="auto-style3">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3" colspan="2">&nbsp;</td>
                     <td class="auto-style3" colspan="2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox1" runat="server" step="0.0001" type="number" Width="100px"></asp:TextBox>
                         <br />
                         <asp:Label ID="Label1" runat="server">1er PERIODO</asp:Label>
                         <asp:Label ID="lblid1" runat="server" Visible="False"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox2" runat="server" step="0.0001" type="number" Width="100px"></asp:TextBox>
                         <br />
                         <asp:Label ID="Label2" runat="server">2do PERIODO</asp:Label>
                         <asp:Label ID="lblid2" runat="server" Visible="False"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox3" runat="server" step="0.0001" type="number" Width="100px"></asp:TextBox>
                         <br />
                         <asp:Label ID="Label3" runat="server">3er PERIODO</asp:Label>
                         <asp:Label ID="lblid3" runat="server" Visible="False"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox4" runat="server" step="0.0001" type="number" Width="100px"></asp:TextBox>
                         <br />
                         <asp:Label ID="Label4" runat="server">4to PERIODO</asp:Label>
                         <asp:Label ID="lblid4" runat="server" Visible="False"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox5" runat="server" step="0.0001" type="number" Width="100px"></asp:TextBox>
                         <br />
                         <asp:Label ID="Label5" runat="server">5to PERIODO</asp:Label>
                         <asp:Label ID="lblid5" runat="server" Visible="False"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox6" runat="server" step="0.0001" type="number" Width="100px"></asp:TextBox>
                         <br />
                         <asp:Label ID="Label6" runat="server">6to PERIODO</asp:Label>
                         <asp:Label ID="lblid6" runat="server" Visible="False"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <br />
                     </td>
                     <td class="auto-style3">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3">MES DE CALCULO:</td>
                     <td class="auto-style3" colspan="2">
                         <asp:DropDownList ID="ddlmes1" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcemes1" DataTextField="mes" DataValueField="idmes" Width="100%">
                         </asp:DropDownList>
                     </td>
                     <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A</td>
                     <td class="auto-style3" colspan="2">
                         <asp:DropDownList ID="ddlmes2" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcemes1" DataTextField="mes" DataValueField="idmes" Width="100%">
                         </asp:DropDownList>
                     </td>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3">BANCO CTS:</td>
                     <td class="auto-style3" colspan="2">
                         <asp:Label ID="lblidBancocts" runat="server" Visible="False"></asp:Label>
                         <asp:DropDownList ID="ddlbancocts" runat="server" DataSourceID="SqlDataSourceBanco" DataTextField="banco" DataValueField="id" Width="100%">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSourceBanco" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand=" select id,banco from tb_bancos"></asp:SqlDataSource>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="txtctscuenta" runat="server"></asp:TextBox>
                     </td>
                     <td class="auto-style3" colspan="2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3" colspan="6">
                         <asp:Button ID="btncalCTS" runat="server" CssClass="btn btn-success" OnClick="btncalCTS_Click" Text="GENERAR CTS" Width="400px" />
                         <asp:Button ID="btnmodificar" runat="server" CssClass="btn btn-danger" OnClick="btnmodificar_Click" Text="MODIFICAR CTS" Visible="False" Width="400px" />
                     </td>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Button ID="btncerrar2" runat="server" ForeColor="#CC0000" OnClick="btncerrar2_Click" Text="CERRAR" />
                     </td>
                     <td colspan="6">
                         <asp:Label ID="lblmnsajemodificar" runat="server" ForeColor="#CC0000"></asp:Label>
                         <asp:Label ID="lblnModificar" runat="server"></asp:Label>
                         <asp:SqlDataSource ID="SqlDataSourcemes1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cts_meses" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="lblPeriodo" Name="idgrupo" PropertyName="Text" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                     
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
         </asp:Panel>
        </div>
    
</asp:Content>
