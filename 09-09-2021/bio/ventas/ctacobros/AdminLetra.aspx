<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLetra.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.AdminLetra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                        <h2 class="page-header"><i class="fa fa-files-o fa-fw"></i> LETRA:
                            <asp:Label ID="lblLetra" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblIDestadocancel" runat="server" Text="0" Visible="False"></asp:Label>
                            <asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                        </h2>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
    <div class="form-horizontal">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-sm-2"><strong>CLIENTE</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblIdcliente" runat="server" Text=""></asp:Label>

                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblcliente" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                           
                         <div class="row">
                            <div class="col-sm-2"><strong>IMPORTE:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblimporte" runat="server" Text=""></asp:Label>
                            </div>
                             <div class="col-sm-2"><strong>MONEDA:</strong></div>
                             <div class="col-sm-2">
                                 <asp:Label ID="lblmoneda" runat="server" Text=""></asp:Label>

                             </div>
                           
                            </div>

                        <div class="row">
                             <div class="col-sm-2"><strong>ESTADO:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblestadoletra" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lblcodestadoletra" runat="server" Visible="False"></asp:Label>
                            </div>
                            </div>

            
                            <div class="row">
                            <div class="col-sm-2"><strong>F.EMISION:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblFechaEmision" runat="server"></asp:Label>
                            </div>
                            <div class="col-sm-2"><strong>F.VENCTO:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblFechaVencto" runat="server"></asp:Label>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col-sm-2"><strong>DETALLE:</strong></div>
                            <div class="col-sm-8">
                                <asp:Label ID="lblCondicion" runat="server" Text="---"></asp:Label>
                            </div>
                        </div>



                            <div class="row">
                            <div class="col-sm-2"><strong>NUM. UNICO:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblnumunico" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-sm-2"><strong>BANCO:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblbanco" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lblcodBanco" runat="server" Visible="False"></asp:Label>
                            </div>
                            </div>

                         <div class="row">
                            <div class="col-sm-2"><strong>DETALLE:</strong></div>
                            <div class="col-sm-8">
                                <asp:Label ID="lblDetalleLettra" runat="server" Text=""></asp:Label>
                            </div>
                           <%-- <div class="col-sm-2"><strong>BANCO:</strong></div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                            </div>--%>
                            </div>


                        <br />
                       
                         <div class="row"><strong>
                             CREDITOS Y COBRANZAS:</strong>
                            <div class="table-responsive">
                             <asp:GridView ID="gv_seguimiento" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceSeguimiento" PageSize="5" ShowHeader="False" Width="100%" GridLines="Horizontal" BorderStyle="None" Font-Size="X-Small">
                                 <Columns>
                                     <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="False" />
                                     <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                                     <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" SortExpression="fecha">
                                     <HeaderStyle Width="70px" />
                                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="descripcion" HeaderText="CONCEPTO" SortExpression="descripcion" />
                                     <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" >
                                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     </asp:BoundField>
                                 </Columns>
                                 <EmptyDataTemplate>
                                     <em>No registra...</em>
                                 </EmptyDataTemplate>
                                 <HeaderStyle BackColor="WhiteSmoke" />
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSourceSeguimiento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ListarletraComentario" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="lblidletra" Name="idletra" PropertyName="Text" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                                </div>
                            <asp:Label ID="lblmensaje" runat="server"></asp:Label>



                         </div>
                        <hr />
                       
                         <div class="row">
                            
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtseguimiento" placeholder="Seguimiento de cobranza" class="form-control" runat="server" MaxLength="250"></asp:TextBox>
                            </div>
                            <asp:LinkButton ID="tbREgSeguimiento" CssClass="btn btn-default" runat="server" OnClick="tbREgSeguimiento_Click">Registrar</asp:LinkButton>

                            <asp:LinkButton ID="lbRetornar"  class="btn btn-danger"  runat="server" OnClick="lbRetornar_Click">Cerrar</asp:LinkButton>
                        </div>
                          
                        <hr />
                       
 <asp:Panel ID="Panelno" runat="server" Visible="False">
 <div class="row">
                        <asp:Panel ID="PanelnumUnico" runat="server">                      
                       
                             <div class="col-sm-2"><strong>NUM. UNICO:</strong></div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="txtNumUnico" required class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-2"><strong>BANCO:</strong></div>
                            <div class="col-sm-3">
                                <asp:DropDownList ID="ddlBanco" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="banco" DataValueField="idBanco"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [BancoCuentas]"></asp:SqlDataSource>
                            </div>
                      
                            <br />
                            <br />

                            <asp:Button ID="btRegistrar" class="btn btn-default" runat="server" Text="Registrar Num. Único" OnClick="btRegistrar_Click" />

                          </asp:Panel>

                          </div>
     </asp:Panel>



                            FACTURAS ANEXADAS<br />
                            <div class="table-responsive">
                            <asp:GridView ID="GridView1" DataKeyNames="ID"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" Font-Size="X-Small">
                                <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:CommandField SelectText="Ver" ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/buscarr.png" >
                             <ControlStyle Height="20px" Width="20px" />
                             <HeaderStyle Width="25px" />
                             </asp:CommandField>
                             <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                             <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" SortExpression="FACTURA" ReadOnly="True" />
                             <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="FREGISTRO">
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="VENDEDOR" HeaderText="VEND" SortExpression="VENDEDOR" />
                             <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                             <asp:BoundField DataField="IBRUTO" HeaderText="IMP. BASE" SortExpression="IBRUTO" DataFormatString="{0:0,0.00}" >
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                             <HeaderStyle Width="70px" />
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="IMPNETO" HeaderText="IMP. NETO" SortExpression="IMPNETO" DataFormatString="{0:0,0.00}" >
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="IMPRETENIDO" HeaderText="IMP. RET" SortExpression="IMPRETENIDO" DataFormatString="{0:0,0.00}" >
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="IMPDIPONIBLE" HeaderText="IMP. DIP" SortExpression="IMPDIPONIBLE" DataFormatString="{0:0,0.00}" >
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" />
                             <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" ReadOnly="True" />
                             <asp:BoundField DataField="GUIAS" HeaderText="GUIAS" SortExpression="GUIAS" />
                         </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <EmptyDataTemplate>
                                    No registra factura...
                                </EmptyDataTemplate>
                         <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#E3EAEB" />
                         <SelectedRowStyle Font-Bold="True" BackColor="#C5BBAF" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F8FAFA" />
                         <SortedAscendingHeaderStyle BackColor="#246B61" />
                         <SortedDescendingCellStyle BackColor="#D4DFE1" />
                         <SortedDescendingHeaderStyle BackColor="#15524A" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_LetraDetFacturas" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblidletra" Name="IDLETRA" PropertyName="Text" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>

                    </div>




                      
                </div>
    
 </div>



                <br />
                <asp:LinkButton ID="lblUsuario" runat="server" Visible="False"></asp:LinkButton>

        </div>
            </div>
        </form>
</body>
    </html>

