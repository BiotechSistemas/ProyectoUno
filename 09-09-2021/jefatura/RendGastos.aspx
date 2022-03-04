<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RendGastos.aspx.cs" Inherits="biotech.jefatura.RendGastos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



       
        .auto-style1 {
           background: linear-gradient(white, #EFEFEF); /* Standard syntax */
             width: 100%;
        }
       
        .auto-style114 {
            width: 64px;
        }





       
        .auto-style30 {
            font-size: x-small;
            color: #990000;
        }
        *{box-sizing:border-box}
        .auto-style4 {
            font-size: x-small;
        }
        .auto-style24 {
            text-align: right;
        }
        .auto-style26 {
            text-align: right;
        }
        .auto-style27 {
            text-align: right;
        }
        .auto-style28 {
            text-align: right;
        }
        .auto-style29 {
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style114">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logoicono.png" Width="64px" Height="54px" />
                </td>
                <td style="text-align: center">
                    <h2 style="text-align: left">&nbsp; RENDICIÓN GASTOS
                        <asp:Label ID="lblperiodo2" runat="server"></asp:Label>
                    </h2>
                </td>
                <td style="text-align: right" class="auto-style116">
                    &nbsp;&nbsp;
                    &nbsp;
                    <asp:LinkButton ID="LBPedidos" runat="server" OnClick="LBPedidos_Click" style="color: #006600">PEDIDOS</asp:LinkButton>
&nbsp; |
                    <asp:LinkButton ID="LBmenu1" runat="server" OnClick="LBmenu1_Click" style="color: #006600">VENTAS</asp:LinkButton>
&nbsp;|
                    <asp:LinkButton ID="lbClientes" runat="server" style="color: #006600" OnClick="lbClientes_Click">CLIENTES</asp:LinkButton>
&nbsp;|
                    <asp:LinkButton ID="lbGastos" runat="server" style="color: #006600" OnClick="lbGastos_Click">RD. GASTOS</asp:LinkButton>
&nbsp;|&nbsp;
                    <asp:LinkButton ID="lbPrincipal" runat="server" style="color: #006600" OnClick="lbPrincipal_Click">PRINCIPAL</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    <div >
        <asp:Panel ID="Panelprincipal" runat="server">
            <br />
            <asp:Panel ID="Panelprincip1" runat="server">
                <asp:GridView ID="GridViewprincipal" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDPERIODO" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewprincipal_SelectedIndexChanged" Width="350px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDPERIODO" HeaderText="IDPERIODO" SortExpression="IDPERIODO" Visible="False" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="IMPORTETT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTETT">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rdGrupoRendiciones" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </asp:Panel>
            <asp:Panel ID="Panelsub" runat="server">
                <asp:GridView ID="GridViewSub" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD,CODPERSONAL" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridViewSub_RowDataBound1" OnSelectedIndexChanged="GridViewSub_SelectedIndexChanged1" ShowFooter="True" Width="700px">
                    <Columns>
                        <asp:TemplateField HeaderText="COD." ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("CODPERSONAL") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Width="70px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="COD" SortExpression="COD" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COD") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("COD") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CODPERSONAL" HeaderText="COD." SortExpression="CODPERSONAL" Visible="False" />
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="TOTALREG" DataFormatString="{0:0,0.00}" HeaderText="TOTAL REGISTRADO" ReadOnly="True" SortExpression="TOTALREG">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUMOBSERBADO" DataFormatString="{0:0,0.00}" HeaderText="TOTAL OBSERV." ReadOnly="True" SortExpression="SUMOBSERBADO">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle ForeColor="#990000" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SUMAPROBADO" DataFormatString="{0:0,0.00}" HeaderText="TOTAL POR ABONAR" ReadOnly="True" SortExpression="SUMAPROBADO">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EstPagado" SortExpression="EstPagado" Visible="False" />
                    </Columns>
                    <FooterStyle ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rdResumenAprobados1" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewprincipal" Name="idPeriodo" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
            </asp:Panel>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style30" Text="*  Total por abonar no incluye gasto PETROTHOR"></asp:Label>
        </asp:Panel>
    </div>
    <div ">
    
    
    
    
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
        <br />
        <asp:Panel ID="PanelDetalle" runat="server" Visible="False">
            <h2 class="auto-style22">DETALLE RENDICION DE GASTOS</h2>
            <p>
                <table class="auto-style15" >
                    <tr>
                        <td class="auto-style19">Periodo: </td>
                        <td class="auto-style20">
                            <asp:Label ID="lblperiodo" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style21"><strong class="auto-style17">Viático a Nivelar:</strong></td>
                        <td class="auto-style12">
                            <asp:Label ID="lblviaticoxNivelar" runat="server" CssClass="auto-style16"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">Personal:</td>
                        <td colspan="3">
                            <asp:Label ID="lblpersonal" runat="server"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="lblcodpersonal" runat="server" CssClass="auto-style23"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">Cargo:</td>
                        <td class="auto-style8" colspan="3">
                            <asp:Label ID="lblcargo" runat="server"></asp:Label>
                            <asp:Label ID="lblidd" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </p>
            <h3 class="auto-style22"><strong>Detalle de gastos realizados:</strong></h3>
            <asp:GridView ID="GridViewDetalle" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" ShowHeader="False" Width="500px" OnRowDataBound="GridViewDetalle_RowDataBound" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                    <asp:BoundField DataField="DESCAT" HeaderText="DESCAT" ReadOnly="True" SortExpression="DESCAT" />
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridViewSub" Name="idrendicion" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style30" Text="*  Total por abonar no incluye gasto PETROTHOR"></asp:Label>
            <asp:Label ID="lblmensaje" runat="server" Text="Label" Visible="False"></asp:Label>
      
    <asp:Panel ID="Panel2" runat="server" Width="900px">
        <strong>
        <br />
        1.- GASTOS DE MOVILIDAD (peaje, estacionamiento):</strong>
      
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource2"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style4" Width="900px" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound">
            <Columns>
                 <asp:ButtonField CommandName="aprobar" HeaderText="" ShowHeader="True" Text="Aprobar" ButtonType="Image" ImageUrl="~/images/aprobar.png" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:ButtonField CommandName="observar" HeaderText="" ShowHeader="True" Text="Observar" ButtonType="Image" ImageUrl="~/images/observar.png" >        
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style24">
            Total <span class="auto-style25">Observados:</span>
            <asp:Label ID="lblobserg1" runat="server" CssClass="auto-style25"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog1" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="900px">
        
        <strong>
        <br />
        2.- GASTOS DE COMBUSTIBLE: </strong>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource3" style="font-size: x-small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="900px" OnRowCommand="GridView3_RowCommand" OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <Columns>
               <asp:ButtonField CommandName="aprobar" HeaderText="" ShowHeader="True" Text="Aprobar" ButtonType="Image" ImageUrl="~/images/aprobar.png" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:ButtonField CommandName="observar" HeaderText="" ShowHeader="True" Text="Observar" ButtonType="Image" ImageUrl="~/images/observar.png" >        
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" />
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                </asp:BoundField>
                <asp:BoundField DataField="MOTIVO" HeaderText="COND" SortExpression="MOTIVO">
                <HeaderStyle Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" DataFormatString="{0:0,0.000}" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" DataFormatString="{0:0,0.00}" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style26">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg2" runat="server" CssClass="auto-style25"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog2" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Width="900px">
       
        <br />
        3<strong>. GASTOS DE ALIMENTACIÓN: </strong>        
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource4" style="font-size: x-small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="900px" OnRowCommand="GridView4_RowCommand" OnRowDataBound="GridView4_RowDataBound">
            <Columns>
                <asp:ButtonField CommandName="aprobar" HeaderText="" ShowHeader="True" Text="Aprobar" ButtonType="Image" ImageUrl="~/images/aprobar.png" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:ButtonField CommandName="observar" HeaderText="" ShowHeader="True" Text="Observar" ButtonType="Image" ImageUrl="~/images/observar.png" >        
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" />
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style27">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg3" runat="server" CssClass="auto-style25"></asp:Label>
            , Aprobados :
            <asp:Label ID="lblaprog3" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Width="900px">
        
        <br />
        4<strong>. GASTOS DE REPRESENTACIÓN: </strong>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource5" style="font-size: x-small; margin-right: 1px;"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="900px" OnRowCommand="GridView5_RowCommand" OnRowDataBound="GridView5_RowDataBound">
            <Columns>
                <asp:ButtonField CommandName="aprobar" HeaderText="" ShowHeader="True" Text="Aprobar" ButtonType="Image" ImageUrl="~/images/aprobar.png" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:ButtonField CommandName="observar" HeaderText="" ShowHeader="True" Text="Observar" ButtonType="Image" ImageUrl="~/images/observar.png" >        
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" />
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                <asp:BoundField DataField="KMFACT" HeaderText="KM.FACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style28">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg4" runat="server"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog4" runat="server"></asp:Label>
        </div>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" Width="900px">
        
        <strong>
        <br />
        5.- GASTOS DE PASAJES: </strong>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource6" style="font-size: x-small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="900px" OnRowCommand="GridView6_RowCommand" OnRowDataBound="GridView6_RowDataBound">
            <Columns>
                <asp:ButtonField CommandName="aprobar" HeaderText="" ShowHeader="True" Text="Aprobar" ButtonType="Image" ImageUrl="~/images/aprobar.png" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:ButtonField CommandName="observar" HeaderText="" ShowHeader="True" Text="Observar" ButtonType="Image" ImageUrl="~/images/observar.png" >        
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" />
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                <asp:BoundField DataField="KMFACT" HeaderText="KM.FACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GAL.FACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="NCOMPROBANTE" SortExpression="N° COMPROB" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="7" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style29">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg5" runat="server" CssClass="auto-style25"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog5" runat="server"></asp:Label>
        </div>
    </asp:Panel>
            <asp:Panel ID="Panel7" runat="server" Width="900px">
                <strong>
                <br />
                6.- GASTOS DE ALOJAMIENTO: </strong>
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView7_RowCommand" OnRowDataBound="GridView7_RowDataBound" style="font-size: x-small" Width="900px">
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:ButtonField>
                        <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:ButtonField>
                        <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                        <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                        <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" />
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                        <asp:BoundField DataField="KMFACT" HeaderText="KM.FACT" SortExpression="KMFACT" Visible="False" />
                        <asp:BoundField DataField="GALFACT" HeaderText="GAL.FACT" SortExpression="GALFACT" Visible="False" />
                        <asp:BoundField DataField="NCOMPROBANTE" HeaderText="NCOMPROBANTE" SortExpression="N° COMPROB" />
                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                        <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CheckBoxField>
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                            <ControlStyle Height="20px" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="auto-style29">
                    Total <span class="auto-style25">Observados: </span>
                    <asp:Label ID="lblobserg6" runat="server" CssClass="auto-style25"></asp:Label>
                    , Aprobados:
                    <asp:Label ID="lblaprog6" runat="server"></asp:Label>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel8" runat="server" Width="900px">
                <strong>
                <br />
                7.- OTROS GASTOS: </strong>
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource10" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView8_RowCommand" OnRowDataBound="GridView8_RowDataBound" style="font-size: x-small" Width="900px">
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:ButtonField>
                        <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                        <ControlStyle Height="20px" Width="20px" />
                        </asp:ButtonField>
                        <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" />
                        <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                        <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" />
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                        <asp:BoundField DataField="KMFACT" HeaderText="KM.FACT" SortExpression="KMFACT" Visible="False" />
                        <asp:BoundField DataField="GALFACT" HeaderText="GAL.FACT" SortExpression="GALFACT" Visible="False" />
                        <asp:BoundField DataField="NCOMPROBANTE" HeaderText="NCOMPROBANTE" SortExpression="N° COMPROB" />
                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                        <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CheckBoxField>
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                            <ControlStyle Height="20px" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewSub" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="auto-style29">
                    Total <span class="auto-style25">Observados: </span>
                    <asp:Label ID="lblobserg7" runat="server" CssClass="auto-style25"></asp:Label>
                    , Aprobados:
                    <asp:Label ID="lblaprog7" runat="server"></asp:Label>
                </div>
            </asp:Panel>
    <br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
    <p>
        <br />
    </p>
              </asp:Panel>
        <br />
 </div>
    
    </div>
    </form>
</body>
</html>
