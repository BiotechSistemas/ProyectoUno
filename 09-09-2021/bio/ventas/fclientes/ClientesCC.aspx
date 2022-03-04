<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientesCC.aspx.cs" Inherits="biotech.bio.ventas.fclientes.ClientesCC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        .auto-style1 {
            color: #CC0000;
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
   
       <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />




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
             <asp:Panel ID="panelCreditos" runat="server">
             <div class="col-md-12">
                 
                 <asp:Panel ID="peficha" runat="server">
                     FICHA A EVALUAR: COD Nº 
                                <asp:Label ID="lblcodClienteZonal" runat="server"></asp:Label>
                     <br />
                                <asp:LinkButton CssClass="btn btn-success" ID="ibtnaprobado" runat="server" Width="50%" OnClick="ibtnaprobado_Click">APROBAR FICHA</asp:LinkButton>
                                <asp:LinkButton CssClass="btn btn-danger" ID="ibtnfichaObservado" runat="server" Width="47%" OnClick="ibtnfichaObservado_Click">OBSERVAR FICHA</asp:LinkButton>
                            <asp:Panel ID="pficha2" runat="server" Visible="False">
                                <asp:TextBox ID="txtconceptoObservacionficha" placeholder="Ingresar observación..." runat="server" Rows="5" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                <asp:Button ID="btnRegistrarObservacion"  runat="server" Text="REGISTRAR OBSERVACIÓN" Width="100%" OnClick="btnRegistrarObservacion_Click" ForeColor="Red" />
                     </asp:Panel>
                     <br />
                            </asp:Panel>

                 <asp:Panel ID="pCreditos" runat="server">
                 <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> CREDITOS Y COBRANZAS
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">



                         



                 <dl class="dl-horizontal">


                  <dt>Riesgo Crediticio</dt>
                  <dd><asp:RadioButtonList ID="ddlRiegoCredito" runat="server" DataSourceID="SqlDataSourceriesgo" DataTextField="Detalle" DataValueField="id" RepeatDirection="Horizontal" Width="100%">
                                        </asp:RadioButtonList>
                                        <asp:SqlDataSource ID="SqlDataSourceriesgo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_FcEstadoSentinel]"></asp:SqlDataSource>
                   </dd>
                  <dt><asp:Image ID="Image1" runat="server" Height="28px" ImageUrl="~/images/sentinell.png" Width="100px" /></dt>
                  <dd>
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                      &nbsp;<asp:Button ID="btSubirArchivo" runat="server" class="btn-success" OnClick="btSubirArchivo_Click" Text="ADJUNTAR DOC. SENTINEL" />
                      <asp:Button ID="Button1" runat="server" ForeColor="#CC0000" OnClick="Button1_Click" Text="NO ADJUNTAR SENTINEL" />
                      <asp:Label ID="lbladjunto" runat="server"></asp:Label>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Solo pdf, doc o xls son permitidos." ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.pdf|.doc|.docx|.xls)$" ForeColor="Maroon"></asp:RegularExpressionValidator>
                                   
                  </dd>
                     <br />
                     <dt>Linea Credito</dt>
                          <dd>
                              <asp:DropDownList ID="ddlcreCond" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcecondpago" DataTextField="descripcion" DataValueField="cod">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSourcecondpago" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_condpago 
WHERE COD&lt;&gt;0 AND estado&lt;&gt;0 and idcondpago not in ('CONT') ORDER BY orden"></asp:SqlDataSource>
                              &nbsp;
                              <asp:TextBox ID="txtcreddias" runat="server" type="number" step="0" Width="80px">0</asp:TextBox>
                              días</dd>
                    
                     <dt>Importe</dt>
                     <dd><asp:TextBox ID="txtCredImporte" runat="server" type="number" step="0" Width="200px"></asp:TextBox>
                     </dd>
                      <dt>Moneda</dt>
                     <dd>
                         <asp:RadioButtonList ID="rbCredMoneda" runat="server" RepeatDirection="Horizontal" Width="100%">
                             <asp:ListItem Selected="True" Value="D">Dolares</asp:ListItem>
                             <asp:ListItem Value="S">Soles</asp:ListItem>
                         </asp:RadioButtonList></dd>
                     &nbsp;<br />
                  <dt>Creditos y Cobranzas</dt>
                  <dd><asp:TextBox ID="txtobservacion" runat="server" placeholder="Observación / Comentario" Style="text-transform: uppercase" TextMode="MultiLine" Width="100%"></asp:TextBox></dd> 

                <dt>Contacto interno</dt>
                <dd>
                    <asp:TextBox ID="txtContactoInterno" placeholder="Contacto interno" Style="text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                </dd>


                </dl>
                            <asp:Panel ID="Panel1" runat="server">
                  <asp:LinkButton ID="lbAprobar"  Class="btn btn-success" runat="server" OnClick="lbAprobar_Click">APROBAR</asp:LinkButton>
                 <asp:LinkButton ID="lbObservar"  Class="btn btn-danger" runat="server" OnClick="lbObservar_Click">OBSERVAR</asp:LinkButton>
                 <asp:LinkButton ID="lbRegComentario" Class="btn btn-default" runat="server" OnClick="lbRegComentario_Click">COMENTARIO / CONTACTO</asp:LinkButton>
                 
                            </asp:Panel>
                

                  <br />

                            <asp:Label ID="lblmensajeReg" runat="server" ForeColor="Maroon"></asp:Label>

                 <asp:GridView ID="gvfichasentinell" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceFichas" Visible="False">
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="clienteRuc" HeaderText="clienteRuc" SortExpression="clienteRuc" />
                         <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                         <asp:BoundField DataField="ruta" HeaderText="ruta" SortExpression="ruta" />
                         <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                         <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                     </Columns>
                 </asp:GridView>




                  <asp:SqlDataSource ID="SqlDataSourceFichas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT top 1 * FROM [tb_FichaClienteZentinel] WHERE ([clienteRuc] = @clienteRuc) ORDER BY [id] DESC">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lblIdCliente" Name="clienteRuc" PropertyName="Text" />
                      </SelectParameters>
                 </asp:SqlDataSource>

  </div>
                        <!-- /.panel-body -->

  </div>
</asp:Panel>
                         
            </div>
                 <br />
                 </asp:Panel>
             <br />
             <div class="col-md-8">
                 
                  <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa  fa-user-md fa-fw"></i> ESTADO FICHA CLIENTE&nbsp; <asp:Label ID="lblEstadoCLiente" runat="server" Font-Bold="True" ForeColor="Red">Seleccionar codigo evaluación..</asp:Label>
                            <asp:Label ID="lblUrlDinamico" runat="server" Visible="False"></asp:Label>
                        </div>
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
                      <dt>BANCOS REF:</dt>
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
                  <dt>ASESOR C.</dt>
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

                    <dt>OBSSERVACIÓN C&amp;C.</dt>
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
                        <asp:Label ID="lblRiesgoCred" runat="server"></asp:Label></dd>
                      <li>
                          <br />
                          CONTACTOS REGISTRADOS:<asp:GridView ID="gvContacto" runat="server" AutoGenerateColumns="False" class="table table-hover" DataKeyNames="id" DataSourceID="SqlDataSourcecontacto" Width="100%" Font-Size="XX-Small">
                              <Columns>
                                  <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                                  <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                  <asp:BoundField DataField="contacto" HeaderText="CONTACTO" SortExpression="contacto" />
                                  <asp:BoundField DataField="mail" HeaderText="E-MAIL" SortExpression="mail" />
                                  <asp:BoundField DataField="telefono" HeaderText="TELEFONO" SortExpression="telefono" />
                                  <asp:BoundField DataField="cargo" HeaderText="CARGO" SortExpression="cargo" />
                                  <asp:BoundField DataField="idusuarioRegistra" HeaderText="USU" SortExpression="idusuarioRegistra" />
                                  <asp:BoundField DataField="fcumpleanos" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. NACIMIENTO" SortExpression="fcumpleanos">
                                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                  </asp:BoundField>
                              </Columns>
                              <EmptyDataTemplate>
                                  <span class="auto-style1">No registra contactos.... </span>
                              </EmptyDataTemplate>
                              <HeaderStyle BackColor="#E8E8E8" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSourcecontacto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id, idcliente, contacto, mail, telefono, cargo, idusuarioRegistra,fcumpleanos from tb_FichaCliente_contacto  where idcliente = @idCliente">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="lblIdCliente" Name="idCliente" PropertyName="Text" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </li>
                </dl>
                 <dl>
                    
                    <dd>
                                        DETALLE FUNDOS REGISTRADOS:<asp:GridView ID="gvDetallefichaCliente" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcefundocultivo" Width="100%">
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                                <asp:BoundField DataField="FUNDO" HeaderText="FUNDO" SortExpression="FUNDO" />
                                                <asp:BoundField DataField="idcultivo" HeaderText="idcultivo" SortExpression="idcultivo" Visible="False" />
                                                <asp:BoundField DataField="idTipo" HeaderText="TIPO" SortExpression="idTipo" />
                                                <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                                                <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                                                <asp:BoundField DataField="HECTAREA" DataFormatString="{0:0,0.00}" HeaderText="HECTAREA" SortExpression="HECTAREA">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                            </Columns>
                                            <HeaderStyle BackColor="#EAEAEA" />
                                            <RowStyle ForeColor="Black" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSourcefundocultivo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cli_fundoscultivos" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblIdCliente" Name="idcliente" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                    </dd>
                     <dd></dd>
                     <dd>
                         <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                     </dd>
                            </dl>

                    
                   
                             

                 

                            <asp:LinkButton ID="LinkButton2" Class="btn btn-info btn-sm" runat="server" OnClick="LinkButton2_Click" Width="400px">DESCARGAR FICHA</asp:LinkButton>

                 </div>
</div>             </div>


             
             <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-edit fa-fw"></i> HISTORIAL CREDITICIO
                        </div>
                      
                             <asp:GridView ID="gvHistorialCreditos" Class="table table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceComent" GridLines="None" PageSize="6" ShowHeader="False" Width="100%" AllowPaging="True">
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
                  <asp:LinkButton ID="lbSalir" runat="server" Class="btn btn-default btn-sm" Width="100%" OnClick="lbSalir_Click">CERRAR FORMULARIO</asp:LinkButton>
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
