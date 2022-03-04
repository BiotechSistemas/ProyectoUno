<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="GuiaRemision.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.GuiaRemision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit"></i>GUIA REMISIÓN<asp:Label ID="lblidGuia" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h3>
</div>
         </div>
 <div class="row">

<ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbPedido" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaPedido.aspx" >Nota de pedido</asp:LinkButton>
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
                        <%--//aquise  econde el panel--%>
               
    <asp:Panel ID="Panelfacturacion" runat="server">
            
    <div class="row">
        <div class="col-md-2" >
            <asp:Button ID="btnuevo" runat="server" class="btn btn-default" Text="Nueva GUIA BIOTECH" Width="100%" />
        </div>
        <div class="col-md-3" >
            <asp:Button ID="bt_guiainterna" runat="server" class="btn btn-default" Text="GUIA INTERNA" Width="100%" />
        </div>
        <div class="col-md-6" >
            <div class="btn-group">
  
            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="BIOTECH" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="TRASLADO INTERNO" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="PROVEEDOR" OnClick="Button4_Click" />
            <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="RECEPCION" OnClick="Button3_Click" />
  
            </div>
        </div>
         <div class="col-md-1" >
             <asp:LinkButton ID="lbtAnexarFactura" class="btn btn-info" runat="server" PostBackUrl="~/bio/ventas/FactLetra/GuiaRem_Facturar.aspx">ANEXAR</asp:LinkButton>
             </div>
        
    <hr />
        </div>

  <br />
    <asp:Panel ID="panelAlerta" runat="server"  class="alert alert-warning alert-dismissable">
  
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <strong>¡GUIA N°: <asp:Label ID="lblidguia2" runat="server"></asp:Label>!</strong> Anulada con exito

    </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" class="row">
          <%-- <div class="panel panel-default">
            <div class="panel-body">--%>
              <div class="alert alert-warning">
                  
                <div class="form-horizontal" role="form">

                    <div class="form-group row">
				  <label for="atencion" class="col-xs-3 col-md-2 control-label">ANULAR N° GUIA:</label>
				  
					 <asp:Label ID="lblguia" runat="server" class="col-xs-4 col-md-2  control-label"></asp:Label>
				 
				 
							<div class="col-xs-5 col-md-6">
								<asp:TextBox ID="txtmotivoAnular"  runat="server" class="form-control" required placeholder="Motivo de anulación"></asp:TextBox>
							</div>
                        <div class="col-xs-1 col-md-1">
                         <asp:Button ID="btAnular" class="btn btn-default" runat="server" Text="ANULAR" OnClick="btAnular_Click" />
                            </div>
				        <div class="col-xs-1 col-md-1">
                            <asp:LinkButton ID="LB_sALIR" runat="server" class="btn btn-danger" OnClick="LB_sALIR_Click">CERRAR</asp:LinkButton>
                            </div>

                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
				

                    </div>
                    <div class="row">
                        Cant. Registro(s) de salida:
                        <asp:Label ID="lblcantsalidas" runat="server" Text="0"></asp:Label>
                        &nbsp;<asp:GridView ID="gvalidasxGuias" runat="server" AutoGenerateColumns="False" DataKeyNames="idSalida" DataSourceID="SqlDataSourcesalidas" OnSelectedIndexChanged="gvalidasxGuias_SelectedIndexChanged" Width="500px">
                            <Columns>
                                <asp:CommandField SelectText="Anular" ShowSelectButton="True" />
                                <asp:BoundField DataField="idSalida" HeaderText="idSalida" ReadOnly="True" SortExpression="idSalida" Visible="False" />
                                <asp:BoundField DataField="idAlmacen" HeaderText="ALM." SortExpression="idAlmacen" />
                                <asp:BoundField DataField="idguiarem" HeaderText="idguiarem" SortExpression="idguiarem" Visible="False" />
                                <asp:BoundField DataField="tipoSalida" HeaderText="TP. SALIDA" SortExpression="tipoSalida" />
                                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" Visible="False" />
                                <asp:BoundField DataField="CodProducto" HeaderText="COD" SortExpression="CodProducto" />
                                <asp:BoundField DataField="producto" HeaderText="PRODUCTO" SortExpression="producto" />
                                <asp:BoundField DataField="presentacion" HeaderText="PRESENT" SortExpression="presentacion" />
                                <asp:BoundField DataField="cantidad" HeaderText="CANTIDAD" SortExpression="cantidad" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" Visible="False" />
                                <asp:BoundField DataField="IDAlmacenDetalle" HeaderText="IDAlmacenDetalle" SortExpression="IDAlmacenDetalle" Visible="False" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourcesalidas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_SalidaGuia" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidGuia" Name="idGuiaRem" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        *Para anular guía es necesario anular todas las salidas registradas...</div>

                </div>

            </div>

        </asp:Panel>
 


        </asp:Panel>

      <asp:Panel ID="PanelAYUDA" runat="server" Visible="False">
          GRUPO :
          <asp:Label ID="lblidGrupoEmpresa" runat="server" Visible="False"></asp:Label>
          &nbsp;OPCION:
          <asp:Label ID="lbl10opcion" runat="server"></asp:Label>
          &nbsp; valorbuscar:
          <asp:Label ID="lbl10DatoBuscar" runat="server"></asp:Label>
          &nbsp;Fecha1:<asp:Label ID="lbl10fecha1" runat="server"></asp:Label>
          &nbsp; fecha2:
          <asp:Label ID="lbl10fecha2" runat="server"></asp:Label>
      </asp:Panel>

     <div class="row">


         <asp:ImageButton ID="ImageButtonActualizar" runat="server" Height="30px" ImageAlign="Top" ImageUrl="~/images/btactualizar.png" OnClick="ImageButtonActualizar_Click" Width="30px" />


         <asp:TextBox ID="TextBox1" runat="server" placeholder="Num. Guia o cliente" Width="200px" AutoPostBack="True"></asp:TextBox>
         <asp:Button ID="Button5" runat="server" Text="NUMERO GUIA" OnClick="Button5_Click" Width="120px" />


         <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="RUC" Width="120px" />
         <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="RAZON SOCIAL" Width="120px" />
         <asp:TextBox ID="txtfe1" runat="server" TextMode="Date"></asp:TextBox>
         -<asp:TextBox ID="txtfe2" runat="server" TextMode="Date"></asp:TextBox>
         <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="FECHA" />
         <asp:Button ID="Button10" runat="server" ForeColor="#990000" OnClick="Button10_Click" Text="ANULADOS" />


         <asp:ImageButton ID="lbtnExportarExcel" runat="server" Height="25px" OnClick="lbtnExportarExcel_Click" Width="25px" ImageAlign="Top" ImageUrl="~/images/excel.png" />


         <asp:Label ID="lblMensajePrincipal" runat="server" ForeColor="#990000"></asp:Label>


         <asp:Panel ID="PanelAdjuntarGuiaRem" runat="server">
             <hr />
             <table class="nav-justified">
                 <tr>
                     <td>ADJUNTAR GUIA REMISIÓN:
                         <asp:Label ID="lbl3idguia" runat="server"></asp:Label>
                         &nbsp;<asp:Label ID="lbl3Numguia" runat="server"></asp:Label>
                     </td>
                     <td WIDTH="250" align="right">
                                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                     <td WIDTH="80">
                         <asp:LinkButton ID="lbtn3Adjuntar" CssClass="btn btn-success" runat="server" OnClick="lbtn3Adjuntar_Click">ADJUNTAR</asp:LinkButton>
                     </td>
                 </tr>
                
                 <tr>
                     <td>&nbsp;</td>
                     <td align="right" width="250">
                         <asp:Label ID="lblrutatt" runat="server" Visible="False"></asp:Label>
                         <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                     </td>
                     <td width="80">&nbsp;</td>
                 </tr>
                
             </table>
             <hr />
         </asp:Panel>


         <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia,GUIAREM" DataSourceID="SqlDataSource2" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: x-small" OnRowCommand="GridView1_RowCommand" GridLines="Horizontal" PageSize="50" AllowSorting="True">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />
                     <asp:TemplateField HeaderText="GUIAREM" ShowHeader="False" Visible="False">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("GUIAREM") %>'></asp:LinkButton>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:TemplateField>
                     <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                     <asp:BoundField DataField="GUIAREM" HeaderText="GUIA REM." SortExpression="GUIAREM" ReadOnly="True" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MTRASLADO" HeaderText="MOTIVO" SortExpression="MTRASLADO" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                     <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" />
                     <asp:BoundField DataField="TRANSPORTE" HeaderText="TRANSPORTE" SortExpression="TRANSPORTE" />
                     <asp:BoundField DataField="CONDUCTOR" HeaderText="CONDUCTOR" SortExpression="CONDUCTOR" />
                     <asp:BoundField DataField="PLLEGADA" HeaderText="P. LLEGADA" SortExpression="PLLEGADA" Visible="False" />
                     <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" />
                     <asp:BoundField DataField="idfactura" HeaderText="FACTURA" SortExpression="idfactura" Visible="False" />
                    
                      <asp:BoundField DataField="FACTURA" SortExpression="FACTURA" Visible="False" >
                      <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                      <asp:ImageField DataImageUrlField="estadofactura" DataImageUrlFormatString="~/images/FACT{0}.png" HeaderText="F*" Visible="False">
                         <ControlStyle Height="12px" Width="12px" />
                         <HeaderStyle Width="21px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
                     <asp:BoundField DataField="IdordenVenta" HeaderText="IdordenVenta" SortExpression="IdordenVenta" Visible="False" />

                      <asp:BoundField DataField="PEDIDO" HeaderText="PEDIDO" SortExpression="PEDIDO"   >
                       <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                       <asp:BoundField DataField="ESTADO" SortExpression="ESTADO" Visible="False"  >
                     <HeaderStyle Width="0px" />
                     <ItemStyle Width="0px" />
                     </asp:BoundField>
                     <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="*">
                         <ControlStyle Height="12px" Width="12px" />
                         <HeaderStyle Width="21px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
                     <asp:ButtonField CommandName="print" HeaderText="PRINT" ShowHeader="True" Text="print" ButtonType="Image" ImageUrl="~/images/buscarr.png" Visible="False" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                    
                
                    
                     <asp:BoundField DataField="DOCGUIA" HeaderText="DOCGUIA" ReadOnly="True" Visible="False"   SortExpression="DOCGUIA" />
                    <asp:ImageField DataImageUrlField="DOCGUIA" DataImageUrlFormatString="~/images/GUIA{0}.png" HeaderText="G*">
                         <ControlStyle Height="15px" Width="15px" />
                         <HeaderStyle Width="21px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>

                      <asp:ButtonField CommandName="ADJUNTAR" HeaderText="" ShowHeader="True" Text="Adjuntar" ButtonType="Image" ImageUrl="~/images/SUBIR.png" >           
                     <ControlStyle Height="20px" Width="18px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ButtonField>

                      <asp:ButtonField CommandName="BAJAR" HeaderText="" ShowHeader="True" Text="Ver" ButtonType="Image" 
                        ImageUrl="~/images/BAJAR.png" >                     
                        <ControlStyle Height="20px" Width="18px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
                        </asp:ButtonField>

                       <asp:ButtonField CommandName="anular" HeaderText="ANULAR" ShowHeader="True" Text="Ver" ButtonType="Image" 
                        ImageUrl="~/images/ANULAR.png" >                     
                        <ControlStyle Height="20px" Width="18px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
                        </asp:ButtonField>


                                  
                 </Columns>
                
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="guiaRem_General" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lbl10opcion" Name="op" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidGrupoEmpresa" Name="GRUPO"  Type="Int32" />
                     <asp:ControlParameter ControlID="lbl10DatoBuscar" Name="nguia" PropertyName="Text" Type="String" />
                     <asp:ControlParameter ControlID="lbl10fecha1" DbType="Date" Name="f1" PropertyName="Text" />
                     <asp:ControlParameter ControlID="lbl10fecha2" DbType="Date" Name="f2" PropertyName="Text" />
                 </SelectParameters>
             </asp:SqlDataSource>


         * <strong>ESTADO DE GUIAS:</strong> ANULADAS <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/images/Z0.png" Width="20px" />
&nbsp;| ATENDIDAS CON NOTA DE PEDIDO
         <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images/Z11.png" Width="20px" />
&nbsp;| ATENDIDAS SIN NOTA DE PEDIDO&nbsp;
         <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/images/Z1.png" Width="20px" />
         <br />
         G* : ADJUNTA GUIA SUNAT&nbsp; <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/images/GUIA1.png" Width="20px" />
&nbsp;| F* : ADJUNTA FACTURA&nbsp; <asp:Image ID="Image7" runat="server" Height="20px" ImageUrl="~/images/FACT1.png" Width="20px" />
&nbsp;| Descargar GUIA-SUNAT
         <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/images/BAJAR.png" Width="20px" />


         &nbsp;| Adjuntar
         <asp:Image ID="Image8" runat="server" Height="20px" ImageUrl="~/images/SUBIR.png" Width="20px" />


         &nbsp; |&nbsp; Anular&nbsp;
         <asp:Image ID="Image9" runat="server" Height="20px" ImageUrl="~/images/ANULAR.png" Width="20px" />


         </div>
</asp:Content>
