<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Viaticos.aspx.cs" Inherits="biotech.bio.ventas.costos.Viaticos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-sign-out"></i> RESUMEN DE GASTOS<asp:Label ID="lblcodusu10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario10" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>   
                 </div>
    <ol class="breadcrumb">
        <li>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx">Resumen Principal</asp:LinkButton>
        </li>

        <li>
            <asp:LinkButton ID="lbPrincipal" runat="server" OnClick="lbPrincipal_Click">Viáticos</asp:LinkButton>
        </li>
</ol>
    <div class="row">
        <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">AÑO:</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="idano" DataValueField="idano" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct idano from tb_rdRendicionGastos "></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
    </div>

    <div class="row">
        <div class="col-md-4">
        <asp:Panel ID="Panelprincip1" runat="server">
            
                
                <asp:GridView ID="GridViewprincipal" Class="table table-condensed table-striped table-hover  thead-light" runat="server" DataKeyNames="IDPERIODO,IDANO"  AutoGenerateColumns="False" DataSourceID="SqlDataSource8" OnSelectedIndexChanged="GridViewprincipal_SelectedIndexChanged" Width="100%" GridLines="None">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="35px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                        <asp:BoundField DataField="IDPERIODO" HeaderText="IDPERIODO" SortExpression="IDPERIODO" Visible="False" />
                        <asp:BoundField DataField="IDANO" HeaderText="IDANO" SortExpression="IDANO" Visible="False" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" >
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTETT" HeaderText="IMPORTE TOTAL" ReadOnly="True" SortExpression="IMPORTETT" DataFormatString="{0:0,0.00}">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                PERIODO:<asp:Label ID="lblidano" runat="server"></asp:Label>
                /<asp:Label ID="lblidperiodo" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rdGrupoRendiciones" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="RadioButtonList1" Name="idano" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
         
                 </asp:Panel>
        </div>

        <div class="col-md-8">

        <asp:Panel ID="Panelsub" runat="server"> 
            <div class="table-responsive">
                <asp:GridView ID="GridViewSub" runat="server" Class="table table-condensed  table-hover table-sm thead-light" DataKeyNames="COD,CODPERSONAL"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridViewSub_SelectedIndexChanged1" ShowFooter="True" Width="100%" GridLines="Horizontal" OnRowDataBound="GridViewSub_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="COD." ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("CODPERSONAL") %>' ForeColor="#006600"></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Width="70px" />
                            <ItemStyle ForeColor="#006600" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="COD" SortExpression="COD" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COD") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("COD") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle ForeColor="#006600" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="CODPERSONAL" HeaderText="COD." SortExpression="CODPERSONAL" Visible="False" />
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                        </asp:BoundField>
                        <asp:BoundField DataField="SUMAPROBADO" HeaderText="POR ABONAR" ReadOnly="True" SortExpression="SUMAPROBADO" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUMOBSERBADO" HeaderText="TOTAL OBSERV." ReadOnly="True" SortExpression="SUMOBSERBADO" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle ForeColor="#990000" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TOTALREG" HeaderText="TOTAL REG." ReadOnly="True" SortExpression="TOTALREG" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EstPagado" SortExpression="EstPagado" Visible="False" />
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                    <RowStyle Font-Size="Small" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rdResumenAprobados1" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidperiodo" Name="idPeriodo" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblidano" Name="idano" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
                N° DOCUMENTOS REGISTRADOS:
                <asp:Label ID="lblregistrados" runat="server"></asp:Label>
                &nbsp;&nbsp; ,<span class="auto-style25"> N° DOC. OBSERVADOS:</span>
                <asp:Label ID="lblobservados" runat="server" style="color: #990000"></asp:Label>
                <br />
            <span style="color: rgb(153, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 11.9px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">* Total por abonar no incluye gasto PETROTHOR</span><br />
            <asp:LinkButton ID="lbtnRetornar" runat="server" OnClick="lbtnRetornar_Click" Visible="False">Retornar</asp:LinkButton>
                <br />
            </asp:Panel>
            </div>
    </div>

    <p>
        &nbsp;</p>
</asp:Content>
