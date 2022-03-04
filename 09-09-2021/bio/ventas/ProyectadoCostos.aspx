<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ProyectadoCostos.aspx.cs" Inherits="biotech.bio.ventas.ProyectadoCostos" %>
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
                        <h2 class="page-header"><i class="glyphicon glyphicon-edit"></i> PROYECTADO-EJECUTADO<asp:Label ID="lbldescripmes" runat="server"></asp:Label>
                <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblfebrero" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidvendedor" runat="server" Visible="False"></asp:Label>
                        </h2>
                            
                          <ol class="breadcrumb">
      <li>
          <asp:LinkButton ID="lbprincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx">Principal</asp:LinkButton>
                                   </li>
                            <li>
          <asp:LinkButton ID="lbProyectado" runat="server"  PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">Proyectado-Costo</asp:LinkButton>
                                   </li>
                            <li>
          <asp:LinkButton ID="lbproyectadoEjecutado" runat="server"  PostBackUrl="~/bio/ventas/proyectado/ProyecAtencion.aspx">Proyectado-Ejecutado</asp:LinkButton>
      </li>
      <li>
          <asp:LinkButton ID="lbproyectadoComparativo" runat="server"  PostBackUrl="~/bio/ventas/ProyectadoCostos.aspx">Proy.Generalizado</asp:LinkButton>
      </li>
      
  
    </ol> 
    </div>
    





     <div class="row-fluid">
			<div class="row">
                <div class="form-horizontal" role="form" >
                
                    

<%--                <div class="form-group row" >
                <label for="empresa" class="col-md-2 control-label">ACTUAL:</label>
                    <asp:Label ID="lblAcumSUSAN" class="col-md-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblAcumMANCILLA" class="col-md-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblAcumASSERETO" class="col-md-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblAcumGUIOVANNI" class="col-md-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblAcumHENRY" class="col-md-2 control-label" runat="server"></asp:Label>

                </div>--%>
                    <asp:Panel ID="Panel1" runat="server">
                <div class="form-group row" >
                    <asp:Label ID="lblProyectadoMEs" class="col-md-2 col-xs-2 control-label" runat="server" Font-Bold="True"></asp:Label>
                    <asp:Label ID="lblProyecSUSAN" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecMANCILLA" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecASSERETO" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecGUIOVANNI" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>
                    <asp:Label ID="lblProyecHENRY" class="col-md-2 col-xs-2 control-label" runat="server"></asp:Label>

                </div></asp:Panel>

                    <div class="form-group row">
                            <asp:Button ID="Button1" class="col-md-3 col-xs-3 " runat="server" Text="GENERAL" OnClick="Button1_Click" Height="40px" Width="20%" />
                        <asp:DropDownList ID="ddlTrabajadores"  runat="server" class="col-md-3 col-xs-3 form-control" DataSourceID="SqlDataSource3" DataTextField="apellidos" DataValueField="codTrabajador" OnSelectedIndexChanged="ddlTrabajadores_SelectedIndexChanged" AutoPostBack="True" Width="50%" Height="40px">
                        </asp:DropDownList>
                            <asp:Button ID="Button2" runat="server" class="col-md-2 col-xs-2 " Text="POR ASESOR" Height="40px" OnClick="Button2_Click" />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="asesores_xIdZona" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="idzona" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Panel ID="Panel2" runat="server" Visible="False">
                            <asp:Button ID="btsusan" runat="server" Height="40px" OnClick="btsusan_Click" Text="SUSAN" Width="20%" />
                               <asp:Button ID="btmancilla" runat="server" Height="40px" OnClick="btmancilla_Click" Text="MANCILLA" Width="20%" />
                              <asp:Button ID="btassereto" runat="server" Height="40px" OnClick="btassereto_Click" Text="ASSERETO" Width="20%" />
                                <asp:Button ID="bterivest" runat="server" Height="40px" OnClick="bterivest_Click" Text="ERIVEST" Width="15%" />
                        </asp:Panel>
                       

                    </div>



                </div>
                <%--<form class="form-horizontal" role="form" id="datos_cotizacion">--%>
                <asp:Panel ID="PanelGeneral" CssClass="row" runat="server">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">SEGÚN UNIDADES</a></li>
  <li><a data-toggle="tab" href="#menu1">SEGÚN MONTOS</a></li>
    
   
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
      <%--<h3>HOME</h3>--%>



                    <div class="table-responsive">
                    <asp:GridView ID="gvpresentaciones"   runat="server" DataKeyNames ="IDPRO" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" OnSelectedIndexChanged="gvpresentaciones_SelectedIndexChanged" OnRowDataBound="gvpresentaciones_RowDataBound" ShowFooter="True">
                        <Columns>
                            <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDPRO") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="60px" />
                                <ItemStyle ForeColor="#006600" HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="IDPRO" HeaderText="IDPRO" SortExpression="IDPRO" Visible="False">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                            <HeaderStyle Width="200px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION">
                            <HeaderStyle Width="40px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                            </asp:BoundField>
                          
                            <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" DataFormatString="{0,0}">
                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" DataFormatString="{0,0}">
                            <FooterStyle HorizontalAlign="Right" />
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            <ItemStyle  VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" DataFormatString="{0,0}">
                            <ItemStyle  VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" DataFormatString="{0,0}">
                            <ItemStyle  VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" DataFormatString="{0,0}">
                            <ItemStyle  VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" DataFormatString="{0,0}">
                            <ItemStyle  VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" DataFormatString="{0,0}">
                            <ItemStyle  VerticalAlign="Middle" HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle ForeColor="Black" />
                        <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="WhiteSmoke" />
                        <SelectedRowStyle Font-Bold="False" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoGeneral" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
               
                        
                         </div>
                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
  </div>
  <div id="menu1" class="tab-pane fade">
      <%--<h3>Menu 1</h3>--%>
    <div class="table-responsive">
        <asp:GridView id="gvCostos"  runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" OnRowDataBound="gvCostos_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                <HeaderStyle Width="200px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#EBEBEB" />
                </asp:BoundField>
                <asp:BoundField DataField="PRESENTACION" HeaderText="" SortExpression="PRESENTACION">
                <HeaderStyle Width="40px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EBEBEB" />
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
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#EBEBEB" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="WhiteSmoke" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportesGeneral" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
   </div>
  </div>
  
