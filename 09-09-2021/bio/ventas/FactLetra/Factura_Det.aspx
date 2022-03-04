<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Factura_Det.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.Factura_Det" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> DETALLE FACTURACIÓN<asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h2>

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

    <div class="row">
        
        <div class="col-xs-10 col-md-7">

               <div class="form-inline">
              <div class="form-group">
                <label class="sr-only" for="txtbuscardato">Cliente ó factura</label>
                <asp:TextBox ID="txtbuscardato" class="form-control" placeholder="Cliente / Factura"  runat="server" AutoPostBack="True" OnTextChanged="txtbuscardato_TextChanged"></asp:TextBox>
                  
              </div>
                    <asp:Button ID="BTNbuscarCliente" class="btn btn-default" runat="server" Text="Cliente" OnClick="BTNbuscarCliente_Click" />
              <div class="form-group">
               <label class="sr-only" for="txtfdesde">Fecha</label>
                <asp:TextBox ID="txtfdesde" class="form-control"  runat="server" TextMode="Date"></asp:TextBox> HASTA 
               <asp:TextBox ID="txtfhasta" class="form-control"  runat="server" TextMode="Date"></asp:TextBox>
               
              </div>
                   <asp:Button ID="btBuscar" class="btn btn-default" runat="server" Text="Generar" OnClick="btBuscar_Click" />
              <asp:Button ID="btDefault" class="btn btn-default" runat="server" Text="Actualizar" OnClick="btDefault_Click"  />
             
                   
             
            </div>
        </div>
        <div class="col-xs-2  col-md-3 col-md-offset-2">
            <asp:Button ID="btnuevo" class="btn btn-success" runat="server" Text="+ NUEVO" PostBackUrl="~/bio/ventas/FactLetra/Factura.aspx" />

        </div>

    </div>
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
    <div class="row">
        <asp:Label ID="lblcliente" runat="server"></asp:Label>
                   <asp:Label ID="lblfdesde" runat="server"></asp:Label>
                   <asp:Label ID="lblfhasta" runat="server"></asp:Label>
        <asp:Label ID="lblop" runat="server"></asp:Label>
        &nbsp;factura:
        <asp:Label ID="lblidFactura" runat="server"></asp:Label>
    </div>
        </asp:Panel>

    <asp:Panel ID="panelAlerta" runat="server"  class="alert alert-warning alert-dismissable">
  
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <strong>¡FACTURA N°: <asp:Label ID="lblfactura2" runat="server"></asp:Label>!</strong> factura anulada...!

    </asp:Panel>

    <asp:Panel ID="panular"  class="well" runat="server">
        <div class="form-horizontal">
            <div class="form-group row">
				  <label for="atencion" class="col-md-2 control-label">FACTURA N: <asp:Label ID="lblFactura" class="control-label" runat="server" ></asp:Label></label>
                 
				  <div class="col-md-7">
                       <asp:TextBox ID="txtobservacion" required placeholder="Ing. motivo" class="form-control"  runat="server" ></asp:TextBox>

                      </div>
                  <asp:Button ID="btanular" class="btn btn-warning" runat="server" Text="ANULAR DOC." OnClick="btanular_Click" />
             
                   
             
              <asp:LinkButton ID="lbCancelar" class="btn btn-danger" runat="server" OnClick="lbCancelar_Click">CANCELAR</asp:LinkButton>
                  
                </div>
           <asp:Label ID="lblmensaje1" runat="server" ForeColor="#990000"></asp:Label>
            
                 
             
                   
             
            </div>
    </asp:Panel>

    <div class="row">
        <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-sm table-hover" AutoGenerateColumns="False" DataKeyNames="idfacturacion,FACTURA,BoletaFactura,tipoVenta" DataSourceID="SqlDataSource1" Font-Size="X-Small" AllowPaging="True" PageSize="15" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:TemplateField HeaderText="FACTURA" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("FACTURA") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" Visible="False" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="tipoVenta" HeaderText="VENTA" SortExpression="tipoVenta" />
                <asp:BoundField DataField="fechareg" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="fechareg">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fechaven" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechaven">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="codvendedor" HeaderText="ASESOR" SortExpression="codvendedor" />
                <asp:BoundField DataField="idclienteRUC" HeaderText="RUC" SortExpression="idclienteRUC" Visible="False" />
                <asp:BoundField DataField="razonsocial" HeaderText="RAZON SOCIAL" SortExpression="razonsocial" />
                <asp:BoundField DataField="idcondpago" HeaderText="COND PAG." SortExpression="idcondpago" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias" />
                <asp:BoundField DataField="tpmoneda" SortExpression="tpmoneda" />
                <asp:BoundField DataField="importebruto" HeaderText="I.BRUTO" SortExpression="importebruto" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                </asp:BoundField>
                <asp:BoundField DataField="tpimporteretenido" HeaderText="tpimporteretenido" SortExpression="tpimporteretenido" Visible="False" />
                <asp:BoundField DataField="igv" HeaderText="IGV" SortExpression="igv" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="importeNeto" HeaderText="I.NETO" SortExpression="importeNeto" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montoretenido" HeaderText="I. RET" SortExpression="montoretenido" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montodisponible" HeaderText="I.DISPONIBLE" SortExpression="montodisponible" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                </asp:BoundField>
                <asp:BoundField DataField="RET" SortExpression="RET" HeaderText="R*" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="montodisponibleAdelanto" HeaderText="CANCELADO" SortExpression="montodisponibleAdelanto" Visible="False" />
                <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" Visible="False" />
                <asp:BoundField DataField="periodo" HeaderText="periodo" SortExpression="periodo" Visible="False" />
                <asp:BoundField DataField="GlosaGuias" HeaderText="GLOSA GUIA" SortExpression="GlosaGuias" />
                <asp:BoundField DataField="BoletaFactura" HeaderText="BoletaFactura" SortExpression="BoletaFactura" Visible="False" />
                 <asp:ButtonField CommandName="anular" HeaderText="" ShowHeader="True" Text="Anular" />
                <asp:ButtonField CommandName="edita" HeaderText="" ShowHeader="True" Text="Mofidicar" Visible="False" />
            
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_facturacion" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblcliente" Name="cliente" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblfdesde" DbType="Date" Name="f1" PropertyName="Text" />
                <asp:ControlParameter ControlID="lblfhasta" DbType="Date" Name="f2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
    </div>
</asp:Content>
