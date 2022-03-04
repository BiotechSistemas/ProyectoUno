<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditFactura.aspx.cs" Inherits="biotech.bio.ventas.ctacobros.EditFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../vendorF/bootstrap/js/bootstrap.min.js"></script>

    <!-- MetisMenu CSS -->
    <link href="../../vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="../../vendorF/jquery/jquery.min.js"></script>

   
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         
    <div class="container-fluid">
    
			<div class="col-sm-12">
			<h2><span class="glyphicon glyphicon-edit"></span>
                <asp:Label ID="lblfactura" runat="server" Text=""></asp:Label><asp:Label ID="lblidfactura" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblmensaje" runat="server" Visible="False"></asp:Label>
                <asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                </h2>
    </div>

        
				<div class="form-group row">
                    <%--<div class="col-sm-6 ">Cliente:</div>
                    <div class="col-sm-6 ">.col-xs-6 .col-md-4</div>
                    <div class="col-sm-6 ">.col-xs-6 .col-md-4</div>--%>

                   
                             <label for="tel1" class="col-sm-1 control-label">Cliente:</label>
                             <div class="col-sm-2">
                                 <asp:Label ID="lblruc" class="form-control-static" runat="server" Text=""></asp:Label>
				             </div>
                             <div class="col-sm-6">
                                 <asp:Label ID="lblrazonsocial" class="form-control-static" runat="server" Text=""></asp:Label>
				             </div>
                            <label for="tel1" class="col-sm-1 control-label">Moneda:</label>
                             <div class="col-sm-1">
                                 <asp:Label ID="lblmoneda" class="form-control-static" runat="server" Text=""></asp:Label>
				             </div>
                 
                   
				</div>

            <div class="form-group row">
            
            <label for="tel1" class="col-sm-2 control-label">Imp.Total:</label>
            <div class="col-sm-2">
                     <asp:Label ID="lblimportett" class="form-control-static" runat="server" Text=""></asp:Label>
		    </div>
                    <label for="tel1" class="col-sm-2 control-label">Retenido:</label>
            <div class="col-sm-2">
                     <asp:Label ID="lblimporteRetenido" class="form-control-static" runat="server" Text=""></asp:Label>
		    </div>
                    <label for="tel1" class="col-sm-2 control-label">Imp. a cobrar:</label>
            <div class="col-sm-2">
                     <asp:Label ID="lblimporteporCobrar" class="form-control-static" runat="server" Text=""></asp:Label>
			</div>

            </div>

        <div class="form-group row">
             <label for="tel1" class="col-sm-2 control-label">F.Emisión:</label>
            <div class="col-sm-2">
                     <asp:Label ID="lblFemision" class="form-control-static" runat="server" Text=""></asp:Label>
		    </div>
                    <label for="tel1" class="col-sm-2 control-label">F.Vencto:</label>
            <div class="col-sm-2">
                     <asp:Label ID="lblFvencimiento" class="form-control-static" runat="server" Text=""></asp:Label>
		    </div>
                    <label for="tel1" class="col-sm-2 control-label">Comp. pago:</label>
            <div class="col-sm-2">
                     <asp:Label ID="lblFnuevoCompromiso" class="form-control-static" runat="server" Text=""></asp:Label>
			</div>
        </div>


            <div class="form-group row">
                <label for="lblObservacion" class="col-sm-1 control-label">Detalle:</label>
                 <div class="col-sm-11">
                     <asp:Label ID="lblObservacion" class="form-control-static" runat="server" Text=""></asp:Label>
		        </div>
            </div>
        
         <div class="form-group row">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_Fact_comentarios"  UpdateCommand="update Facturacion_comentario set comentario = @comentario where id= @Id" SelectCommandType="StoredProcedure">
            <SelectParameters>
                 <asp:ControlParameter ControlID="lblidfactura" Name="idfactura" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="comentario" />
                <asp:Parameter Name="Id" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True" PageSize="8">
            <Columns>
                <asp:CommandField ShowEditButton="True" >
                <HeaderStyle Width="40px" />
                </asp:CommandField>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="IdFactura" HeaderText="IdFactura" SortExpression="IdFactura" Visible="False" />
                <asp:TemplateField HeaderText="DESCRIPCIÓN" SortExpression="comentario">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("comentario") %>' Width="100%"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("comentario") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="importe" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="importe">
                <HeaderStyle Width="90px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" ReadOnly="True" SortExpression="fecha" Visible="False">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="fechasistema" HeaderText="fechasistema"  SortExpression="fechasistema" Visible="False">
                </asp:BoundField>
                <asp:BoundField DataField="idUsuario" HeaderText="COD. " ReadOnly="True" SortExpression="idUsuario">
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="EstadoTPasesor" HeaderText="EstadoTPasesor" SortExpression="EstadoTPasesor" Visible="False" />
            </Columns>
        </asp:GridView>

             </div>


        <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">DETALLE DE PAGOS</a></li>
  <li><a data-toggle="tab" href="#menu1">PAGO TOTAL</a></li>
  <li><a data-toggle="tab" href="#menu2">PAGO PARCIAL</a></li>
 
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:RegularExpressionValidator id="RegularExpressionValidator1" 
                     ControlToValidate="txtconcepto"
                     ValidationExpression="\d{5}"
                     Display="Static"
                     ErrorMessage="* Ingresar 250 caracteres como máximo...."
                     EnableClientScript="False" 
                     runat="server" ForeColor="#990000"/>
          <%--  <asp:RegularExpressionValidator runat="server" ID="valInput"
    ControlToValidate="txtconcepto"
    ValidationExpression="^[\s\S]{1,250}$"
    ErrorMessage="Favor de ingresar como maximo 250 caracteres."
    Display="Dynamic" ForeColor="Maroon">* Favor de ingresar como maximo 250 caracteres.</asp:RegularExpressionValidator>--%>

            <div class="form-group row">
            
                <div class="col-sm-12">
                    <asp:TextBox ID="txtconcepto" runat="server" CssClass="form-control" MinimumValue="1" MaximumValue="250" Style="text-transform: uppercase" placeholder="Ingresar concepto, detalle de pago ..." Rows="4" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
		        </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                   <asp:Button ID="Button1" class="btn btn-success"  runat="server" Text="REGISTRAR" OnClick="Button1_Click"  />
                        </div>
            </div>

    </asp:Panel>
  </div>
  <div id="menu1" class="tab-pane fade">
     <asp:Panel ID="pregistrarPago" runat="server">
         <h4>REGISTRAR PAGO TOTAL</h4>
               <div class="form-group row">
                   <label for="tel1" class="col-sm-1 control-label">Fecha:</label>
                    <div class="col-sm-3">
                    <asp:TextBox ID="txtfechapago1" runat="server" CssClass="form-control"   TextMode="Date" OnTextChanged="txtfechapago1_TextChanged"></asp:TextBox>
		            </div>
                    <label for="tel1" class="col-sm-2 control-label">Imp. pagado:</label>
                    <div class="col-sm-3">
                    <asp:TextBox ID="txtimportePago1" type="number" step="0.01" runat="server" CssClass="form-control"  placeholder="Imp. pagado" ></asp:TextBox>
		            </div>
               </div>
               <div class="form-group row">
                   <label for="tel1" class="col-sm-2 control-label">N° de operación:</label>
                    <div class="col-sm-7">
                    <asp:TextBox ID="txtdescripcioncompromiso1" CssClass="form-control" Style="text-transform: uppercase"    runat="server" placeholder="N° de operación, referencia de pago..."></asp:TextBox>
		            </div>
                    <asp:Button ID="btReg" class="col-sm-2 btn btn-success"  runat="server" Text="REGISTRAR" OnClick="btReg_Click" />
               </div>

               
                
            </asp:Panel>
   
  </div>
  <div id="menu2" class="tab-pane fade">
    <%--OP33333--%>
      <asp:Panel ID="pcompromisoPago" runat="server" >
           <h4>REGISTRAR PAGO PARCIAL</h4>
                <div class="form-group row">
                <label for="tel1" class="col-sm-1 control-label">Fecha:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtfechapago2" runat="server" CssClass="form-control"   TextMode="Date"></asp:TextBox>
		        </div>
                <label for="tel1" class="col-sm-2 control-label">Imp. pagado:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtimportecompromisopago" type="number" step="0.01" runat="server" CssClass="form-control" placeholder="Imp. pagado"  ></asp:TextBox>
		        </div>
                </div>

                <div class="form-group row">
                    <label for="tel1" class="col-sm-2 control-label">N° de operación:</label>
                    <div class="col-sm-7">
                    <asp:TextBox ID="txtdescripcioncompromiso" CssClass="form-control"  Style="text-transform: uppercase"  runat="server" placeholder="N° de operación, referencia de pago..."></asp:TextBox>
		        </div>
                
                </div>
           <br />
                <div class="form-group row">
                <label for="tel1" class="col-sm-3 control-label">Nueva fecha de pago:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtNewFechaPago" runat="server" CssClass="form-control"   TextMode="Date"></asp:TextBox>
		        </div>
                   <asp:Button ID="btRegcompromiso" class="col-sm-5 btn btn-success"  runat="server" Text="REGISTRAR COMPROMISO DE PAGO" OnClick="btRegcompromiso_Click" />
                </div>
                 


            </asp:Panel>
  </div>

     


    

</div>

         





         







           

           
        <div class="form-group row">
            <asp:Label ID="lblmensaje01" runat="server" Text=""></asp:Label>
        </div>

    </div>
 
        </form>
</body>
</html>
