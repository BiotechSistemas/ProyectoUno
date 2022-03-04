<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="NotaPedido.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.NotaPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            height: 36px;
        }
        .auto-style4 {
            color: #CC3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    
                   
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i> NOTA DE PEDIDO:<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Label ID="lblEstadoPedido" runat="server" Visible="False"></asp:Label>

                        </h3>

         <div class="row">

<ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbPedido" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaPedido.aspx" >Nota de pedido</asp:LinkButton>
      </li>
     <li>
      <asp:LinkButton ID="lbtMuestas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/PedMuestras.aspx" >Muestras</asp:LinkButton>
      </li>

      <li>
      <asp:LinkButton ID="lbGuias" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/GuiaRemision.aspx" >Guia Remisión</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="lbFacturas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/Factura_Det.aspx">Facturación</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbLetras" runat="server" ForeColor="#006600"  PostBackUrl="~/bio/ventas/FactLetra/Letras.aspx"  >Letras</asp:LinkButton>
      </li>

    <li>
      <asp:LinkButton ID="lbncredito" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaCredito.aspx" >Nota de Crédito</asp:LinkButton>
      </li>
</ol>    

             </div>

    <div class="row">


            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Nota de pedido" OnClick="Button1_Click" Visible="False" />
            <asp:Button ID="btMuestras" runat="server" class="btn btn-success" Text="Muestras Desarrollo" OnClick="btMuestras_Click" Visible="False" />


            <asp:Button ID="btMuestrasVentas" runat="server" class="btn btn-success" Text="Muestras Ventas" Visible="False" />


            <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style22" Visible="False"></asp:Label>


        </div>


    <div class="row">
        
    <asp:Panel ID="PanelPedido" runat="server">

        
   <div class="row">
        <asp:Panel ID="PanelSistema" runat="server" Visible="False">
            <asp:Label ID="lblIdPedido"  runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblestadoGeneraltp" runat="server" Text="TOTAL" Visible="False"></asp:Label>
            <asp:Label ID="lblop" runat="server" Visible="False"></asp:Label>
            &nbsp; CORREOQUIEN PIDE:
            <asp:Label ID="lblcorreopide" runat="server"></asp:Label>
            &nbsp;&nbsp; encargados:
            <asp:Label ID="lblcorreoencargados" runat="server"></asp:Label>
            &nbsp;&nbsp; asesor pide:
            <asp:Label ID="lblidasesorpide" runat="server"></asp:Label>
        </asp:Panel>

       <asp:Panel ID="Panelpedidos" runat="server">
       <div class="panel panel-default">
    <div class="panel-body">
     <p>
        
        <asp:LinkButton ID="lbporatender" runat="server" OnClick="lbporatender_Click">Por atender</asp:LinkButton>
         &nbsp; |&nbsp;&nbsp;
        <asp:LinkButton ID="lbtnObservados" runat="server" OnClick="lbtnObservados_Click">Observados</asp:LinkButton>
        &nbsp; |&nbsp;&nbsp;
        <asp:LinkButton ID="lbatendidos" runat="server" OnClick="lbatendidos_Click">Atendidos</asp:LinkButton>
        &nbsp; |&nbsp;&nbsp;
        <asp:LinkButton ID="lbAnulados" runat="server" OnClick="lbAnulados_Click">Anulados</asp:LinkButton>

       

        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtclienteaBuscar" placeholder="Buscar cliente..." runat="server" Width="200px" AutoPostBack="True" OnTextChanged="txtclienteaBuscar_TextChanged"></asp:TextBox>
        <asp:Button ID="btNuevoPedido" runat="server" Class="btn btn-default" OnClick="btNuevoPedido_Click" Text="Nuevo pedido" />
        <asp:Label ID="lblmensajePedido" runat="server" ForeColor="Maroon"></asp:Label>
        <asp:Label ID="lblclienteaBuscar" runat="server" Visible="False"></asp:Label>
         </p>
        <asp:Panel ID="panelObservar" runat="server" Visible="False">
          <h3><asp:Label ID="lbl10idpedido" runat="server" Visible="False"></asp:Label>
              NOTA DE PEDIDO:<asp:Label ID="lbl10npedido" runat="server"></asp:Label></h3>  
        
            <asp:TextBox ID="txt10Observacion" runat="server" TextMode="MultiLine" placeholder="Ingresar concepto de observación..." Width="100%"></asp:TextBox>
            <br />
            <asp:Button ID="btb10observar" runat="server" OnClick="btb10observar_Click" Text="REGISTRAR OBSERVACIÓN" />
            <asp:Button ID="Button10" runat="server" ForeColor="#993300" OnClick="Button10_Click" Text="CANCELAR" />
        </asp:Panel>

        <asp:Panel ID="panelanular" runat="server" Visible="False">
          <h3><asp:Label ID="lbl20idpedido" runat="server" Visible="False"></asp:Label>
              <span class="auto-style4">NOTA DE PEDIDO:</span><asp:Label ID="lbl20npedido" runat="server"></asp:Label></h3>  
        
            <asp:TextBox ID="txt20observacion" runat="server" TextMode="MultiLine" placeholder="Ingresar concepto de anulación..." Width="100%"></asp:TextBox>
            <br />
            <asp:Button ID="btn20anular" runat="server"  Text="REGISTRAR ÀNULACIÓN" OnClick="btn20anular_Click" />
            <asp:Button ID="btn20cancelar" runat="server" ForeColor="#993300"  Text="CANCELAR" />
        </asp:Panel>

        <asp:GridView ID="gvPedidosPorAtender" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table table-striped table-bordered table-sm  table-hover" DataKeyNames="idPedido,RUC,RTC,ZONA,NPEDIDO,RAZONSOCIAL" DataSourceID="SqlDataSourcepedidos" Font-Size="X-Small" GridLines="Horizontal" OnRowCommand="gvPedidosPorAtender_RowCommand" OnSelectedIndexChanged="gvPedidosPorAtender_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idPedido" HeaderText="idPedido" ReadOnly="True" SortExpression="idPedido" Visible="False" />
                <asp:BoundField DataField="NPEDIDO" HeaderText="NPEDIDO" ReadOnly="True" SortExpression="NPEDIDO" />
                <asp:BoundField DataField="FREGISTRADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRADA" SortExpression="FREGISTRADA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="FSOLICITADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FSOLICITADA" SortExpression="FSOLICITADA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                <asp:BoundField DataField="CODPAGO" HeaderText="CODPAGO" SortExpression="CODPAGO" />
                <asp:BoundField DataField="CONDICIONPAGO" HeaderText="CONDICION PAGO" ReadOnly="True" SortExpression="CONDICIONPAGO" />
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" visible="false" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                    <ControlStyle Height="18px" Width="18px" />
                    <HeaderStyle HorizontalAlign="Center" Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:ButtonField CommandName="elimina" HeaderText="" ShowHeader="True" Text="ATENDIDO">
                <ControlStyle CssClass="btn btn-success btn-xs"/>
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="anula" HeaderText="" ShowHeader="True" Text="ANULAR">
                     <ControlStyle CssClass="btn btn-danger btn-xs"/>
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="retorna" HeaderText="" ShowHeader="True" Text="POR ATENDER">
                     <ControlStyle CssClass="btn btn-default btn-xs"/>
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:ButtonField>

                 <asp:ButtonField CommandName="OBSERVAR" HeaderText="" ShowHeader="True" Text="OBSERVAR">
                     <ControlStyle CssClass="btn btn-default btn-xs"/>
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:ButtonField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Visible="false" CausesValidation="False" CommandName="RUC2" Text='<%# Bind("RUC") %>'></asp:LinkButton>
                    </ItemTemplate>
                    
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#E8E8E8" />
        </asp:GridView>
          Observados:&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z3.png" Width="10px" />
            &nbsp;Atendidos:&nbsp;<asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
            &nbsp;| Anulados:&nbsp;<asp:Image ID="Image7" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
        <asp:SqlDataSource ID="SqlDataSourcepedidos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pedido_estado" SelectCommandType="StoredProcedure">
            <SelectParameters>
              
                <asp:ControlParameter ControlID="lblEstadoPedido" Name="estado" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblclienteaBuscar" Name="cliente" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       

         <asp:Panel ID="Panel3" runat="server" Wrap="False" Visible="False">
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Label ID="lblestadoop" runat="server"></asp:Label>
                ESTADO:<asp:Label ID="lblEstadoAtencion" runat="server"></asp:Label>
                --pedDet:<asp:Label ID="lblidDetallePedido" runat="server"></asp:Label>
                --<asp:Label ID="lbldetpedCantidad" runat="server"></asp:Label>
                <asp:Label ID="lbldetPedPrecioVenta" runat="server"></asp:Label>
                codpro:<asp:Label ID="lblcodproducto" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="lblstockactual" runat="server" Visible="False">0</asp:Label>
                -<asp:Label ID="lblactual" runat="server"></asp:Label>
                <asp:Label ID="lblCantidad" runat="server"></asp:Label>
                <asp:Label ID="lblasesorid" runat="server"></asp:Label>
                &nbsp;<br />
                mensaje atencion:
                <asp:Label ID="lblmensajeatencion" runat="server"></asp:Label>
                ---<asp:Label ID="lblClienteHistorial" runat="server" style="font-weight: 700"></asp:Label>
                producto:
                <asp:Label ID="lblpro" runat="server" style="font-weight: 700"></asp:Label>
                &nbsp; ESTADO BOTON:<asp:Label ID="lblestadoboton" runat="server" Visible="False"></asp:Label>
            </asp:Panel>

        &nbsp;<div class="row">


         <div class="col-md-6">
             
       



                            <asp:GridView ID="gvPedidosDetalle" runat="server" AutoGenerateColumns="False" Class="table table-bordered table-sm  table-hover" DataKeyNames="IDDET,ESTADOATENCION,ESTADOGERENCIA,CODPRO,PRODUCTO,ATENDIDO" DataSourceID="SqlDataSourceDetPet" OnSelectedIndexChanged="gvPedidosDetalle_SelectedIndexChanged" Width="100%" Font-Size="XX-Small" GridLines="None">
                                <Columns>
                                    <asp:CommandField SelectText="Ver Stock" ShowSelectButton="True" />
                                    <asp:BoundField DataField="IDDET" HeaderText="IDDET" ReadOnly="True" SortExpression="IDDET" Visible="False" />
                                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False">
                                    <HeaderStyle Width="250px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                                    <HeaderStyle Width="300px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="SUB. TT" ReadOnly="True" SortExpression="SUBTT">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                                    <asp:BoundField DataField="APROBACION" HeaderText="APROBACION" SortExpression="APROBACION" Visible="False" />
                                    <asp:BoundField DataField="ESTADOGERENCIA" HeaderText="ESTADOGERENCIA" SortExpression="ESTADOGERENCIA" Visible="False" />
                                    <asp:BoundField DataField="ESTADOATENCION" HeaderText="ESTADOATENCION" SortExpression="ESTADOATENCION" Visible="False" />
                                    <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" ReadOnly="True" SortExpression="DESCTO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ATENDIDO" HeaderText="ATENDIDO" SortExpression="ATENDIDO">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="APROBACION" DataImageUrlFormatString="~/images/{0}.png" HeaderText="**">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="ESTADOGERENCIA" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="**">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="ESTADOATENCION" DataImageUrlFormatString="~/images/aten{0}.png" HeaderText="*">
                                        <ControlStyle Height="20px" Width="20px" />
                                        <HeaderStyle Width="22px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ImageField>
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceDetPet" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_DetPEdidos1" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                   
                                    <asp:ControlParameter ControlID="lblIdPedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

             <br />
             <asp:Panel ID="Panelguias" runat="server">

                 
                 <div class="table-responsive">
              <asp:GridView ID="gvGuias" runat="server" AutoGenerateColumns="False" DataKeyNames="IDGUIA" DataSourceID="SqlDataSourceGuiasPed" GridLines="Horizontal" OnSelectedIndexChanged="gvGuias_SelectedIndexChanged" Width="100%" Font-Size="XX-Small">
            <Columns>
                <asp:TemplateField HeaderText="GUIA REM" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("GUIA") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="IDGUIA" HeaderText="IDGUIA" ReadOnly="True" SortExpression="IDGUIA" Visible="False" />
                <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" Visible="False" />
                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FEMISION">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/aten{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceGuiasPed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiaRem_xPedido" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblIdPedido" Name="idpedido" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                     </div>

             </asp:Panel>

             </div>
          <div class="col-md-6">
            






               <span style="font-family:&quot;Calibri&quot;,sans-serif">
               TIPO DE ENTREGA:<span style="font-family:&quot;Calibri&quot;,sans-serif"><asp:Label ID="lbltpEntrega" runat="server"></asp:Label>
               </span>&nbsp;<asp:GridView ID="gvLugarEntrega" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcegvLugarEntregas" OnSelectedIndexChanged="gvLugarEntrega_SelectedIndexChanged" style="font-size: xx-small" Width="300px">
                   <Columns>
                       <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                       <asp:BoundField DataField="idPedido" HeaderText="idPedido" SortExpression="idPedido" Visible="False" />
                       <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.ENTREGA" SortExpression="FENTREGA" />
                       <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" Visible="False" />
                       <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                       <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                       <asp:BoundField DataField="PRESENT" HeaderText="PRSNT" SortExpression="PRESENT" Visible="False" />
                       <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                       <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       </asp:BoundField>
                   </Columns>
                   <HeaderStyle BackColor="WhiteSmoke" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSourcegvLugarEntregas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_entregaXPedidos" SelectCommandType="StoredProcedure">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="lblIdPedido" Name="idPedido" PropertyName="Text" Type="Int32" />
                   </SelectParameters>
               </asp:SqlDataSource>
               *<asp:Label ID="lblsumilla" runat="server"></asp:Label>
               
               </span>
               &nbsp;&nbsp;
               <br />
               <asp:LinkButton ID="BLOC" runat="server" OnClick="BLOC_Click" Visible="False">Ver Orden de Compra</asp:LinkButton>
               <asp:Label ID="lbloc" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="LBLMENSAJEOC" runat="server"></asp:Label>
             

               

               </div>
    </div>
           </div> 

</div>

</div>


       </asp:Panel>
          
        </asp:Panel>
        

       



        <asp:Panel ID="panelConsulta" runat="server">
            <div class="row">

                &nbsp;<asp:Label ID="lblProductoSeleccion" runat="server" Font-Bold="True"></asp:Label>
                <asp:Label ID="lblcodProductoSeleccion" runat="server" Visible="False"></asp:Label>
                &nbsp; &nbsp;&nbsp; STOCK CENTRAL:<asp:Label ID="lblstockCentral" runat="server" Font-Bold="True"></asp:Label>
                &nbsp; ICA:
                <asp:Label ID="lblstockIca" runat="server" Font-Bold="True"></asp:Label>
                &nbsp; PIURA :
                <asp:Label ID="lblstockPiura" runat="server" Font-Bold="True"></asp:Label>
                &nbsp;EN LITROS
                    <asp:GridView ID="gv_almTotalLitros" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSourceTotalLitros" OnRowDataBound="gv_almTotalLitros_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="idProducto" HeaderText="COD" SortExpression="idProducto" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO">
                            <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSourceTotalLitros" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_TotalLitros" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblProductoSeleccion" Name="idproducto" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                <br />

        </div>

        </asp:Panel>
    










    <div class="row">
        
               <asp:LinkButton ID="lbt_guiarem" CssClass="btn btn-success" runat="server" OnClick="lbt_guiarem_Click">GENERAR GUIA REMISIÓN</asp:LinkButton>
             
              
    <asp:Panel ID="PanelGuiaRemision" runat="server" Width="100%">
          
        <div class="panel panel-success">
  <div class="panel-heading">  
      <h3>
      <asp:Image ID="Image1" runat="server" Height="20px" ImageAlign="AbsMiddle" ImageUrl="~/images/aten10.png" Width="31px" />
     <b>GUIA DE REMISIÓN N°:<asp:Label ID="lblguiaremgrupo" runat="server"></asp:Label>
     -</b><asp:Label ID="lblguiaremserie" runat="server" style="font-weight: 700"></asp:Label>

    
                      <asp:Label ID="lblidguiaremReg" runat="server" Visible="False"></asp:Label>

          </h3>
  </div>
  <div class="panel-body">

       
      

   
         
          <table class="auto-style33">
              <tr>
                  <td class="auto-style742">
                    <strong>CLIENTE</strong>
                      /RUC</td>
                  <td class="auto-style742">:</td>
                  <td colspan="8" >
                      &nbsp;<asp:Label ID="lblcliente" runat="server" Font-Size="Large"></asp:Label>
                      &nbsp;/
                      <asp:Label ID="lblRuc" runat="server" Font-Size="Large"></asp:Label>
                      <asp:Label ID="lblidpedido2" runat="server" Visible="False"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style3454">&nbsp;</td>
                  <td colspan="8">&nbsp;</td>
              </tr>
              <tr>
                  <td><strong>F. DE EMISIÓN</strong></td>
                  <td class="auto-style3454">&nbsp;</td>
                  <td colspan="8">
                      <asp:TextBox ID="txtFechaemision" runat="server" BackColor="#FFFFEA" required="" TextMode="Date" Width="200px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td><b>ALMACEN</b></td>
                  <td class="auto-style3454">:</td>
                  <td colspan="8">
                      <asp:RadioButtonList ID="rbAlmacen" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idalmacen" OnSelectedIndexChanged="rbAlmacen_SelectedIndexChanged" RepeatDirection="Horizontal">
                      </asp:RadioButtonList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idalmacen], [descripcion] FROM [almacen] WHERE ([estado] = @estado)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </td>
              </tr>
              <tr>
                  <td>TRANSPORTE<span style="color: #990000">&nbsp;&nbsp; *</span></td>
                  <td class="auto-style3454">:</td>
                  <td >
                      <asp:TextBox ID="txtTransporte" runat="server" BackColor="#FFFFEA" MaxLength="12" required="" Width="200px"></asp:TextBox>
                  </td>
                   <td colspan="2" >CONDUCTOR<span style="color: #990000">&nbsp;&nbsp; *</span></td>
                   <td colspan="2" >:</td>
                   <td colspan="2" ><span style="color: #990000">
                       <asp:TextBox ID="txtConductor" runat="server" BackColor="#FFFFEA" MaxLength="12" required="" Width="200px"></asp:TextBox>
                       </span></td>
                   <td class="auto-style2" >
                       &nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style3454">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
              </tr>
              <tr>
                  <td><b>P. PARTIDA</b></td>
                  <td class="auto-style3454">:</td>
                  <td class="auto-style16" colspan="8">
                      <asp:TextBox ID="txtppartida" runat="server" Width="700px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3"><b>P. LLEGADA</b></td>
                  <td class="auto-style3">:</td>
                  <td class="auto-style3" colspan="8">
                      <asp:TextBox ID="txtpllegada" Style="text-transform: uppercase" runat="server" TextMode="MultiLine" Width="700px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td class="auto-style3" colspan="8">
                      <asp:SqlDataSource ID="SqlDataSourceProductoPed" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pedidos_productos" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblidpedido" Name="idpedido" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idProducto], [presentacion] FROM [tb_producto] WHERE ([producto] = @producto)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="ddlproducto" Name="producto" PropertyName="SelectedValue" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </td>
              </tr>
              <tr>
                  <td><strong>DETALLE PEDIDOS:&nbsp;</strong>&nbsp;&nbsp;</td>
                  <td class="auto-style3454">&nbsp;</td>
                  <td class="auto-style16" colspan="8">
                      <asp:Label ID="lblIdAlmacenDetalle" runat="server"></asp:Label>
                      <asp:Label ID="lblcodDetallePEd" runat="server" Visible="False"></asp:Label>
                      </td>
              </tr>
              <tr>
                  <td>Producto</td>
                  <td class="auto-style3454">:</td>
                  <td class="auto-style16" colspan="2">
                      <asp:DropDownList ID="ddlproducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceProductoPed" DataTextField="producto" DataValueField="producto" Height="30px" OnSelectedIndexChanged="ddlproducto_SelectedIndexChanged" Width="200px">
                      </asp:DropDownList>
                      <asp:DropDownList ID="ddlPresentacion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="presentacion" DataValueField="idProducto" Height="30px" OnSelectedIndexChanged="ddlPresentacion_SelectedIndexChanged" Width="100px">
                      </asp:DropDownList>
                      <asp:TextBox ID="txtcantidadSelectAtender" runat="server" Width="80px"></asp:TextBox>
                  </td>
                  <td class="auto-style16" colspan="2">
                      <asp:Label ID="lblcantidadSolicitada" runat="server"></asp:Label>
                      -<asp:Label ID="lblcantidadAtendida" runat="server"></asp:Label>
                  </td>
                  <td class="auto-style16" colspan="2">
                      <asp:Label ID="lbllitrosenVenta" runat="server" Visible="False"></asp:Label>
                      <asp:ImageButton ID="imageAgregar" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/agre.png" OnClick="imageAgregar_Click" Width="30px" />
                  </td>
                  <td class="auto-style16" colspan="2">&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:Label ID="lblidalmacen" runat="server"></asp:Label>
                      <asp:Label ID="lblalm" runat="server"></asp:Label>
                  </td>
                  <td class="auto-style3454">:</td>
                  <td class="auto-style16" colspan="2">stock :
                      <asp:Label ID="stockselecProducto" runat="server" Font-Bold="True" Text="0"></asp:Label>
                      &nbsp;Unidades&nbsp; =
                      <asp:Label ID="lblstockSelectUndMed" runat="server" Font-Bold="True" Text="0" Visible="False"></asp:Label>
                      <asp:Label ID="lblselecLitrosPresent" runat="server" Font-Bold="True" Text="0"></asp:Label>
                      &nbsp;Litros</td>
                  <td class="auto-style16" colspan="2">&nbsp;</td>
                  <td class="auto-style16" colspan="2">&nbsp;</td>
                  <td class="auto-style16" colspan="2">&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style42" colspan="10">
                      &nbsp;</td>
              </tr>
          </table>
          <asp:Panel ID="Panel2" runat="server">
              <asp:Label ID="lblzona" runat="server"></asp:Label>
              <asp:Label ID="lblvendedor" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblaprobacion" runat="server"></asp:Label>
              <asp:Label ID="lblestadoAprobacion" runat="server"></asp:Label>
              <asp:Label ID="lblidproducto" runat="server"></asp:Label>
          </asp:Panel>
          <asp:GridView ID="gvDetalleGuia" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDDETALLE,idguia,CODPRO,CODPEDIDO" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvDetalleGuia_SelectedIndexChanged" Width="720px">
              <Columns>
                  <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                  <ControlStyle Height="20px" Width="20px" />
                  <HeaderStyle Width="20px" />
                  </asp:CommandField>
                  <asp:BoundField DataField="IDDETALLE" HeaderText="IDDETALLE" ReadOnly="True" SortExpression="IDDETALLE" Visible="False" />
                  <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                  <asp:BoundField DataField="CODPRO" HeaderText="COD.PRO" SortExpression="CODPRO">
                  <HeaderStyle Width="60px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                  <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CODPEDIDO" HeaderText="CODPEDIDO" ReadOnly="True" SortExpression="CODPEDIDO" Visible="False" />
              </Columns>
              <EmptyDataTemplate>
                  <span class="auto-style58"><em>Seleccionar producto de la tabla detalle pedido...!&nbsp; </em></span>
              </EmptyDataTemplate>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <RowStyle BackColor="WhiteSmoke" />
              <SelectedRowStyle Font-Bold="False" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guia_ListarProductos" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblidguiaremReg" Name="idguia" PropertyName="Text" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:Label ID="lblmensaje1" runat="server"></asp:Label>   
   
      </div>
  <div class="panel-footer">

       <asp:Button ID="Button9" runat="server" OnClick="Button9_Click1" Text="FINALIZAR GUIA REMISION" />


  </div>
</div>
</asp:Panel></div>

</asp:Content>
