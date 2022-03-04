<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaIngreso.aspx.cs" Inherits="biotech.bio.ventas.Almacen.FichaIngreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../vendorF/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- MetisMenu CSS -->
    <link href="../../vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="../../vendorF/jquery/jquery.min.js"></script>
    
    <title>Ficha Ingreso</title>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>


    <style type="text/css">


        .auto-style1 {
            width: 600px;
        }
        .auto-style3 {
             width: 90px;
        }
        .auto-style5 {
            width: 72px;
        }
        .auto-style6 {
        }
        .auto-style8 {
            width: 4px;
        }
        .auto-style9 {
        }
        .auto-style10 {
            width: 181px;
        }
        .auto-style12 {
            width: 4px;
            height: 20px;
        }
        .auto-style13 {
            height: 20px;
        }
        .auto-style15 {
            width: 72px;
            height: 20px;
        }
        .auto-style16 {
            width: 27px;
            height: 20px;
        }
        .auto-style17 {
            width: 181px;
            height: 20px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container-fluid">
            <table class="auto-style1">
                <tr>
                    <td>
            <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/images/logobiotech.png" Width="84px" />
                    </td>
                    <td>
                        <h3>
                        <asp:Label ID="Label1" runat="server" Text="GUIA REMISIÓN" ></asp:Label>
                        </h3></td>
                    <td>
                        <h3><asp:Label ID="lblguiarem" runat="server" style="font-weight: 700"></asp:Label></h3>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblIdGuia" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>
                        <asp:Label ID="lblgrupoingreso" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblAprobacion" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">
                        
                     
                        <strong>F. EMISIÓN</strong></td>
                    <td class="auto-style12">
                        
                       
                        :</td>
                    <td class="auto-style13">
                        
                       
                        <asp:Label ID="lblfemision" runat="server"></asp:Label>
                        
                       
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style13"><strong>MOTIVO</strong></td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblmotivo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>SOLICITA</strong></td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblsolicita" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"><strong>TRANSPORTE</strong></td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblTransporte" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>CLIENTE</strong></td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblidCliente" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6"><strong>CONDUCTOR</strong></td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblconductor" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13" colspan="5">
                        <asp:Label ID="lblCliente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>P.PARTIDA</strong></td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style13" colspan="5">
                        <asp:Label ID="lblpuntoPartida" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>P.LLEGADA</strong></td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style13" colspan="5">
                        <asp:Label ID="lblpuntoLlegada" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3"><strong>RECEPCIÓN</strong></td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblalmFinal" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6"><strong>ÉNVIO</strong></td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblAlmOrigen" runat="server"></asp:Label>
                    </td>
                </tr>
              
                 <tr>
                    <td class="auto-style3">N°Pedido</td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblcodpedido" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblestado" runat="server"></asp:Label>
                    </td>
                </tr>
                
                

                <tr>
                    <td colspan="7">
                        <strong>
                        <br />
                        Datos del (los) bien(es) a transportar:</strong><asp:GridView ID="gvProductos" runat="server" AutoGenerateColumns="False" DataKeyNames="iddetalleGuia,idguia" DataSourceID="SqlDataSourcedetGuia" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="Row" HeaderText="Item" ReadOnly="True" SortExpression="Row">
                                <HeaderStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="iddetalleGuia" HeaderText="iddetalleGuia" ReadOnly="True" SortExpression="iddetalleGuia" Visible="False" />
                                <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                <asp:BoundField DataField="CODPRODUCTO" HeaderText="COD" SortExpression="CODPRODUCTO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourcedetGuia" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_detalle" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblIdGuia" Name="idguia" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <br />
                        <br />
                        <br /><br /><br /><br />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" colspan="3">________________</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6" colspan="3">___________________</td>
                </tr>
                <tr>
                    <td class="text-center" colspan="3">Autorización</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recibí conforme</td>
                </tr>
            </table>
            

        </div>
    <div>
    
    </div>
    </form>
    <%--<input type="button" value="Imprimir" onclick="javascript: window.print()" />--%>
</body>
</html>
