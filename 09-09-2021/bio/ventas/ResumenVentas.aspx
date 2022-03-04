<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenVentas.aspx.cs" Inherits="biotech.bio.ventas.ResumenVentas" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="f glyphicon-edit"></i> RESUMEN VENTAS
                            <asp:Label ID="lblvaldolar" runat="server" Text="3.25"></asp:Label>
            <asp:Panel ID="PanelTotal" runat="server" Visible="False">
                <h2><strong>VENTAS TOTALES </strong></h2>
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" style="text-align: right; font-size: small;" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="ANO" HeaderText="AÑO" SortExpression="ANO">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" DataFormatString="{0:0,0.00}" >
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
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_totales" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <div class="auto-style1227">
                    * Resumen de ventas totales convertido en dolares.</div>
            </asp:Panel>
       
            <asp:Panel ID="panelTema" runat="server" class="container">
        <div class="form-group row">
				  
				  <div class="col-md-2 ">
					 <asp:RadioButtonList ID="rblPeriodo" runat="server"  RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="rblPeriodo_SelectedIndexChanged">
                        <asp:ListItem Selected="True">2018</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                    </asp:RadioButtonList>
				  </div>
				 
				 <div class="col-md-2 col-sm-6">
				 <asp:DropDownList ID="ddlbMes" runat="server" CLASS="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlbMes_SelectedIndexChanged">
                        <asp:ListItem Value="1">ENERO</asp:ListItem>
                        <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                        <asp:ListItem Value="3">MARZO</asp:ListItem>
                        <asp:ListItem Value="4">ABRIL</asp:ListItem>
                        <asp:ListItem Value="5">MAYO</asp:ListItem>
                        <asp:ListItem Value="6">JUNIO</asp:ListItem>
                        <asp:ListItem Value="7">JULIO</asp:ListItem>
                        <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                        <asp:ListItem Value="9">SETIEMBRE</asp:ListItem>
                        <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                        <asp:ListItem Value="11">NOVEMBRE</asp:ListItem>
                        <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                    </asp:DropDownList>


				     </div>
                <div class="col-md-3 col-sm-6">
                    <div class="btn-group">

 <asp:Button type="button" class="btn btn-success" ID="Button2" runat="server"  OnClick="Button2_Click" Text="RESUMEN POR MES" />

  <button type="button" class="btn btn-success dropdown-toggle"
          data-toggle="dropdown">
            <span class="caret"></span>
            <span class="sr-only">Desplegar menú</span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
      
    <li>
        <asp:LinkButton ID="lbResumenGeneral" runat="server" OnClick="lbResumenGeneral_Click">RESUMEN GENERAL</asp:LinkButton></li>
      <li>
        <asp:LinkButton ID="lbComparativo" runat="server" OnClick="lbComparativo_Click" >COMPARATIVO</asp:LinkButton></li>
    
    <li class="divider"></li>
    <li>
        <asp:LinkButton ID="lbFacturasBoletas" runat="server" OnClick="lbFacturasBoletas_Click">FATURAS/BOLETAS</asp:LinkButton></li>
  </ul>
  </div>
                </div>
				</div>
 </asp:Panel>

        
                        <br />

        
        <asp:Panel ID="panelReporteGeneral" runat="server" Class="container">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="biotech.CorporacionAgroDataSetTableAdapters.st_reportVentastotalesTableAdapter"></asp:ObjectDataSource>
            <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="600px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="650px"><LocalReport DisplayName="ResumenVentas.rdlc" ReportEmbeddedResource="biotech.reporte.ResumenVentas.rdlc" ReportPath="reporte/ResumenVentas.rdlc"><DataSources><rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" /></DataSources></LocalReport></rsweb:ReportViewer>
            <br />
        </asp:Panel>


       <asp:Panel ID="panelReporteComparativo" runat="server">
                      
            <div class="row">
			<div class="col-md-12">
         
                <div class="form-group row">
                    <div class="col-md-6">
                    <div class="btn-group btn-group-justified">
                        <div class="btn-group">
                        <asp:Button ID="btsusan" runat="server" class="btn btn-default" Text="SUSAN" OnClick="btsusan_Click" />
                        </div>
                        <div class="btn-group">
                            <asp:Button ID="btassereto" runat="server" class="btn btn-default" Text="ASSERETO" OnClick="btassereto_Click" />
                        </div>
                        <div class="btn-group">
                            <asp:Button ID="btmancilla" runat="server" class="btn btn-default" Text="MANCILLA" OnClick="btmancilla_Click" />
                        </div>
                        <div class="btn-group">
                            <asp:Button ID="btgiovanni" runat="server" class="btn btn-default" Text="GIOVANNI" OnClick="btgiovanni_Click" />
                        </div>
                        <div class="btn-group">
                            <asp:Button ID="btHenry" runat="server" class="btn btn-default" Text="HENRY" OnClick="btHenry_Click" />
                        </div>
                        <div class="btn-group">
                            <asp:Button ID="btBio" runat="server" class="btn btn-default" Text="BIOTECH" OnClick="btBio_Click" />
                        </div>
                     </div>
                    </div>
                    <div class="col-md-1 col-xs-3">
                    <asp:Button ID="btGeneral" runat="server" class="btn btn-default" Text="GENERAL" OnClick="btGeneral_Click" />
                    </div>
                    <div class="col-md-3 col-xs-9">
                        <asp:DropDownList ID="ddlbMesComparativo" runat="server" AutoPostBack="True" CLASS="form-control" OnSelectedIndexChanged="ddlbMesComparativo_SelectedIndexChanged">
                            <asp:ListItem Value="1">ENERO</asp:ListItem>
                            <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                            <asp:ListItem Value="3">MARZO</asp:ListItem>
                            <asp:ListItem Value="4">ABRIL</asp:ListItem>
                            <asp:ListItem Value="5">MAYO</asp:ListItem>
                            <asp:ListItem Value="6">JUNIO</asp:ListItem>
                            <asp:ListItem Value="7">JULIO</asp:ListItem>
                            <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                            <asp:ListItem Value="9">SETIEMBRE</asp:ListItem>
                            <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                            <asp:ListItem Value="11">NOVEMBRE</asp:ListItem>
                            <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                    </div>
                    <asp:Panel ID="PanelMENSAJE" runat="server">
                        <asp:Label ID="lblidVendedorSelecionado" runat="server" style="font-weight: 700"></asp:Label>
                        <asp:Label ID="lbldesde" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblhasta" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblano1" runat="server" Text="2017" Visible="False"></asp:Label>
                        <asp:Label ID="lblano2" runat="server" Text="2018" Visible="False"></asp:Label>
                        <div class="table-responsive">
                        <asp:GridView ID="gvRemTotalAsesor" runat="server" AutoGenerateColumns="False" Class="table table-condensed table-bordered table-hover" DataSourceID="SqlDataSourcettxVendedor">
                            <Columns>
                                <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" />
                                <asp:BoundField DataField="ENE" DataFormatString="{0:0,0.00}" HeaderText="ENE" ReadOnly="True" SortExpression="ENE">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FEB" DataFormatString="{0:0,0.00}" HeaderText="FEB" ReadOnly="True" SortExpression="FEB">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MAR" DataFormatString="{0:0,0.00}" HeaderText="MAR" ReadOnly="True" SortExpression="MAR">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ABR" DataFormatString="{0:0,0.00}" HeaderText="ABR" ReadOnly="True" SortExpression="ABR">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MAY" DataFormatString="{0:0,0.00}" HeaderText="MAY" ReadOnly="True" SortExpression="MAY">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="JUN" DataFormatString="{0:0,0.00}" HeaderText="JUN" ReadOnly="True" SortExpression="JUN">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="JUL" DataFormatString="{0:0,0.00}" HeaderText="JUL" ReadOnly="True" SortExpression="JUL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="AGO" DataFormatString="{0:0,0.00}" HeaderText="AGO" ReadOnly="True" SortExpression="AGO">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SET" DataFormatString="{0:0,0.00}" HeaderText="SET" ReadOnly="True" SortExpression="SET">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="OCT" DataFormatString="{0:0,0.00}" HeaderText="OCT" ReadOnly="True" SortExpression="OCT">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NOV" DataFormatString="{0:0,0.00}" HeaderText="NOV" ReadOnly="True" SortExpression="NOV">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DIC" DataFormatString="{0:0,0.00}" HeaderText="DIC" ReadOnly="True" SortExpression="DIC">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TOTAL" DataFormatString="{0:0,0.00}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                            </div>
                    </asp:Panel>
                 
                     
                     <asp:SqlDataSource ID="SqlDataSourcettxVendedor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_totalesVendedor" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                       
                <div class="form-group row">			  
				  <div class="col-md-6">
					  <h4><span class="glyphicon glyphicon-edit"></span> &nbsp;<asp:Label ID="lblmes11" runat="server"></asp:Label>
                          &nbsp; 2017&nbsp;
                      </h4>

				      <asp:GridView ID="GridView2017" runat="server" AutoGenerateColumns="False" DataKeyNames="IDCLIENTE,CLIENTE" DataSourceID="SqlDataSourcecomparativo1"  ShowFooter="True" Width="100%" OnRowDataBound="GridView2017_RowDataBound" OnSelectedIndexChanged="GridView2017_SelectedIndexChanged">
                          <Columns>
                              <asp:TemplateField HeaderText="CODIGO" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDCLIENTE") %>'></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMP.BRUTO" ReadOnly="True" SortExpression="IMPBRUTO">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="#CCCCCC" />
                          <RowStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodoAgrupadoClienteCOMPARATIVO" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

				  </div>
				  <div class="col-md-6">
					  <h4><span class="glyphicon glyphicon-edit"></span> <asp:Label ID="lblmes22" runat="server"></asp:Label>
                          &nbsp; 2018</h4>
				      <asp:GridView ID="GridView2018" runat="server" AutoGenerateColumns="False" DataKeyNames="IDCLIENTE,CLIENTE" DataSourceID="SqlDataSourcecomparativo2" OnRowDataBound="GridView2018_RowDataBound" OnSelectedIndexChanged="GridView2018_SelectedIndexChanged" ShowFooter="True" Width="100%">
                          <Columns>
                              <asp:TemplateField HeaderText="CODIGO" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("IDCLIENTE") %>'></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="IMPBRUTO" DataFormatString="{0:0,0.00}" HeaderText="IMP.BRUTO" ReadOnly="True" SortExpression="IMPBRUTO">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="#CCCCCC" />
                          <RowStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodoAgrupadoClienteCOMPARATIVO" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
				  </div>
				</div>
      
                <div class="form-group row">			  
				    <div class="col-md-6">

                        PRODUCTOS 2017:<asp:Label ID="lblidclienteG1" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblclienteg1" runat="server"></asp:Label>
                        <asp:GridView ID="gvLitrosG1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG1" OnRowDataBound="gvLitrosG1_RowDataBound" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLITROSG1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_GRUPO" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbldesde" Name="periodo1" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblhasta" Name="periodo2" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidclienteG1" Name="idClienteRuc" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                    <div class="col-md-6">
                        PRODUCTOS 2018:<asp:Label ID="lblidclienteG2" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblclienteG2" runat="server"></asp:Label>
                        <asp:GridView ID="gvLitrosG2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG2" OnRowDataBound="gvLitrosG2_RowDataBound" ShowFooter="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLITROSG2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS_GRUPO" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbldesde" Name="periodo1" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblhasta" Name="periodo2" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidclienteG2" Name="idClienteRuc" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </div>
                </div>
          </div></div>
        </asp:Panel>
               
      

       
       

       
            <asp:Panel ID="PanelVENDEDORES" runat="server">
                 
                <h4><strong>RESUMEN VENTAS MES:&nbsp;<asp:Label ID="lblmes" runat="server"></asp:Label>
                    &nbsp;</strong><asp:Label ID="lblidmes" runat="server" Visible="False"></asp:Label>
                </h4>
                <table class="nav-justified">
                    <tr>
                        <td>
                            <table class="auto-style11">
                                <tr height="20">
                                    <td class="auto-style14"></td>
                                    <td class="auto-style14">DOLARES</td>
                                    <td class="auto-style14">SOLES</td>
                                    <td class="auto-style14">TOTAL U$S</td>
                                </tr>
                                <tr height="20">
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="SUSAN" Visible="False"></asp:Label>
                                        <asp:Button ID="bt_1" runat="server" OnClick="bt_1_Click" Text="SUSAN" Width="70px" />
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblmontodolares1" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblMontoSoles1" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lbltt1" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <tr height="20">
                                    <td>
                                        <asp:Label ID="lblmancilla" runat="server" Text="JMANC" Visible="False"></asp:Label>
                                        <asp:Button ID="bt_mancilla" runat="server" OnClick="bt_mancilla_Click" Text="JMANC" Width="70px" />
                                    </td>
                                    <td class="auto-style1231">
                                        <asp:Label ID="lblMontodolaresMANC" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1231">
                                        <asp:Label ID="lblMontoSolesJMANC" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1231">
                                        <asp:Label ID="lblttJMANC" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <tr height="20">
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="JASER" Visible="False"></asp:Label>
                                        <asp:Button ID="bt_3" runat="server" OnClick="bt_3_Click" Text="JASSER" Width="70px" />
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblmontodolares3" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lblMontoSoles3" runat="server"></asp:Label>
                                    </td>
                                    <td class="text-right">
                                        <asp:Label ID="lbltt3" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <tr height="20">
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="VGIOV" Visible="False"></asp:Label>
                                        <asp:Button ID="bt_4" runat="server" OnClick="bt_4_Click" Text="VGIOV" Width="70px" />
                                    </td>
                                    <td class="auto-style1226">
                                        <asp:Label ID="lblmontodolares4" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1226">
                                        <asp:Label ID="lblMontoSoles4" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1226">
                                        <asp:Label ID="lbltt4" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <tr height="20">
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="VHENR" Visible="False"></asp:Label>
                                        <asp:Button ID="bt_5" runat="server" OnClick="bt_5_Click" Text="VHENR" Width="70px" />
                                    </td>
                                    <td class="auto-style1226">
                                        <asp:Label ID="lblmontodolares5" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1226">
                                        <asp:Label ID="lblMontoSoles5" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1226">
                                        <asp:Label ID="lbltt5" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <tr height="20">
                                    <td>
                                        <asp:Label ID="lblmancilla0" runat="server" Text="BIOTECH" Visible="False"></asp:Label>
                                        <asp:Button ID="bt_danny" runat="server" OnClick="bt_danny_Click" Text="BIO" Width="70px" />
                                    </td>
                                    <td class="auto-style1228">
                                        <asp:Label ID="lblMontodolaresDANNY" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style1228">
                                        <asp:Label ID="lblMontoSolesDANNY" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style18" style="text-align: right">
                                        <asp:Label ID="lblttDANNY" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <asp:Panel ID="Panel1" runat="server">
                                    <tr height="20">
                                        <td>&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td style="text-align: right">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr height="20">
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="LILIA" Visible="False"></asp:Label>
                                            <asp:Button ID="bt_2" runat="server" OnClick="bt_2_Click" Text="LILIA" Width="70px" />
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblmontodolares2" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblMontoSoles2" runat="server"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lbltt2" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td style="text-align: right"></td>
                                    </tr>
                                    <tr height="20">
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="WAHUA" Visible="False"></asp:Label>
                                            <asp:Button ID="bt_6" runat="server" OnClick="bt_6_Click" Text="WAHUA" Width="70px" />
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblmontodolares6" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblMontoSoles6" runat="server"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lbltt6" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td style="text-align: right"></td>
                                    </tr>
                                    <tr height="20">
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="ALEXS" Visible="False"></asp:Label>
                                            <asp:Button ID="bt_7" runat="server" OnClick="bt_7_Click" Text="ALEXS" Width="70px" />
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblmontodolares7" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblMontoSoles7" runat="server"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lbltt7" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td style="text-align: right"></td>
                                    </tr>
                                    <tr height="20">
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="BIOTE" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblmontodolares8" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:Label ID="lblMontoSoles8" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lbltt8" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:Button ID="bt_8" runat="server" OnClick="bt_8_Click" Text="Ver detalle" Visible="False" />
                                        </td>
                                    </tr>
                                </asp:Panel>
                                <tr height="20">
                                    <td><strong>TOTAL:</strong></td>
                                    <td class="auto-style12">
                                        <asp:Label ID="lblTotalDolares" runat="server" style="font-weight: 700" Text="0.00"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:Label ID="lblTotalSoles" runat="server" style="font-weight: 700" Text="0.00"></asp:Label>
                                    </td>
                                    <td style="text-align: right">
                                        <asp:Label ID="lblttFINAL" runat="server" style="font-weight: 700"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            </td>
                        <td>
                            <div id="piechart" style="width: 600px; height: 350px;">
                            </div>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pVentas" runat="server">
                    <br />
                     <div class="table-responsive">
                    <asp:GridView ID="GridViewDolaress" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource8" GridLines="Horizontal" OnRowDataBound="GridViewDolaress_RowDataBound" OnSelectedIndexChanged="GridViewDolaress_SelectedIndexChanged" ShowFooter="True" style="font-size: small" Width="100%">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                            <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                            <HeaderStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" >
                            <HeaderStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION">
                            <HeaderStyle Width="80px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO">
                            <HeaderStyle Width="80px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="VENDEDOR" HeaderText="VEND" SortExpression="VENDEDOR" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" Visible="False" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                            <asp:BoundField DataField="CONDPAGO" HeaderText="COND. PAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                            <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" Visible="False" />
                            <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP. BASE" SortExpression="IMPBASE">
                            <HeaderStyle Width="70px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" Visible="False" />
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False" />
                            <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMPDISPONIBLE" SortExpression="IMPDISPONIBLE" Visible="False" />
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registraron ventas...!
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_porVendedor" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                            <asp:Parameter DefaultValue="todos" Name="vendedor" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource></div>
                          <div class="table-responsive">
                    <asp:GridView ID="GridViewSoless" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource9" GridLines="Horizontal" OnRowDataBound="GridViewSoless_RowDataBound" OnSelectedIndexChanged="GridViewSoless_SelectedIndexChanged" ShowFooter="True" style="font-size: small" Width="100%" ShowHeader="False">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                            <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                            <HeaderStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" >
                            <HeaderStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION">
                            <HeaderStyle Width="80px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO">
                            <HeaderStyle Width="80px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="VENDEDOR" HeaderText="VEND" SortExpression="VENDEDOR" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" Visible="False" >
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                            <asp:BoundField DataField="CONDPAGO" HeaderText="COND.PAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                            <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" Visible="False" />
                            <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP.BASE" SortExpression="IMPBASE">
                            <HeaderStyle Width="70px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" Visible="False" />
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False" />
                            <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMPDISPONIBLE" SortExpression="IMPDISPONIBLE" Visible="False" />
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" Visible="False">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_porVendedorSOLES" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                            <asp:Parameter DefaultValue="todos" Name="vendedor" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                              </div>
                </asp:Panel>
               
                <asp:Label ID="lblcodvendedor" runat="server" Visible="False"></asp:Label>
               
                <br />
                
               
                <br />
                <asp:Panel ID="Panelagrupado" runat="server">
                </asp:Panel>
               
                <asp:Panel ID="PanelDetallpersonal" runat="server">

