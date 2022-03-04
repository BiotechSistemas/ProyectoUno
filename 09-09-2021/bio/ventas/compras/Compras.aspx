<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="biotech.bio.ventas.compras.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 750px;
        }
        </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        


    </style>


    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style7 {
            width: 800px;
        }
        .auto-style8 {
            background-color: #F2F2F2;
            margin-left: 40px;
        }
        .auto-style9 {
        }
        .auto-style12 {
            color: #CC3300;
        }
        .auto-style14 {            background-color: #FFFFCC;
        }
        .auto-style17 {
            width: 30%;
        }
        .auto-style18 {
            width: 59%;
        }
        .auto-style19 {
            height: 30px;
            background-color: #FFFFCC;
        }
        .auto-style20 {
            background-color: #F2F2F2;
            margin-left: 40px;
            height: 30px;
        }
        .auto-style21 {
            background-color: #F2F2F2;
            margin-left: 40px;
            height: 22px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    


     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-shopping-cart  "></i> ORDEN DE COMPRA / SERVICIO<asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
                           
                            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                        </h3>
                      </div>  

     </div> 
    <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/Proveedor.aspx" OnClick="LinkButton3_Click">Proveedores</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotizaciones</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Orden de compra</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRegistrar.aspx">Cta. pagos</asp:LinkButton>
                        </li>
                          <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>
                    </ol>
            </div>

    <asp:Panel ID="pRegCuenta" runat="server">
         
            <div class="row">
                <div class="col-xs-12 col-md-12">
              
            <div class="panel panel-default">
                        <div class="panel-heading">DETALLE DE O.C. A PROGRAMAR PAGO:
                            <asp:Label ID="lblidocc" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="lblidoccDescrip" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                            <asp:LinkButton ID="lbtnDocDescripcion" runat="server" OnClick="lbtnDocDescripcion_Click"></asp:LinkButton>
                            </div>
                <div class="panel-body">
                   

                    <center>
                    <table class="auto-style7">
                        <tr>
                            <td>
                                <asp:Label ID="lblruc" runat="server" Font-Bold="True"></asp:Label>
                                <asp:Label ID="lblidproveedor" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblRazonSocial" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFechaCompra" runat="server" required="" Width="100%" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr><SMALL>
                            <td class="auto-style8">RUC:</td>
                            <td class="auto-style8">PROVEEDOR:</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style8">F. FACTURACIÓN / CONTRATO:</td></SMALL>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblimporteTTpagar" runat="server" Font-Bold="True">0.00</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblimporteInicial" runat="server">0.00</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblimporteapagar" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblmoneda" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">IMPORTE TT. A PAGAR:</td>
                            <td class="auto-style8">IMP. INICIAL:</td>
                            <td class="auto-style8">IMP. POR PAGAR:</td>
                            <td class="auto-style8">MONEDA:<asp:Label ID="lbltpmoneda" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblidDetraccion" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lbldetraccionDetalle" runat="server"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:Label ID="lblglosa" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                       
                      
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="lblDetraccionValor" runat="server" Visible="False"></asp:Label>
                                DETRACCIÓN:<asp:Label ID="lblretenedor" runat="server" style="font-weight: 700"></asp:Label>
                            </td>
                            <td class="auto-style8">ASUNTO:</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4"><hr /></td>
                        </tr>
                       
                      
                       

                         <tr>
                            <td>
                                <asp:Label ID="lblcondpago" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblcondpagoDet" runat="server"></asp:Label>
                                &nbsp;
                                <asp:Label ID="lblnumDoc" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>

                          <tr>
                            <td class="auto-style8">TIPO DE COMPRA:</td>
                            <td class="auto-style8">FORMA DE PAGO:</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style8"></td>
                        </tr>


                         <tr>
                            <td colspan="4"><hr /></td>
                        </tr>
                        
                          <tr>
                            <td class="auto-style19">
                                <asp:RadioButtonList ID="rbcuotas" runat="server" AutoPostBack="True" BackColor="#FFFFCC" CellSpacing="5" OnSelectedIndexChanged="rbcuotas_SelectedIndexChanged" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem Value="SI">SI</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="NO">NO</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="auto-style19">
                                <asp:TextBox ID="txtncuotas" runat="server" AutoPostBack="True" BackColor="#FFFFCC" OnTextChanged="txtncuotas_TextChanged" required="" TextMode="Number" Width="120px" Visible="False">1</asp:TextBox>
                            </td>
                            
                             <td class="auto-style19">
                                 <asp:RadioButtonList ID="rbAdjuntar" runat="server" BackColor="#FFFFCC" CellSpacing="5" RepeatDirection="Horizontal" Width="100%">
                                     <asp:ListItem Selected="True">SI</asp:ListItem>
                                     <asp:ListItem>NO</asp:ListItem>
                                 </asp:RadioButtonList>
                              </td>
                           
                            <td class="auto-style20">
                                <asp:TextBox ID="txtdocComprob" runat="server" placeholder="Número doc refencial..." BackColor="#FFFFCC" Width="100%"></asp:TextBox>
                              </td>
                            
                        </tr>
                       
                      
                        <tr> <td class="auto-style8">PAGO EN CUOTAS:</td>
                            <td class="auto-style8">
                                <asp:Label ID="Label1" runat="server" Text="Nº CUOTAS" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style8">CON FACTURA:</td>
                           
                            <td class="auto-style8">
                                NÚM.&nbsp; DOC REFERENCIAL:</td>
                        </tr> 

                        <tr>
                             <td class="auto-style21">ADJUNTAR DOC.</td>
                            <td class="auto-style14" colspan="3">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Label ID="lblRutacmprobante" runat="server"></asp:Label>
                            </td>
                           
                        </tr>

                        <tr>
                            <td class="auto-style8" colspan="4">
                                <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="CONFIRMAR ORDEN PAGO" Width="100%" />
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style8" colspan="4">
                                <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                            </td>
                        </tr>

                    </table>
                        </center>
                    <asp:Panel ID="PanelAYUDA2" runat="server" Visible="False">
                        <asp:Label ID="lblidusuario2" runat="server"></asp:Label>
                        &nbsp; &nbsp;EMPRESA:<asp:Label ID="lblidempresa" runat="server"></asp:Label>
                        &nbsp; titular:<asp:Label ID="lbltitular" runat="server"></asp:Label>
                        &nbsp;porcentDetraccion :&nbsp;
                        <asp:Label ID="lblPorcentajeDEtracionVal" runat="server"></asp:Label>
                        &nbsp; dias :
                        <asp:Label ID="lbldias" runat="server"></asp:Label>
                    </asp:Panel>
            
                   


                     </div>
                </div>
                          </div>
            </div>
       
        </asp:Panel>

     <div class="row">
         <asp:Panel ID="PanelRegistro" runat="server">
                     <div class="alert alert-success alert-dismissable">
                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                      <strong>Autorización emitida correctamente...!</strong>
                    </div>
         </asp:Panel>
         <asp:Panel ID="panelretorno" runat="server">
                     <div class="alert alert-warning alert-dismissable">
                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                      <strong>Orden, retornada correctamente</strong>
                    </div>
         </asp:Panel>

          <asp:Panel ID="PanelAnulado" runat="server">
                     <div class="alert alert-danger alert-dismissable">
                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                      <strong>Registro anulado...!</strong>
                    </div>
         </asp:Panel>

         <asp:Panel ID="PanelAnulacion20" runat="server">
             <table class="nav-justified">
                 <tr>
                     <td colspan="3" ><span class="auto-style12"><strong>ANULAR ORDEN DE COMPRA:<asp:Label ID="lblNoc20" runat="server" Width="150px"></asp:Label>
                         <asp:Label ID="lblidoc20" runat="server" Visible="False"></asp:Label>
                         </strong></span>
                         <asp:Panel ID="Panel2" runat="server">
                             PROVEEDOR:
                             <asp:Label ID="lblproveedor20" runat="server" Font-Bold="True"></asp:Label>
                             &nbsp; , IMPORTE DE:
                             <asp:Label ID="lblmoneda20" runat="server" Font-Bold="True"></asp:Label>
                             &nbsp;<asp:Label ID="lblimporte20" runat="server" Font-Bold="True"></asp:Label>
                         </asp:Panel>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style14" colspan="3">
                         <asp:Label ID="lblasuntooc" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style9" colspan="2">
                         <asp:TextBox ID="txtconceptodeanulacion20" placeholder="Concepto u observación de anulación..." runat="server" CssClass="form-control" Width="1000px"></asp:TextBox>
                     </td>
                     <td class="auto-style17">
                         <asp:Button ID="btnanular20" runat="server" CssClass="btn btn-danger" OnClick="btnanular20_Click" Text="ANULAR" Width="100px" />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style14">&nbsp;</td>
                     <td class="auto-style18">&nbsp;</td>
                     <td class="auto-style17">&nbsp;</td>
                 </tr>
             </table>
         </asp:Panel>


         <asp:Label ID="lblmensajeno" runat="server" ForeColor="Maroon"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSourceEstado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Compras_estado" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="COMPR" Name="tipo" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
     </div>

    <div class="row">
        <div class="table-responsive">
          <table class="auto-style1">
                
                <tr>
                    <td><asp:LinkButton ID="lbActualizar" CssClass="btn btn-info" runat="server" OnClick="lbActualizar_Click" Width="120px">Actualizar</asp:LinkButton></td>
                    <td>
                        <asp:LinkButton ID="Button1"  CssClass="btn btn-success" runat="server" PostBackUrl="~/bio/ventas/compras/ComprasReg.aspx" Width="120px">Nuevo</asp:LinkButton>
                    </td>
                    <td>Detalle OC:
                     <td>
                        <asp:DropDownList ID="ddlestadooc" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceEstado" DataTextField="estado" DataValueField="idcotestado" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="ddlestadooc_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtproveedor" CssClass="form-control" placeholder="Proveedor..." runat="server" AutoPostBack="True" OnTextChanged="txtproveedor_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:LinkButton ID="lbtBuscar" CssClass="btn btn-default" runat="server">Buscar</asp:LinkButton>
                    </td>
                </tr>
            </table>
            
            <asp:GridView ID="gvOC" runat="server" class="table table table-striped table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="COD,ELAB,ORDEN,RAZONSOCIAL,MONEDA,TOTAL,AUTORIZACION,ESTADODET,SOLICITA" DataSourceID="SqlDataSourceoc" AllowPaging="True" GridLines="None" OnSelectedIndexChanged="gvOC_SelectedIndexChanged" Font-Size="X-Small" OnRowCommand="gvOC_RowCommand" OnRowDataBound="gvOC_RowDataBound" PageSize="15" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="OC" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ORDEN") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="60px" />
                        <ItemStyle Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="ORDEN" HeaderText="ORDEN" ReadOnly="True" SortExpression="ORDEN" Visible="False" />
                    <asp:BoundField DataField="FECHAREG" HeaderText="F.REG" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CENTRO" HeaderText="CENTRO" SortExpression="CENTRO" >
                    <HeaderStyle Width="25px" />
                    <ItemStyle Width="25px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                    <asp:BoundField DataField="SOLICITA"  HeaderText="SOLICITA" ReadOnly="True" SortExpression="SOLICITA" >
                    <HeaderStyle Width="40px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONEDA" ReadOnly="True" SortExpression="MONEDA" >
                    <HeaderStyle Width="10px" />
                    <ItemStyle Width="10px" HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL" DataFormatString="{0:0,0.00}" Visible="False" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" DataFormatString="{0:0,0.00}" Visible="False" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle Width="40px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="40px" />
                    </asp:BoundField>
                   
                    <asp:BoundField DataField="AUTORIZACION" HeaderText="JEF." Visible="False"  SortExpression="AUTORIZACION" />
                    <asp:ImageField DataImageUrlField="AUTORIZACION" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="**">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="22px" />
                        </asp:ImageField>

                    <asp:BoundField DataField="ESTADODET" HeaderText="ESTADO" SortExpression="ESTADODET" >

                    <HeaderStyle Width="35px" />

                    <ItemStyle BorderColor="#CCCCCC" HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
                    </asp:BoundField>

                     <asp:ButtonField CommandName="autorizar" HeaderText="**" ShowHeader="True" Text="Autorizar" Visible="False" >
