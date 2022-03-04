<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.consultas.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">
   <meta name="viewport" content="initial-scale=1.0, user-scalable=yes" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LISTADO DE PRECIO</title>
   
  

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />
     
<script type="text/javascript">
    function imprSelec(muestra,muestra1,muestra2)
    {
        var ficha = document.getElementById(muestra);
        var ficha1 = document.getElementById(muestra1);
        var ficha2 = document.getElementById(muestra2);
        var ventimp = window.open(' ', '_blank');
        ventimp.document.write(ficha.innerHTML);
        ventimp.document.write(ficha1.innerHTML);
        ventimp.document.write(ficha2.innerHTML);
        ventimp.document.close();
        ventimp.print();
        ventimp.close();



    }
    function imprSelec10(muestra, muestra20, muestra30) {
        var ficha = document.getElementById(muestra);
        var ficha1 = document.getElementById(muestra20);
        var ficha2 = document.getElementById(muestra30);
        var ventimp = window.open(' ', '_blank');
        ventimp.document.write(ficha.innerHTML);
        ventimp.document.write(ficha1.innerHTML);
        ventimp.document.write(ficha2.innerHTML);
        ventimp.document.close();
        ventimp.print();
        ventimp.close();



    }
</script>

    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearch]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/consultas/Default.aspx/GetCustomers") %>',
                    data: "{ 'prefix': '" + request.term + "'}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        response($.map(data.d, function (item) {
                            return {
                                label: item.split('-')[0],
                                val: item.split('-')[1]
                            }
                        }))
                    },
                    error: function (response) {
                        alert(response.responseText);
                    },
                    failure: function (response) {
                        alert(response.responseText);
                    }
                });
            },
            select: function (e, i) {
                $("[id$=hfCustomerId]").val(i.item.val);
            },
            minLength: 1
        });
    });
