<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="VentasZonal.aspx.cs" Inherits="biotech.VentasRTC.VentasZonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { packages: ['corechart', 'bar'] });
        google.charts.setOnLoadCallback(drawAxisTickColors);

        function drawAxisTickColors() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatosDONUS()%>);

            var options = {
                chart: {
                    title: 'RESUMEN DE VENTAS',
                    subtitle: 'SEGÚN PERIODO',
                },
                bars: 'vertical',
                focusTarget: 'category',
                vAxis: { format: 'decimal' },
                height: 400,
              
                colors: ['#a0c655', '#27a527', '#0080FF']
            };


            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
            chart.draw(data, options);


        }
    </script>

     <style type="text/css">
         .auto-style1 {
             width: 500px;
         }
         .auto-style2 {
             width: 100%;
         }
         </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    RESUMEN VENTAS
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ol class="breadcrumb">
        <asp:LinkButton ID="lbPrincipal" runat="server" OnClick="lbPrincipal_Click">Principal (Zonal) </asp:LinkButton>
        <asp:LinkButton ID="lbPresupuesto" runat="server" OnClick="lbPresupuesto_Click">/  Presupuestal</asp:LinkButton>
        <asp:LinkButton ID="lbFacturacion" runat="server" OnClick="lbFacturacion_Click" PostBackUrl="~/VentasRTC/VentasFact.aspx" >/  Facturación</asp:LinkButton>
         <asp:LinkButton ID="lbventasPersonales" runat="server"  PostBackUrl="~/VentasRTC/VentasPersonales.aspx" >/  Clientes Facturados</asp:LinkButton>
        <%-- <div id="piechart" style="width: 600px; height: 350px;">
                            </div>--%>
        
        <%--<asp:LinkButton ID="lbPedidos" runat="server" OnClick="lbPedidos_Click" >/  Pedidos</asp:LinkButton>
        <asp:LinkButton ID="lbViaticos" runat="server" OnClick="lbViaticos_Click" >/  Viáticos</asp:LinkButton>--%>
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
</ol>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    


<table class="auto-style2">
              <tr>
                  <td VALIGN="TOP">
                      <asp:Button ID="bt2018" runat="server" Height="30px" OnClick="bt2018_Click" Text="2018" Width="100px" />
                      <asp:Button ID="bt2019" runat="server" Height="30px" OnClick="bt2019_Click" Text="2019" Width="100px" />
