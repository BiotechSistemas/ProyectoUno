<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CtaLetras.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.CtaLetras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LETRAS</title>
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
                        <h3 class="page-header"><i class="fa fa-files-o fa-fw"></i> LETRAS
                            <asp:Label ID="lbltituloletra" runat="server" Text="CANCELADAS"></asp:Label>
&nbsp;<asp:Label ID="lblIDestadocancel" runat="server" Text="0" Visible="False"></asp:Label>
                        </h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            
                <div class="row">
                    <asp:GridView ID="GridView1" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSource1" Font-Size="X-Small" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="idletra" HeaderText="idletra" ReadOnly="True" SortExpression="idletra" Visible="False" />
                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                            <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRO" SortExpression="FREGISTRO">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                            <asp:BoundField DataField="RENOV" DataFormatString="{0:0,0.00}" HeaderText="RENOV" SortExpression="RENOV" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AMORTIZADO" DataFormatString="{0:0,0.00}" HeaderText="AMORTIZ." SortExpression="AMORTIZADO" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADOL" HeaderText="ESTADO" SortExpression="ESTADOL" />
                            <asp:BoundField DataField="PRO" HeaderText="PRO" SortExpression="PRO" Visible="False" />
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" >
                            <ItemStyle Font-Size="X-Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NUMUNICO" HeaderText="NUMUNICO" SortExpression="NUMUNICO" />
                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                            <asp:BoundField DataField="IMPORNETO" DataFormatString="{0:0,0.00}" HeaderText="IMP.NETO" SortExpression="IMPORNETO" Visible="False">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADOCANCELADO" ReadOnly="True" SortExpression="ESTADOCANCELADO" Visible="False" />
                            <asp:BoundField DataField="CancelacionFecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="P.PAGADA" SortExpression="CancelacionFecha">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CancelacionMonto" HeaderText="P.MONTO" SortExpression="CancelacionMonto" />
                            <asp:BoundField DataField="autor" SortExpression="autor" />
                        </Columns>
                        <HeaderStyle BackColor="#999999" />
                    </asp:GridView>
    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_Letra" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIDestadocancel" Name="idcancelado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    
                </div>
            <a href="javascript:window.history.back();">&laquo; Retornar</a>
    </div>
    </form>
</body>
</html>
