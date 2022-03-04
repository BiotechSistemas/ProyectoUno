

<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ProyecAtencion.aspx.cs" Inherits="biotech.bio.ventas.proyectado.ProyecAtencion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>



    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');


            $('#myModal10').modal('show');
        }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




        <div class="container-fluid">
        <div class="form-group row">
            <div class="col-sm-7 col-md-7">

                 <h3><span class="glyphicon glyphicon-edit"></span>Proyectado-Ejecutado
                    <asp:Label ID="lblop" runat="server" Text="10" Visible="False"></asp:Label>: <asp:Label ID="lblano" runat="server"></asp:Label>
                    -<asp:Label ID="lblmes" runat="server"></asp:Label>
                    <asp:Label ID="lblidvendedor" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblzonaGeneral" runat="server" Visible="False">ICA</asp:Label>
                </h3>

            </div>

           
			<div class="col-sm-5 col-md-5">
             <h4> <asp:RadioButtonList ID="rblano" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano"  RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblano_SelectedIndexChanged" Width="100%"></asp:RadioButtonList>
                 </h4>
                <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString2 %>" SelectCommand="
select idano,ano from tb_ano where estado = 1 "></asp:SqlDataSource>
                </div>

            
            </div>

            <div class="form-horizontal" role="form" >

                 <div class="form-group row">
                    <asp:Button ID="bt_general" class="col-md-2 col-xs-2 btn btn-default" runat="server" Text="GENERAL" OnClick="bt_general_Click" />
                        <asp:LinkButton ID="lbSusan" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lbSusan_Click" >SUSAN</asp:LinkButton>
                        <asp:LinkButton ID="lbMancilla" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lbMancilla_Click" >MANCILLA</asp:LinkButton>
                        <asp:LinkButton ID="lbAssereto" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lbAssereto_Click" Visible="False" >ASSERETO</asp:LinkButton>
                        <asp:LinkButton ID="lbErivest" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lbErivest_Click" Visible="False">ERIVEST</asp:LinkButton>
                        <asp:LinkButton ID="lbJohanna" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lbJohanna_Click" Visible="False" >JOHANNA</asp:LinkButton>
                        <asp:LinkButton ID="lblVictor" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lblVictor_Click" >TEJADA</asp:LinkButton>
                          <asp:LinkButton ID="lbldiegoCarasco" class="col-md-2 col-xs-2 btn btn-default" runat="server" OnClick="lbldiegoCarasco_Click" >DIEGO CARRASCO</asp:LinkButton>
                 </div>
            </div>

             <asp:Panel ID="PanelMES" runat="server">
                  <div class="form-group row">
                        <div class="col-md-12">
                            <asp:SqlDataSource ID="SqlDataSourceMES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [abrev], [idmes] FROM [tb_mes]"></asp:SqlDataSource>
                            <asp:RadioButtonList ID="RADIOBTMES" runat="server" DataSourceID="SqlDataSourceMES" DataTextField="abrev" DataValueField="idmes" RepeatDirection="Horizontal" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="RADIOBTMES_SelectedIndexChanged"></asp:RadioButtonList>
                            </div>
                      </div>

                    <div class="form-group row">
                        <div class="col-md-12">


                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%" Visible="False">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes] where EstadoProyectado=1">
                            </asp:SqlDataSource>


                        </div>
                    </div>

                </asp:Panel>

            <asp:Panel ID="Panel1" runat="server">
                <div class="row">
                <div class="col-sm-12 col-md-7">
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <asp:Label ID="lblopgeneral" runat="server">10</asp:Label>
                    </asp:Panel>
                    <div class="panel panel-default">
                    <div class="panel-heading">
                         RESUMEN ZONAL POR ATENDER:
                    <asp:LinkButton ID="lbzonaica" runat="server" OnClick="lbzonaica_Click">ICA</asp:LinkButton>
                    &nbsp;|
                    <asp:LinkButton ID="lbzonapiura" runat="server" OnClick="lbzonapiura_Click">PIURA</asp:LinkButton>
                         &nbsp;|
                    <asp:LinkButton ID="lbzonaChiclayo" runat="server" OnClick="lbzonaChiclayo_Click" >CHICLAYO</asp:LinkButton>
                         &nbsp;
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                             <asp:ListItem Selected="True" Value="10">Normal</asp:ListItem>
                             <asp:ListItem Value="30">Acomulada</asp:ListItem>
                         </asp:RadioButtonList>
                         </div>
                   
                    <div class="table-responsive">
                    <asp:GridView ID="GridViewGenetal" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGENERAL" Font-Size="X-Small" DataKeyNames="CODPRO,PRODUCTO" OnSelectedIndexChanged="GridViewGenetal_SelectedIndexChanged" OnRowDataBound="GridViewGenetal_RowDataBound">
                        <Columns>
                             <asp:BoundField DataField="PERIODO" SortExpression="PERIODO" HeaderText="PER."  >
                            <ControlStyle Width="5px" />
                             <HeaderStyle Width="60px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                            <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION" />
                            <asp:BoundField DataField="UNID" HeaderText="CANT" ReadOnly="True" SortExpression="UNID" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND." ReadOnly="True" SortExpression="CANTATENDIDA" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="XATENDER" HeaderText="PEND." ReadOnly="True" SortExpression="XATENDER" >
                            <HeaderStyle BackColor="#CCDDDD" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EXISTACTUAL" HeaderText="EXIST." ReadOnly="True" SortExpression="EXISTACTUAL" >
                            <HeaderStyle BackColor="#CCDDDD" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="REPONER" HeaderText="REPONER" ReadOnly="True" SortExpression="REPONER" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EST" SortExpression="EST" >
                            <ControlStyle Width="5px" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No se encontraron registros....
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceGENERAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecXatenderTT" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblopgeneral" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblzonaGeneral" Name="idzona" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                        <asp:ImageButton ID="ImageButtonFACTURA" runat="server" BorderColor="#006600" Height="30px" ImageAlign="Middle" ImageUrl="~/images/Excel-Export.jpg" OnClick="ImageButtonFACTURA_Click" Visible="False" Width="100px" />
                        </div>
                         </div>
                    </div>
                
                <div class="col-sm-12 col-md-5">
                   <asp:Panel ID="PanelAlm"   runat="server">
                                 <div class="panel panel-default">
                                    <div class="panel-heading">EXISTENCIA ACTUAL:
                                        <asp:Label ID="lblproductoSelect" runat="server"></asp:Label>
                                     </div>
                                                                   
                                  <asp:GridView ID="gvPedido" runat="server" AutoGenerateColumns="False" class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataKeyNames="idProducto" DataSourceID="SqlDataSourcePRO" GridLines="None">
                                      <Columns>
                                          <asp:BoundField DataField="idProducto" HeaderText="idProducto" SortExpression="idProducto" Visible="False" />
                                          <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                          <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL">
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA">
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA">
                                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                          </asp:BoundField>
                                      </Columns>
                                      <HeaderStyle BackColor="WhiteSmoke" />
                                  </asp:GridView>
                                  <asp:SqlDataSource ID="SqlDataSourcePRO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_TotalLitros" SelectCommandType="StoredProcedure">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="lblproductoSelect" Name="idproducto" PropertyName="Text" Type="String" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
 

                                  <div class="panel-footer">
                                      <strong>TT. en Litros:</strong> C:
                                  <asp:Label ID="lblttCentral" runat="server" style="font-weight: 700"></asp:Label>
                                      &nbsp;| I:<asp:Label ID="lblttica" runat="server" style="font-weight: 700"></asp:Label>
                                      &nbsp;| P:<asp:Label ID="lblttPiura" runat="server" style="font-weight: 700"></asp:Label>
                                  &nbsp;=
                                  <asp:Label ID="lblTotalLitros" runat="server" style="font-weight: 700"></asp:Label>
                                  &nbsp;GENERAL
  </div></div>
                                 
                              </asp:Panel>

                    <asp:Panel ID="PanelproductoGeneral" runat="server">
                        <div class="panel panel-default">
                          <div class="panel-heading">PROYECTADO PRODUCTO: <asp:Label ID="lblproducto2General" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;</div>
                           
                            <asp:GridView ID="gvProGeneral" class="table table-success table-condensed table-bordered table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDETPROY" DataSourceID="SqlDataSourceProductoGeneral" Font-Size="X-Small">
                                <Columns>
                                    <asp:BoundField DataField="IDDETPROY" HeaderText="IDDETPROY" ReadOnly="True" SortExpression="IDDETPROY" Visible="False" />
                                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False" />
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENT" SortExpression="PRESENTACION" />
                                    <asp:BoundField DataField="UNID" HeaderText="CANT." SortExpression="UNID" />
                                    <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" Visible="False" />
                                    <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATENDIDO" SortExpression="CANTATENDIDA" />
                                     <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                                </Columns>
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceProductoGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecXatenderProducto" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblproducto2General" Name="produc" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblzonaGeneral" Name="zona" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </asp:Panel>
                </div>
                </div>

                 <div class="row">
                <div class="col-sm-12 col-md-7">
                    RESUMEN ATENDIDOS:<div class="table-responsive">

                        <asp:GridView ID="gvGeneralAtendidos" class="table table-striped table-bordered table-sm  table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2GENERAL" Font-Size="X-Small">
                            <Columns>
                                <asp:BoundField DataField="PERIODO" SortExpression="PERIODO" HeaderText="PER."  >
                            <ControlStyle Width="5px" />
                                <HeaderStyle Width="60px" />
                            </asp:BoundField>
                                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" Visible="False" />
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" Visible="False" />
                                <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION" />
                                <asp:BoundField DataField="UNID" HeaderText="CANT" ReadOnly="True" SortExpression="UNID">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND." ReadOnly="True" SortExpression="CANTATENDIDA">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="XATENDER" HeaderText="PEND." ReadOnly="True" SortExpression="XATENDER">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EXISTACTUAL" HeaderText="EXIST." ReadOnly="True" SortExpression="EXISTACTUAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="REPONER" HeaderText="REPONER" ReadOnly="True" SortExpression="REPONER">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EST" SortExpression="EST">
                                <ControlStyle Width="5px" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                No hay proyección completada....
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2GENERAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecXatenderTT" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="20" Name="op" Type="Int32" />
                                <asp:ControlParameter ControlID="lblmes" DefaultValue="" Name="mes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblzonaGeneral" Name="idzona" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                </div>    
                
                    </div>

                </div>
                <div class="col-md-5">
                </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server">


           

            <div class="row">
                <div class="col-md-8">
                    PROYECTADO - POR ATENDER&nbsp;<div class="table-responsive">
                    <asp:GridView ID="GridViewAtender" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDETPROY,CODPRO,idcliente,PRODUCTO" DataSourceID="SqlDataSourceaten" Font-Size="X-Small" OnRowUpdated="GridViewAtender_RowUpdated" OnSelectedIndexChanged="GridViewAtender_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="IDDETPROY" HeaderText="IDDETPROY" ReadOnly="True" SortExpression="IDDETPROY" Visible="False" />
                            <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" >
                            <ItemStyle Font-Size="XX-Small" />
                            </asp:BoundField>
                             <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" ReadOnly="True" Visible="False" />
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True" />
                            <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENT" SortExpression="PRESENTACION" ReadOnly="True" />
                            <asp:BoundField DataField="UNID" HeaderText="UNID" SortExpression="UNID" ReadOnly="True" >
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LITROS" HeaderText="LITROS" SortExpression="LITROS" ReadOnly="True" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATENDIDO" SortExpression="CANTATENDIDA" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" EditText="Atender" SelectText="Buscar" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                        </Columns>
                        <EmptyDataTemplate>
                            Indicar proyectado...
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#F0F0F0" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceaten" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecXatender" SelectCommandType="StoredProcedure" UpdateCommand="update tb_ProyectadoDetalle set canttendida =@CANTATENDIDA  where iddetalleProyectado = @IDDETPROY">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="IDDETPROY" Type="Int32" />
                            <asp:Parameter Name="CANTATENDIDA" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                       
                        </div>
                    </div>
                <div class="col-md-4">
                    ATENDIDO:<asp:Label ID="lblidcliente" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblproducto" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblopfactura" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblVendedorFactura" runat="server" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">GUIAREM</asp:LinkButton>
                    &nbsp; |&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">FACTURA</asp:LinkButton>
                    &nbsp;<div class="table-responsive">

                         <asp:GridView ID="gvGuiaAten" Class="table table-success table-condensed table-bordered table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSourceguias" Font-Size="X-Small" AllowPaging="True" PageSize="15">
                                <Columns>
                                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" >
                                    <ItemStyle Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                                    <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
                                    <ItemStyle Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Idproducto" HeaderText="Idproducto" SortExpression="Idproducto" Visible="False" />
                                    <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" />
                                    <asp:BoundField DataField="PRESENT" HeaderText="PRESNT" SortExpression="PRESENT" />
                                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                                </Columns>
                                <EmptyDataTemplate>
                                    No registra atención...
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceguias" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_guiaten" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblproducto" Name="producto" PropertyName="Text" Type="String" />
                                    <asp:Parameter DefaultValue="VENTA" Name="motivo" Type="String" />
                                    <asp:ControlParameter ControlID="lblidcliente" Name="idcliente" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    <asp:GridView ID="GridViewFacturado" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceFact" Font-Size="X-Small" OnSelectedIndexChanged="GridViewFacturado_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="idclienteRUC" HeaderText="idclienteRUC" SortExpression="idclienteRUC" Visible="False" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
                            <ItemStyle Font-Size="XX-Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRODUCTO2" HeaderText="PRODUCT" SortExpression="PRODUCTO2" />
                            <asp:BoundField DataField="PRESENT" HeaderText="P" SortExpression="PRESENT" />
                            <asp:BoundField DataField="UNIDADES" HeaderText="CANT" ReadOnly="True" SortExpression="UNIDADES" >
                            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LITROSVEND" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROSVEND" >
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No se encontro registro...
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#F0F0F0" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceFact" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectxFacturados" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblopfactura" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblVendedorFactura" Name="idvendedor" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblidcliente" Name="idcliente" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblproducto" Name="producto" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
                    </div>

            </div>

             <div class="row">
                <div class="col-md-8">
                     <div class="table-responsive">
                            PROYECTADO - ATENDIDO<asp:GridView ID="GridViewSIatendidos" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDETPROY,CODPRO,idcliente,PRODUCTO" DataSourceID="SqlDataSourcesiAten" Font-Size="X-Small" OnRowUpdated="GridViewSIatendidos_RowUpdated" OnSelectedIndexChanged="GridViewSIatendidos_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="IDDETPROY" HeaderText="IDDETPROY" ReadOnly="True" SortExpression="IDDETPROY" Visible="False" />
                                <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" ReadOnly="True" >
                                <ItemStyle Font-Size="XX-Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" ReadOnly="True"/>
                                <asp:BoundField DataField="PRESENTACION" HeaderText="PRESENT" SortExpression="PRESENTACION" ReadOnly="True"/>
                                <asp:BoundField DataField="UNID" HeaderText="UNID" SortExpression="UNID" ReadOnly="True">
                                <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATENDIDO" SortExpression="CANTATENDIDA" >
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:CommandField ShowEditButton="True" EditText="Atender" ShowSelectButton="True" SelectText="Buscar" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:CommandField>
                            </Columns>
                                <EmptyDataTemplate>
                                    Indicar proyetado...
                                </EmptyDataTemplate>
                                <HeaderStyle BackColor="#F0F0F0" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourcesiAten" runat="server"  ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecXatender" SelectCommandType="StoredProcedure" UpdateCommand="update tb_ProyectadoDetalle set canttendida =@CANTATENDIDA  where iddetalleProyectado = @IDDETPROY">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblop2" Name="op" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CANTATENDIDA" />
                                <asp:Parameter Name="IDDETPROY" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                            </div>
                        <asp:Label ID="lblop2" runat="server" Text="20" Visible="False"></asp:Label>
                </div>

                 <div class="col-md-4">
                      <div class="table-responsive">
                     <div class="table-responsive">
                         <asp:GridView ID="gvFacturados" runat="server" class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Size="XX-Small" Visible="False">
                             <Columns>
                                 <asp:BoundField DataField="idclienteRUC" HeaderText="idclienteRUC" SortExpression="idclienteRUC" Visible="False" />
                                 <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                 <asp:BoundField DataField="PRODUCTO2" HeaderText="PRODUCTO" SortExpression="PRODUCTO2" />
                                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                                 <asp:BoundField DataField="UNIDADES" HeaderText="UNID" ReadOnly="True" SortExpression="UNIDADES" >
                                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="LITROSVEND" HeaderText="L.VENDIDOS" ReadOnly="True" SortExpression="LITROSVEND" >
                                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                 </asp:BoundField>
                             </Columns>
                             <HeaderStyle BackColor="#F0F0F0" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectxFacturados" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="lblop2" Name="op" PropertyName="Text" Type="Int32" />
                                 <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                                 <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="lblidcliente" Name="idcliente" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="lblproducto" Name="producto" PropertyName="Text" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                </div>

            </div>

    
    </div>
                 </div>
                </asp:Panel>
  
    
</asp:Content>