&nbsp;<asp:Label ID="lblano" runat="server" Visible="False"></asp:Label>
                      <br />
                      <asp:GridView ID="GridView2019" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAnualZonal" Width="500px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" DataKeyNames="MES,PER,PERIODO" Font-Size="Small" OnRowDataBound="GridView2019_RowDataBound" OnSelectedIndexChanged="GridView2019_SelectedIndexChanged" ShowFooter="True">
                          <Columns>
                              <asp:TemplateField ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("PER") %>' Width="100px" />
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                              <asp:BoundField DataField="PER" HeaderText="PER" ReadOnly="True" SortExpression="PER" Visible="False" />
                              <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" Visible="False" />
                              <asp:BoundField DataField="2017" DataFormatString="{0:0,0.00}" HeaderText="2017" ReadOnly="True" SortExpression="2017" Visible="False">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="2018" DataFormatString="{0:0,0.00}" HeaderText="PRE2018" ReadOnly="True" SortExpression="2018">
                              <ItemStyle ForeColor="#333333" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ACTUAL" DataFormatString="{0:0,0.00}" HeaderText="2018" ReadOnly="True" SortExpression="ACTUAL">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#006600" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIF" HeaderText="2018 - PRE2018" ReadOnly="True" SortExpression="DIF" DataFormatString="{0:0,0.00}" >
                              <ItemStyle Font-Size="X-Small" ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIFPORCENT" DataFormatString="{0:0,0.00}" HeaderText="%" ReadOnly="True" SortExpression="DIFPORCENT">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="Small" />
                              </asp:BoundField>
                              <asp:BoundField DataField="%" HeaderText="%" ReadOnly="True" SortExpression="%" Visible="False">
                              <ItemStyle ForeColor="#999999" />
                              </asp:BoundField>
                          </Columns>
                          <FooterStyle ForeColor="Black" />
                          <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="WhiteSmoke" />
                          <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourceAnualZonal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_anualZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblzona" Name="idcliente" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:Label ID="lblIdPeriodo" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
                      <br />
                      *PRE2018 = Presupuesto 2018.</td>
                  <td>


                      <asp:Panel ID="Panel1" runat="server">
                            <div id="chart_div" style="width: 600px; height: 400px;">
                            </div>
                      </asp:Panel>

      
                  </td>
              </tr>
          </table>


        <asp:Panel ID="PaneldIFERENCIA" runat="server" Visible="False">
				      <table class="auto-style1">
                          <tr>
                              
                              <td>
                                  <asp:Label ID="lblmess" runat="server"></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="lblanoanterior" runat="server"></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="lblanoprincipal" runat="server"></asp:Label>
                              </td>
                              <td>DIFERENCIA</td>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              
                              <td>IMPORTE:</td>
                              <td><asp:Label ID="lbltt1" runat="server" style="font-size: medium"></asp:Label>
                              </td>
                              <td>
                          <asp:Label ID="lbltt2" runat="server" style="font-size: medium"></asp:Label>

                              </td>
                              <td>
                                 
                                  <asp:Label ID="lblttdiferencia" runat="server" style="font-size: medium"></asp:Label>
                                 
                              </td>
                              <td>
                                  <asp:Label ID="lbldifPorcentual" runat="server" Text="" style="font-size: medium"></asp:Label></td>
                          </tr>
                      </table>
        </asp:Panel>
    



    <table class="auto-style2">
        <tr>
            <td>
                <h4>RESUMEN <asp:Label ID="lblmes11" runat="server"></asp:Label>
                          &nbsp;<asp:Label ID="lbldesde" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lblhasta" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lblano1" runat="server">2017</asp:Label>
                          <%--<asp:Label ID="Label3" runat="server"></asp:Label>--%>
                      </h4>
            </td>
            <td>&nbsp;</td>
            <td>
					  
                      <h4>RESUMEN <asp:Label ID="lblmes22" runat="server"></asp:Label>
                          &nbsp;
                          <asp:Label ID="lblano2" runat="server">2018</asp:Label>
                          </h4>
				      </td>
        </tr>
        <tr>
            <td valign=top>

				      <asp:GridView ID="GridView2017" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecomparativo1"  ShowFooter="True" Width="500px" OnRowDataBound="GridView2017_RowDataBound" OnSelectedIndexChanged="GridView2017_SelectedIndexChanged" DataKeyNames="IDCLIENTE,CLIENTE">
                          <Columns>
                              <asp:TemplateField ShowHeader="False" HeaderText="COD">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("IDCLIENTE") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="70px" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBRUTO" HeaderText="IMP. BRUTO" SortExpression="IMPBRUTO" ReadOnly="True" DataFormatString="{0:0,0.00}">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="#CCCCCC" />
                          <RowStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_zonalmesano" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

				  </td>
            <td>&nbsp;</td>
            <td valign=top>
				      <asp:GridView ID="GridView2018" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecomparativo2" OnRowDataBound="GridView2018_RowDataBound" OnSelectedIndexChanged="GridView2018_SelectedIndexChanged" ShowFooter="True" Width="500px" DataKeyNames="IDCLIENTE,CLIENTE">
                          <Columns>
                              <asp:TemplateField HeaderText="COD" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("IDCLIENTE") %>'></asp:LinkButton>
                                  </ItemTemplate>
                                  <HeaderStyle Width="70px" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" Visible="False" />
                              <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                              <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="IMPBRUTO" HeaderText="IMP. BRUTO" ReadOnly="True" SortExpression="IMPBRUTO" DataFormatString="{0:0,0.00}">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                          </Columns>
                          <EmptyDataTemplate>
                              No existen registros...
                          </EmptyDataTemplate>
                          <HeaderStyle BackColor="#CCCCCC" />
                          <RowStyle BackColor="WhiteSmoke" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourcecomparativo2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_ResumenZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lbldesde" Name="idperidodo1" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblhasta" Name="idperidodo2" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                              <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />

                            
                          </SelectParameters>
                      </asp:SqlDataSource>
                      </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>PRODUCTOS:<asp:Label ID="lblidclienteG1" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblclienteg1" runat="server"></asp:Label>
                        <asp:GridView ID="gvLitrosG1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG1" OnRowDataBound="gvLitrosG1_RowDataBound" ShowFooter="True" Width="500px">
                            <Columns>
                                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UND" HeaderText="UND" SortExpression="UND">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" SortExpression="SUBTOTAL" DataFormatString="{0:0,0.00}">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <EmptyDataTemplate>
                                Indicar vendedor...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLITROSG1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Ventas_productosPeriodoClienteZona" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbldesde" Name="periodo1" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblhasta" Name="periodo2" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano1" Name="ano" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidclienteG1" Name="idClienteRuc" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>



				  </td>
            <td>&nbsp;</td>
            <td>PRODUCTOS:<asp:Label ID="lblidclienteG2" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblclienteG2" runat="server"></asp:Label>
                        <asp:GridView ID="gvLitrosG2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLITROSG2" OnRowDataBound="gvLitrosG2_RowDataBound" ShowFooter="True" Width="500px">
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
                            <EmptyDataTemplate>
                                Indicar vendedor...
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceLITROSG2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Ventas_productosPeriodoClienteZona" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbldesde" Name="periodo1" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblhasta" Name="periodo2" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblidclienteG2" Name="idClienteRuc" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>


                    

                     </td>
        </tr>
    </table>



    <div class="form-group row">			  
				  <div class="col-md-6">
					  <h4>&nbsp;</h4>

				  </div>



				  <div class="col-md-6">
					  

                    

                     <%-- <div id="piechart" style="width: 600px; height: 350px;">
                            </div>--%>

				  </div>
				</div>

       </div>
    
</asp:Content>
