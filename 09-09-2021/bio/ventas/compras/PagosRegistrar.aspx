<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="PagosRegistrar.aspx.cs" Inherits="biotech.bio.ventas.compras.PagosRegistrar" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">

    <script src="../../../scripts/sweetalert.min.js"></script>

    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }

        function successError() {
            swal("Error! Pagos registrados en su totalidad!", { icon: "error",dangerMode: true, });
        }

        function successRegistrado2() {
          
            swal({
                title: "Registro correcto!",
                text: "el registro se guardo corectamente!",
                icon: "success",
                button: "Aceptar",
            })


            .then((willDelete) => {
                if (willDelete) {
    window.location.href = '/bio/ventas/compras/PagosRegistrar.aspx';
        }});
        }
       

    </script>
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
    <script>

        $(document).ready(function () {
            $('#dvcuentaxpagar').DataTable();
        });

    </script>


    <style type="text/css">
        .auto-style1 {
            width: 1000px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            background-color: #F0F0F0;
        }
        .auto-style4 {
            background-color: #D2ECD2;
        }
        .auto-style6 {
            font-size: xx-small;
        }
        .auto-style7 {
            height: 20px;
            background-color: #F0F0F0;
        }
        .auto-style8 {
            height: 20px;
            font-size: xx-small;
            background-color: #F0F0F0;
        }
        .auto-style10 {
            color: #006600;
        }
        .auto-style11 {
            color: #990000;
        }
        .auto-style12 {
            text-align: right;
            background-color: #D2ECD2;
        }
        .auto-style13 {
            background-color: #CCCCCC;
        }
        .auto-style14 {
            width: 1000px;
        }
        .auto-style15 {
            height: 20px;
        }
        .auto-style16 {
            background-color: #F7DDE1;
        }
        .auto-style17 {
            background-color: #A5DCCB;
        }
        .auto-style18 {
        }
    </style>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />




    <div class="row-fluid">
        <div class="col-md-12">
            <h3><span class="glyphicon glyphicon-edit"></span>CTA. POR PAGAR:
                <asp:Label ID="lblcpTitulo" runat="server" Visible="False"></asp:Label>

            </h3>
            <asp:Panel ID="payudaprincipal" runat="server" Visible="False">
                &nbsp;ID PAGO:
                <asp:Label ID="lblidpago1" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp; IDPROVEEOR:
                <asp:Label ID="lblidproveedor1" runat="server"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="lblIDusuario" runat="server" Visible="False"></asp:Label>
                NIVEL USU:<asp:Label ID="lblnivel" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp; SI FACT:&nbsp;
                <asp:Label ID="lblEstadoconFactura" runat="server"></asp:Label>
            </asp:Panel>
            <div class="row">
                <ol class="breadcrumb">
                    

                     <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/bio/ventas/compras/Proveedor.aspx" >Proveedores</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotizaciones</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Orden de compra</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRegistrar.aspx">Cta. pagos</asp:LinkButton>
                        </li>
                      <li>
                        <%--<asp:LinkButton ID="lbt_Facturados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosFacturados.aspx">Facturar Cuenta</asp:LinkButton>--%>
                         <asp:LinkButton ID="lbt_Facturados" runat="server" PostBackUrl="~/porpagar/CCA.aspx">Centro de costos</asp:LinkButton>
                    </li>
                          <li>
                        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>


                </ol>
            </div>

            <div class="form-horizontal">

                <asp:Panel ID="ppagoreg" runat="server" Visible="False">
                    <div class="form-group row">
                        <div class="col-md-2">
                             <asp:TextBox ID="txtfechasistema" runat="server" class="form-control" ReadOnly="True" ></asp:TextBox>
                             <small><label for="txtndocumento">F. REGISTRO:</label></small> 
                            </div>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ddlempresa" class="form-control" runat="server" DataSourceID="SqlDataSourceEmpresa" DataTextField="empresa" DataValueField="id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_empresas] WHERE ([estado] = @estado)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                             <small><label for="txtndocumento">EMPRESA:</label></small> 
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="txtproveedor" runat="server" placeholder="Proveedor" class="form-control" ToolTip="Ingresar proveedor a buscar"></asp:TextBox>
                             <small><label for="txtndocumento">BUSCAR PROVEEDOR:</label></small> 
                        </div>
                        <div class="col-md-1">
                            <asp:LinkButton ID="lbBuscar" class="btn btn-success" runat="server" OnClick="lbBuscar_Click" Width="100%">Buscar</asp:LinkButton>
                        </div>
                         <div class="col-md-5">
                             <asp:TextBox ID="txtproveedorDetalle" CssClass="form-control"  runat="server" ReadOnly="True"></asp:TextBox>
                              <small><label for="txtndocumento">PROVEEDOR</label></small> 
                             </div>
                    </div>

                     <div class="form-group row">
                                <div class="col-md-3">
                                     <asp:DropDownList ID="ddl10CC" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcecca" DataTextField="Descripcion" DataValueField="idCentroCosto" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCA_SelectedIndexChanged">
                                    </asp:DropDownList>
                                <small><label for="txtimporte">Centro de costo:</label></small>
                                </div>
                         <div class="col-md-3">
                               <asp:DropDownList ID="ddl10CCaux" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2ccauxi" DataTextField="CATEGORIA" DataValueField="idCategoria" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCaux_SelectedIndexChanged">
                                    </asp:DropDownList>
                                <small><label for="txtimporte">CC. Auxiliar:<asp:Label ID="lblidconunidad" runat="server" Visible="False">0</asp:Label>
                               </label></small>
                                &nbsp;</div>
                         <div class="col-md-3">
                               <asp:DropDownList ID="dd10tipocompras"  CssClass="form-control" runat="server" DataSourceID="SqlDataSourcecctipo" DataTextField="titulo" DataValueField="idccdet">
                     </asp:DropDownList>
                                <small><label for="txtimporte">Tipo de gasto:</label></small>
                                </div>

                         <asp:Panel ID="psubunidad10" runat="server">
                         
                 <div class="col-sm-3">
                        
                                       <asp:SqlDataSource ID="SqlDataSourceUnidadesd" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        <asp:DropDownList ID="ddlIdUnidad" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceUnidadesd" DataTextField="EQUIPOPERSONAL" DataValueField="IdEquipo">
                                        </asp:DropDownList>
                      <small><label for="txtimporte">Unidad Vehicular:</label></small>
                        
                       </div>
            
                                    </asp:Panel>
                         
                    </div>

                    
                                <asp:SqlDataSource ID="SqlDataSourcecctipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddl10CCaux" Name="idcat" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2ccauxi" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_distribucionxcc" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddl10CC" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSourcecca" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.CCostoAdministrativo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      

                    <hr />
                      <div class="form-group row">
                           <div class="col-md-1">
                            <asp:RadioButtonList ID="rbmoneda" runat="server" Width="100%">
                                <asp:ListItem Value="D">DOLARES</asp:ListItem>
                                <asp:ListItem Value="S">SOLES</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="txtimportegg" runat="server" required type="number" step="0.0001" placeholder="importe total" class="form-control" ToolTip="Importe total general" AutoPostBack="True" OnTextChanged="txtimportegg_TextChanged"></asp:TextBox>
                            <small><label for="txtimporte">Imp. total general:</label></small>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="txtadelanto" runat="server" type="number" step="0.0001" placeholder="adelanto" class="form-control" ToolTip="Importe de adelanto" AutoPostBack="True" OnTextChanged="txtadelanto_TextChanged"></asp:TextBox>
                            <small><label for="txtadelanto">Imp. inicial:</label></small>
                        </div>
                           <div class="col-md-1">
                            <asp:TextBox ID="txtimportePagar" runat="server" type="number" step="0.0001" placeholder="a pagar" ReadOnly="true" class="form-control" ToolTip="Importe a pargar"></asp:TextBox>
                            <small><label for="txtadelanto">Imp. a pagar:</label></small>
                        </div>

                              <div class="col-md-1">
                                   
                                    <asp:RadioButtonList ID="rbcuotas" RepeatDirection="Horizontal"  runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="rbcuotas_SelectedIndexChanged" CellSpacing="5">
                                        <asp:ListItem Value="SI">SI</asp:ListItem>
                                        <asp:ListItem Value="NO">NO</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <small><label for="rbcuotas">EN CUOTAS:</label></small> 
                                    
                                </div>

                                <div class="col-md-2">
                                   
                                    <asp:TextBox ID="txtcuotas" runat="server" required type="number" placeholder="Cuotas" class="form-control" ToolTip="Cantidad de cuotas"></asp:TextBox>
                                    <small><label for="txtcuotas"> CUOTAS:</label></small> 
                                </div>
                

                       
                    
                      
                         <div class="col-md-2">
                            <asp:TextBox ID="txtDetraccionDescripcion"  CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                         <small><label for="txtadelanto">% Detracción:<asp:Label ID="lblidDetraccion" runat="server" Visible="False"></asp:Label>
                            </label></small>
                        &nbsp;</div>
                       
                           </div>
                       

                    <div class="form-group row">
                          <div class="col-md-2">
                            <asp:TextBox ID="txtfecha1" runat="server" class="form-control" ToolTip="Fecha emisión factura o registro de cuenta"></asp:TextBox>
                            <asp:TextBox ID="txtfecha" runat="server" required class="form-control" TextMode="Date" ToolTip="Fecha emisión factura o registro de cuentaa"></asp:TextBox>
                             <small><label for="txtndocumento">EMISIÓN DOC. REFERENCIAL:</label></small> 
                        </div>

                        <div class="col-md-2">
                            <asp:TextBox ID="txtndocumento" runat="server" required placeholder="N° documento" class="form-control" ToolTip="Número de documento, factura, contrato, entre otros..."></asp:TextBox>
                                 <small><label for="txtndocumento">NÚM. DOC. REFERENCIAL:</label></small> 
                             <asp:TextBox ID="txtTitular" runat="server" required placeholder="Titular" class="form-control" ToolTip="Titular de cuenta" Visible="False"></asp:TextBox>
                        </div>
                    
                        <div class="col-md-2">
                            Doc. referencial:<asp:Label ID="lblDOC" runat="server"></asp:Label><br />
                                 <asp:LinkButton ID="lbtFactDoc" runat="server" OnClick="lbtFactDoc_Click">Ver Documento</asp:LinkButton>
                       </div>

                         <div class="col-md-3">
                               <asp:FileUpload ID="FileUploadFact" runat="server" />

                             </div>
                             <div class="col-md-3">
                                 
                                
                         
                             <asp:Button ID="btnguardarFactDoc" runat="server" CssClass="btn-success" Text="GUARDAR DOC. REFERENCIAL" OnClick="btnguardarFactDoc_Click" />
                           </div>  
                          

                         </div>

                      

                 

                    <div class="form-group row">
                        <div class="col-md-12">
                            <asp:TextBox ID="txtglosa" Rows="2" class="form-control" runat="server" TextMode="MultiLine" placeholder="Descripcion de cuenta" ToolTip="Asunto o descripción"></asp:TextBox>
                        </div>
                    </div>


                    <div class="form-group row">
                        <div class="col-md-12">
                            <asp:Button ID="Button2" CssClass="col-md-2 btn btn-success" runat="server" Text="REGISTRAR" OnClick="Button2_Click" Visible="False" OnClientClick="successRegistrado2"></asp:Button>
                            <asp:Button ID="btmodificar" CssClass="col-md-2 btn btn-success" runat="server" Text="MODIFICAR" OnClick="btmodificar_Click"></asp:Button>
                            <asp:Button ID="bteliminar" CssClass="col-md-2 btn btn-danger" runat="server" Text="ELIMINAR" OnClick="bteliminar_Click"></asp:Button>

                            <asp:LinkButton ID="lbtcacelar" runat="server" CssClass="col-md-2 btn btn-danger" OnClick="lbtcacelar_Click">CANCELAR</asp:LinkButton>
                            <asp:LinkButton ID="lbtnAnular" runat="server" CssClass="col-md-2 btn btn-default" OnClick="lbtnAnular_Click" >ANULAR</asp:LinkButton>

                        </div>
                    </div>

                    <asp:Panel ID="pFacturas" runat="server">
                        Detalle de facturación:
                        <asp:Label ID="lblsumFacturasDoc" runat="server" Font-Bold="True"></asp:Label>
                        &nbsp;importe facturado.<asp:GridView ID="gvFActuras" runat="server" AutoGenerateColumns="False" DataKeyNames="iddoc" DataSourceID="SqlDataSourceFacturaListado" OnRowCommand="gvFActuras_RowCommand">
                            <Columns>
                                 <asp:ButtonField CommandName="eliminar" HeaderText="" ShowHeader="True" Text="DESCARGAR" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <ItemStyle Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:ButtonField>
                                <asp:BoundField DataField="iddoc" HeaderText="COD" ReadOnly="True" SortExpression="iddoc" />
                                <asp:BoundField DataField="idPago" HeaderText="idPago" SortExpression="idPago" Visible="False" />
                                <asp:BoundField DataField="NFACTURA" HeaderText="Nª FACTURA" ReadOnly="True" SortExpression="NFACTURA" >
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="BASE" DataFormatString="{0:0,0.00}" HeaderText="BASE" SortExpression="BASE">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}" HeaderText="IGV" SortExpression="IGV">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NETO" DataFormatString="{0:0,0.00}" HeaderText="NETO" SortExpression="NETO">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="fechaEmision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISIÓN" SortExpression="fechaEmision">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tpmoneda" HeaderText="tpmoneda" SortExpression="tpmoneda" Visible="False" />
                                <asp:BoundField DataField="idtpdocumento" HeaderText="IDTPDOC" SortExpression="idtpdocumento" Visible="False" />
                                <asp:BoundField DataField="DESCRIPTPdOC" HeaderText="TP DOCUMENTO" SortExpression="DESCRIPTPdOC" />
                                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                                <asp:BoundField DataField="ESTADOdOC" HeaderText="F" ReadOnly="True" SortExpression="ESTADOdOC" Visible="False" />
                                 <asp:ButtonField CommandName="BAJARFACT" HeaderText="FACT" ShowHeader="True" Text="DESCARGAR" ButtonType="Image" ImageUrl="~/images/BAJAR.png" >
                                                                          <ControlStyle Height="16px" Width="16px" />
                                                                          <ItemStyle Height="16px" HorizontalAlign="Center" VerticalAlign="Middle" Width="16px" />
                                                                          </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                No adjunta facturas correspondientes
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceFacturaListado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_listarFacturas" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidpago1" Name="idpago" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSourcecondpagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.condpago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <br />
                        <table class="auto-style14">
                            <tr>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtfserie" Style="text-transform: uppercase" placeholder="Serie" runat="server" Width="100px"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtfnumero" Style="text-transform: uppercase" placeholder="Número" runat="server" Width="120px"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtfimportebase" type="number" step="0.01"  placeholder="0.00" runat="server" Width="100px"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtfimporteigv" runat="server" ForeColor="#990000" placeholder="0.00" step="0.01" type="number" Width="100px"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtffechaemision" runat="server" TextMode="Date"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:DropDownList ID="ddlFConpago" runat="server" DataSourceID="SqlDataSourcecondpagos" DataTextField="descripcion" DataValueField="id" Width="300px" Height="28px">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style18">
                                    <asp:FileUpload ID="FileUploadFacturacion" runat="server" ToolTip="Adjntar factura" />
                                </td>
                                <td class="auto-style18" rowspan="2">
                                    <asp:ImageButton ID="ibtnRegFactura" runat="server" ImageUrl="~/images/agre.png" Width="30px" OnClick="ibtnRegFactura_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">Factura: serie - número: </td>
                                <td>Importe base</td>
                                <td>Imp. IGV</td>
                                <td>F. emisión:</td>
                                <td>Tipo. comprobante:</td>
                                <td>Adjuntar factura:<asp:Label ID="lbldatoFact" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lblfmensaje" runat="server" ForeColor="#CC0000"></asp:Label>
                        <br />
                        <asp:Label ID="lblfmensajeFacturacion" runat="server" ForeColor="#CC0000"></asp:Label>
                    </asp:Panel>

                </asp:Panel>


                <asp:Panel ID="pDetallePagos" runat="server" class="form-horizontal" Visible="False">
                    <h4>CUENTA POR PAGAR: CP-&nbsp;<asp:Label ID="lblidcuenta" runat="server"></asp:Label>
                        <asp:ImageButton ID="ibtnVercuenta" runat="server" ImageUrl="~/images/buscarr.png" OnClick="ibtnVercuenta_Click" Width="25px" />
                    </h4>
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <small>
                        <asp:Label ID="lbliddetallepagoElim" runat="server"></asp:Label>
                        <small>
                        <asp:Label ID="lblestadoCuota" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp; mindetaccion:
                        </small>
                        <asp:Label ID="lblminImpDetraccion" runat="server"></asp:Label>
                        </small>
                    </asp:Panel>
                    <table class="auto-style1">
                        <tr>
                            <td  WIDTH="110">
                                <asp:Label ID="lbl1ruc" runat="server"></asp:Label>
                                <asp:Label ID="lbl1idProveedor" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblproveedor" runat="server" Style="font-weight: 700"></asp:Label>
                            </td>
                            <td WIDTH="150" >
                                <asp:Label ID="lbl1fecharegistro" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbl1moneda" runat="server"></asp:Label>
                                <asp:Label ID="lbl1tpmoneda" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td WIDTH="150">
                                <asp:Label ID="lbl2DetraccionDescripcion" runat="server"></asp:Label>
                                <asp:Label ID="lbl2DetraccionValor" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr class="auto-style6">
                            <td class="auto-style7">RUC:</td>
                            <td class="auto-style7">Cliente:</td>
                            <td class="auto-style7"></td>
                            <td class="auto-style7">Fecha registro:</td>
                            <td class="auto-style7">Moneda:</td>
                            <td class="auto-style7">Detracción:</td>
                        </tr>
                        <tr>
                            <td>
                               
                                <asp:Label ID="lblimportett" runat="server" Font-Bold="True"></asp:Label>
                               
                            </td>
                            <td>
                                 <asp:Label ID="lbl1importeinicial" runat="server"></asp:Label>
                            </td>
                            <td>
                               <asp:Label ID="lbl1importepagar" runat="server" ForeColor="#990000"></asp:Label>
                               </td>
                            
                            <td>
                                 <asp:Label ID="lblcuotas" runat="server"></asp:Label>
                                /<asp:Label ID="lblcuotasregistadas" runat="server"></asp:Label>
                               </td>
                            <td>
                                 <asp:Label ID="lbl1importeRegistrados" runat="server" ForeColor="#006600"></asp:Label>
                                &nbsp;(<asp:Label ID="lblporcenRegPago" runat="server"></asp:Label>
                                %)
                               </td>
                            <td>
                                <asp:Label ID="lbl1PagosporRegistrar" runat="server" ForeColor="#990000"></asp:Label>
                                &nbsp;<span class="auto-style11">(<asp:Label ID="lblporcenRegPagodif" runat="server"></asp:Label>
                                %)</span></td>
                        </tr>
                       
                        <tr class="auto-style6">
                            <td class="auto-style7">imp. total general:</td>
                            <td class="auto-style7">Importe inicial:</td>
                            <td class="auto-style7">imp. por pagar:</td>
                            <td class="auto-style7">Nº cuotas:</td>
                            <td class="auto-style7">Pagos registrados:</td>
                            <td class="auto-style7">Pagos por registrar:</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="lbl1asunto" runat="server"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblmensajeDetraccion" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Asunto:</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:LinkButton ID="btCancel3" runat="server" CssClass="col-md-1 btn btn-danger" OnClick="btCancel2_Click" Visible="False" Width="100px">Cancelar</asp:LinkButton>
                            </td>
                        </tr>

                         <tr>
                            <td>
                                <asp:LinkButton ID="lbtnNOrcenCompra" runat="server" OnClick="lbtnNOrcenCompra_Click"></asp:LinkButton>
                             </td>
                            <td colspan="3">
                                <asp:Label ID="lbl3ocDetallepago" runat="server"></asp:Label>
                             </td>
                            <td>
                                <asp:Label ID="lblestadoOc" runat="server"></asp:Label>
                             </td>
                            <td>
                                <asp:Label ID="lbl3fechaproxPago" runat="server" Font-Bold="True"></asp:Label>
                             </td>
                        </tr>
                        
                         <tr>
                            <td class="auto-style8">Orden Compra/S:
                                <asp:Label ID="lbl3idOc" runat="server" Visible="False"></asp:Label>
                             </td>
                            <td class="auto-style8" colspan="3">Detalle OC:
                                <asp:Label ID="lblconceptoobservaOC" runat="server" ForeColor="#CC3300"></asp:Label>
                             </td>
                            <td class="auto-style8">Estado OC.</td>
                            <td class="auto-style8">Fecha tentativa de pago:</td>
                        </tr>

                         <tr>
                             <td>
                                 <asp:LinkButton ID="lbtnNcotizacion" runat="server" OnClick="lbtnNcotizacion_Click"></asp:LinkButton>
                             </td>
                             <td colspan="5">
                                 <asp:Label ID="lbldetalleObservacion" runat="server"></asp:Label>
                             </td>
                        </tr>
                         <tr>
                             <td class="auto-style8">Cotización:
                                 <asp:Label ID="lblidCotizacion" runat="server" Visible="False"></asp:Label>
                             </td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" ><strong>PAGOS REGISTRADOS:</strong></td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnPagoprogramado" runat="server" OnClick="btnPagoprogramado_Click" Text="PAGO PROGRAMADO" />
                            </td>
                            <td>
                                <asp:Button ID="btnpagorealizado" runat="server" BackColor="#AADCD2" OnClick="btnpagorealizado_Click" Text="PAGO REALIZADO" />
                            </td>
                        </tr>
                    </table>

                      <asp:Panel ID="PANELPAGO1" runat="server">
                           <asp:GridView ID="gvDetallePagos" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle,idpagos,NCUOTA,ESTADO" DataSourceID="SqlDataSourceDetallePagos" OnSelectedIndexChanged="gvDetallePagos_SelectedIndexChanged" Width="100%" OnRowDataBound="gvDetallePagos_RowDataBound">
                          <Columns>
                              <asp:CommandField ShowSelectButton="True" />
                              <asp:BoundField DataField="idDetalle" HeaderText="COD" ReadOnly="True" SortExpression="idDetalle" />
                              <asp:BoundField DataField="NCUOTA" HeaderText="Nº CUOTA" SortExpression="NCUOTA">
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                              <asp:BoundField DataField="fact_idreferencial" HeaderText="FACT. REF." SortExpression="fact_idrefencial" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="estadoValidacion" HeaderText="estadoValidacion" SortExpression="estadoValidacion" Visible="False" />
                              <asp:BoundField DataField="PorcentPago" HeaderText="% PAGO" SortExpression="PorcentPago" >
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="moneda1" HeaderText="moneda1" SortExpression="moneda1" Visible="False" />
                              <asp:BoundField DataField="FVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. PAGO" SortExpression="FVENCIMIENTO">
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" Visible="False" />
                              <asp:BoundField DataField="MONTO" HeaderText="IMP. A PAGAR" SortExpression="MONTO" DataFormatString="{0:0,0.0000}" >
                              <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="FACTIMPPAGADO" HeaderText="IMP. PAGADO" SortExpression="FACTIMPPAGADO" DataFormatString="{0:0,0.0000}" >
                              <HeaderStyle BackColor="#AADCD2" />
                              <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#A5DCCB" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                              <asp:BoundField DataField="detracc_pagar" HeaderText="DETRACCIÓN" SortExpression="detracc_pagar" DataFormatString="{0:0,0.0000}" >
                              <HeaderStyle Width="100px" BackColor="#F0E6E8" />
                              <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="detracc_pagarSoles" HeaderText="DETRACCIÓN SOLES" SortExpression="detracc_pagarSoles" DataFormatString="{0:0,0.0000}" >
                              <HeaderStyle BackColor="#F0E6E8" Width="110px" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                               <asp:BoundField DataField="DETRApAGADASOLES" HeaderText="DET. PAGADA SOLES" SortExpression="DETRApAGADASOLES" DataFormatString="{0:0,0.0000}" >
                              <HeaderStyle BackColor="#FFDFDF" Width="110px" />
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>

                              <asp:BoundField DataField="detracc_pagarestado" HeaderText="ESTADO DETRACC." SortExpression="detracc_pagarestado"  Visible="False">
                              <HeaderStyle Width="80px" />
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>

                                 <asp:ImageField DataImageUrlField="detracc_pagarestado" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#FFDFDF" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                          </Columns>
                          <EmptyDataTemplate>
                              No registra programación de pago...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="#EAEDF1" />
                    </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSourceDetallePagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_detallexID" SelectCommandType="StoredProcedure" UpdateCommand="update PagosDetalle set monto=@monto,fechavencto= @FVENCIMIENTO FROM PagosDetalle WHERE idDetalle = @idDetalle ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidcuenta" Name="idpago" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="monto" />
                                        <asp:Parameter Name="FVENCIMIENTO" />
                                        <asp:Parameter Name="idDetalle" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                    Por pagar:
                    <asp:Image ID="Image6" runat="server" Height="10px" ImageUrl="~/images/Z0.png" Width="10px" />
                    &nbsp;| Pago realizado:
                    <asp:Image ID="Image7" runat="server" Height="10px" ImageUrl="~/images/Z1.png" Width="10px" />
                    &nbsp;|&nbsp; Sin efecto:
                    <asp:Image ID="Image8" runat="server" Height="10px" ImageUrl="~/images/Z4.png" Width="10px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbEliminar" runat="server" OnClick="lbEliminar_Click" OnClientClick="return confirm('*Eliminar registro de cuota, desea eliminar registro?');" BackColor="#990000" ForeColor="White">Eliminar</asp:LinkButton>
                    <br />
                    </asp:Panel>

                     
                    <asp:Panel ID="PanelPagosRealizados" runat="server" Visible="False">
                        <asp:GridView ID="gvDetPAgo" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idDetalle" DataSourceID="SqlDataSource2" Font-Size="Small" ForeColor="Black" GridLines="Vertical" Width="100%" OnSelectedIndexChanged="gvDetPAgo_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True">
                                <HeaderStyle BackColor="#E5EBF2" />
                                </asp:CommandField>
                                <asp:BoundField DataField="idDetalle" HeaderText="COD" ReadOnly="True" SortExpression="idDetalle" >
                                <HeaderStyle BackColor="#E5EBF2" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                                <asp:BoundField DataField="PorcentPago" HeaderText="% PAGO" SortExpression="PorcentPago" Visible="False">
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:BoundField>
                                <asp:BoundField DataField="moneda1" HeaderText="MONEDA" SortExpression="moneda1" Visible="False">
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" Visible="False">
                                <HeaderStyle BackColor="#CCCCCC" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ncuota" HeaderText="Nº CUOTA" SortExpression="ncuota">
                                <HeaderStyle BackColor="#E5EBF2" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FFVENCIMIENTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. VENCTO" SortExpression="FFVENCIMIENTO" Visible="False">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FIMPORTE" DataFormatString="{0:0,0.00}" HeaderText="POR PAGAR" SortExpression="FIMPORTE" Visible="False">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FMEDIODEPAGO" HeaderText="F MED. PAGO" SortExpression="FMEDIODEPAGO">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="BANCO" HeaderText="FACT. BANCO" SortExpression="BANCO">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  
                              
                                <asp:BoundField DataField="FOPERACION" HeaderText="F. NÚM. OPERACION" SortExpression="FOPERACION">
                                <HeaderStyle BackColor="#9FDCC3" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FFPAGADA" HeaderText="F. FECHA PAGADA" SortExpression="FFPAGADA" DataFormatString="{0:dd/MM/yyyy}">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FIMPPAGADO" HeaderText="F. IMP. PAGADO" SortExpression="FIMPPAGADO" DataFormatString="{0:0,0.0000}">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="TPCOMPROBANTE" HeaderText="TP. COMPROBANTE" SortExpression="TPCOMPROBANTE">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  <asp:BoundField DataField="NUMFACT" HeaderText="NUM. FACT" SortExpression="NUMFACT">
                                <HeaderStyle BackColor="#9FDCC3" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="FACFECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FACT. FECHA" SortExpression="FACFECHA">
                                <HeaderStyle BackColor="#9FDCC3" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  <asp:ImageField DataImageUrlField="FESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#A5DCCB" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                                <asp:BoundField DataField="DETRACCION" DataFormatString="{0:0,0.00}" HeaderText="DET. PAGAR" SortExpression="DETRACCION" Visible="False">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETRACSOLES" DataFormatString="{0:0,0.00}" HeaderText="DET. SOLES" SortExpression="DETRACSOLES" Visible="False">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETIDMEDIOPAGO" HeaderText="DET. MEDIO PAGO" SortExpression="DETIDMEDIOPAGO">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="BANCODET" HeaderText="DET. BANCO" SortExpression="BANCODET">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETNOPERACION" HeaderText="DET. N OPERACION" SortExpression="DETNOPERACION">
                                <HeaderStyle BackColor="#F7DDE1" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETCONSTANCIA" HeaderText="DET. CONSTANCIA" SortExpression="DETCONSTANCIA">
                                <HeaderStyle BackColor="#F7DDE1" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DETPAGOREALIZADOS" HeaderText="DET. PAGO REALIZADO" SortExpression="DETPAGOREALIZADOS" DataFormatString="{0:0,0.0000}">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                              <asp:BoundField DataField="DETRACFECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DETRACC. FECHA" SortExpression="DETRACFECHA">
                                <HeaderStyle BackColor="#F7DDE1" />
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                  <asp:ImageField DataImageUrlField="DETESTADO"  HeaderText="" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" BackColor="#FFDFDF" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" Visible="False" />
                                <asp:BoundField DataField="detracc_doc" HeaderText="detracc_doc" SortExpression="detracc_doc" Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" Font-Size="X-Small" ForeColor="Black" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        Por pagar:
                        <asp:Image ID="Image9" runat="server" Height="10px" ImageUrl="~/images/Z0.png" Width="10px" />
                        &nbsp;| Pago realizado:
                        <asp:Image ID="Image10" runat="server" Height="10px" ImageUrl="~/images/Z1.png" Width="10px" />
                        &nbsp;|&nbsp; Sin efecto:
                        <asp:Image ID="Image11" runat="server" Height="10px" ImageUrl="~/images/Z4.png" Width="10px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagosDet_listar" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidcuenta" Name="idpago" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                        
                    </asp:Panel>
                    <asp:Panel ID="pactualizarApagar" runat="server">
                            <table>
                                <tr>
                                    <td><strong>IMPORTE A PAGAR:</strong></td>
                                    <td>
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="importPagottsoles" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtfidfactReferencial" runat="server" TextMode="Number" Width="130px" BackColor="#FFFFCC"></asp:TextBox>
                                        <br />
                                        FACT. REFERENCIAL:</td>
                                    <td>
                                        <asp:TextBox ID="txtfimportepagott" runat="server" BackColor="#FFFFCC" ForeColor="#003399" Width="130px"></asp:TextBox>
                                        <asp:ImageButton ID="btnFCalporcentual" runat="server" Height="25px" ImageUrl="~/images/calc.png" OnClick="btnFCalporcentual_Click" ToolTip="Calcular porcentaje de pago" Width="25px" />
                                        <br />
                                        IMP. TOTAL A PAGAR:</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txtfporentaje" runat="server" BackColor="#FFFFCC" Width="130px"></asp:TextBox>
                                        <asp:ImageButton ID="btnFCalimporte" runat="server" Height="25px" ImageUrl="~/images/calc.png" OnClick="btnFCalimporte_Click" ToolTip="Calcular importe de pago" Width="25px" />
                                        <br />
                                        % A PAGAR:</td>
                                    <td>
                                        <br />
                                    </td>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtfimportepago" runat="server" Enabled="False" ForeColor="#006600" Width="150px"></asp:TextBox>
                                        <br />
                                        IMP.&nbsp; PAGO DIRECTO:</td>
                                    <td>
                                        <asp:TextBox ID="txtffechaVence" runat="server" ForeColor="#006600" TextMode="Date" Width="150px" BackColor="#FFFFCC"></asp:TextBox>
                                        <br />
                                        FECHA VENCTO:</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:DropDownList ID="ddlfEstado10" runat="server" ForeColor="#006600">
                                            <asp:ListItem Value="0">POR PAGAR</asp:ListItem>
                                            <asp:ListItem Value="1">PAGADO</asp:ListItem>
                                            <asp:ListItem Value="4">SIN EFECTO</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        ESTADO:<asp:Label ID="lblidestado10" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnActualizar10" runat="server" ForeColor="#006600" Height="40px" Text="SIN DETRACCIÓN" Width="200px" OnClick="btnActualizar10_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtFFacturaDetracccion" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                                        <br />
                                        FECHA FACTURA:</td>
                                    <td>
                                        <asp:TextBox ID="txtdimportepago" runat="server" Enabled="False" ForeColor="#CC3300" Width="150px"></asp:TextBox>
                                        <br />
                                        IMP. DETRACCIÓN:</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txtdImporteSoles" runat="server" Enabled="False" ForeColor="#CC3300" Width="130px"></asp:TextBox>
                                        <asp:ImageButton ID="btnFCalDetraccion" runat="server" Height="25px" ImageUrl="~/images/calc.png" OnClick="btnFCalporcentual_Click" ToolTip="Calcular porcentaje de pago" Width="25px" />
                                        <br />
                                        DETRACCIÓN SOLES:</td>
                                    <td>
                                        <asp:DropDownList ID="ddldEstado20" runat="server">
                                            <asp:ListItem Value="0">POR PAGAR</asp:ListItem>
                                            <asp:ListItem Value="1">PAGADO</asp:ListItem>
                                            <asp:ListItem Value="4">SIN EFECTO</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        ESTADO:<asp:Label ID="lblidestado20" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnActualizar20" runat="server" ForeColor="#CC3300" Height="40px" Text="CON DETRACCIÓN" Width="200px" OnClick="btnActualizar20_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <br />
                                        <asp:TextBox ID="txtimportefGeneralAcum" runat="server" Enabled="False" ForeColor="#003399" Width="150px"></asp:TextBox>
                                        <br />
                                        IMP. GENERAL ACUM.:</td>
                                    <td class="auto-style13">
                                        <br />
                                        <asp:TextBox ID="txtaPagaracum" runat="server" Enabled="False" ForeColor="#CC3300" Width="150px"></asp:TextBox>
                                        <br />
                                        DETRACCIÓN ACUM.:</td>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td class="auto-style13">
                                        <br />
                                        <asp:TextBox ID="txtDetraSolesAcumulado" runat="server" Enabled="False" ForeColor="#CC3300" Width="150px"></asp:TextBox>
                                        <br />
                                        DET. ACUM: SOLES:</td>
                                    <td class="auto-style13">
                                        <br />
                                        <asp:DropDownList ID="ddldEstadoaCUM" runat="server">
                                            <asp:ListItem Value="0">POR PAGAR</asp:ListItem>
                                            <asp:ListItem Value="1">PAGADO</asp:ListItem>
                                            <asp:ListItem Value="4">SIN EFECTO</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        ESTADO:</td>
                                    <td class="auto-style13">
                                        <asp:Button ID="btnActualizardETRACaCUMULADA" runat="server" ForeColor="#CC3300" Text="DETRACCIÓN ACUMULADA" Width="200px" OnClick="btnActualizardETRACaCUMULADA_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="lbtnCErrar" runat="server" OnClick="lbtnCErrar_Click">CERRAR</asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblDetracciondifAcumimporte" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>

                    <asp:Panel ID="pDetallePagosRealizados" runat="server" Visible="False">
                       
                        <table class="auto-style14">
                            <tr>
                                <td class="auto-style17">&nbsp;</td>
                                <td colspan="2" class="auto-style17"><strong>DETALLE DE PAGO:<asp:Label ID="lblidDetallePago" runat="server"></asp:Label>
                                    </strong></td>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/guadar.png" Width="30px" OnClick="ibtnActualizarPago" />
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlmediopago1" runat="server" Width="130px" DataSourceID="SqlDataSourcemdpago1" DataTextField="medioPago" DataValueField="idmediopago">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="bblbanco1" runat="server" Width="170px" DataSourceID="SqlDataSourcebanco1" DataTextField="banco" DataValueField="ID">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnoperacion1" runat="server" placeholder="Nº OPERACION" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtfechapago1" runat="server" Height="22px" Width="140px" TextMode="Date"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtimportepagado1" runat="server" Height="22px" Width="120px" type="number" step="0.0001" placeholder="IMPORTE" ></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="ddlestado1" runat="server">
                                        <asp:ListItem Value="0">POR PAGAR</asp:ListItem>
                                        <asp:ListItem Value="1">PAGADO</asp:ListItem>
                                        <asp:ListItem Value="4">SIN EFECTO</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>MEDIO DE PAGO</td>
                                <td>BANCO</td>
                                <td>N° OPERACIÓN</td>
                                <td>FECHA DE PAGO:</td>
                                <td>IMP. PAGADO:</td>
                                <td>&nbsp;</td>
                                <td>ESTADO</td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp;</td>
                                <td colspan="2" class="auto-style17"><strong>DETALLE DE FACTURA:</strong></td>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <asp:ImageButton ID="ibtnActualizarFacturacion" runat="server" ImageUrl="~/images/guadar.png" Width="30px" OnClick="ibtnActualizarFacturacion_Click" />
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="130px" DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION" DataValueField="ID">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtseriefact" runat="server" placeholder="SERIE" Width="50px"></asp:TextBox>
                                    -<asp:TextBox ID="txtnumfact" runat="server" placeholder="NUMERO" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtfechafact" runat="server" Height="22px" Width="150px" TextMode="Date"></asp:TextBox>
                                </td>
                                <td colspan="4">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style15">TP. COMPROB.</td>
                                <td class="auto-style15">NÚMERO COMPROB.</td>
                                <td class="auto-style15">FECHA COMPROB.</td>
                                <td class="auto-style15" colspan="4">
                                    
                                    <asp:Label ID="lblrutatt" runat="server" Text=""></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="lbtnVerFactura" runat="server" OnClick="lbtnVerFactura_Click">Ver Comprobante</asp:LinkButton>
                                    
                                    <asp:Label ID="lblmensajeFact" runat="server" ForeColor="#CC3300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8">-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td colspan="3" class="auto-style16"><STRONG>DETALLE PAGO DETRACCIÓN:</STRONG> </td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/guadar.png" Width="30px" OnClick="ImageButton3_Click" />
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDetraccmediopago2" runat="server" DataSourceID="SqlDataSourcemdpago1" DataTextField="medioPago" DataValueField="idmediopago" Width="130px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="bblDetracccbanco2" runat="server" DataSourceID="SqlDataSourcebanco1" DataTextField="banco" DataValueField="ID" Width="170px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDetOperacion3" runat="server" placeholder="Nº OPERACION" Height="22px" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDetraccFechaPago" runat="server" Height="22px" TextMode="Date" Width="140px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDetraccconstancia3" runat="server" placeholder="CONSTANCIA" Height="22px" Width="120px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDetraccimportepagadoSoles3" runat="server" Height="22px" placeholder="IMPORTE" Width="100px" Ttype="number" step="0.0001" extMode="Number"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlestado3" runat="server">
                                        <asp:ListItem Value="0">POR PAGAR</asp:ListItem>
                                        <asp:ListItem Value="1">PAGADO</asp:ListItem>
                                        <asp:ListItem Value="4">SIN EFECTO</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>MEDIO DE PAGO:</td>
                                <td>BANCO</td>
                                <td>Nº OPERACIÓN:</td>
                                <td>FECHA PAGO:</td>
                                <td>CONSTANCIA:</td>
                                <td>IMP. PAGO S/.</td>
                                <td>ESTADO</td>
                            </tr>
                         
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnVerDetracion" runat="server" OnClick="lbtnVerDetracion_Click">Ver Comprobante</asp:LinkButton>
                                    </td>
                                <td>
                                    <asp:Label ID="lblrutattDetraccion" runat="server"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:FileUpload ID="FileUploadDetraccion" runat="server" />
                                </td>
                                <td colspan="2">
                                    <asp:Label ID="lblmensajeAdjunto" runat="server" ForeColor="#CC3300"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        
                        <asp:SqlDataSource ID="SqlDataSourcemdpago1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pago_mediopago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSourcebanco1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pagos_bancos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </asp:Panel>

                    <asp:Panel ID="panelREgCuotas" runat="server">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style4">Nº pago:<asp:Label ID="lblnewcuota" runat="server" class="control-label" Font-Bold="True"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style4" colspan="2"><strong>PROGRAMACIÓN DE PAGO</strong></td>
                            <td class="auto-style4"><strong>REGISTRAR PAGO</strong><b>&nbsp;</b></td>
                            <td class="auto-style12"><b>IMP. ACUM.<br /> &nbsp;REF. FACT.</b></td>
                            <td class="auto-style12"><strong>SEGÚN TIPO<br /> &nbsp;CAMBIO</strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txt5nreffactura" runat="server" TextMode="Number" Width="60px" ToolTip="Cod. factura referencial">1</asp:TextBox>
                                <br />
                                Cod. Fact.:</td>
                            <td>
                                <asp:TextBox ID="txt5FechaPago" runat="server" TextMode="Date" Width="140px" BackColor="#FFFFCC"></asp:TextBox>
                                <br />
                                Fecha vencimiento:</td>
                            <td>
                                <asp:ImageButton ID="btnCalimporte" runat="server" Height="30px" ImageUrl="~/images/calc.png" OnClick="btnCalimporte_Click" Width="25px" ToolTip="Calcular importe de pago" />
                            </td>
                            <td>
                                <asp:TextBox ID="txt5importePago" runat="server" Width="90px" ToolTip="Importe a pagar" BackColor="#FFFFCC"></asp:TextBox>
                                <br />
                                Importe pago:</td>
                            <td>
                                <asp:TextBox ID="txt5importePagoSinDetracc" runat="server" Enabled="False" Width="90%"></asp:TextBox>
                                <br />
                                <span class="auto-style10"><small>Imp. sin detracción Fact.:</small></span></td>
                            <td>
                                <asp:Button ID="btnPagosinDetraccion" runat="server" Font-Size="X-Small" Height="50px" OnClick="btnPagosinDetraccion_Click" Text="SIN DETRACCIÓN" Width="100%" ToolTip="Registrar pago sin detracción..." />
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt5impAcomuladoFact" runat="server" Enabled="False" Width="80px"></asp:TextBox>
                                <br />
                                Imp. acum. pago:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt5impAcomuladoFact0" runat="server" Enabled="False" Width="80px"></asp:TextBox>
                                <br />
                                Importe Soles.</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txt5ImporteAcumFactRef" runat="server" Enabled="False" TextMode="Number" Width="80px"></asp:TextBox>
                                <br />
                                Imp. acumulado:</td>
                            <td>
                                Pago soles: S/<asp:Label ID="lbl5importesoles" runat="server">0.00</asp:Label>
                                <br />
                                Tp. cambio:<asp:Label ID="lbl1tpCambio" runat="server" Text="0.00"></asp:Label>
                            </td>
                            <td>
                                <asp:ImageButton ID="btnCalporcentual" runat="server" Height="30px" ImageUrl="~/images/calc.png" OnClick="btnCalporcentual_Click" Width="25px" ToolTip="Calcular porcentaje de pago" />
                            </td>
                            <td>
                                <asp:TextBox ID="txt5porcentajePago" runat="server" Width="60px" ToolTip="Valor porcentual de pago"></asp:TextBox>
                                %<br /> Porcentaje pago: </td>
                            <td>
                                <span class="auto-style11">Imp. detracción:</span>
                                <asp:Label ID="lbl5importePagoDetracc" runat="server" ForeColor="#990000"></asp:Label>
                                <br />
                                <span class="auto-style11">Detracción soles:</span>
                                <asp:Label ID="lbl5importePagoDetraccSoles" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Font-Size="X-Small" Height="50px" OnClick="Button4_Click" Text="CON DETRACCIÓN" Width="100%" ToolTip="Registrar pago con detracción..." />
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt5impAcomuladoFactDetracc" runat="server" Enabled="False" Width="80px"></asp:TextBox>
                                <br />
                                Detracción:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt5impAcomuladoFactDetraccSoles" runat="server" Enabled="False" Width="80px"></asp:TextBox>
                                <br />
                                Detracción Soles</td>
                        </tr>
                    </table>
                    </asp:Panel>
                </asp:Panel>



                <div class="form-group row">
                    <div class="col-md-12">
                        <asp:Button ID="Button1" CssClass="col-ms-6 col-md-5 btn btn-success" runat="server" Text="REGISTRAR CTA. POR PAGAR" OnClick="Button1_Click"></asp:Button>
                        <asp:Button ID="btnServBasico" CssClass="col-ms-6 col-md-5 btn btn-info" runat="server" Text="REGISTRAR PAGOS FIJOS" PostBackUrl="~/bio/ventas/compras/NuevaCuenta.aspx"></asp:Button>
                        <br />
                        <hr />
                        <strong>Cta. por pagar:</strong>
    
                        <asp:TextBox ID="txtbuscar" runat="server" placeholder="Buscar ..." Width="250px" AutoPostBack="True" OnTextChanged="txtbuscar_TextChanged"></asp:TextBox>
                        <asp:Button ID="btnbProveedor" runat="server" Text="Proveedor" OnClick="btnbProveedor_Click" />
                        <asp:Button ID="btnbncuenta" runat="server" Text=" Nº cuenta" OnClick="btnbncuenta_Click" />
                        <asp:Button ID="btnctaFacturadas" runat="server" BackColor="#B5E6B5" OnClick="btnctaFacturadas_Click" Text="CTAS. FACTURADAS" />
                        <asp:Button ID="btnFactxRegularizar" runat="server" BackColor="#FFFF99" OnClick="btnFactxRegularizar_Click" Text="FACT. POR REGULARIZAR" />
                        <asp:Button ID="btnsinFacturas" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnsinFacturas_Click" Text="SIN FACTURAS" Visible="False" />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Actualizar" />
                        <asp:Label ID="lblpop" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblpproveedor" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblpidpago" runat="server" Visible="False"></asp:Label>
                        <asp:GridView ID="dvcuentaxpagar" class="table table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="idpago,idempresa,idProveedor,NCTAS,RAZONSOCIAL,IMPORTE" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="dvcuentaxpagar_SelectedIndexChanged" GridLines="Horizontal" OnRowCommand="dvcuentaxpagar_RowCommand" PageSize="15" AllowPaging="True" Font-Size="XX-Small" AllowSorting="True">
                            <Columns>
                                <asp:BoundField DataField="NCTA" HeaderText="CUENTA" SortExpression="NCTA" Visible="False" />
                                <asp:ButtonField CommandName="CUOTAS" ShowHeader="True" Text="CUOTAS" ButtonType="Image" ImageUrl="~/images/1buscar.png">

                                    <ControlStyle Height="20px" Width="25px" />

                                    <HeaderStyle Width="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ButtonField>

                                <asp:ButtonField CommandName="EDITAR" ShowHeader="True" Text="EDITAR" ButtonType="Image" ImageUrl="~/images/1editar.png">
                                    <ControlStyle Height="20px" Width="25px" />
                                    <HeaderStyle Width="20px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="idpago" HeaderText="idpago" ReadOnly="True" SortExpression="idpago" Visible="False" />
                                <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                                <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                                <asp:TemplateField HeaderText="CUENTA" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("NCTA") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                                <asp:BoundField DataField="FREGISTRO" HeaderText="F. EMISION" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField DataField="GLOSA" HeaderText="ASUNTO" SortExpression="GLOSA" />

                                <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" Visible="False" />
                                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" Visible="False"  />
                                <asp:BoundField DataField="M" SortExpression="M">

                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CUOTAS" SortExpression="CUOTAS" />

                                <asp:BoundField DataField="CREGISTRADAS" HeaderText="**" SortExpression="CREGISTRADAS" Visible="False" />
                                <asp:ImageField DataImageUrlField="CREGISTRADAS" DataImageUrlFormatString="~/images/{0}.png">
                                    <ControlStyle Height="10px" Width="10px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>
                                <asp:BoundField DataField="NCTAS" HeaderText="NCTAS" SortExpression="NCTAS" Visible="False" />

                                <asp:ImageField DataImageUrlField="CONTINUO" DataImageUrlFormatString="~/images/c{0}.png">
                                    <ControlStyle Height="15px" Width="15px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>

                                <asp:ImageField DataImageUrlField="ESTADOP" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="P.PAGOS">
                                    <ControlStyle Height="10px" Width="10px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>

                                <asp:ImageField DataImageUrlField="OPFACTURACION" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="FACT">
                                    <ControlStyle Height="10px" Width="10px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>

                            </Columns>
                            <HeaderStyle BackColor="#E9E9E9" />
                            <PagerStyle BorderStyle="Double" BorderWidth="2px" Font-Overline="True" Font-Size="XX-Small" Wrap="True" />
                        </asp:GridView>
                        <span class="help-block">P. PAGOS= PROGRAMACIÓN DE PAGOS (<asp:Image ID="Image13" runat="server" ImageUrl="~/images/Z1.png" Width="12px" />
                            &nbsp;Programación registrada correctamente /
                         <asp:Image ID="Image14" runat="server" ImageUrl="~/images/Z3.png" Width="12px" />
                            &nbsp;Programación parcial / <asp:Image ID="Image12" runat="server" ImageUrl="~/images/z4.png" Width="12px" />
                            &nbsp;Cuenta anulada )
                        <br />
                        FACT = CUENTA FACTURADA ( <asp:Image ID="Image15" runat="server" ImageUrl="~/images/Z1.png" Width="12px" />
                            &nbsp;Facturación completa /
                         <asp:Image ID="Image16" runat="server" ImageUrl="~/images/Z3.png" Width="12px" />
                            &nbsp;Facturación por regularizar /
                         <asp:Image ID="Image17" runat="server" ImageUrl="~/images/Z0.png" Width="12px" />
                            &nbsp;Sin factura)</span>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_registrados" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblpop" Name="op" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblpproveedor" Name="proveedor" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblpidpago" Name="idpago" PropertyName="Text" Type="Int32" />
                            </SelectParameters>

                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <br />







            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <asp:Label ID="lblretenedor" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblidproveedor" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblmaxid" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                <br />
                maxid Detalle:
                   <asp:Label ID="lblnewIdDetalle" runat="server"></asp:Label>
                &nbsp;<br />
                new cuota:
                   <br />
            </asp:Panel>



        </div>
    </div>


    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;on>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="bt4" runat="server" Text="ohaberr" OnClick="bt4_Click" />
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