<div class="row-fluid">
      <%--  <div class="row">       --%>      
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Ventas realizadas</a></li>
  <li><a data-toggle="tab" href="#menu1">Ventas agrupadas</a></li>
  <li><a data-toggle="tab" href="#menu2">Resumen en productos</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    

    <asp:Panel ID="PanelResumenVendedores" runat="server">
                    <strong>VENTAS REGISTRADAS:</strong><br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnRowDataBound="GridView4_RowDataBound" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" ShowFooter="True" style="font-size: small" Width="100%">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Select" ImageUrl="~/images/buscarr.png" Text="Seleccionar" Width="20px" />
                                </ItemTemplate>
                                <ControlStyle Height="20px" Width="20px" />
                                <HeaderStyle Width="50px" />
                                <ItemStyle HorizontalAlign="Center" Width="25px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                            <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                            <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                            <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" />
                            <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP. BASE" SortExpression="IMPBASE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMP. NETO" SortExpression="IMPNETO" Visible="False" />
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False" />
                            <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMPDISPONIBLE" SortExpression="IMPDISPONIBLE" Visible="False" />
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No registraron ventas...!
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource5" GridLines="Horizontal" OnRowDataBound="GridView6_RowDataBound" OnSelectedIndexChanged="GridView6_SelectedIndexChanged" ShowFooter="True" style="font-size: small" Width="100%">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Select" ImageUrl="~/images/buscarr.png" Text="Seleccionar" Width="20px" />
                                </ItemTemplate>
                                <ControlStyle Height="20px" Width="20px" />
                                <HeaderStyle HorizontalAlign="Center" Width="25px" />
                                <ItemStyle HorizontalAlign="Center" Width="25px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" />
                            <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                            <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                            <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                            <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" />
                            <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMPBASE" SortExpression="IMPBASE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" Visible="False" />
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False" />
                            <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMPDISPONIBLE" SortExpression="IMPDISPONIBLE" Visible="False" />
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_porVendedorSOLES" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="lblcodvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_porVendedor" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="lblcodvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource4" GridLines="Horizontal" OnRowDataBound="GridView5_RowDataBound" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" ShowFooter="True" style="font-size: small" Width="100%" Visible="False">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False" CommandName="Select" ImageUrl="~/images/buscarr.png" Text="Seleccionar" Width="20px" />
                                </ItemTemplate>
                                <ControlStyle Height="20px" Width="20px" />
                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                <ItemStyle HorizontalAlign="Center" Width="25px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                            <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" />
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                            <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                            <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                            <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" />
                            <asp:BoundField DataField="IMPBASE" DataFormatString="{0:0,0.00}" HeaderText="IMP.BASE" SortExpression="IMPBASE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" Visible="False" />
                            <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" Visible="False" />
                            <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" Visible="False" />
                            <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMPDISPONIBLE" SortExpression="IMPDISPONIBLE" Visible="False" />
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataTemplate>
                            No se registraron muestras...!
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_porVendedorMuestras" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="lblcodvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
  </div>
    
 
  <div id="menu1" class="tab-pane fade">
     
      <asp:Panel ID="PanelClientesproductos" runat="server">
                    
                        <h4>AGRUPADO POR CLIENTES:
                            <asp:Label ID="lblclientesmes" runat="server"></asp:Label>
                            &nbsp;DOLARES</h4>
                        <table class="auto-style112">
                            <tr>
                                <td style="text-align: left">AGRUPADO POR CLIENTES</td>
                                <td style="text-align: right">POR PRODUCTOS:
                                    <asp:Label ID="lblCliente30" runat="server"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="TOP">
                                     <div class="table-responsive">
                                    <asp:GridView ID="gvgrupClientes" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVentasSegPeriodoGrupCliente" GridLines="Horizontal" OnRowDataBound="gvgrupClientes_RowDataBound" OnSelectedIndexChanged="gvgrupClientes_SelectedIndexChanged" ShowFooter="True" Width="100%">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="IMPBRUTO" HeaderText="IMPBRUTO" ReadOnly="True" SortExpression="IMPBRUTO"></asp:BoundField>
                                        </Columns>
                                        <HeaderStyle BackColor="#CCCCCC" />
                                        <RowStyle BackColor="WhiteSmoke" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceVentasSegPeriodoGrupCliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segperiodoAgrupadoCliente" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblidmes" Name="idperidodo" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="lblcodvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="D" Name="tpmoneda" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                         </div>
                                </td>
                                <td valign="TOP">
                                    <div align="right">
                                        <asp:GridView ID="gvlitros2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcelITROS" OnRowDataBound="gvlitros2_RowDataBound" ShowFooter="True">
                                            <Columns>
                                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANT" ReadOnly="True" SortExpression="CANTIDAD"></asp:BoundField>
                                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND"></asp:BoundField>
                                                <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL"></asp:BoundField>
                                            </Columns>
                                            <HeaderStyle BackColor="#CCCCCC" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSourcelITROS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductosLITROS" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblidmes" Name="idperidodo" PropertyName="Text" Type="Int32" />
                                                <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="lblcodvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="lblidclienteRUC" Name="idClienteRuc" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </td>
                            </tr>
                        </table>
                  


                        <strong>Detalle pedidos cliente:
                        <asp:Label ID="lblidclienteRUC" runat="server"></asp:Label>
                        </strong>&nbsp;<strong><asp:Label ID="lblcliente20" runat="server"></asp:Label>
                        </strong>
                        <asp:Label ID="lblop10" runat="server" Text="10" Visible="False"></asp:Label>
                        <div class="table-responsive">
                            <asp:GridView ID="gvgrupoProducto" runat="server" AutoGenerateColumns="False" Class="table-hover" DataKeyNames="idDetalle" DataSourceID="SqlDataSourceVentasSerProducto" OnRowDataBound="gvgrupoProducto_RowDataBound" ShowFooter="True" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                                    <asp:BoundField DataField="idfactura" HeaderText="idfactura" SortExpression="idfactura" Visible="False" />
                                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                  

                                    <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRO" SortExpression="FREGISTRO">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>


                                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False"/>
                                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                                    <asp:BoundField DataField="PVENTA"  DataFormatString="{0:0,0.00}" HeaderText="PVENTA" SortExpression="PVENTA">
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />

                                    </asp:BoundField>
                                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    
                                    <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB.TOTAL" SortExpression="SUBTOTAL">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="dsto" HeaderText="DSCTO%" SortExpression="dsto" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>


                                    <asp:BoundField DataField="pl" DataFormatString="{0:0,0.00}" HeaderText="P.LISTA" SortExpression="pl">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#CCCCCC" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceVentasSerProducto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_segPeriodoAgrupadoProductos" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblop10" Name="op" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="lblidmes" Name="idperidodo" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="lblidclienteRUC" Name="idClienteRuc" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblcodvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                   
                </asp:Panel>
          
       </div>
  <div id="menu2" class="tab-pane fade">
    <h3>Menu 2</h3>
    <p>Some content in menu 2.</p>
  </div>
