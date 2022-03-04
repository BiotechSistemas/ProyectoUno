<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/VentasResponsive.Master" AutoEventWireup="true" CodeBehind="ProyeccionCuadro.aspx.cs" Inherits="biotech.VentasRTC.ProyeccionCuadro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
     &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Registrar</asp:LinkButton>
    <br />
     <br />


     <span class="title_section_offer">Producto - Cantidades estimadas 2018:</span>   <asp:Label ID="lblvendedor" runat="server" Visible="False"></asp:Label> 
     &nbsp;<div class="title_section_offer_fake">
    
    
   
        
            <table class="auto-style1">
                <tr>
                    <td  Width="95%">
    
    
   
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="CODPRO" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" ReadOnly="True">
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                    <HeaderStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION" >
                    <HeaderStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" />
                    <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanual" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="100px">
                            <Columns>
                                <asp:BoundField DataField="IDPRO" HeaderText="IDPRO" SortExpression="IDPRO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                                <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" Visible="False" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MONTO" DataFormatString="{0:0,0.00}" HeaderText="MONTO" ReadOnly="True" SortExpression="MONTO">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#EBEBEB" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadocantidadAnualVend" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <br />
    
     <span class="title_section_offer">Producto - Ventas estimadas 2018:</span>    
     &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                    <HeaderStyle Width="120px" />
                    <ItemStyle HorizontalAlign="Left" />

                     
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PSNT" SortExpression="PRESENTACION">
                    <HeaderStyle Width="40px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="lblsum1" runat="server"></asp:Label>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportes" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    
   
        <div class="control-group">
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="IDPROYEC" DataSourceID="SqlDataSource3" Width="400px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView3_RowDataBound" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="IDPROYEC" HeaderText="IDPROYEC" ReadOnly="True" SortExpression="IDPROYEC" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="IDPERIDO" HeaderText="IDPERIDO" SortExpression="IDPERIDO" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="ano" HeaderText="AÑO" SortExpression="ano">
                    </asp:BoundField>
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO">
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle Font-Bold="False" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadototalmesImporte" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="Panel1" runat="server">
                <hr />
                Periodo:
                <asp:Label ID="lblpriodoselec" runat="server"></asp:Label>
                <br />
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="500px">
                    <Columns>
                        <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                        <asp:BoundField DataField="RAZON SOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZON SOCIAL">
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectadogrupo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView3" Name="idproyectado" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
</div>&nbsp;<div class="row">
    <div class="offset2">
    
   
        <!-- / .control-group -->
          
    </DIV>
</DIV>

         <asp:LinkButton ID="LinkButtonuser" runat="server" OnClick="LinkButtonuser_Click"></asp:LinkButton>
</asp:Content>

