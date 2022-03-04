<%@ Page Title="" Language="C#" MasterPageFile="~/jefatura/clientes.Master" AutoEventWireup="true" CodeBehind="AdministrarClientes.aspx.cs" Inherits="biotech.jefatura.AdministrarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 800px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: justify;
            height: 26px;
            }
        .auto-style7 {
            height: 26px;
        }
        .auto-style10 {
            text-align: justify;
            }
        .auto-style12 {
            text-align: right;
            height: 23px;
        }
        .auto-style14 {
            font-size: small;
        }
        .auto-style15 {
            color: #CC0000;
            font-size: small;
        }
        .auto-style16 {
            width: 429px;
        }
        .auto-style17 {
            width: 400px;
        }
        .auto-style23 {
            text-align: right;
            width: 186px;
        }
        .auto-style24 {
            color: #CC0000;
            font-size: small;
        }
        .auto-style25 {
            font-size: x-small;
        }
        .auto-style26 {
            text-align: left;
            font-weight: bold;
        }
        .auto-style27 {
            text-align: left;
            height: 26px;
            font-weight: bold;
        }
        .auto-style28 {
            width: 629px;
        }
        .auto-style29 {
            width: 226px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        <asp:Button ID="Button9" runat="server" Height="40px" Text="REGISTRO DE CLIENTES" OnClick="Button9_Click" />
&nbsp;
        <asp:Button ID="Button8" runat="server" Height="40px" Text="CLIENTES DATOS POR COMPLETAR" OnClick="Button8_Click" />
    </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="Panelprincipal1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server">
            <asp:Panel ID="Panelprincipal" runat="server">
                
                <asp:Panel ID="Panelclientesregistrados" runat="server">
                    <div>
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <h2>CLIENTES REGISTRADOS:</h2>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <asp:GridView ID="GridViewfichasCliente" DataKeyNames="RUC" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="font-size: small">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png">
                            <ControlStyle Height="20px" Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO">
                            </asp:BoundField>
                            <asp:BoundField DataField="MONTO" HeaderText="MONTO" ReadOnly="True" SortExpression="MONTO" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="WhiteSmoke" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaXaprobr" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel ID="PanelCLIENTEAAPROB" runat="server">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style26">RUC:</td>
                        <td>
                            <div>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtruc1" runat="server" ReadOnly="True" Width="400px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style29">
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/boton-pdf.png" OnClick="ImageButton1_Click" Width="110px" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">Razón social:</td>
                        <td>
                            <asp:TextBox ID="txtrazonsocial1" runat="server"   Width="100%" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">Condición credito:</td>
                        <td>
                            <asp:TextBox ID="txtcondicion1" runat="server" Width="200px" ReadOnly="True" ></asp:TextBox>
                            &nbsp;&nbsp; Asesor comercial:
                            <asp:TextBox ID="txtrtc1" runat="server" Width="80px" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">Credito propuesto:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtcreditopropuesto1" runat="server" Width="100%" ReadOnly="True"  ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="2"><strong>
                            <div>
                                <table class="auto-style1">
                                    <tr>
                                        <td colspan="2">Cultivos registrados:<asp:GridView ID="gvDetallefichaCliente" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" DataKeyNames="COD" DataSourceID="SqlDataSource6" Width="100%">
                                            <Columns>
                                                <asp:BoundField DataField="COD" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="COD" />
                                                <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                                                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                                                <asp:BoundField DataField="ZONAPRODUCCION" HeaderText="ZONA PROD" SortExpression="ZONAPRODUCCION" />
                                                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                                                <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA">
                                                <ItemStyle HorizontalAlign="Right" />
                                                </asp:BoundField>
                                            </Columns>
                                            <HeaderStyle BackColor="#333333" ForeColor="White" />
                                            <RowStyle BackColor="WhiteSmoke" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaCultivosXruc" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="GridViewfichasCliente" Name="ruc" PropertyName="SelectedValue" Type="String" />
                                                    <asp:ControlParameter ControlID="txtrtc1" Name="rtc" PropertyName="Text" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Observación Asesor Comercial:</strong></td>
                                        <td style="text-align: right">&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="lblObserRTC" runat="server" style="text-align: justify"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2"><strong style="text-align: left">
                            <div>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style28"><strong style="text-align: left">CRÉDITOS Y COBRANZAS:</strong></td>
                                        <td><strong style="text-align: right">
                                            <asp:Label ID="lblfechacreditosycobranzas" runat="server"></asp:Label>
                                            </strong></td>
                                    </tr>
                                </table>
                            </div>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">
                            <asp:Label ID="lblObserCreditos" runat="server" style="text-align: justify"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12" colspan="2">
                            <br />
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style10">Tipo de linea:</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="40px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal" Width="400px">
                                <asp:ListItem Value="10">LETRA</asp:ListItem>
                                <asp:ListItem Value="30">FACTURA</asp:ListItem>
                                <asp:ListItem Value="50">CONTADO</asp:ListItem>
                            </asp:RadioButtonList>
                         </td>
                    </tr>

                    <asp:Panel ID="PanelopLetra" runat="server"></asp:Panel>
                    <tr>
                        <td class="auto-style10">IMPORTE LINEA:</td>
                        <td>
                            <asp:TextBox ID="txtmontoLf"  type="number" step="0.01" runat="server" placeholder="Monto"></asp:TextBox>
                            &nbsp;dias:
                            <asp:DropDownList ID="ddlletrasFactdias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlletrasFactdias_SelectedIndexChanged" Width="60px">
                                <asp:ListItem Selected="True">0</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>120</asp:ListItem>
                                <asp:ListItem>150</asp:ListItem>
                                <asp:ListItem>180</asp:ListItem>
                                <asp:ListItem>Otros</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtdiasLetraFact"  type="number"  runat="server" Width="50px">0</asp:TextBox>
                        </td>
                    </tr>
                    

                    <asp:Panel ID="Panelopfactura" runat="server"> </asp:Panel>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
                     

                    <tr>
                        <td class="auto-style10">Observación:</td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtobservación" runat="server" TextMode="MultiLine" Width="100%" Style="text-transform: uppercase" placeholder="Observación"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:Button ID="Button2" runat="server" Text="APROBAR CREDITO" Height="40px" BackColor="#98B65C" BorderStyle="None" OnClick="Button2_Click" Width="190px" />
                            <asp:Button ID="Button3" runat="server" Text="CREDITO OBSERVADO" Height="40px" BackColor="Gray" BorderStyle="None" OnClick="Button3_Click" Width="190px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Retornar</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblmensaje" runat="server" style="color: #990000"></asp:Label>
                <br />
            </asp:Panel>
            <asp:Panel ID="PanelclientesAprob" runat="server">
                <h3>Clientes Aprobados:</h3>
                <asp:Panel ID="Panelapro1" runat="server">
                    <asp:GridView ID="GridView3" runat="server" DataKeyNames="RUC" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="font-size: small">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                            <ControlStyle Height="20px" Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" />
                            <asp:BoundField DataField="FACTURACION" HeaderText="IMP. FACT" SortExpression="FACTURACION" DataFormatString="{0:0,0.00}">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIASF" HeaderText="DIAS F." SortExpression="DIASF">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LETRA" HeaderText="IMP. LETRA" SortExpression="LETRA" DataFormatString="{0:0,0.00}">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIASL" HeaderText="DIAS L." SortExpression="DIASL">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="WhiteSmoke" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaAprobr" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panelapro2" runat="server">

                    <table class="auto-style4">
                    <tr>
                        <td class="auto-style23"><strong>Cliente:</strong></td>
                        <td>
                            <asp:Label ID="lblruc1" runat="server"></asp:Label>
                            /<asp:Label ID="lblcliente1" runat="server"></asp:Label>
                        </td>
                    </tr>
                        <tr>
                            <td class="auto-style23"><strong>Linea Propuesta:</strong></td>
                            <td>
                                <asp:Label ID="lcllineadredpropu" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"><strong>Descargar ficha:<br /> </strong></td>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/boton-pdf.png" OnClick="ImageButton2_Click" Width="100px" />
                                <br />
                             </td>
                        </tr>

                        <tr>
                            <td class="auto-style23"><strong>ESTADO</strong></td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">APROBADO</asp:ListItem>
                                    <asp:ListItem Value="55">OBSERVADO</asp:ListItem>
                                    <asp:ListItem Value="0">POR APROBAR</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                         
                        <tr>
                            <td class="auto-style23"><strong>LINEA FACTURA:</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox1" type="number" step="0.01" runat="server" Font-Overline="False"></asp:TextBox>
                                &nbsp; dias:
                                <asp:TextBox ID="txtfactdias1" runat="server" type="number" Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"><strong>LINEA LETRA:</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox2" type="number" step="0.01" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;dias:
                                <asp:TextBox ID="txtletrasdias1" runat="server" type="number" Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"><strong>Observación:<br />
                                <br />
                                <br />
                                </strong></td>
                            <td>
                                <asp:TextBox ID="txtobserjef1" runat="server" TextMode="MultiLine" Width="100%" Height="70px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td>
                                <asp:GridView ID="GridViewExtraordi" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridViewExtraordi_RowCommand" OnSelectedIndexChanged="GridViewExtraordi_SelectedIndexChanged" CssClass="auto-style25">
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="COD." ReadOnly="True" SortExpression="ID" />
                                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                                        <asp:BoundField DataField="R1" HeaderText="MONTO MAYOR A" SortExpression="R1" >
                                        <ItemStyle HorizontalAlign="Right" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="R2" HeaderText="R2" SortExpression="R2" Visible="False" />
                                        <asp:BoundField DataField="TPLINEA" HeaderText="TPLINEA" ReadOnly="True" SortExpression="TPLINEA" />
                                        <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" Visible="False" />
                                        <asp:BoundField DataField="DIS" HeaderText="DIAS" SortExpression="DIS" />
                                        <asp:BoundField DataField="CONCEPTO" HeaderText="CONCEPTO" SortExpression="CONCEPTO" />
                                         <asp:ButtonField CommandName="elimina" ShowHeader="True" Text="Eliminar" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >
                                         <ControlStyle Height="20px" Width="20px" />
                                        </asp:ButtonField>
                                         <asp:ButtonField CommandName="edita" ShowHeader="True" Text="Mofidicar" ButtonType="Image" ImageUrl="~/images/editar2.jpg" >

                                        <ControlStyle Height="20px" Width="20px" />
                                        </asp:ButtonField>

                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_FichaclienteExtraordi" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblruc1" Name="idruc" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Negociación</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Cancelar negociación</asp:LinkButton>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td>
                                <asp:Panel ID="PanelNegociacionespecifica" runat="server">
                                    <strong>Negociación específica: </strong>
                                    Cod:<asp:Label ID="lblidextraordinario" runat="server"></asp:Label>
                                    <table class="auto-style17">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtrango1" runat="server" placeholder="Monto" step="0.01" type="number" Width="80px"></asp:TextBox>
                                                <br />
                                                Rango mayor de</td>
                                            <td>
                                                <br />
                                                </td>
                                            <td>
                                                <asp:DropDownList ID="ddltipolinea" runat="server" Width="150px">
                                                    <asp:ListItem Selected="True" Value="10">Letra</asp:ListItem>
                                                    <asp:ListItem Value="30">Factura</asp:ListItem>
                                                </asp:DropDownList>
                                                <br />
                                                Tipo Linea</td>
                                            <td>
                                                <asp:TextBox ID="txtdiasespecifico" runat="server" type="number" Width="70px"></asp:TextBox>
                                                <br />
                                                Dias</td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">Por concepto de:<br />
                                                <asp:TextBox ID="txtconceptoexpecifico" runat="server" placeholder="Indicar negociación específica..." TextMode="MultiLine" Width="410px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Registrar Negociación" />
                                                <asp:Button ID="Buttonactuextra" runat="server" OnClick="Buttonactuextra_Click" Text="Actualizar Negociación" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <asp:Label ID="lblmensaje2" runat="server" CssClass="auto-style24"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        
                        </table>




                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Button ID="Button5" runat="server" BackColor="#98B65C" Height="40px" OnClick="Button5_Click" Text="Actualizar Registro" Width="250px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                &nbsp;</td>
                            <td class="auto-style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Label ID="lblmensaje22" runat="server" CssClass="auto-style15"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Retornar</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                <asp:Label ID="lblcod" runat="server"></asp:Label>
                &nbsp;
                <asp:Label ID="lblruc" runat="server"></asp:Label>
                <asp:Label ID="lblrtc" runat="server"></asp:Label>
                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                        <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA" />
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" />
                        <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaclienteCultivos" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblruc" Name="cliente" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtrtc1" Name="rtc" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:GridView ID="gvinforme22" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="gvinforme2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                        <asp:BoundField DataField="HECTAREA" HeaderText="HECT" SortExpression="HECTAREA">
                        </asp:BoundField>
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                        <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" ReadOnly="True" />
                        <asp:BoundField DataField="OBSERV" HeaderText="OBSERV" SortExpression="OBSERV" Visible="False" />
                        <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" Visible="False">
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaclienteCultivosAproObs" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView3" Name="cliente" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <br />
        </asp:Panel>
        <br />
    </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="PanelPrincipal2" runat="server">
        <h2>Clientes por completar datos:</h2>
        <asp:GridView ID="GridViewdatosincompletos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idRuc" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idRuc" HeaderText="RUC" ReadOnly="True" SortExpression="idRuc" />
                <asp:BoundField DataField="RazonSocial" HeaderText="RAZON SOCIAL" SortExpression="RazonSocial" />
                <asp:BoundField DataField="Regpor" HeaderText="RTC" SortExpression="Regpor"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idRuc], [RazonSocial], [Regpor] FROM [tb_FichaCliente] WHERE ([Estado] = @Estado) ORDER BY [Regpor]">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="Estado" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