</script>

    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearch0]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/consultas/Default.aspx/GetCustomers1") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0],
                                    val: item.split('-')[1]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    $("[id$=hfCustomerId]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>

 <script type="text/javascript">
     $(function () {
         $("[id$=txtSearch2]").autocomplete({
             source: function (request, response) {
                 $.ajax({
                     url: '<%=ResolveUrl("~/consultas/Default.aspx/GetCustomers2") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0],
                                    val: item.split('-')[1]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    $("[id$=hfCustomerId]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>


    <style type="text/css">
        .auto-style1 {
            font-size: small;
        }
        .auto-style2 {
            color: #8AB03C;
            font-size: large;
            text-align: left;
        }
        .auto-style3 {
            font-size: x-small;
            text-align: left;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style30 {
            font-size: small;
            text-align: left;
        }
        .auto-style31 {
            font-size: xx-small;
            color: #999999;
        }
        .auto-style33 {
            color: #808080;
            font-size: small;
        }
        .auto-style34 {
            color: #808080;
            font-size: x-small;
        }
        .auto-style35 {
            color: #808080;
        }
        .auto-style36 {
            font-size: small;
        }
        .auto-style37 {
            height: 10px;
        }
        .auto-style39 {}
        .auto-style40 {
            text-align: center;
        }
        .auto-style51 {
            font-size: x-small;
            width: 200px;
            text-align: left;
        }
        .auto-style56 {
            width: 380px;
            text-align: left;
        }
        .auto-style57 {
            height: 66px;
        }
        .auto-style18 {
            text-align: center;
        }
              
        .auto-style61 {
            text-align: left;
            color: #666666;
            font-size: x-small;
        }
              
        .auto-style63 {
            font-size: small;
        }
        .auto-style64 {
            font-size: small;
        }
      
        .auto-style65 {
            font-size: x-large;
        }
      
        .auto-style66 {
            height: 23px;
        }
      
        .auto-style67 {
            font-weight: 700;
        }
      
        .auto-style62 {
            color: #990000;
        }
      
        .auto-style68 {
            text-align: center;
            height: 85px;
        }
      
        </style>





</head>
<body>
   
    <form id="form1" runat="server"><center>
  
            <div id="muestra" >
                <asp:Panel ID="Panel2" runat="server">
    <table border="0" >
<tr>
<td class="auto-style56" >
    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/logobiotech.jpg" PostBackUrl="http://www.biotechcorp.com.pe/webapp/index.html" Width="121px" CssClass="auto-style57" />
    </td>

</tr>
    <tr>
    <td class="auto-style56">
    <h3 class="auto-style21">
        <asp:Label ID="lbltema" runat="server"></asp:Label>
        </h3>
    </td>

</tr>
        
    </table></asp:Panel>
</div>
        <div class="auto-style40" id="noprint" >
					                 
						<asp:LinkButton ID="LinkButton3" runat="server" class="auto-style2" OnClick="LinkButton3_Click">Agroindustrias</asp:LinkButton>
              &nbsp;
              |  <asp:LinkButton ID="LinkButton4" runat="server" class="auto-style2" OnClick="LinkButton4_Click">Distribuidores</asp:LinkButton>    
                        <asp:LinkButton ID="LinkButton2" runat="server" class="auto-style2" OnClick="LinkButton2_Click" Visible="False">Simulador</asp:LinkButton>
                        <br />
                        <br />
        </div>
      
        <center>
    
        <asp:Panel ID="PanelAgroindustrias" runat="server" >
          
            <asp:Panel ID="Panel1" runat="server" VALIGN="MIDDLE"  >
                
                            <asp:TextBox ID="txtSearch0" runat="server" Width="180px" Height="20px" placeholder="BIOCEL"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/images/buscarr.png" OnClick="ImageButton11_Click" Width="60px" ImageAlign="AbsMiddle" />
                            <asp:Label ID="lblcodpro1" runat="server" Visible="False"></asp:Label>
                  
            </asp:Panel>


            <div id="muestra1" > 
            <span class="auto-style34">
                <br />
                RANGO DE DESCUENTO PERMITIDOS ( 0% = <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/0.jpg" Width="10px" OnClick="ImageButton4_Click" CssClass="auto-style39" /> , - </span>
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style3" ImageUrl="~/images/1.jpg" Width="10px" OnClick="ImageButton1_Click" />
            <span class="auto-style3">&nbsp; </span>
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style3" ImageUrl="~/images/2.jpg" Width="10px" OnClick="ImageButton2_Click" />
            <span class="auto-style33">&nbsp;&nbsp;</span><span class="auto-style35"><asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style3" ImageUrl="~/images/3.jpg" Width="10px" OnClick="ImageButton3_Click" />
            </span><span class="auto-style33"><span class="auto-style34">&nbsp;+ )</span><asp:Label ID="lblop" runat="server" Visible="False"></asp:Label>
            </span><br /> <span class="auto-style31">PRECIOS PARA AGROINDUSTRIAS + IGV (*) ,&nbsp; DOLARES AMERICANOS</span>
            </div>
                <asp:GridView ID="GridViewdescuento" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style36" DataKeyNames="COD,PRODUCTO" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewdescuento_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA US$" SortExpression="PLISTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA (40%)US$" ReadOnly="True" SortExpression="PVENTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
                    <asp:BoundField DataField="SUSPENDIDO" HeaderText="SUSPENDIDO" SortExpression="SUSPENDIDO" Visible="False" />
                    <asp:ImageField DataImageUrlField="SUSPENDIDO" DataImageUrlFormatString="~/images/suspen{0}.png">
                        <ControlStyle Height="10px" Width="10px" />
                    </asp:ImageField>
                   <%-- <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                        <ControlStyle Height="10px" Width="10px" />
                    </asp:ImageField--%>
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
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listadoRangoDescto" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblop" DefaultValue="" Name="op" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style5" DataKeyNames="COD,PRODUCTO" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA US$" SortExpression="PLISTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA (40%)US$" ReadOnly="True" SortExpression="PVENTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                        <ControlStyle Height="7px" Width="7px" />
                    </asp:ImageField>
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listado_productos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblcodpro1" Name="producto" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="40" Name="numporsent" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div id="muestra2"> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="COD,PRODUCTO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" PageSize="20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA US$" SortExpression="PLISTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA (40%)US$" ReadOnly="True" SortExpression="PVENTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                        <ControlStyle Height="7px" Width="7px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" Font-Size="Small" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listado" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:Label ID="lblvalor" runat="server"></asp:Label>
        </div>
                </asp:Panel>
       

        <asp:Panel ID="Paneldistribuidores" runat="server" >
             &nbsp;<asp:TextBox ID="txtSearch2" runat="server" Width="180px" Height="20px" placeholder="Ingresar producto"></asp:TextBox>
             <asp:ImageButton ID="ImageButton12" runat="server" Height="25px" ImageUrl="~/images/buscarr.png" OnClick="ImageButton12_Click" Width="60px" ImageAlign="AbsMiddle" />
            <asp:Label ID="lblcodpro2" runat="server" Visible="False"></asp:Label>
            <br />
            <div id="muestra30">
            <span class="auto-style34"><br />RANGO DE DESCUENTO PERMITIDOS ( 0% = <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/0.jpg" Width="10px" OnClick="ImageButton5_Click" CssClass="auto-style37" /> , - </span>
            <asp:ImageButton ID="ImageButton6" runat="server" CssClass="auto-style3" ImageUrl="~/images/1.jpg" Width="10px" OnClick="ImageButton6_Click" />
            <span class="auto-style3">&nbsp; </span>
            <asp:ImageButton ID="ImageButton7" runat="server" CssClass="auto-style3" ImageUrl="~/images/2.jpg" Width="10px" OnClick="ImageButton7_Click" />
            <span class="auto-style33">&nbsp;&nbsp;</span><span class="auto-style35"><asp:ImageButton ID="ImageButton8" runat="server" CssClass="auto-style3" ImageUrl="~/images/3.jpg" Width="10px" OnClick="ImageButton8_Click" />
            </span><span class="auto-style33"><span class="auto-style34">&nbsp;+ )</span><asp:Label ID="lblop2" runat="server" Visible="False"></asp:Label>
                <span class="auto-style31">
             <br />
             PRECIOS PARA DISTRIBUIDORES + IGV (*) ,&nbsp; NUEVOS SOLES</span>
             </div>
            <asp:GridView ID="GridViewDistribuidorDesct" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style64">
                 <Columns>
                     <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                         <ControlStyle Height="7px" Width="7px" />
                     </asp:ImageField>
                     <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                     <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA S/." SortExpression="PLISTA">
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PVENTA" HeaderText="P. VENTA (40%) S/." ReadOnly="True" SortExpression="PVENTA">
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
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
             <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listadoDistribuidorRangoDescto" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblcodpro2" Name="op" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <asp:GridView ID="GridViewDistribFiltro" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style63">
                 <Columns>
                     <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                         <ControlStyle Height="7px" Width="7px" />
                     </asp:ImageField>
                     <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                     <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA S/." SortExpression="PLISTA">
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA (40%) S/." ReadOnly="True" SortExpression="PVENTA">
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False" />
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
             <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listado_productosdISTRIBUIDOR" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="txtSearch2" Name="producto" PropertyName="Text" Type="String" />
                     <asp:Parameter DefaultValue="40" Name="numporsent" Type="Decimal" />
                 </SelectParameters>
             </asp:SqlDataSource>
                <div id="muestra20">
            <asp:GridView ID="GridViewdistribuidor" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style30" DataKeyNames="COD" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" PageSize="20">
                <Columns>
                    <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                        <ControlStyle Height="7px" Width="7px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESNT" SortExpression="PRESENTACION" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLISTA" DataFormatString="{0:0,0.00}" HeaderText="P. LISTA S/." SortExpression="PLISTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA (40%) S/." ReadOnly="True" SortExpression="PVENTA">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RENT" HeaderText="RENT" SortExpression="RENT" Visible="False">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" Font-Size="Small" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>

                    </div>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listadoDistribuidor" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
             </span>
            </asp:Panel>
<asp:Panel ID="Panelcalculos" runat="server" >
        
        
        <div >
            <table >
                <asp:Panel ID="PanelbuscadorOperacion" runat="server">
                <tr>
                    <td colspan="2"><asp:TextBox ID="txtSearch" runat="server" Height="30px" Width="180px" placeholder="Ingresar producto"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton10" runat="server" Height="36px" ImageUrl="~/images/buscarr.png" Width="50px" OnClick="ImageButton10_Click1" ImageAlign="AbsMiddle" />
                    </td>
                </tr>
                    </asp:Panel>
                <tr>
                    <td class="auto-style66">
                        <h2>
                            <asp:Label ID="lblproductoSelec" runat="server" CssClass="auto-style67"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <asp:Panel ID="Panelindica" runat="server"> </asp:Panel>  
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style60">
                            <Columns>
                                <asp:ImageField DataImageUrlField="RENT" DataImageUrlFormatString="~/images/{0}.jpg">
                                    <ControlStyle Height="10px" Width="10px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                                <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION" />
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
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_pro_listado_productos" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtSearch" Name="producto" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtporsent" Name="numporsent" PropertyName="Text" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <div class="auto-style61">
                            Precio Venta al <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>% Dsto. del Precio Lista, en <strong>Dólares Americanos.<br /> P.LISTA</strong>
                            = 0.00 (PRECIO EN EVALUACIÓN), consultar directamente con el área correspondiente.<br />
                            </div>
                             <asp:Label ID="Label2" runat="server" CssClass="auto-style62" Text="No tiene autonomía para validar el precio!"></asp:Label>
                       
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
                    <td class="auto-style68" colspan="2"><span class="auto-style65">Dsto:</span><asp:TextBox ID="txtporsent" runat="server" Font-Size="X-Large" Height="30px" type="number" Width="50px" OnTextChanged="txtporsent_TextChanged">40</asp:TextBox>
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
  
       </asp:Panel> 

    <%--<a href="javascript:imprSelec('muestra')">Imprimir Tabla</a>--%>
            <br />
            <asp:Panel ID="PanelBOTON1" runat="server">
                <input type="button" value="Imprimir / Exportar listado" onclick="javascript: imprSelec('muestra', 'muestra2', 'muestra1')" />
            </asp:Panel>
            <asp:Panel ID="PanelBOTON2" runat="server">
                <input type="button" value="Imprimir / Exportar listado" onclick="javascript: imprSelec10('muestra', 'muestra20', 'muestra30')" />
            </asp:Panel>
&nbsp;<asp:Label ID="lblbajo1" runat="server" style="font-size: x-small; color: #990000" Text="Importante: P.LISTA = 0.00 (PRECIO EN EVALUACIÓN), consultar directamente con el área correspondiente."></asp:Label>
            <br />
     
    </center>
        </td>
</tr>
<tr>
<td height="20" class="auto-style1">
        
        
</tr>
        </div>
  
    </form>
     
</body>
</html>
