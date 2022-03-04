<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="PagosRealizados.aspx.cs" Inherits="biotech.bio.ventas.compras.PagosRealizados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
		  <div class="row-fluid">
			<div class="col-md-12">
			<h2><span class="glyphicon glyphicon-edit"></span> HISTORIAL DE PAGOS<asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblempresa" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblfecha1" runat="server"></asp:Label>
                <asp:Label ID="lblfecha2" runat="server"></asp:Label>
                </h2>
				<div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/Proveedor.aspx">Proveedores</asp:LinkButton>
                        </li>
                            <%--<li>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/bio/ventas/compras/Cotizaciones.aspx">Cotizaciones</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Compras</asp:LinkButton>
                        </li>--%>
                        

                        <li>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRegistrar.aspx">Administrar Cuenta</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbt_Facturados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosFacturados.aspx">Facturar Cuenta</asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtn_pagosRealizados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRealizados.aspx">Pagos realizados</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtn_ctapagar" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>
                    </ol>
            </div>


<asp:Panel ID="psubir" class="row" runat="server">
                
<div class="panel panel-default">
  <div class="panel-heading">
      Nº CUENTA: <asp:Label ID="lblidcta" runat="server"></asp:Label>
      <asp:Label ID="lblcuenta" runat="server"></asp:Label>

  </div>
  <div class="panel-body">
   
                            Nº Documento:<br />
                            <asp:TextBox ID="txtndoc" runat="server" required Width="250px"></asp:TextBox>
                            <br />
                            Adjuntar:<asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Label ID="lblRuta" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="lblmensajeAdjunto" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                       </div>
  <div class="panel-footer"><asp:Button ID="btnsubir" runat="server" Text="ADJUNTAR COMPROBANTE" OnClick="btnsubir_Click"/>
      <asp:LinkButton ID="lbtnCancelar" class=" btn btn-danger" runat="server" OnClick="lbtnCancelar_Click">CANCELAR</asp:LinkButton>
    </div>
</div>

                
               

            </asp:Panel>



			<div class="form-horizontal" role="form" id="datos_cotizacion">
                <div class="form-group row">
				  <label for="atencion" class="col-md-1 control-label">Fecha:</label>
				  <div class="col-md-2">
                      <asp:TextBox ID="TextBox1" required class="form-control" runat="server" TextMode="Date"></asp:TextBox>				
				  </div>
                    <label for="atencion" class="col-md-1 control-label">hasta:</label>
				 <div class="col-md-2">
                      <asp:TextBox ID="TextBox2" required class="form-control" runat="server" TextMode="Date"></asp:TextBox>				
				  </div>
                    <asp:Button ID="btBuscar" runat="server" class="col-md-1 btn btn-success" Text="Filtrar" />

				</div>

                <div class="form-group row">
                <asp:GridView ID="GridView1" Class="table table-condensed  table-hover" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="idDetalle,idpagos,NCUENTA" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="XX-Small" AllowSorting="True" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" SortExpression="idDetalle" Visible="False" />
                        <asp:BoundField DataField="idpagos" HeaderText="idpagos" SortExpression="idpagos" Visible="False" />
                        <asp:BoundField DataField="NCUENTA" HeaderText="CUENTA" ReadOnly="True" SortExpression="NCUENTA" >
                        <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                        <asp:BoundField DataField="NDOCUMENTO" HeaderText="DOCUMENTO" SortExpression="NDOCUMENTO" Visible="False" />
                        <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                        <asp:BoundField DataField="ncuota" HeaderText="PAGO" SortExpression="ncuota" >
                        <HeaderStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idmediopago" HeaderText="MEDIO" SortExpression="idmediopago" />
                        <asp:BoundField DataField="serieOperacion" HeaderText="SERIE" SortExpression="serieOperacion" />
                        <asp:BoundField DataField="noperacion" HeaderText="OPERACION" SortExpression="noperacion" />
                        <asp:BoundField DataField="fechapagada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.PAGADA" SortExpression="fechapagada">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="importepagado" HeaderText="IMP. PAGADO" SortExpression="importepagado" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                        <asp:BoundField DataField="observacion" HeaderText="ASUNTO" SortExpression="observacion" Visible="False" />
                        <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" Visible="False" />
                        <asp:BoundField DataField="fechavencto" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="fechavencto" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                        <asp:BoundField DataField="validar" HeaderText="validar" SortExpression="validar" Visible="False" />
                        <asp:BoundField DataField="autor" SortExpression="autor" />
                        <asp:BoundField DataField="idempresa" SortExpression="idempresa" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="estado" DataImageUrlFormatString="~/images/{0}.png" HeaderText="EST">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="16px" />
                        </asp:ImageField>
                         <asp:ImageField DataImageUrlField="DOC" DataImageUrlFormatString="~/images/FACT{0}.png" HeaderText="">
                                <ControlStyle Height="20px" Width="18px" />
                                <HeaderStyle Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>

                       <asp:ImageField DataImageUrlField="SERVC" DataImageUrlFormatString="~/images/c{0}.png">
                                <ControlStyle Height="15px" Width="15px" />
                                <HeaderStyle Width="15px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ImageField>

                         <asp:ButtonField CommandName="SUBIR" HeaderText="Adjuntar" ShowHeader="True" Text="Adjuntar" >
                        <ControlStyle CssClass="btn btn-success btn-xs"></ControlStyle>
                        
                        </asp:ButtonField>
                    </Columns>
                    <HeaderStyle BackColor="#EEEEEE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pagos_Historial_Fecha" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblempresa" Name="empresa" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="f1" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="f2" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
                
            </div>
            </div>
           </div>

</asp:Content>
