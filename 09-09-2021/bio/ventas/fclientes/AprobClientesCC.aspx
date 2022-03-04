<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AprobClientesCC.aspx.cs" Inherits="biotech.bio.ventas.fclientes.AprobClientesCC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FICHA CLIENTE</title>
    <script type="text/javascript" language="javascript">

        function Reload() {
            window.opener.document.location.reload()
        }

</script> 
    <style type="text/css">
         
         *{box-sizing:border-box}
                   
        td,th{padding:0}
                                
        a{background-color:transparent}
        b,strong{font-weight:700;
    text-align: right;
}textarea{overflow:auto}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}
        button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer;
    margin-left: 1px;
    height: 26px;
}input{line-height:normal;
    font-size: large;
}
        .auto-style14 {
            font-size: x-small;
        }
        </style>

    <link href="../../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../vendorF/bootstrap/js/bootstrap.min.js"></script>

    <!-- MetisMenu CSS -->
    <link href="../../vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="../../vendorF/jquery/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
     <asp:Panel ID="PanelCLIENTEAAPROB" runat="server">
                <div class="row">
              <div class="col-md-12">
                 
                  <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa  fa-user-md fa-fw"></i> EVALUACIÓN: 
                           
                        </div>
                        <!-- /.panel-heading -->
                     <div class="table-responsive">
                <asp:GridView ID="gvZonascliente" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceZONAS" Font-Size="X-Small" OnSelectedIndexChanged="gvZonascliente_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="COD" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="COD" />
                                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                                    <asp:BoundField DataField="EF" HeaderText="EF" SortExpression="EF" Visible="False" />
                                    <asp:BoundField DataField="ECC" HeaderText="ECC" SortExpression="ECC" Visible="False" />
                                    <asp:BoundField DataField="EGG" HeaderText="EGG" SortExpression="EGG" Visible="False" />
                                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" Visible="False" />
                                    <asp:BoundField DataField="descripcion" HeaderText="COND. PAGO" SortExpression="descripcion" />
                                    <asp:BoundField DataField="DIAS" HeaderText="DIAS" SortExpression="DIAS" />
                                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" />
                                    <asp:BoundField DataField="IDMONEDA" HeaderText="IDMONEDA" SortExpression="IDMONEDA" Visible="False" />
                                    <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                                     <asp:ImageField DataImageUrlField="EF"  HeaderText="EF" DataImageUrlFormatString="~/images/z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                <asp:ImageField DataImageUrlField="ECC" HeaderText="ECC" DataImageUrlFormatString="~/images/z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                <asp:ImageField DataImageUrlField="EGG" HeaderText="EGG" DataImageUrlFormatString="~/images/z{0}.png">
                            <ControlStyle Height="10px" Width="10px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                                     <asp:BoundField DataField="FFICHA" HeaderText="EVALUACIÓN" ReadOnly="True" SortExpression="FFICHA" />
                                     <asp:BoundField DataField="FCC" HeaderText="FCC" ReadOnly="True" SortExpression="FCC" />
                                     <asp:BoundField DataField="FGG" HeaderText="FGG" ReadOnly="True" SortExpression="FGG" />

                                </Columns>
                            </asp:GridView>



                            <asp:Label ID="lblmensaje2" runat="server" ForeColor="#990000" Font-Size="X-Small"></asp:Label>



                            <asp:SqlDataSource ID="SqlDataSourceZONAS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente_zonas" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblIdCliente" Name="idcliente" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </div>
                           <asp:Panel ID="Panel3" runat="server" Visible="False">
                                &nbsp;codigoclientezonal: &nbsp; idasesorsolicita:<asp:TextBox ID="txtrtc1" runat="server" ReadOnly="True" Width="80px"></asp:TextBox>
                                &nbsp;correosolicita:
                                <asp:Label ID="lblcorreortc" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; idasesor:
                                <asp:Label ID="lblRTC" runat="server"></asp:Label>
                                &nbsp; nombrescompletos:
                                <asp:Label ID="lblnombrescompletos" runat="server"></asp:Label>
                                &nbsp; condpago:
                                <asp:Label ID="txtcondicion1" runat="server"></asp:Label>
                                &nbsp;NIVEL:
                                <asp:Label ID="lblnivelCargo" runat="server"></asp:Label>
                            </asp:Panel>
                            </div>
             </div>   </div>
         <div class="row">
             <div class="col-12 col-md-8">
                 
                  <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa  fa-user-md fa-fw"></i> FICHA CLIENTE:&nbsp;&nbsp;<asp:Label ID="lblEstadoCLiente" runat="server" Font-Bold="True"></asp:Label>
                            <asp:Label ID="lblUrlDinamico" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
                            &nbsp;</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                 
                                   
                   <dl class="dl-horizontal">
                  <dt>RUC:</dt>
                  <dd><asp:Label ID="lblIdCliente" runat="server"></asp:Label></dd>
                  <dt>RAZON SOCIAL:</dt>
                  <dd><asp:Label ID="lblRazonSocial" runat="server"></asp:Label></dd>
                      <br />
                       <dt>TELÉFONO:</dt>
                  <dd><asp:Label ID="lbltelefono" runat="server"></asp:Label></dd>
                   <dt>CONDICIÓN DE PAGO:</dt>
                  <dd><asp:Label ID="lblcondasesor" runat="server"></asp:Label></dd>
                      
                      <dt>IMPORTE PROPUESTO:<asp:Label ID="lblmoneda" runat="server" Visible="False"></asp:Label>
                      </dt>
                      <dd>
                          <asp:Label ID="lbldesdepropuesto" runat="server" Font-Bold="True"></asp:Label>
                          &nbsp;A
                          <asp:Label ID="lblhastaPropuesto" runat="server" Font-Bold="True"></asp:Label>
                          &nbsp;,
                          <asp:Label ID="lblmonedaDescripcion" runat="server"></asp:Label>
                      </dd>
                      <dt>REPRESENT. LEGAL:</dt>
                      <dd>
                          <asp:Label ID="lblrepresentLegal" runat="server"></asp:Label>
                      </dd>
                      <dt>BANCOS REF.:</dt>
                      <dd>
                          <asp:Label ID="lblbancoreferenciales" runat="server"></asp:Label>
                      </dd>

                      <dt>MAIL FACTURACIÓN:</dt>
                      <dd>
                          <asp:Label ID="lblcorreoFacturacionelec" runat="server"></asp:Label>
                      </dd>


                      <dt>DIREC. FISCAL:</dt>
                      <dd>
                          <asp:Label ID="lblDireccionfiscal" runat="server" style="font-size: small"></asp:Label>
                      </dd>
                      <dt>DEPARTAMENTO:</dt>
                      <dd>
                          <asp:Label ID="lbldepartamento" runat="server" style="font-size: small">No Registra</asp:Label>
                          &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; PROVINCIA:&nbsp;&nbsp; </strong>
                          <asp:Label ID="lblprovincia" runat="server" style="font-size: small">No Registra</asp:Label>
                      </dd>
                      <dt>DISTRITO:</dt>
                      <dd>
                          <asp:Label ID="lbldistrito" runat="server" style="font-size: small">No Registra</asp:Label>
                      </dd>
                      <br />
                       <dt>FINANZAS/PAGOS:</dt>
                      <dd>
                          <asp:Label ID="lblnombrePagos" runat="server"></asp:Label>
                      </dd>
                      <dt>TELÉFONO:</dt>
                      <dd>
                          <asp:Label ID="lbltelefonoPagos" runat="server"></asp:Label>
                      </dd>
                      <dt>MAIL:</dt>
                      <dd>
                          <asp:Label ID="lblcorreoPagos" runat="server"></asp:Label>
                      </dd>
                   <hr />
                  <dt>ASESOR C.:</dt>
                    <dd>  <asp:Label ID="lblObserRTC" runat="server" style="text-align: justify"></asp:Label></dd>
                    <dd><asp:Label ID="lblcargo" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                                        </dd>  
                      
                       <dt></dt>
                      <dd><asp:Label ID="lblAudiVendedorFecha" runat="server" style="font-size: small"></asp:Label>&nbsp;<asp:Label ID="lblActVendedor" runat="server" style="font-size: small"></asp:Label></dd>
                
                   <br />
                       <dt>CLIENTE CONTACTO:</dt>
                      <dd><asp:Label ID="lblContactoInterno" runat="server" style="font-size: small"></asp:Label></dd>

                     
                     <%-- <dt>Act. créditos:</dt>
                      <dd><asp:Label ID="lblCreditoFecha" runat="server" style="font-size: small"></asp:Label></dd>--%>

                    <dt>OBSERVACIÓN C&amp;C.</dt>
                    <dd>
                        <asp:Image ID="c2" runat="server" ImageUrl="~/images/a1.png" Width="15px" />
                        <asp:Image ID="c55" runat="server" ImageUrl="~/images/a0.png" Width="15px" />
                        <asp:Label ID="lblEstadoCred" runat="server"></asp:Label> 
                        <asp:Label ID="lblfechacreditosycobranzas" runat="server"></asp:Label></dd>


                    <asp:Label ID="lblObserCreditos" runat="server" ></asp:Label>
                       <br />
                      <br />
                      <dt>LINEA APROBADA:</dt>
                      <dd>
                          <asp:Label ID="lblOpCondGerencial" runat="server" Text="-- "></asp:Label> a <asp:Label ID="lblDiasGerencial" runat="server" Text="-- "></asp:Label> días</dd>
                      <dt>IMPORTE:</dt>
                      <dd>
                          <asp:Label ID="lblimporteGerencia" runat="server" Text=""></asp:Label>
                      &nbsp;
                      <asp:Label ID="lblmonedaCred" runat="server"></asp:Label></dd>
                      <br />

                    <dt><asp:Image ID="Image3" runat="server" Height="25px" ImageUrl="~/images/sentinell.png" Width="120" />
                      </dt>
                    <dd>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver ficha sentinel</asp:LinkButton>
                        <asp:Label ID="lblrutasentinel" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblFechaSentinel" runat="server"></asp:Label>
                      </dd>
                    <dt>RIESGO CRED.</dt>
                    <dd>
                        <asp:Image ID="ima1" runat="server" ImageUrl="~/images/1.png" Width="15px" />
                        <asp:Image ID="ima2" runat="server" ImageUrl="~/images/2.png" Width="15px" />
                        <asp:Image ID="ima3" runat="server" ImageUrl="~/images/3.png" Width="15px" />
                        <asp:Label ID="lblRiesgoCred" runat="server"></asp:Label>
                        <asp:Label ID="lblCodRiesgoSentinel" runat="server" Visible="False"></asp:Label>
                      </dd>
                </dl>
                 <dl>
                    
                    <dd>
                                        <asp:GridView ID="gvDetallefichaCliente" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" DataKeyNames="COD" DataSourceID="SqlDataSource6" GridLines="None" Width="100%">
                                            <Columns>
                                                <asp:BoundField DataField="COD" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="COD" Visible="False" />
                                                <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                                                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                                                <asp:BoundField DataField="ZONAPRODUCCION" HeaderText="ZONA" SortExpression="ZONAPRODUCCION" />
                                                <asp:BoundField DataField="RTC" HeaderText="ASESOR" SortExpression="RTC" />
                                                <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA" >
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                            </Columns>
                                            <HeaderStyle BackColor="WhiteSmoke" />
                                        </asp:GridView>
                                        
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaCultivosXruc" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblIdCliente" Name="ruc" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txtrtc1" Name="rtc" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                        <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>

                    </dd></dl>

                    
                   
                           
                            <asp:LinkButton ID="lbSalir" runat="server" Class="btn btn-default btn-sm" Width="100px" OnClick="lbSalir_Click">Salir</asp:LinkButton>

                 

                            <asp:LinkButton ID="LinkButton2" Class="btn btn-info btn-sm" runat="server" OnClick="LinkButton2_Click">Descargar Ficha Cliente</asp:LinkButton>

                 

                 </div>
