<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech._1logistica.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      
      <style type="text/css">
           .modalBackground 
            {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
                z-index: 10000;
            }
    </style>
 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <script>
          $(document).ready(function () {
              $("#miModal").modal("show");
          });
    </script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:Panel ID="pAlertaAdjFacturas" runat="server">
     
<div class="modal fade" id="miModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">FACTURAS POR ADJUNTAR</h4>
      </div>
      <div class="modal-body">
        * Actualmente, registra las siguientes facturas por adjuntar.
          <br />
          
          <asp:GridView ID="GridViewFacturas" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%" Font-Size="XX-Small">
                                           <AlternatingRowStyle BackColor="White" />
                                           <Columns>
                                               <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                                               <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                               <asp:BoundField DataField="TIPOVENTA" HeaderText="TIPO VENTA" SortExpression="TIPOVENTA" />
                                               <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA REG" SortExpression="FECHAREG">
                                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="FECHAVEN" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA VEN" SortExpression="FECHAVEN">
                                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR">
                                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="RazonSocial" HeaderText="CLIENTE" SortExpression="RazonSocial" />
                                               <asp:BoundField DataField="CONDPAGO" HeaderText="COND. PAGO" SortExpression="CONDPAGO">
                                               <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                               </asp:BoundField>
                                           </Columns>
                                           <FooterStyle BackColor="#CCCC99" />
                                           <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                           <RowStyle BackColor="#F7F7DE" />
                                           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                           <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                           <SortedAscendingHeaderStyle BackColor="#848384" />
                                           <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                           <SortedDescendingHeaderStyle BackColor="#575357" />
                                       </asp:GridView>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="facturas_xadjuntar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                       <br />

          <asp:LinkButton ID="lbtnAdjuntarFactura" runat="server" OnClick="lbtnAdjuntarFactura_Click">Adjuntar facturas</asp:LinkButton>
      </div>
    </div>
  </div>
</div>

        </asp:Panel>





       <div class="main-content">
			
			
			<div class="main">
				<div class="widget">

					<h2>Bienvenido,</h2>
                    <h2>&nbsp;<asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
                                   <asp:Label ID="lblempleado" runat="server" Font-Bold="True"></asp:Label>
                                   <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                                   </h2>

					
					<div class="chart">
                        <div align ="center">
                               <asp:Panel ID="Panel4" runat="server">
                                   <asp:Image ID="Image2" runat="server" Height="270px" ImageUrl="~/images/BIO.jpg" Width="550px" />
                                   <br />
                                   <br />
                                   <br />
                                   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Cerrar sessión</asp:LinkButton>

                               </asp:Panel>

                            </div>
                    </div>
				</div>

			</div>
		</div>
</asp:Content>
