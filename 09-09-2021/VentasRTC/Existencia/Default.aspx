<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.VentasRTC.Existencia.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
		<meta name="viewport" content="width=device-width,initial-scale=1">
    <title></title>
   
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <link href="../../scripts/jquery.dataTables.min.css" rel="stylesheet" />  
    <script src="../../scripts/jquery.dataTables.min.js"></script>

    <script>

        $(document).ready(function () {
            $('#GridViewProductos').DataTable();
        });

    </script>


    <style type="text/css">


       
        .auto-style1 {
           background: linear-gradient(white, #EFEFEF); /* Standard syntax */
             width: 100%;
        }
       
        .auto-style114 {
            width: 120px;
            height: 51px;
        }
              
        .auto-style66 {
            height: 23px;
        }
      
        .auto-style67 {
            font-weight: 700;
        }
      
        .auto-style61 {
            text-align: left;
            color: #666666;
            font-size: small;
        }
              
        .auto-style62 {
            color: #990000;
        }
      
        .auto-style18 {
            text-align: center;
        }
              
        .auto-style51 {
            font-size: x-small;
            width: 200px;
            text-align: left;
        }
        .auto-style68 {
            text-align: center;
            height: 85px;
        }
      
        .auto-style65 {
            font-size: x-large;
        }
      
        .auto-style2 {
            color: #8AB03C;
            font-size: large;
            text-align: left;
        }
        .auto-style115 {
            height: 51px;
        }
        </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style114">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logobiotech.png" Width="86px" Height="47px" />
                </td>
                <td style="text-align: center" class="auto-style115">
                    <h2 style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRODUCTOS BIOTECH -
                        <asp:Label ID="lblAlmacen" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblidAlmacen" runat="server" Visible="False"></asp:Label>
                    </h2>
                </td>
                <td style="text-align: center" class="auto-style115">
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" style="color: #006600">Principal</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridViewProductos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="idProducto,PRODUCTO" OnSelectedIndexChanged="GridViewProductos_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField ShowHeader="False" HeaderText="COD">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" style="color: #006600" Text='<%# Eval("idProducto") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="30px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="idProducto" HeaderText="COD" SortExpression="idProducto" Visible="False" >
                    <HeaderStyle Width="30px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENT." SortExpression="PRESENTACION" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ALMACEN" HeaderText="STOCK" SortExpression="ALMACEN" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" HeaderText="P. LISTA" SortExpression="PLISTA" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PV60" HeaderText="PV 40% DESCTO" SortExpression="PV60" DataFormatString="{0:0,0.00}" ReadOnly="True" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PBASE" HeaderText="PBASE" SortExpression="PBASE" Visible="False" />
                    <asp:BoundField DataField="PIALMACEN" HeaderText="PIALMACEN" SortExpression="PIALMACEN" Visible="False" />
                    <asp:BoundField DataField="VALORIZADO" HeaderText="VALORIZADO" ReadOnly="True" SortExpression="VALORIZADO" Visible="False" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_ValTotalVendedores" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidAlmacen" Name="idalmacen" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
<asp:Panel ID="Panelcalculos" runat="server" >
        
        
        <div >
            <table >
              
                <tr>
                    <td class="auto-style66">
                        <h2>
                            <asp:Label ID="lblproductoSelec" runat="server" CssClass="auto-style67"></asp:Label>
                            &nbsp;al
                            <asp:Label ID="lbldescto" runat="server"></asp:Label>
                            &nbsp;% de descto.</h2>
                    </td>
                </tr>
                <asp:Panel ID="Panelindica" runat="server"> </asp:Panel>  
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style60" Width="700px">
                            <Columns>
                               <%-- <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg" Visible="False">
                                    <ControlStyle Height="10px" Width="10px" />
                                </asp:ImageField>--%>
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                                <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" Visible="False" />
                                <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" ReadOnly="True" SortExpression="PVENTA">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
                                <asp:BoundField DataField="XLITRO" DataFormatString="{0:0,0.00}" HeaderText="P. POR LITRO" ReadOnly="True" SortExpression="XLITRO">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="WhiteSmoke" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listado_productos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblproductoSelec" Name="producto" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtporsent" Name="numporsent" PropertyName="Text" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <div class="auto-style61">
                            Precio Venta al <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>% Descto. del Precio Lista, en <strong>Dólares Americanos.<br /> P.LISTA</strong>
                            = 0.00 (PRECIO EN EVALUACIÓN), consultar directamente con el área correspondiente.<br />
                            </div>
                             <asp:Label ID="Label2" runat="server" CssClass="auto-style62" Text="No tiene autonomía para validar el precio!" Visible="False"></asp:Label>
                       
                    </td>
                </tr>
                    
                <tr>
                    <td class="auto-style18">
                        <br />
                    </td>
                    <td class="auto-style51">
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style68" colspan="2"><span class="auto-style65">Descto:</span><asp:TextBox ID="txtporsent" runat="server" Font-Size="X-Large" Height="30px" type="number" Width="50px">40</asp:TextBox>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style52" Font-Size="X-Large" Height="30px" OnClick="Button2_Click" Text="%" Width="60px" />
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton5" runat="server" class="auto-style2" OnClick="LinkButton5_Click">Retornar</asp:LinkButton>
                    </td>
                </tr>
                   <%--</asp:Panel>  --%>
               
            </table> 
        
        </div>
        <asp:HiddenField ID="hfCustomerId" runat="server" />
  
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
  
       </asp:Panel> 

        <br />
    
    </div>
    </form>
</body>
</html>
