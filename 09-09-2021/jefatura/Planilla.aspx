<%@ Page Title="" Language="C#" MasterPageFile="~/jefatura/clientes.Master" AutoEventWireup="true" CodeBehind="Planilla.aspx.cs" Inherits="biotech.jefatura.Planilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        * {
margin:0;
padding:0;
}

     
.container{

 background-color:#E3EAEB;
/*background-color:#FF000A;*/
}

.colorBlanco {
           background-color: #fff;
            text-align: center;
        }

        .auto-style2 {
            font-size: x-small;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style6 {
            height: 30px;
            width: 56px;
        }
        .auto-style9 {
            height: 30px;
            font-weight: bold;
            text-align: right;
            width: 53px;
        }
        .auto-style10 {
            text-align: right;
            width: 53px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            text-align: center;
            height: 22px;
        }
        .auto-style26 {
            text-align: right;
            height: 22px;
        }
        .auto-style27 {
            text-align: right;
            height: 22px;
        }
        .auto-style28 {
            text-align: right;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style30 {
            text-align: right;
        }
        .auto-style31 {
            text-align: right;
        }
        .auto-style35 {
            width: 98px;
        }
        .auto-style37 {
            text-align: right;
            width: 98px;
        }
        .auto-style38 {
            width: 56px;
        }
        .auto-style40 {
            text-align: center;
            width: 56px;
        }
        .auto-style41 {
            width: 61px;
            text-align: center;
        }
        .auto-style45 {
            font-size: x-small;
            height: 120px;
        }
        .auto-style47 {
            height: 69px;
        }
        .auto-style49 {
            width: 416px;
        }
        .auto-style51 {
            font-size: x-small;
            width: 660px;
        }
        .auto-style52 {
            text-align: right;
            width: 50px;
        }
        .auto-style53 {
            height: 30px;
            font-weight: bold;
            text-align: right;
            width: 50px;
        }
        .auto-style56 {
            width: 233px;
        }
        .auto-style57 {
            width: 234px;
        }
        .auto-style59 {
            height: 36px;
        }
        .auto-style64 {
            height: 69px;
            width: 224px;
            text-align: right;
        }
        .auto-style65 {
            height: 36px;
            width: 224px;
        }
        .auto-style74 {
            height: 14px;
            width: 175px;
        }
        .auto-style75 {
            width: 84px;
            height: 30px;
            text-align: center;
        }
        .auto-style77 {
            background-color: #fff;
            height: 14px;
            width: 84px;
        }
        .auto-style79 {
            width: 23%;
            color: #006666;
            height: 30px;
            text-align: center;
        }
        .auto-style80 {
            width: 24%;
            color: #CC6600;
            height: 30px;
            text-align: center;
        }
        .auto-style87 {
            background-color: #fff;
            height: 14px;
            width: 10%;
        }
        .auto-style88 {
            text-align: center;
        }
        .auto-style89 {
            text-align: center;
        }
        .auto-style90 {
            text-align: center;
        }
        .auto-style91 {
            text-align: center;
        }
        .auto-style92 {
            text-align: center;
        }
        .auto-style93 {
            color: #CC6600;
        }
        .auto-style94 {
            color: #CC6600;
        }
        .auto-style95 {
            color: #006666;
        }
        .auto-style96 {
            color: #006666;
        }
        .auto-style97 {
            color: #006666;
        }
        .auto-style98 {
            color: #006666;
        }
        .auto-style186 {
            text-align: right;
            width: 175px;
        }
        .auto-style189 {
            text-align: right;
            height: 30px;
            width: 175px;
        }
        .auto-style191 {
            text-align: right;
            height: 28px;
            width: 175px;
        }
       
        .auto-style197 {
            width: 103px;
            text-align: center;
        }
        .auto-style198 {}
        .auto-style201 {
            background-color: #fff;
            width: 23%;
            text-align: center;
        }
        .auto-style204 {
            text-align: center;
        }
        .auto-style205 {
            background-color: #fff;
            width: 24%;
            text-align: center;
        }
        .auto-style192 {
            width: 416px;
        }
        .auto-style206 {
            width: 500px;
        }
        .auto-style211 {
            width: 558px;
        }
        .auto-style212 {
            text-align: center;
            height: 28px;
        }
        .auto-style213 {
            text-align: center;
        }
        .auto-style215 {
            height: 16px;
        }
        .auto-style216 {
            text-align: right;
            height: 16px;
            width: 175px;
        }
        .auto-style217 {
            width: 10%;
            height: 16px;
            text-align: center;
        }
        .auto-style218 {
            width: 84px;
            height: 16px;
            text-align: center;
        }
        .auto-style219 {
            height: 28px;
            width: 10%;
            text-align: center;
        }
        .auto-style220 {
            height: 28px;
            width: 84px;
            text-align: center;
        }
        .auto-style221 {
            text-align: right;
        }
        .auto-style222 {
            text-align: right;
        }
        .auto-style224 {
            height: 69px;
            width: 1px;
        }
        .auto-style225 {
            height: 36px;
            width: 1px;
        }
        .auto-style227 {
            text-align: center;
            height: 14px;
        }
        .auto-style228 {
            background-color: #fff;
            width: 23%;
            text-align: center;
            height: 14px;
        }
        .auto-style229 {
            background-color: #fff;
            width: 24%;
            text-align: center;
            height: 14px;
        }
        .auto-style230 {
            width: 103px;
            text-align: center;
            height: 14px;
        }
        .auto-style231 {
            font-weight: 700;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <CENTER>
<H1>
        PLANILLA DE REMUNERACIONES&nbsp;
        2018 -
        <asp:Label ID="lblmes" runat="server"></asp:Label>
&nbsp;
        <asp:Label ID="lblempresa" runat="server" Text="1" Visible="False"></asp:Label>
                    <asp:Label ID="lblperiodo" runat="server" Visible="False"></asp:Label>
    </H1>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style51">
            <tr>
                <td class="auto-style49">
                    <table class="auto-style2" align="center">
                        <tr>
                            <td class="auto-style35">&nbsp;</td>
                            <td class="auto-style38" style="text-align: center"><b>SNP/ONP</b></td>
                            <td class="auto-style38" style="text-align: center"><b>PRIMA</b></td>
                            <td class="auto-style41"><b style="text-align: center">HABITAT</b></td>
                            <td class="auto-style38" style="text-align: center"><b style="text-align: center">INTEGRA</b></td>
                            <td style="text-align: center"><b>PROFUTURO</b></td>
                        </tr>
                        <tr>
                            <td class="auto-style37">Aporte Obligatorio</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtonp" runat="server" Width="40px" CssClass="auto-style24">13</asp:TextBox>
                                %</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtprima1" runat="server" Width="40px" CssClass="auto-style21">15.00</asp:TextBox>
                                %</td>
                            <td class="auto-style41">
                                <asp:TextBox ID="txthorizonte1" runat="server" Width="40px" CssClass="auto-style18">16</asp:TextBox>
                                %</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtintegra1" runat="server" Width="40px" CssClass="auto-style15">17</asp:TextBox>
                                %</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtprofuturo1" runat="server" Width="40px" CssClass="auto-style13">18</asp:TextBox>
                                %</td>
                        </tr>
                        <tr>
                            <td class="auto-style37">Comisión % sobre R.A.</td>
                            <td class="auto-style40">&nbsp;</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtprima2" runat="server" Width="40px" CssClass="auto-style22">2.00</asp:TextBox>
                                %</td>
                            <td class="auto-style41">
                                <asp:TextBox ID="txthorizonte2" runat="server" Width="40px" CssClass="auto-style19">2</asp:TextBox>
                                %</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtintegra2" runat="server" Width="40px" CssClass="auto-style16">2</asp:TextBox>
                                %</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtprofuturo2" runat="server" Width="40px" CssClass="auto-style14">2</asp:TextBox>
                                %</td>
                        </tr>
                        <tr>
                            <td class="auto-style37">Prima Seguro</td>
                            <td class="auto-style40">&nbsp;</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtprim3" runat="server" Width="40px" CssClass="auto-style23">3</asp:TextBox>
                                %</td>
                            <td class="auto-style41">
                                <asp:TextBox ID="txthorizonte3" runat="server" Width="40px" CssClass="auto-style20">3</asp:TextBox>
                                %</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="txtintegra3" runat="server" Width="40px" CssClass="auto-style17">3</asp:TextBox>
                                %</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtprofuturo3" runat="server" Width="40px" CssClass="auto-style12">3</asp:TextBox>
                                %</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style57">
                    <table class="auto-style56">
                        <tr>
                            <td class="auto-style10"><b>RMV:</b></td>
                            <td class="auto-style38">
                                <asp:TextBox ID="txtrmv" runat="server" Width="40px" CssClass="auto-style30">750</asp:TextBox>
                            </td>
                            <td class="auto-style52"><b>ESSALUD:</b></td>
                            <td class="auto-style38">
                                <asp:TextBox ID="txtessalud" runat="server" Width="40px" CssClass="auto-style28">9</asp:TextBox>
                                %</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">A. Familiar:</td>
                            <td class="auto-style6">
                                <asp:TextBox ID="txtfamiliar" runat="server" Width="40px" CssClass="auto-style31">10</asp:TextBox>
                                %</td>
                            <td class="auto-style53">SCTR:</td>
                            <td class="auto-style6">
                                <asp:TextBox ID="txtsctr" runat="server" Width="40px" CssClass="auto-style29">1.25</asp:TextBox>
                                %</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style57">
                    <asp:Label ID="lblafp1" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblafp2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblafp3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblaporteSalud" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblaporteSCTR" runat="server" Visible="False"></asp:Label>
                    &nbsp;</td>
            </tr>
        </table>
        <hr />
       </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style45">
            <tr>
                <td class="auto-style224">
                    <asp:DropDownList ID="ddlbGrupo" runat="server" AutoPostBack="True" Width="150px" OnSelectedIndexChanged="ddlbGrupo_SelectedIndexChanged">
                        <asp:ListItem Value="A">CATEGORIA A</asp:ListItem>
                        <asp:ListItem Value="B">CATEGORIA B</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Tipo de personal</td>
                <td class="auto-style47" colspan="3">
                    <asp:DropDownList ID="ddlbpersonal" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="personal" DataValueField="codTrabajador" OnSelectedIndexChanged="ddlbpersonal_SelectedIndexChanged" Width="300px">
                    </asp:DropDownList>
                    <br />
                    Personal:<asp:Label ID="lblId" runat="server" Visible="False"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [codTrabajador], concat([apellidos],', ', [nombres]) personal FROM [tb_PlanillaTrabajadores] WHERE GRUPO =@grupo">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbGrupo" Name="grupo" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                <td class="auto-style64">
                    <asp:Label ID="lblcodTrabajador" runat="server"></asp:Label>
                    <br />
                    Sueldo Base:<asp:LinkButton ID="LinkButtonBase" runat="server" OnClick="LinkButtonBase_Click"></asp:LinkButton>
                    <br />
                    Sueldo x Cumplimiento:<asp:LinkButton ID="LinkButtonporCumplimiento" runat="server" OnClick="LinkButtonporCumplimiento_Click"></asp:LinkButton>
                    <br />
                    Por nivelar:<asp:Label ID="lblporNivelar" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style225">
                    <asp:TextBox ID="txtSueldoCumplimiento" runat="server" CssClass="auto-style27" Width="75px"></asp:TextBox>
                    <br />
                    Por Cumplimiento:</td>
                <td class="auto-style59">
                    <asp:TextBox ID="txtsueldobase" runat="server" CssClass="auto-style27" Width="75px"></asp:TextBox>
                    <br />
                    Sueldo Base:</td>
                <td class="auto-style59">
                    <asp:TextBox ID="txtdiasnolaborados" runat="server" CssClass="auto-style25" Width="75px">0</asp:TextBox>
                    <br />
                    Faltas:</td>
                <td class="auto-style59">
                    <asp:TextBox ID="txtcomision" runat="server" CssClass="auto-style26" Width="75px">0</asp:TextBox>
                    <br />
                    Comisión:</td>
                <td class="auto-style65">
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="REGISTRAR" />
                </td>
            </tr>

            
           <%--</asp:Panel>--%>
            <%--<tr>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>--%>
            <asp:Panel ID="PanelSUBREG" runat="server">
            <tr>
                <td class="auto-style59"></td>
                <td class="auto-style59">
                    <asp:TextBox ID="txthijos" runat="server" Enabled="False" OnTextChanged="txthijos_TextChanged" Width="75px"></asp:TextBox>
                    <br />
                    Hijos
                    <asp:Label ID="lblhijos" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style59">
                    <asp:TextBox ID="txtonpp" runat="server" Enabled="False" Width="75px"></asp:TextBox>
                    <br />
                    ANP / ONP<asp:Label ID="lblonpp" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style59">
                    <asp:TextBox ID="txtafp" runat="server" Enabled="False" Width="75px"></asp:TextBox>
                    <br />
                    AFP
                    <asp:Label ID="lblafp" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style59"></td>
            </tr>
                </asp:Panel>
        </table>
        <br />
        <%--<div id="container">
        <div id="columna_izq">--%>

        <asp:Panel ID="Panel3" runat="server" CssClass="container"  Width="100%">
            <table class="container">
                <tr>
                    <td class="auto-style206" >
                        <asp:Panel ID="PanelVenta" runat="server" CssClass="auto-style198" Width="429px">
                            <table class="auto-style192">
                                <tr>
                                    <td class="auto-style204" colspan="4"><H3>TABLA DE VENTAS</H3></td>
                                </tr>
                                <tr>
                                    <td class="auto-style204">&nbsp;</td>
                                    <td class="auto-style79"><strong>NUTRICIONAL</strong></td>
                                    <td class="auto-style80"><strong>QUIMICOS</strong></td>
                                    <td class="auto-style197">TOTAL</td>
                                </tr>
                                <tr>
                                    <td class="auto-style227">IMPORT. META</td>
                                    <td class="auto-style228">
                                        <asp:Label ID="lblimporteMetaNutri" runat="server">0</asp:Label>
                                    </td>
                                    <td class="auto-style229">
                                        <asp:Label ID="lblimporteMetaQui" runat="server">0</asp:Label>
                                    </td>
                                    <td class="auto-style230">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style204">IMPORT. VENTA</td>
                                    <td class="auto-style201">
                                        <asp:Label ID="lblimpnutri" runat="server" style="font-weight: 700">0</asp:Label>
                                    </td>
                                    <td class="auto-style205">
                                        <asp:Label ID="lblimpQui" runat="server" style="font-weight: 700">0</asp:Label>
                                    </td>
                                    <td class="auto-style197">
                                        <asp:Label ID="lblimpott" runat="server" style="font-weight: 700">0</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style204">IMPORT. DIFERENCIA</td>
                                    <td class="auto-style201">
                                        <asp:Label ID="lbldifenciaNutri" runat="server" CssClass="auto-style95">0</asp:Label>
                                    </td>
                                    <td class="auto-style205">
                                        <asp:Label ID="lbldirefenciaQuim" runat="server" CssClass="auto-style93">0</asp:Label>
                                    </td>
                                    <td class="auto-style197">
                                        <asp:Label ID="lblopCumplimiento" runat="server" CssClass="auto-style231" Text="SIN BONO"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </asp:Panel>
                    </td>
                    <td>
                        <asp:Panel ID="Panelrentabilidad" runat="server">
                            <table class="auto-style211">
                                <tr>
                                    <td class="auto-style189">
                                        &nbsp;</td>
                                    <td class="auto-style213" colspan="3" >
                                        <h3> TABLA DE BONIFICACIÓN </h3></td>
                                    <td class="auto-style75">
                                        &nbsp;</td>
                                    <td class="auto-style75">&nbsp;</td>
                                    <td class="auto-style75">&nbsp;</td>
                                    <td class="auto-style75">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style216">
                                        <asp:Label ID="lblsum" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style215">
                                        <strong>RENTAB</strong>.:<asp:Image ID="Image2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/3.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style217">
                                        <strong>RENTAB</strong>.:<asp:Image ID="Image3" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/2.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style217">
                                        <strong>RENTAB</strong>.:<asp:Image ID="Image4" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/1.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style218">
                                        <strong>RENTAB</strong>.:
                                        <asp:Image ID="Image5" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/0.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style218"></td>
                                    <td class="auto-style221">
                                        <asp:Image ID="Image9" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/3.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style221">
                                        <asp:Label ID="lblrent3" runat="server"></asp:Label>
                                        %</td>
                                </tr>
                                <tr>
                                    <td class="auto-style191">Ventas %</td>
                                    <td class="auto-style212">
                                        <asp:Label ID="lblmontoAcumR3" runat="server" CssClass="auto-style96" Text="0"></asp:Label>
                                    </td>
                                    <td class="auto-style219">
                                        <asp:Label ID="lblmontoAcumR2" runat="server" CssClass="auto-style97" Text="0"></asp:Label>
                                    </td>
                                    <td class="auto-style219">
                                        <asp:Label ID="lblmontoAcumR1" runat="server" CssClass="auto-style98" Text="0"></asp:Label>
                                    </td>
                                    <td class="auto-style220">
                                        <asp:Label ID="lblmontoAcumR0" runat="server" CssClass="auto-style94" Text="0"></asp:Label>
                                    </td>
                                    <td class="auto-style220">&nbsp;</td>
                                    <td class="auto-style221">
                                        <asp:Image ID="Image8" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/2.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style221">
                                        <asp:Label ID="lblrent2" runat="server"></asp:Label>
                                        %</td>
                                </tr>
                                <tr>
                                    <td class="auto-style186">Import Bono:</td>
                                    <td>
                                        <asp:TextBox ID="lblvalrent3" runat="server" BorderStyle="None" CssClass="auto-style88" Width="80px">0</asp:TextBox>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="lblvalrent2" runat="server" BorderStyle="None" CssClass="auto-style89" Width="80px">0</asp:TextBox>
                                    </td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="lblvalrent1" runat="server" BorderStyle="None" CssClass="auto-style90" Width="80px">0</asp:TextBox>
                                    </td>
                                    <td class="auto-style77">
                                        <asp:TextBox ID="lblvalrent0" runat="server" BorderStyle="None" CssClass="auto-style91" Width="80px">0</asp:TextBox>
                                    </td>
                                    <td >&nbsp;</td>
                                    <td class="auto-style221" >
                                        <asp:Image ID="Image7" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/1.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style221" >
                                        <asp:Label ID="lblrent1" runat="server"></asp:Label>
                                        %</td>
                                </tr>
                                <tr>
                                    <td class="auto-style74"></td>
                                    <td >
                                        <asp:LinkButton ID="LinkButtonTTrem" runat="server" OnClick="LinkButtonTTrem_Click">Total Rentabilidad</asp:LinkButton>
                                    </td>
                                    <td class="colorBlanco" colspan="3">
                                        <asp:TextBox ID="lblValRentTT" runat="server" CssClass="auto-style92">0</asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style222">
                                        <asp:Image ID="Image6" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/0.jpg" Width="15px" />
                                    </td>
                                    <td class="auto-style221">
                                        <asp:Label ID="lblrent0" runat="server"></asp:Label>
                                        %</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>


        </asp:Panel>
       <%-- </div>
        </div> --%>


    </asp:Panel>
       
    <asp:Panel ID="PanelMax"  runat="server">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" BorderStyle="None" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound1">
            <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button3" Text="X" runat="server" OnClick="GridView_Button_Click" BackColor="Red" ForeColor="White" Width="30px" />
                </ItemTemplate>
                    <ControlStyle ForeColor="White" Height="15px" Width="15px" />
                    <ItemStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>

                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="Row" HeaderText="N°" ReadOnly="True" SortExpression="Row" />
                <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO" Visible="False" />
                <asp:BoundField DataField="TRABAJADOR" HeaderText="TRABAJADOR" ReadOnly="True" SortExpression="TRABAJADOR" />
                <asp:BoundField DataField="SUELDO" DataFormatString="{0:0,0.00}" HeaderText="SUELDO" SortExpression="SUELDO">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DNOLABORADOS" HeaderText="FALTAS" SortExpression="DNOLABORADOS">
                <ItemStyle ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="HIJOS" HeaderText="HIJOS" SortExpression="HIJOS">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SUELDOBASICO" DataFormatString="{0:0,0.00}" HeaderText="SUELDO BASICO" SortExpression="SUELDOBASICO">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#E0F3E1" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ASIGFAMILIAR" DataFormatString="{0:0,0.00}" HeaderText="ASIG. FAMILIAR" SortExpression="ASIGFAMILIAR">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#E0F3E1" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="BONOXCUMPLIMIENTO" DataFormatString="{0:0,0.00}" HeaderText="BONO" SortExpression="BONOXCUMPLIMIENTO">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#E0F3E1" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMISION" DataFormatString="{0:0,0.00}" HeaderText="COMISION" SortExpression="COMISION">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#E0F3E1" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TTREMBRUTA" DataFormatString="{0:0,0.00}" HeaderText="TOTAL REM. BRUTA" SortExpression="TTREMBRUTA">
                <HeaderStyle Width="70px" />
                <ItemStyle BackColor="#B3E1B5" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ONP" HeaderText="ONP" SortExpression="ONP">
                <HeaderStyle Width="40px" />
                <ItemStyle BackColor="#FFF5EC" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ONP1" SortExpression="ONP1">
                <ItemStyle BackColor="#FFF5EC" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="AFP" HeaderText="AFP" SortExpression="AFP">
                <ItemStyle BackColor="#FFF5EC" />
                </asp:BoundField>
                <asp:BoundField DataField="APOROBLIGATORIO" DataFormatString="{0:0,0.00}" HeaderText="APORTE OBLIGTR." SortExpression="APOROBLIGATORIO">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#FFF5EC" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMISIONRA" DataFormatString="{0:0,0.00}" HeaderText="COMISION R.A." SortExpression="COMISIONRA">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#FFF5EC" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PRIMASEG" DataFormatString="{0:0,0.00}" HeaderText="PRIMA SEGURO" SortExpression="PRIMASEG">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#FFF5EC" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TTDESCTO" DataFormatString="{0:0,0.00}" HeaderText="TOTAL DESCTO" SortExpression="TTDESCTO">
                <HeaderStyle Font-Bold="True" Width="70px" />
                <ItemStyle BackColor="#FFEFDF" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="REMUNNETA" DataFormatString="{0:0,0.00}" HeaderText="REMUN. NETA" SortExpression="REMUNNETA">
                <HeaderStyle Font-Bold="True" Width="70px" />
                <ItemStyle BackColor="#ABD8C1" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SALUD" DataFormatString="{0:0,0.00}" HeaderText="SALUD" SortExpression="SALUD">
                <ItemStyle BackColor="Azure" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SCTR" DataFormatString="{0:0,0.00}" HeaderText="SCTR" SortExpression="SCTR">
                <ItemStyle BackColor="Azure" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TOTALAPORTES" DataFormatString="{0:0,0.00}" HeaderText="TOTAL APORTES" SortExpression="TOTALAPORTES">
                <HeaderStyle Width="60px" />
                <ItemStyle BackColor="#EAFFFF" Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="#BCCDCF" />
            <RowStyle BorderStyle="None" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_PlanillaPagos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblperiodo" Name="peri" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
      
    </asp:Panel>
        </CENTER>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