<ControlStyle CssClass="btn btn-success btn-xs "  ></ControlStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="12px" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="porautorizar" HeaderText="" ShowHeader="True" Text="Por autorizar" Visible="False" >
<ControlStyle CssClass="btn btn-warning  btn-xs " ></ControlStyle>
                    <HeaderStyle Width="50px" />
                </asp:ButtonField>

                 <asp:ButtonField ControlStyle-CssClass="" CommandName="anular" HeaderText="" ShowHeader="True" Text="Anular" >
            
<ControlStyle CssClass="btn btn-danger btn-xs "></ControlStyle>
                    <HeaderStyle Width="25px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                </asp:ButtonField>



                <asp:ButtonField CommandName="CTAPAGO" HeaderText="CTAPAGO" ShowHeader="True" Text="CTA.PAGO" >
            
                    <HeaderStyle Width="25px" HorizontalAlign="Center" />
                    <ControlStyle CssClass="btn btn-info btn-xs "></ControlStyle>
                    <ItemStyle Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
            
                </Columns>
                <EmptyDataTemplate>
                    No registra ninguna orden de compra....
                </EmptyDataTemplate>
            </asp:GridView>
                </div>
            **=Autorización Gerencia
            <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/a1.png" Width="20px" />
            <asp:SqlDataSource ID="SqlDataSourceoc" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasOC_Listar" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEstado" Name="EstadoAutorizacion" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblProveedor" Name="cliente" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

  

        


    <div class="row">

    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="lblEstado" runat="server"></asp:Label>
        <asp:Label ID="lblProveedor" runat="server"></asp:Label>
        ID ELABORADO POR:<asp:Label ID="lblidelaboraOC" runat="server"></asp:Label>
        CORREOS:
        <asp:Label ID="lblcorreos" runat="server"></asp:Label>
        : CORREO EMISOR:<asp:Label ID="lblcorreoEmisor" runat="server"></asp:Label>
        &nbsp; idsolicita:
        <asp:Label ID="lblidsolicita" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp; correosolicita:
        <asp:Label ID="lblcorreoSolicita" runat="server"></asp:Label>
        &nbsp;<asp:Label ID="lbldatoPersonalSolic" runat="server"></asp:Label>
    </asp:Panel>
    
        </div>

    </div>
</asp:Content>