</div>
</asp:Panel>
                <asp:Panel ID="PanelVendedores" runat="server">
                    <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#vendeunidad">Según unidades <asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label></a>
                        </li>
  <li><a data-toggle="tab" href="#vendesoles">Según monto</a></li>
  
</ul>

<div class="tab-content">
  <div id="vendeunidad" class="tab-pane fade in active">
    
   <div class="table-responsive">
      <asp:GridView ID="gvpresentacionRTC" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style4" DataKeyNames="CODPRO" DataSourceID="SqlDataSource4" ForeColor="Black" Width="100%" OnRowDataBound="gvpresentacionRTC_RowDataBound" OnSelectedIndexChanged="gvpresentacionRTC_SelectedIndexChanged">
          <Columns>
              <asp:TemplateField ShowHeader="False">
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton7" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("CODPRO") %>'></asp:LinkButton>
                  </ItemTemplate>
                  <HeaderStyle Width="60px" />
                  <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:TemplateField>
              <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" ReadOnly="True" SortExpression="CODPRO" Visible="False">
              <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
              <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION">
              <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
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
              <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
          </Columns>
          <FooterStyle ForeColor="Black" />
          <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="WhiteSmoke" />
          <SelectedRowStyle Font-Bold="True" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanual" SelectCommandType="StoredProcedure">
          <SelectParameters>
              <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
   </div>
  
   
  </div>
  <div id="vendesoles" class="tab-pane fade">
       <h3>Valorizado:  <asp:Label ID="Label2" runat="server"></asp:Label></h3>
      <div class="table-responsive">
    <asp:GridView ID="gvCostosRTC" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataSourceID="SqlDataSource5" ForeColor="Black" Width="100%" ShowFooter="True" OnRowDataBound="gvCostosRTC_RowDataBound">
                 <Columns>
                     <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                     </asp:BoundField>
                     <asp:BoundField DataField="PRESENTACION" HeaderText="" SortExpression="PRESENTACION">
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
                 <FooterStyle ForeColor="Black" HorizontalAlign="Right" VerticalAlign="Middle" />
                 <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="WhiteSmoke" />
                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                 <SortedDescendingHeaderStyle BackColor="#242121" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportes" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
          </div>
  </div>
  
</div>

                

                <br />
                <div class="form-group row">

				 <asp:Label ID="lbloperacion" runat="server" Visible="False"></asp:Label>
                   
                    
                    <div class="col-md-12">
					  
                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="PERIODO" DataValueField="ID" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%">
                            </asp:RadioButtonList>
					  
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_peridoaproyectarListado" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
					  
				  </div>
                </div>
                    </asp:Panel>
                <asp:Panel ID="PanelVendedoresMes" runat="server">
                      <div class="form-group row">
                        
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#mes">Detalle según mes
                    <asp:Label ID="lbltabmes" runat="server"></asp:Label>
                    </a></li>
                <li><a data-toggle="tab" href="#clientes">Detalle agrupado por cliente </a></li>
               
              </ul>

                    <div class="tab-content">
                    <div id="mes" class="tab-pane fade in active">
                        <div class="table-responsive">
                                <div class="table-responsive">
                               
                                    <asp:GridView ID="GridView1" class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="COD,CODCLIENTE" DataSourceID="SqlDataSource3proyec" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                                            <asp:BoundField DataField="PROYEC" HeaderText="PROYEC" SortExpression="PROYEC" Visible="False" />
                                            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
                                            <ItemStyle HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                                            <asp:BoundField DataField="CODCLIENTE" HeaderText="COD CLIENTE" SortExpression="CODCLIENTE" Visible="False" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                            <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                                            <asp:BoundField DataField="PV" HeaderText="P.VENTA" SortExpression="PV" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" Visible="False" />
                                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                        <HeaderStyle BackColor="WhiteSmoke" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3proyec" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectado" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lbloperacion" Name="idproyectado" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                  
                                <strong>IMPORTE ACUMULADO:&nbsp; US$&nbsp; </strong><asp:Label ID="lblimportett" runat="server" style="text-align: center; font-size: x-large;"></asp:Label>
                                <br />
                                <br />
                                </div>



                            

                    </div>
                    <div id="clientes" class="tab-pane fade">
                       
                         <div class="table-responsive">
                    <asp:GridView ID="GridView2" Class="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" GridLines="Horizontal" >
                        <Columns>
                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                            <asp:BoundField DataField="RAZON SOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZON SOCIAL">
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE"  DataFormatString="{0:0,0.00}">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyectadogrupo" SelectCommandType="StoredProcedure">
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
