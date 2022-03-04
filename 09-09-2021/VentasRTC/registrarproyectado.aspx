<%@ Page Title="PROYECCION" Language="C#" MasterPageFile="~/VentasRTC/VentasResponsive.Master" AutoEventWireup="true" CodeBehind="registrarproyectado.aspx.cs" Inherits="biotech.VentasRTC.registrarproyectado" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            color: #990000;
        }
        .auto-style2 {
            color: #339933;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container-fluid">
		
			<div class="col-md-12">
			    <h2><span class="glyphicon glyphicon-edit"></span>PROYECCIÓN&nbsp;<asp:Label ID="lblano" runat="server"></asp:Label>
                    <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                </h2>
			    <asp:Panel ID="payuda" runat="server" Visible="False">
                    idgrupo actual:
                    <asp:Label ID="lblidGruposegunfecha" runat="server">0</asp:Label>
                    &nbsp; estadocGRupo:
                    <asp:Label ID="lblEstadoProyectado" runat="server">0</asp:Label>
                    &nbsp;&nbsp; idproyectado =
                    <asp:Label ID="lblidProyectado" runat="server"></asp:Label>
                    <asp:Label ID="lblvendedor" runat="server"></asp:Label>
                    <asp:Label ID="lblmax" runat="server"></asp:Label>
                </asp:Panel>
			    <hr>
                <asp:Panel ID="pcontendorForm" class="form-horizontal" role="form" runat="server">

            <div>
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#cantidades">CANTIDADES</a></li>
                <li><a data-toggle="tab" href="#precios">SEGUN IMPORTE</a></li>
               
              </ul>

              <div class="tab-content">
                <div id="cantidades" class="tab-pane fade in active">
                  
                    <%--<asp:LinkButton ID="LinkButton3" runat="server" >Proyecciones registradas</asp:LinkButton>--%>
                    <div class="table-responsive">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="X-Small" DataKeyNames="CODPRO" Width="800px">
                <Columns>
                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" ReadOnly="True" Visible="False">

                     
                    </asp:BoundField>

                    
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" >
                    </asp:BoundField>
                    <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                        <EmptyDataTemplate>
                            No hay registros del año indicado...!
                        </EmptyDataTemplate>
                <HeaderStyle BackColor="#666666" ForeColor="White" />
                <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                        </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanual_ANO" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    





                    </div>




                </div>
                <div id="precios" class="tab-pane fade">
                  
                <div class="table-responsive">
                    

                    <asp:GridView ID="gvmonto" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource8" OnRowDataBound="gvmonto_RowDataBound" Width="1200px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Font-Size="X-Small">
                <Columns>
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">

                     
                    </asp:BoundField>
                    <asp:BoundField DataField="PRESENTACION" HeaderText="" SortExpression="PRESENTACION">
                    </asp:BoundField>
                    <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" DataFormatString="{0:0,0.00}">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" DataFormatString="{0:0,0.00}">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" DataFormatString="{0:0,0.00}">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="lblsum1" runat="server"></asp:Label>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>



            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportes_ANO" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </div>
                </div>
                
              </div>

            </div>


                    <br />
                    <div class="form-group row">
                    <label for="atencion" class="col-md-1 control-label">Periodo:</label>
                            <asp:Label ID="lbloperacion" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblmaxdetalle" runat="server" Visible="False"></asp:Label>
                         <asp:Label runat="server"></asp:Label>
                        <div class="col-md-2">
                            <asp:RadioButtonList ID="rbano" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rbano_SelectedIndexChanged" Width="100%" DataSourceID="SqlDataSourceANOS" DataTextField="ano" DataValueField="ano">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSourceANOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idano,ano FROM tb_ano WHERE estado=1
"></asp:SqlDataSource>
                            <asp:Label ID="lblhabilitado" runat="server" Visible="False">1</asp:Label>
                        </div>
				   <div class="col-md-3">
                            <asp:DropDownList class="form-control"  ID="ddlperiodo" runat="server" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="ddlperiodo_SelectedIndexChanged" AutoPostBack="True" ToolTip="Periodo a proyectar">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand=" select idmes,mes from tb_mes">
                            </asp:SqlDataSource>
				    </div>
                         <label for="atencion" class="col-md-1 control-label">Cliente:</label>
                            <div class="col-md-4">

                                
                                    <asp:DropDownList ID="ddlcliente" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="RazonSocial" DataValueField="idRuc" Width="100%">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_clientexZona" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                            </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="lblcodcliente" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblcodpro" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblcontador" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>


                           
                            <label for="atencion" class="col-md-1 control-label">Producto:</label>
                            <div class="col-md-3">
                                        <asp:DropDownList ID="ddlproducto"  class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="producto" DataValueField="producto" OnSelectedIndexChanged="ddlproducto_SelectedIndexChanged" ToolTip="Producto" >
                                        </asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                        <asp:DropDownList ID="ddlpresentacion" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="presentacion" DataValueField="idProducto" OnSelectedIndexChanged="ddlpresentacion_SelectedIndexChanged" ToolTip="Presentación">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productosVenta" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productoPresent" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlproducto" Name="pro" PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                            </div>
                         <label for="atencion" class="col-md-1 control-label">Cantidad:</label>
                        <div class="col-md-1">
                            <asp:TextBox ID="txtcantidad"  type="number" runat="server"  class="form-control" ToolTip="Cantidad a vender"></asp:TextBox>
                           
                            <asp:Panel ID="plistaVenta" runat="server" Visible="False">
                                P.Lista:
                                <asp:Label ID="lblplista" runat="server"></asp:Label>
                                P.Venta:
                                <asp:Label ID="lblpventa" runat="server"></asp:Label>
                              
                                &nbsp;PRECIO LISTA POR LITRO
                                <asp:Label ID="lblpreciolistaporlitro" runat="server"></asp:Label>
                                &nbsp;precio lista xlitro 50%:
                                <asp:Label ID="lblpreciolistaxlitro50" runat="server"></asp:Label>
                              
                                unidaesd<asp:Label ID="lbllitrosunidades" runat="server"></asp:Label>
                              
                            </asp:Panel>
                        </div>
                         <label for="atencion" class="col-md-1 control-label">PRECIO X LITRO:</label>
                        <div class="col-md-2">
                          <asp:TextBox ID="txtPrecioVenta"  type="number" step="0.01" runat="server"  class="form-control" ToolTip="Precio por LITRO"></asp:TextBox>
                             </div>
                        
                        
                       <div class="col-md-1">
                            
                            <asp:Button ID="btRegistrar" class="col-xs-12 btn btn-success" runat="server" Text="+" OnClick="btRegistrar_Click" ToolTip="Registrar pedido" />
                        
                        
                         </div>
                        
                        
                    </div>
                    <asp:Panel ID="pAyudaProyectado" runat="server" Visible="False">ESTADO HABILITADO:
                        <asp:Label ID="lblestadoHabilitado" runat="server"></asp:Label>
                    </asp:Panel>


                    <div class="form-group row">
                        
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#mes">Detalle según mes</a></li>
                <li><a data-toggle="tab" href="#clientes">Detalle agrupado según mes </a></li>
               
              </ul>

                    <div class="tab-content">
                    <div id="mes" class="tab-pane fade in active">
                        <div class="table-responsive">
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado" SelectCommandType="StoredProcedure" UpdateCommand="update tb_ProyectadoDetalle  set cantidad =@CANT, pv= @PV, descuento= ((100* @PV)/pl),fechareg=GETDATE() where iddetalleProyectado =@COD ">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidProyectado" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter   Name="CANT" />
                                        <asp:Parameter Type="Decimal" Name="PV" />
                                        <asp:Parameter Name="COD" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <span class="auto-style1"><strong>PROYECTADO POR EVALUAR:</strong></span><asp:GridView ID="gvporevaluar" runat="server" AutoGenerateColumns="False" Class="table" DataKeyNames="COD" DataSourceID="SqlDataSource9" OnRowDataBound="gvporevaluar_RowDataBound" OnRowUpdated="gvporevaluar_RowUpdated" OnSelectedIndexChanged="gvporevaluar_SelectedIndexChanged" style="font-size: x-small" Width="100%">
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" SelectImageUrl="~/images/eliminarr.png" SelectText="Eliminar" ShowEditButton="True" ShowSelectButton="True">
                                        <HeaderStyle HorizontalAlign="Center" Width="140px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                                        <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PROYEC" HeaderText="PROYEC" ReadOnly="True" SortExpression="PROYEC" Visible="False" />
                                        <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" ReadOnly="True" SortExpression="FECHA">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RTC" HeaderText="RTC" ReadOnly="True" SortExpression="RTC" Visible="False" />
                                        <asp:BoundField DataField="CODCLIENTE" HeaderText="CODCLIENTE" ReadOnly="True" SortExpression="CODCLIENTE" Visible="False" />
                                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                        <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" ReadOnly="True" SortExpression="PRESENT">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="PV" SortExpression="PV">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" step="0.01" Text='<%# Bind("PV") %>' type="number"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("PV") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" Visible="False" />
                                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:ImageField DataImageUrlField="ESTADO"  ReadOnly="True" DataImageUrlFormatString="~/images/Z{0}.png">
                                            <ControlStyle Height="18px" Width="18px" />
                                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ImageField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra proyectado por evaluar...
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="#990000" ForeColor="White" />
                                    <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                                </asp:GridView>
                                <span class="auto-style2"><strong>
                                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_porEvaluar" SelectCommandType="StoredProcedure" UpdateCommand="update tb_ProyectadoDetalle  set cantidad =@CANT, pv= @PV, descuento= ((100* @PV)/pl) where iddetalleProyectado =@COD ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidProyectado" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="CANT" />
                                        <asp:Parameter Name="PV" Type="Decimal" />
                                        <asp:Parameter Name="COD" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                PROYECTADO APROBADO</strong></span><asp:Panel ID="Panel22DEt" runat="server">
                                    <div class="alert alert-success" role="alert">
                                        <strong>Código</strong>:
                                        <asp:Label ID="lblcod2" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblcod2det" runat="server"></asp:Label>
                                        <br />
                                        <strong>Detalle u observación</strong>:
                                        <asp:GridView ID="gv22det" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource22det" ShowHeader="False" Width="100%">
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                                <asp:BoundField DataField="idDetProyectado" HeaderText="idDetProyectado" SortExpression="idDetProyectado" Visible="False" />
                                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                                                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fecha" SortExpression="fecha">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="idusuario" HeaderText="idusuario" SortExpression="idusuario">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                                                </asp:BoundField>
                                            </Columns>
                                            <EmptyDataTemplate>
                                                No registrar detalles...
                                            </EmptyDataTemplate>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource22det" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado.historialListar" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblcod2" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ocultar</asp:LinkButton>
                                    </div>
                                </asp:Panel>
                                <asp:GridView ID="gvdetallepedido" runat="server" AutoGenerateColumns="False" Class="table" DataKeyNames="COD" DataSourceID="SqlDataSource5" OnRowDataBound="gvdetallepedido_RowDataBound" OnRowUpdated="gvdetallepedido_RowUpdated" OnSelectedIndexChanged="gvdetallepedido_SelectedIndexChanged" style="font-size: x-small" Width="100%" OnRowCommand="gvdetallepedido_RowCommand">
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" SelectImageUrl="~/images/eliminarr.png" SelectText="Eliminar" ShowEditButton="True" ShowSelectButton="True">
                                        <HeaderStyle HorizontalAlign="Center" Width="140px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                                        <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PROYEC" HeaderText="PROYEC" ReadOnly="True" SortExpression="PROYEC" Visible="False" />
                                        <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" ReadOnly="True" SortExpression="FECHA">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RTC" HeaderText="RTC" ReadOnly="True" SortExpression="RTC" Visible="False" />
                                        <asp:BoundField DataField="CODCLIENTE" HeaderText="CODCLIENTE" ReadOnly="True" SortExpression="CODCLIENTE" Visible="False" />
                                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                        <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" ReadOnly="True" SortExpression="PRESENT">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="PV" SortExpression="PV">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" step="0.01" Text='<%# Bind("PV") %>' type="number"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("PV") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" Visible="False" />
                                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:ImageField DataImageUrlField="ESTADO"  ReadOnly="True" DataImageUrlFormatString="~/images/Z{0}.png">
                                            <ControlStyle Height="18px" Width="18px" />
                                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ImageField>
                                           <asp:ButtonField CommandName="print"  HeaderText="PRINT" ShowHeader="True" Text="Ver" ImageUrl="~/images/buscarr.png" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra proyectado...
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="#339933" ForeColor="White" />
                                    <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                                </asp:GridView>
                                PROYECTADO OBSERVADO:<asp:Panel ID="Panel3" runat="server">
                                    <div class="alert alert-warning" role="alert">
                                        <strong>Código</strong>: <asp:Label ID="lblcod3" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblcod3det" runat="server"></asp:Label>
                                        <br />
                                        <strong>Detalle u observación</strong>:
                                        <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource33det" AutoGenerateColumns="False" DataKeyNames="id" ShowHeader="False" Width="100%">
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                                <asp:BoundField DataField="idDetProyectado" HeaderText="idDetProyectado" SortExpression="idDetProyectado" Visible="False" />
                                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                                                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fecha" SortExpression="fecha">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="idusuario" HeaderText="idusuario" SortExpression="idusuario">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                                                </asp:BoundField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource33det" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado.historialListar" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblcod3" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Ocultar</asp:LinkButton>
</div>
                                </asp:Panel>
                                <asp:GridView ID="gvobservado" runat="server" AutoGenerateColumns="False" Class="table" DataKeyNames="COD" DataSourceID="SqlDataSource10" OnRowDataBound="gvobservado_RowDataBound" OnRowUpdated="gvobservado_RowUpdated" OnSelectedIndexChanged="gvobservado_SelectedIndexChanged" style="font-size: x-small" Width="100%" OnRowCommand="gvobservado_RowCommand">
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" SelectImageUrl="~/images/eliminarr.png" SelectText="Eliminar" ShowEditButton="True">
                                        <HeaderStyle HorizontalAlign="Center" Width="140px" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                                        <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PROYEC" HeaderText="PROYEC" ReadOnly="True" SortExpression="PROYEC" Visible="False" />
                                        <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" ReadOnly="True" SortExpression="FECHA">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RTC" HeaderText="RTC" ReadOnly="True" SortExpression="RTC" Visible="False" />
                                        <asp:BoundField DataField="CODCLIENTE" HeaderText="CODCLIENTE" ReadOnly="True" SortExpression="CODCLIENTE" Visible="False" />
                                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                        <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                        <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" ReadOnly="True" SortExpression="PRESENT">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="PV" SortExpression="PV">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" step="0.01" Text='<%# Bind("PV") %>' type="number"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("PV") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" Visible="False" />
                                        <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:ImageField DataImageUrlField="ESTADO"  ReadOnly="True" DataImageUrlFormatString="~/images/Z{0}.png">
                                            <ControlStyle Height="18px" Width="18px" />
                                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ImageField>
                                           <asp:ButtonField CommandName="print"  HeaderText="" ShowHeader="True" Text="ver" ImageUrl="~/images/buscarr.png" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No registra proyectado observado...
                                    </EmptyDataTemplate>
                                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    <RowStyle BackColor="WhiteSmoke" Font-Bold="False" />
                                </asp:GridView>
                                <span class="auto-style2"><strong>
                                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado_observado" SelectCommandType="StoredProcedure" UpdateCommand="update tb_ProyectadoDetalle  set cantidad =@CANT, pv= @PV, descuento= ((100* @PV)/pl) , fechareg=GETDATE() where iddetalleProyectado =@COD ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblidProyectado" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="CANT" />
                                        <asp:Parameter Name="PV" Type="Decimal" />
                                        <asp:Parameter Name="COD" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                </strong></span>PROYECTADO APROBADO
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
                                &nbsp;|&nbsp; PROYECTAO POR EVALUAR&nbsp;
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
                                &nbsp;|&nbsp; PROYECTADO OBSERVADO
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Z4.png" Width="15px" />
                                
                                
                                <div class="alert alert-success" role="alert">
 <strong>NOTA:</strong>  SOLO SE ABASTECERA EL ALMACEN,SEGÚN PROYECTADO APROBADO <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />.
</div>
                            <strong>IMPORTE ACUMULADO:&nbsp; US$&nbsp; </strong><asp:Label ID="lblimportett" runat="server" style="text-align: center; font-size: x-large;"></asp:Label>
                                
                                </div>


                    </div>
                    <div id="clientes" class="tab-pane fade">
                        <div class="table-responsive">
                    <asp:GridView ID="GridView2" Class="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="600px">
                        <Columns>
                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                            <asp:BoundField DataField="RAZON SOCIAL" HeaderText="CLIENTE" SortExpression="RAZON SOCIAL">
                            <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectadogrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbloperacion" Name="idproyectado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                            </div>
                   <strong>IMPORTE ACUMULADO:&nbsp; US$&nbsp; </strong><asp:Label ID="lblimportett2" runat="server" style="text-align: center; font-size: x-large;"></asp:Label>
                               

                    </div>
                    </div>


                    </div>





                </asp:Panel>










			 

            </div>
       
  </div>

  
    
   
 
        </asp:Content>