</div>             </div>
            



     <div class="col-md-4">

                 <asp:Panel ID="PanelGerencia" runat="server">
                  <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> EVALUACIÓN GERENCIAL: COD:<asp:Label ID="lblcodClienteZonal" runat="server" Font-Bold="True"></asp:Label>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                               

                            <dl class="dl-horizontal">
<dd>
<asp:RadioButtonList ID="rbCredMoneda" runat="server" RepeatDirection="Horizontal" Width="140px">
                             <asp:ListItem Selected="True" Value="D">Dolares</asp:ListItem>
                             <asp:ListItem Value="S">Soles</asp:ListItem>
                         </asp:RadioButtonList></dd>

                            <dt>CONDICIÓN:</dt>
                          <dd>
                              <asp:DropDownList ID="ddlGerenciaCond" runat="server" Height="30px" Width="100%" DataSourceID="SqlDataSourcecondpago" DataTextField="descripcion" DataValueField="cod">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSourcecondpago" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_condpago 
WHERE  idcondpago not in ('CONT') ORDER BY orden"></asp:SqlDataSource>
                             </dd>

                    <dt>DÍAS:</dt>
                                 <dd>
                              <asp:TextBox ID="txtGerenciaDias" runat="server" type="number" step="0" Width="100%"></asp:TextBox>
                              </dd>
                    
                     <dt>IMPORTE:</dt>
                     <dd><asp:TextBox ID="txtGerenciaImporte" runat="server" type="number" step="0" Width="100%"></asp:TextBox>
                     </dd>
                                
                  
                      <br />
                 
                 <asp:TextBox ID="txtGerenciaObservacion" runat="server" placeholder="Observación / Comentario" Style="text-transform: uppercase" TextMode="MultiLine" Width="100%" Rows="5"></asp:TextBox>
                      <asp:Label ID="lblmensajeGerencia" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                            
                </dl>
                            <asp:Panel ID="Panel2" runat="server">
                  <asp:LinkButton ID="lbGerenciaAprobar"  Class="btn btn-success" runat="server" OnClick="lbGerenciaAprobar_Click" Width="50%" >APROBAR</asp:LinkButton>
                 <asp:LinkButton ID="lbGerenciaObservar"  Class="btn btn-danger" runat="server" OnClick="lbGerenciaObservar_Click" Width="45%" >OBSERVAR</asp:LinkButton>
                 
                 
                            </asp:Panel>

                           

                            </div>
                      </div>
                     </asp:Panel>


                 <asp:Panel ID="phistorialCred" runat="server">
                     
                     <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-edit fa-fw"></i> HISTORIAL CREDITICIO
                        </div>
                       
                             <asp:GridView ID="gvHistorialCreditos" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceComent" GridLines="None" PageSize="4" ShowHeader="False" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" Visible="False" />
                                <asp:BoundField DataField="idcliente" HeaderText="idcliente"  ReadOnly="True" SortExpression="idcliente" Visible="False" />
                                <asp:BoundField DataField="fecha" HeaderText="fecha"  ReadOnly="True" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" >
                                <HeaderStyle Width="60px" />
                                <ItemStyle HorizontalAlign="Center" Font-Size="X-Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="observacion" HeaderText="observacion" SortExpression="observacion" >
                                <ItemStyle Font-Size="X-Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="estadoSentinel"  ReadOnly="True" HeaderText="estadoSentinel" SortExpression="estadoSentinel" Visible="False" />
                                <asp:CommandField ShowEditButton="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                No registra historial Biotech
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceComent" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT TOP (4) * FROM [tb_Fc_observaciones] WHERE ([idcliente] = @idcliente) ORDER BY [id] DESC" UpdateCommand="update [tb_Fc_observaciones] set observacion = @observacion  where id=@id">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblIdCliente" Name="idcliente" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="observacion" />
                                <asp:Parameter Name="id" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                           
                         </div>
                         
                </asp:Panel>

                  
               </div>   
                  
          
         </div>
                            
              </asp:Panel>
        </div>              
                    
     
         <script src="../../vendorF/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../vendorF/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../../vendorF/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../../dist/js/sb-admin-2.js"></script>



    </form>
</body>
</html>
