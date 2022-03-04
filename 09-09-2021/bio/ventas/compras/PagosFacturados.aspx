<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="PagosFacturados.aspx.cs" Inherits="biotech.bio.ventas.compras.PagosFacturados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="row-fluid">
		<div class="col-md-12">
			<h3><span class="glyphicon glyphicon-edit"></span> CTA. POR PAGAR - FACTURACIONES
                <asp:Label ID="lblIDusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
                <asp:Label ID="lblidpago1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidproveedor1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                </h3>
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
                        <asp:LinkButton ID="lbt_Facturados" runat="server" PostBackUrl="~/bio/ventas/compras/AdminCCA.aspx">Administrar CCA</asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtn_pagosRealizados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRealizados.aspx">Pagos realizados</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtn_ctapagar" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>
                    </ol>
            </div>


            
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    op:<asp:Label ID="lblOp" runat="server"></asp:Label>
                    &nbsp;proveedor:
                    <asp:Label ID="lblProveedor" runat="server"></asp:Label>

                </asp:Panel>

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
      <asp:LinkButton ID="lbtnCancelar" runat="server" class=" btn btn-danger" OnClick="lbtnCancelar_Click">CANCELAR</asp:LinkButton>
    </div>
</div>

                
               

            </asp:Panel>


                <div class="row">


                <div class="table-responsive">
                    Estado:
                    <asp:DropDownList ID="ddlEstado" runat="server" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged">
                        <asp:ListItem Value="10">GENERAL</asp:ListItem>
                        <asp:ListItem Value="20" Selected="True">POR FACTURAR</asp:ListItem>
                        <asp:ListItem Value="30">FACTURADAS</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtProveedor" runat="server" placeholder="Proveedor..." Width="250px" AutoPostBack="True" OnTextChanged="txtProveedor_TextChanged"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:GridView ID="gvCuentas" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idPago,NCTA,doc" DataSourceID="SqlDataSourcePagos" AllowPaging="True" AllowSorting="True" Font-Size="X-Small" PageSize="30" OnRowCommand="gvCuentas_RowCommand" OnSelectedIndexChanged="gvCuentas_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="Nº CTA." ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("NCTA") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="idPago" HeaderText="idPago" ReadOnly="True" SortExpression="idPago" Visible="False" />
                        <asp:BoundField DataField="NCTA" HeaderText="NCTA" SortExpression="NCTA" ReadOnly="True" Visible="False" />
                        <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                        <asp:BoundField DataField="empresa" HeaderText="EMPRESA" SortExpression="empresa" />
                        <asp:BoundField DataField="Fecha" HeaderText="F.EMISIÓN" SortExpression="Fecha" DataFormatString="{0:dd/MM/yyyy}" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL" />
                        <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" Visible="False" />
                         <asp:BoundField DataField="MONEDA" HeaderText="" SortExpression="MONEDA" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMP_ADELANTO" HeaderText="ADELANTO" SortExpression="IMP_ADELANTO" DataFormatString="{0:0,0.00}" Visible="False" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CIOTAS" HeaderText="CUOTAS" SortExpression="CIOTAS" Visible="False" />
                       
                        <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                        <asp:BoundField DataField="IDUSUREG" HeaderText="IDUSUREG" SortExpression="IDUSUREG" Visible="False" />
                        
                        <asp:BoundField DataField="numDocumento" HeaderText="DOCUMENTO" SortExpression="numDocumento" />
                        
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="EST">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                        <asp:BoundField DataField="IMP_DETRACCION" HeaderText="DETRAC" SortExpression="IMP_DETRACCION" DataFormatString="{0:0,0.00}" Visible="False" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OC" HeaderText="O.COMPRA" SortExpression="OC" />
                        <asp:BoundField DataField="doc" HeaderText="Adjunto" SortExpression="doc" >
                        <ItemStyle BackColor="#ECF5E9" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="SUBIR" HeaderText="Adjuntar" ShowHeader="True" Text="Adjuntar" >
                        <ControlStyle CssClass="btn btn-success btn-xs"></ControlStyle>
                        
                        </asp:ButtonField>
                         <asp:ButtonField CommandName="BAJAR" ShowHeader="True" Text="Ver" ButtonType="Image" ImageUrl="~/images/download.gif" >
                       
                        <ControlStyle Height="20px" Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                       
                        </asp:ButtonField>
                    </Columns>
                    <EmptyDataTemplate>
                        No registrar documentos....
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>
                    </div>
                <asp:SqlDataSource ID="SqlDataSourcePagos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_cuentasxpagarFacturas" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblOp" Name="op" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="lblProveedor" Name="proveedor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                </div>
       
            </div>
</asp:Content>
