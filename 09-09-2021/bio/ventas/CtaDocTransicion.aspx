<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="CtaDocTransicion.aspx.cs" Inherits="biotech.bio.ventas.CtaDocTransicion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script src="../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" type="text/css" />
   
     <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> Por cobrar / DOC. TRANSICIÓN<asp:LinkButton ID="LinkButton2" runat="server" Visible="False"></asp:LinkButton>
                            <asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h2>
                            
                           <ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click1">Principal</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbletrasdescuento" runat="server" OnClick="lbletrasdescuento_Click"  >Letra Descuento</asp:LinkButton>
      </li>
                               <li>
      <asp:LinkButton ID="lbDocTransicion" runat="server" OnClick="lbDocTransicion_Click">Letra Transición</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click" >Fact. pagadas</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton3_Click" >Letras pagadas</asp:LinkButton>
      </li>
   
</ol> 
                       </div>

     </div>

                        <asp:Panel ID="Panel1" runat="server" lass="form-group row">
                          <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CLASS="table-striped table-bordered table-sm  table-hover" DataKeyNames="COD" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  BorderWidth="2px" CellPadding="4"  Width="100%" AllowPaging="True" Font-Size="Small" PageSize="15" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CellSpacing="2">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("NOP") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="60px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                    <asp:BoundField DataField="NOP" HeaderText="NOP" SortExpression="NOP" Visible="False" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                                    <HeaderStyle Width="85px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ESTADO" HeaderText="CONDICIÓN" SortExpression="ESTADO" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                    <asp:BoundField DataField="CUENTA" HeaderText="CUENTA" SortExpression="CUENTA"/>
                                    
                                   
                                    <asp:BoundField DataField="IMPORACUM" DataFormatString="{0:0,0.00}" HeaderText="IMP.TT" ReadOnly="True" SortExpression="IMPORACUM">
                                    <HeaderStyle Width="70px" />
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="moneda" SortExpression="moneda">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DOC" HeaderText="LETRAS ANEXADAS" SortExpression="DOC" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>

                                     <asp:ImageField DataImageUrlField="OP" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="*">
                                        <ControlStyle Height="12px" Width="12px" />
                                        <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ImageField>

                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <PagerStyle  BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" Font-Overline="True" Font-Size="Large" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle ForeColor="Black" Font-Bold="True" BackColor="#C4EBC2" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoDoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                              <br />
                            <asp:Panel ID="Panel2" runat="server">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Print" />
                                &nbsp; Detalle de letras anexadas DOC. TRANSICIÓN<strong>: N°OP-<asp:Label ID="lblcodigo" runat="server"></asp:Label></strong>
                                 <br />
                                 <div class="table-responsive">
                                <asp:GridView ID="GridView2" runat="server"  CLASS="table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="CODDETALLE" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="CODDETALLE" HeaderText="COD" ReadOnly="True" SortExpression="CODDETALLE" />
                                        <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA"></asp:BoundField>
                                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                        <asp:BoundField DataField="RAZON" HeaderText="RAZON" SortExpression="RAZON" />
                                        <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" />
                                        <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FVENCTO" HeaderText="F.VENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NBANCO" HeaderText="Nº ÙNICO" SortExpression="NBANCO" />
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" ForeColor="White" Font-Bold="True" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle Font-Bold="True" ForeColor="Black" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoLetrasAnexas" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="GridView1" Name="idletra" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                     </div>
                                <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
                                <br />
                                <asp:Panel ID="Panel9" runat="server">
                                    <asp:Panel ID="Panel10" runat="server">
                                        Letra:
                                        <asp:Label ID="lblletradoc" runat="server" style="font-weight: 700"></asp:Label>
                                        <asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                                        <br />
                                        Ingresar NUMERO UNICO:
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button7" runat="server" class="btn btn-default" OnClick="Button7_Click" Text="REGISTRAR NÚMERO ÚNICO" />
                                        &nbsp;&nbsp;
                                        <asp:Label ID="lblcoddoc" runat="server" Visible="False"></asp:Label>
                                    </asp:Panel>
                                    <br />
                                    <asp:LinkButton ID="lbregdesembolso" runat="server" Class="btn btn-success" OnClick="lbregdesembolso_Click" >REGISTRAR APROBACIÓN BANCARIA</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Class="btn btn-danger" OnClick="LinkButton1_Click">Quitar de planilla</asp:LinkButton>
                                    <br />
                                </asp:Panel>
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server">
                                <h3>REGISTRAR DESEMBOLSO</h3>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style2">Nº de operación:</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblcoddoc2" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td class="auto-style6">F.Emisión:<asp:Label ID="lblfechareg" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Num. cuenta
                                            <asp:Label ID="lblbanco" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblnumcuenta" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td class="auto-style6">Importe TT:<asp:Label ID="lblimportett" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Moneda:</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style6">Nº LETRA(S):&nbsp;
                                            <asp:Label ID="lblnletras" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style6">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="txtmontoadesembolsar" class="form-control" type="number" step="0.01" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="txttasainteres" class="form-control" type="number" step="0.01" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">Monto a desembolsar</td>
                                        <td class="auto-style6">Tasa de interes</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" colspan="3">
                                            <br />
                                            <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" Height="40px" OnClick="Button3_Click" style="font-weight: 700" Text="REGISTRAR OPERACION" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                            <hr />
                            <asp:Panel ID="Panel5" runat="server">
                                <br />
                                <H3>DOCUMENTOS DE TRANSICIÓN EVALUADOS:<br /></H3>
                                <div class="table-responsive">
                                <asp:GridView ID="GridView3" runat="server" CLASS="table-condensed  table-hover table-sm thead-light" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OP,OPERACION" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="100%" GridLines="Vertical" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" PageSize="20">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="OP" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Eval("OPERACION") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                            <HeaderStyle Width="60px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="OP" HeaderText="OP" ReadOnly="True" SortExpression="OP" Visible="False" />
                                        <asp:BoundField DataField="OPERACION" HeaderText="OPERACION" ReadOnly="True" SortExpression="OPERACION" Visible="False" />
                                        <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}">
                                        <HeaderStyle Width="85px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ESTADO" HeaderText="CONDICIÓN" SortExpression="ESTADO" >
                                        <HeaderStyle Width="70px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                        <asp:BoundField DataField="NCUENTA" HeaderText="N.CUENTA" SortExpression="NCUENTA" />
                                        <asp:BoundField DataField="IMPBASE" HeaderText="IMP.BASE" SortExpression="IMPBASE" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" Visible="False" />
                                        <asp:BoundField DataField="DESEMB" HeaderText="DESEMB" SortExpression="DESEMB" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="TASA" HeaderText="TASA" SortExpression="TASA" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.BANCO" SortExpression="FBANCO" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DOCUMENTOS" HeaderText="DOCUMENTOS" SortExpression="DOCUMENTOS" />
                                        <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                   
                                          <asp:ImageField DataImageUrlField="OP1" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="*">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
                                    </Columns>
                                    <FooterStyle BorderWidth="60px" CssClass="pagination" HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#C4EBC2" Font-Bold="True" ForeColor="Black" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoDoc1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                                    <asp:Panel ID="Panel6" runat="server">
                                    <br />
                                Detalle letras anexadas&nbsp;
                                    <asp:Label ID="lbloperacion" runat="server" style="font-weight: 700"></asp:Label>
                                    <br />
                                     <div class="table-responsive">
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDETALLE" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="100%" OnRowDataBound="GridView4_RowDataBound" ShowFooter="True">
                                        <Columns>
                                            <asp:BoundField DataField="CODDETALLE" HeaderText="COD" ReadOnly="True" SortExpression="CODDETALLE" />
                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                            <asp:BoundField DataField="RAZON" HeaderText="RAZON" SortExpression="RAZON" />
                                            <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" />
                                            <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                                            <asp:BoundField DataField="NBANCO" HeaderText="Nº ÙNICO" SortExpression="NBANCO" />
                                        </Columns>
                                        <HeaderStyle BackColor="Gray" ForeColor="White" />
                                        <SelectedRowStyle Font-Size="X-Small" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_BancoLetrasAnexas" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView3" Name="idletra" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </div>
                                    <asp:Panel ID="Panel8" runat="server">
                                        <br />
                                    LETRA Nº:
                                        <asp:Label ID="lblletra" runat="server" style="font-weight: 700"></asp:Label>
                                        <asp:Label ID="lblcodletra" runat="server" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NUMERO UNICO:
                                        <asp:TextBox ID="txtnumunico" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="REGISTRAR" />
                                    &nbsp;</asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
                            * Estado de documento de transición: ENVIADO AL BANCO&nbsp;<asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/Z5.png" Width="20px" />
                            &nbsp;| APROBACIÓN BANCARIA (DESEMBOLSO)&nbsp;<asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/Z1.png" Width="20px" />
                            &nbsp;|&nbsp; OBSERVADO POR EL BANCO&nbsp;<asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images/Z0.png" Width="20px" />
                            <br />
                            <asp:Label ID="lblnivel" runat="server"></asp:Label>
                            &nbsp;<asp:LinkButton ID="LinkButtonUsuario" runat="server" PostBackUrl="~/Administracion/Default.aspx" Visible="False"></asp:LinkButton>
                            <br />
                            <br />
                        </asp:Panel>

    </div>

</asp:Content>
