<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlmPedido.aspx.cs" Inherits="biotech.bio.ventas.proyectado.AlmPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 900px;
        }
        *{box-sizing:border-box}
    *{text-shadow:none!important;box-shadow:none!important}
        .auto-style3 {
            width: 70px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            width: 400px;
        }
        .auto-style6 {
            height: 37px;
            width: 400px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="27px" ImageUrl="~/images/logoicono.png" Width="38px" />
                </td>
                <td>
                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PROYECTADO
                        POR ATENDER
                        <asp:Label ID="lblfecha" runat="server"></asp:Label>
                        <asp:Label ID="lblidAno" runat="server"></asp:Label>
                        |&nbsp;TRIMESTRE
                        Nº<asp:Label ID="lblidgrupo" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblidgrupoPrincipal" runat="server"></asp:Label>
                        <asp:Label ID="lblop" runat="server" Text="1" Visible="False"></asp:Label>
                    </h2>
                </td>
            </tr>
        </table>
        
          
                    <asp:Button ID="btnporTrimestre" runat="server" Text="TRIMESTRAL" OnClick="btnporTrimestre_Click" ToolTip="Filtro trimestral" />
           
          
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="periodo" Width="200px" ToolTip="Seleccionar mes">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_peridoMes" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidgrupoPrincipal" Name="idgrupohabilita" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
        </asp:SqlDataSource>
                    <asp:Button ID="btnporMes" runat="server" Text="MENSUAL" OnClick="btnporMes_Click" ToolTip="Filtrar mensualmente." />
                    <asp:Panel ID="pAlmacen" runat="server" Visible="False">
                         <hr />
                        EXISTENCIA:
                        <asp:Label ID="lblproducto" runat="server" style="font-weight: 700"></asp:Label>
                        <asp:GridView ID="gvPedido" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataKeyNames="idProducto" DataSourceID="SqlDataSourcePRO" GridLines="None" Width="600px">
                            <Columns>
                                <asp:BoundField DataField="idProducto" HeaderText="idProducto" SortExpression="idProducto" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourcePRO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_TotalLitros" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblproducto" Name="idproducto" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ocultar</asp:LinkButton>
                    <hr />
                    </asp:Panel>
                    <asp:Panel ID="ptrimestre" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td>PROYECTADO
                                    <asp:Label ID="Label1" runat="server" Text="TRIMESTRAL"></asp:Label>
                                    &nbsp; ICA:</td>
                                <td>PROYECTADO&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="TRIMESTRAL"></asp:Label>
                                    &nbsp;PIURA:</td>
                                <td class="auto-style5">PROYECTADO
                                    <asp:Label ID="Label3" runat="server" Text="TRIMESTRAL"></asp:Label>
                                    &nbsp;CHICLAYO:</td>
                            </tr>
                            <tr>
                                <td valign=top>
                                    <asp:GridView ID="gvIca" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceica" Width="400px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="gvIca_SelectedIndexChanged" DataKeyNames="CODPRODUCTO,PRODUCTO" Font-Size="Small">
                                        <Columns>
                                            <asp:TemplateField HeaderText="DOC" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#003366" Text='<%# Bind("CODPRODUCTO") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="CODPRODUCTO" HeaderText="COD" SortExpression="CODPRODUCTO" Visible="False" />
                                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                            <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SOLICITAR" HeaderText="POR ATENDER" ReadOnly="True" SortExpression="SOLICITAR" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField=" " HeaderText=" " ReadOnly="True" SortExpression=" " Visible="False" />
                                            <asp:BoundField HeaderText="POR ABASTECER" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </td>
                                <td valign=top>
                                    <asp:GridView ID="gvPiura" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePiura" Width="400px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CODPRODUCTO,PRODUCTO" OnSelectedIndexChanged="gvPiura_SelectedIndexChanged" Font-Size="Small">
                                        <Columns>
                                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#003366" Text='<%# Bind("CODPRODUCTO") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="CODPRODUCTO" HeaderText="CODPRODUCTO" SortExpression="CODPRODUCTO" Visible="False" />
                                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                            <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SOLICITAR" HeaderText="POR ATENDER" ReadOnly="True" SortExpression="SOLICITAR" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField=" " HeaderText="POR ABASTECER" ReadOnly="True" SortExpression=" " >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </td>
                                <td valign=top class="auto-style5">
                                    <asp:GridView ID="gvchiclayo" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceChiclayo" Width="400px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CODPRODUCTO,PRODUCTO" OnSelectedIndexChanged="gvchiclayo_SelectedIndexChanged" Font-Size="Small">
                                        <Columns>
                                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#003366" Text='<%# Bind("CODPRODUCTO") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="CODPRODUCTO" HeaderText="CODPRODUCTO" SortExpression="CODPRODUCTO" Visible="False" />
                                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                            <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SOLICITAR" HeaderText="POR ATENDER" ReadOnly="True" SortExpression="SOLICITAR" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField=" " HeaderText="POR ABASTECER" ReadOnly="True" SortExpression=" " >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:SqlDataSource ID="SqlDataSourceica" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal_palm" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidAno" Name="ano" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidgrupo" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                                            <asp:Parameter DefaultValue="2" Name="idzona" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <a href="Javascript:window.close()">Cerrar</a></td>
                                <td class="auto-style4">
                                    <asp:SqlDataSource ID="SqlDataSourcePiura" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal_palm" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidAno" Name="ano" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidgrupo" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                                            <asp:Parameter DefaultValue="1" Name="idzona" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="auto-style6">
                                    <asp:SqlDataSource ID="SqlDataSourceChiclayo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal_palm" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidAno" Name="ano" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidgrupo" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                                            <asp:Parameter DefaultValue="4" Name="idzona" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
        </asp:Panel>
      
        </center>
    </div>
    </form>
</body>
</html>