</div>
</div>
                </asp:Panel>
              
                
            </asp:Panel>
            
            <asp:Panel ID="PanelDODUMENTOS" runat="server">
                <strong>BOLETAS </strong>
                <asp:Label ID="lblBoleta1" runat="server"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True" style="font-size: small" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" CommandName="Select" ImageUrl="~/images/buscarr.png" Text="" Width="20px" />
                            </ItemTemplate>
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle HorizontalAlign="Center" Width="25px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                        <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                        <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" />
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                        <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                        <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" />
                        <asp:BoundField DataField="IMPBASE" HeaderText="IMP.BASE" SortExpression="IMPBASE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPNETO" HeaderText="IMP.NETO" SortExpression="IMPNETO" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMP.DISPONIBLE" SortExpression="IMPDISPONIBLE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        No se registraron Boletas
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle Font-Bold="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_periodos" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter DefaultValue="200" Name="BT" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <strong>FACTURAS</strong><asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="idfacturacion" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowDataBound="GridView3_RowDataBound" ShowFooter="True" style="font-size: small" Width="100%" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" CommandName="Select" ImageUrl="~/images/buscarr.png" Text="Seleccionar" Width="20px" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="idfacturacion" HeaderText="idfacturacion" ReadOnly="True" SortExpression="idfacturacion" Visible="False" />
                        <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" >
                        <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                        <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VENDEDOR" HeaderText="VENDEDOR" SortExpression="VENDEDOR" />
                        <asp:BoundField DataField="IDRUC" HeaderText="RUC" SortExpression="IDRUC" />
                        <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                        <asp:BoundField DataField="CONDPAGO" HeaderText="CONDPAGO" ReadOnly="True" SortExpression="CONDPAGO" />
                        <asp:BoundField DataField="idletra" HeaderText="idletra" SortExpression="idletra" Visible="False" />
                        <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" SortExpression="GUIAREM" />
                        <asp:BoundField DataField="IMPBASE" HeaderText="IMP.BASE" SortExpression="IMPBASE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPNETO" HeaderText="IMP.NETO" SortExpression="IMPNETO" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPDISPONIBLE" HeaderText="IMP. DISPONIBLE" SortExpression="IMPDISPONIBLE" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        No se registraron Boletas
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle Font-Bold="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_periodos" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rblPeriodo" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlbMes" Name="periodo" PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter DefaultValue="100" Name="BT" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Panel ID="PanelDetalleVenta" runat="server">
                </asp:Panel>
            </asp:Panel>
    
   
        <asp:Panel ID="PanelDetallePedido" runat="server">
            <br />
            <strong>Detalle de Factura:</strong><br />
            <table class="auto-style11">
                <tr>
                    <td class="auto-style20">N° FACTURA:</td>
                    <td>
                        <asp:Label ID="lblfactura" runat="server"></asp:Label>
                    </td>
                    <td><b>FECHA EMISIÓN:</b></td>
                    <td>
                        <asp:Label ID="lblfechaEmision" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">RUC CLIENTE:</td>
                    <td>
                        <asp:Label ID="lblruc" runat="server"></asp:Label>
                    </td>
                    <td><b>FECHA VENCIMIENTO:</b></td>
                    <td>
                        <asp:Label ID="lblFechaVencimiento" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">RAZON SOCIAL:</td>
                    <td class="auto-style18" colspan="3">
                        <asp:Label ID="lblcliente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">TIPO VENTA:</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblTipoVenta" runat="server"></asp:Label>
                    </td>
                    <td><strong>VENDEDOR</strong>:</td>
                    <td>
                        <asp:Label ID="lblvendedor" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">IMP. A COBRAR:</td>
                    <td class="auto-style1212">
                        <asp:Label ID="lblimporteDisponible" runat="server"></asp:Label>
                    </td>
                    <td><strong>IMP. RETENIDO:</strong></td>
                    <td>
                        <asp:Label ID="lblimporteretenido" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">MONEDA:</td>
                    <td>
                        <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <strong>
            <br />
            PEDIDOS REGISTRADOS:</strong><asp:Label ID="lblIdFactura" runat="server" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="gvDetallePedido" runat="server" AutoGenerateColumns="False" DataKeyNames="idDetalle" DataSourceID="SqlDataSource6" GridLines="Horizontal" OnRowDataBound="gvDetallePedido_RowDataBound" ShowFooter="True" Width="700px">
                <Columns>
                    <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" ReadOnly="True" SortExpression="idDetalle" Visible="False" />
                    <asp:BoundField DataField="CODPRO" HeaderText="COD" SortExpression="CODPRO" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PVENTA" DataFormatString="{0:0,0.00}" HeaderText="P. VENTA" SortExpression="PVENTA">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SUBTOTAL" DataFormatString="{0:0,0.00}" HeaderText="SUB. TOTAL" SortExpression="SUBTOTAL">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <table class="auto-style11">
                <tr>
                    <td><br />
                    </td>
                    <td><br />
                    </td>
                    <td class="auto-style1225"><br />
                    </td>
                    <td style="text-align: right">Imp base:<br />
                        <asp:Label ID="lblimpBase" runat="server" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style1224" style="text-align: right">IGV:<br />
                        <asp:Label ID="lbligv" runat="server"></asp:Label>
                    </td>
                    <td style="text-align: right">Importe Total:<br />
                        <asp:Label ID="lblimporteTotal" runat="server" style="font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1225">&nbsp;&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1224">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="venta_DetalleVenta" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblIdFactura" Name="idfact" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
                        </h3>
                      </div>   
                 </div>
</asp:Content>
