<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacturasCanceladas.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.FacturasCanceladas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FACTURAS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <link href="../../../scripts/jquery.dataTables.min.css" rel="stylesheet" />  
    
    <script src="../../../scripts/jquery.dataTables.min.js"></script>

    <link href="../../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../dist/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../../vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>


   
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

    <script>

        $(document).ready(function () {
            $('#GridView1').DataTable();
        });

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-files-o fa-fw"></i> FACTURAS/BOLETAS COBRADAS</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            
    <div class="row">
        <asp:GridView ID="GridView1" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource1" style="font-size: x-small" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="FACTURA" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("FACTURA") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" Visible="False" />
                <asp:BoundField DataField="idclienteRUC" HeaderText="RUC" SortExpression="idclienteRUC" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="tipoVenta" HeaderText="TP.VENTA" SortExpression="tipoVenta" Visible="False" />
                <asp:BoundField DataField="fechareg" HeaderText="F.REG" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fechaven" HeaderText="F.VENCTO" SortExpression="fechaven" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                <asp:BoundField DataField="idcondpago" HeaderText="COND" SortExpression="idcondpago" Visible="False" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="condletra" HeaderText="condletra" SortExpression="condletra" Visible="False" />
                <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                <asp:BoundField DataField="importebruto" HeaderText="IMP.BRUTO" SortExpression="importebruto" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="importeNeto" HeaderText="IMP.NETO" SortExpression="importeNeto" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montoretenido" HeaderText="RETENIDO" SortExpression="montoretenido" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montodisponible" HeaderText="DISPONIBLE" SortExpression="montodisponible" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tpmoneda" HeaderText="MONEDA" SortExpression="tpmoneda" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CancelacionFecha" HeaderText="F.CANCELA" SortExpression="CancelacionFecha" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="autor" SortExpression="autor" />
            </Columns>
            <HeaderStyle BackColor="#999999" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_factCobradas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
            </div>
        <a href="javascript:window.history.back();">&laquo; Retornar</a>
        <%--<asp:LinkButton ID="LinkButton1" runat="server" href="Javascript:window.close()" class="btn-success" >Cerrar</asp:LinkButton>--%>
       
    </form>
</body>
</html>
