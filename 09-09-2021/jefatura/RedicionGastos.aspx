<%@ Page Title="" Language="C#" MasterPageFile="~/jefatura/clientes.Master" AutoEventWireup="true" CodeBehind="RedicionGastos.aspx.cs" Inherits="biotech.jefatura.RedicionGastos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .marco1 {
        border-radius: 0px 0px 25px 25px;
        -moz-border-radius: 0px 0px 25px 25px;
        -webkit-border-radius: 0px 0px 25px 25px;
        border: 2px solid  rgb(131, 186, 63);
        width: 900px;
           
        }


         .marco {
         color:rgb(250, 250, 250);
         border-radius: 25px 25px 0px 0px;
         -moz-border-radius: 25px 25px 0px 0px;
            -webkit-border-radius: 25px 25px 0px 0px;
            border: 2px solid  rgb(131, 186, 63);
            width: 900px;  
             background:   rgb(131, 186, 63);
   
        }

        hr {
    height: 2px;
    border: 0;
    background-color: rgb(131, 186, 63);
}
        .auto-style4 {
            font-size: small;
        }
        
        .auto-style8 {}
        .auto-style12 {
            width: 220px;
        }
        .auto-style15 {
            width: 548px;
        }
        .auto-style16 {
            font-weight: 700;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style19 {
            width: 63px;
            font-weight: 700;
        }
        .auto-style20 {
            width: 129px;
        }
        .auto-style21 {
            width: 144px;
        }
        .auto-style22 {
            text-decoration: underline;
        }
        .auto-style23 {
            font-weight: 700;
        }
        .auto-style24 {
            text-align: right;
        }
        .auto-style25 {
            color: #990000;
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
        .auto-style30 {
            font-size: x-small;
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div >
        <asp:Panel ID="Panelprincipal" runat="server">
            <h2>RENDICIÓN DE GASTOS</h2>
            <asp:Panel ID="Panelprincip1" runat="server">
                <asp:GridView ID="GridViewprincipal" runat="server" DataKeyNames="IDPERIODO"  AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewprincipal_SelectedIndexChanged" Width="350px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDPERIODO" HeaderText="IDPERIODO" SortExpression="IDPERIODO" Visible="False" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="IMPORTETT" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTETT" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
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
                <asp:GridView ID="GridViewSub" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridViewSub_RowDataBound1" OnSelectedIndexChanged="GridViewSub_SelectedIndexChanged1" ShowFooter="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                        <asp:BoundField DataField="CODPERSONAL" HeaderText="COD. PERSONAL" SortExpression="CODPERSONAL" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="IMPORTETT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTETT" ReadOnly="True" SortExpression="IMPORTETT">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rdResumenAprobados" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewprincipal" Name="peridoo" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Retornar</asp:LinkButton>
            </asp:Panel>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style30" Text="*  Total por abonar no incluye gasto PETROTHOR"></asp:Label>
        </asp:Panel>
    </div>
    <div ">
    
    
    
    
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
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
            <asp:GridView ID="GridViewDetalle" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" ShowHeader="False" Width="500px" OnRowDataBound="GridViewDetalle_RowDataBound" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" />
                    <asp:BoundField DataField="DESCAT" HeaderText="DESCAT" ReadOnly="True" SortExpression="DESCAT" />
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
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
      
    <asp:Panel ID="Panel2" runat="server" Width="700px">
        <strong>
        <br />
        A. Peaje:</strong>
      
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource2"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style4" Width="700px" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound">
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
                <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" />
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
    <asp:Panel ID="Panel3" runat="server" Width="750px">
        
        <strong>
        <br />
        B. Combustible: </strong>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource3" style="font-size: small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="750px" OnRowCommand="GridView3_RowCommand" OnRowDataBound="GridView3_RowDataBound">
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
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
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
    <asp:Panel ID="Panel4" runat="server" Width="700px">
       
        <br />
        <strong>C. Gastos de alojamiento: </strong>        
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource4" style="font-size: small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="700px" OnRowCommand="GridView4_RowCommand" OnRowDataBound="GridView4_RowDataBound">
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
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
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
                <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style27">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg3" runat="server" CssClass="auto-style25"></asp:Label>
            , Aprobados :
            <asp:Label ID="lblaprog3" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Width="700px">
        
        <br />
        <strong>D. Alimentación: </strong>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource5" style="font-size: small; margin-right: 1px;"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="700px" OnRowCommand="GridView5_RowCommand" OnRowDataBound="GridView5_RowDataBound">
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
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                <asp:BoundField DataField="KMFACT" HeaderText="KM.FACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
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
                <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
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
    <asp:Panel ID="Panel6" runat="server" Width="700px">
        
        <strong>
        <br />
        E. Otros gastos: </strong>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource6" style="font-size: small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="700px" OnRowCommand="GridView6_RowCommand" OnRowDataBound="GridView6_RowDataBound">
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
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                <asp:BoundField DataField="KMFACT" HeaderText="KM.FACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GAL.FACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="NCOMPROBANTE" SortExpression="N° COMPROB" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
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
                <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style29">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg5" runat="server" CssClass="auto-style25"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog5" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar</asp:LinkButton>
    <p>
        <br />
    </p>
              </asp:Panel>
 </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
