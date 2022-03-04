<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="Cotizacion.aspx.cs" Inherits="biotech.VentasRTC.Cotizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />


    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearch]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/1logistica/Factura.aspx/GetCustomers") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0],
                                    val: item.split('-')[1]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    $("[id$=hfCustomerId]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>

      <script type="text/javascript">
          $(function () {
              $("[id$=txtSearchProducto]").autocomplete({
                  source: function (request, response) {
                      $.ajax({
                          url: '<%=ResolveUrl("~/VentasRTC/RealizarPedido.aspx/GetCustomers2") %>',
                          data: "{ 'prefix': '" + request.term + "'}",
                          dataType: "json",
                          type: "POST",
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {
                              response($.map(data.d, function (item) {
                                  return {
                                      label: item.split('-')[0],
                                      val: item.split('-')[1],

                                  }
                              }))
                          },
                          error: function (response) {
                              alert(response.responseText);
                          },
                          failure: function (response) {
                              alert(response.responseText);
                          }
                      });
                  },
                  select: function (e, i) {

                      $("[id$=hfCustomerProductoNombre]").val(i.item.val);
                  },
                  minLength: 1
              });
          });
</script>








</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Realizar
    Cotización 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Confirmar Visita</asp:LinkButton>
      &nbsp;<br />
    <br />
    <span class="title_section_offer">Resultado de visita seleccionada:</span>
       
        <asp:Label ID="lblidRTC" runat="server" Visible="False">PRUEB</asp:Label>
        <asp:Label class="required" ID="lblmensaje" runat="server"></asp:Label>
        <asp:Label ID="lblidcliente" runat="server"></asp:Label>
        &nbsp;<asp:Label ID="lblidproducto" runat="server"></asp:Label>
      <asp:Label ID="lblnombreProduct" runat="server"></asp:Label>
      &nbsp;precio50:
      <asp:Label ID="lblpreciomaximo50" runat="server"></asp:Label>
      <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
   <div class="control-group">
    <label class="control-label">Cliente:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/buscarr.png" Width="30px" OnClick="ImageButton1_Click" />
    </div>
    </div><!-- / .control-group -->

        <asp:Panel ID="PanelIngresarProducto" runat="server">


    <div class="control-group">
    <label class="control-label">Producto:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtSearchProducto" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/images/buscarr.png" Width="30px" OnClick="ImageButton2_Click" />
    </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">Presentación:<span class="required">*</span></label>
    <div class="controls">
        <label class="radio inline">  
        <asp:RadioButtonList ID="rbtpresentacion" runat="server" DataSourceID="SqlDataSource1" DataTextField="presentacion" DataValueField="idProducto" RepeatDirection="Horizontal" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="rbtpresentacion_SelectedIndexChanged">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select  idProducto,presentacion from tb_producto where producto=@param">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblnombreProduct" Name="param" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
            </label>
    </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">Precio
        
            <asp:Label ID="lblpresent" runat="server"></asp:Label>
       
        &nbsp;(40%):<span class="required">*</span></label>
    <div class="controls">
        
        <h4>
            <asp:Label ID="lblpv40" runat="server"></asp:Label>
        </h4>
        &nbsp; -
        
        <asp:Label ID="lblexonerado" runat="server"></asp:Label>
        &nbsp;-
        <asp:Label ID="lblrentabilidad" runat="server"></asp:Label>
    </div>
    </div><!-- / .control-group -->


    <div class="control-group">
    <label class="control-label">Cantidad:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>
    </div><!-- / .control-group -->

        <div class="control-group">
    <label class="control-label">Precio Venta:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </div>
    </div>
            <br />
            <asp:HiddenField ID="hfCustomerProducto" runat="server" />
            <asp:HiddenField ID="hfCustomerProductoNombre" runat="server" />
            <asp:HiddenField ID="hfCustomerId" runat="server" />
            <br />
            exonerado:&nbsp; rentabilidad:
        </asp:Panel>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

