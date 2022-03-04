<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumAnalisisb.aspx.cs" Inherits="biotech.bio.ventas.ResumAnalisisb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
            background-color: #E9E9E9;
            width: 116px;
        }
        .auto-style2 {
            height: 20px;
            text-align: right;
            background-color: #E9E9E9;
        }
        .auto-style3 {
            text-align: center;
           vertical-align: middle;
            font-weight: bold;
            background-color: #E9E9E9;
           
        }
        </style>
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            width: 116px;
        }
        .auto-style7 {
            background-color: #E9E9E9;
            width: 116px;
        }
        .auto-style8 {
            width: 500px;
        }
        .auto-style9 {
            height: 20px;
        }
        </style>

    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header "><i class="glyphicon glyphicon-edit"></i> PRESUPUESTO
                    <asp:Label ID="lblzonaica" runat="server">ICA</asp:Label>
                        </h2>
                            
                            <ol class="breadcrumb">
                              <li class="active">
                                  <asp:LinkButton ID="lbPrincipal" runat="server"  PostBackUrl="~/bio/ventas/ResumenVentasAgrup.aspx" >R.Principal</asp:LinkButton>
                              </li>

                                <li>
                                    <asp:LinkButton ID="lbComparativo" runat="server" PostBackUrl="~/bio/ventas/ResumenComparativo.aspx">R.Comparativo Ventas</asp:LinkButton>
                                </li>
                              <li>
                                  <asp:LinkButton ID="lbDetallado" runat="server" PostBackUrl="~/bio/ventas/ResumenGeneral.aspx" >R.General Ventas</asp:LinkButton>      
                              </li>
                                <li>
                                    <asp:LinkButton ID="lbProyectado" runat="server" PostBackUrl="~/bio/ventas/ProyectadoUnidades.aspx">R.Proyectado</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbProducto" runat="server" PostBackUrl="~/bio/ventas/Resumen/TopProductos.aspx">R.Producto</asp:LinkButton>
                                </li>

                                 <li>
                                    <asp:LinkButton ID="lbAnalisisB" runat="server" PostBackUrl="~/bio/ventas/ResumAnalisisb.aspx">Presupuesto</asp:LinkButton>
                                </li>
                            </ol> 
                            </ol> 
    </div>

     </div>
    
     <div class="row">
			<div class="col-md-7">


        <asp:Panel ID="PPorcentPresup" runat="server">
            <table class="auto-style8">
                <tr>
                    <td rowspan="2"><strong>PERIODO</strong></td>
                    <td colspan="3" class="auto-style9"><strong>PRESUPUESTO PORCENTIAL</strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9" colspan="3"><strong>PRESUPUESTO PIURA US$</strong></td>
                </tr>
                <tr>
                    <td>ICA %</td>
                    <td>PIURA %</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>IMP. ICA</td>
                    <td>IMP. PIURA</td>
                    <td>
                        <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ENERO<asp:Label ID="i1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti1" CssClass="form-control"   runat="server" required type="number" step="0.01" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp1"  runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc1" runat="server" OnClick="bt_porc1_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica1" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura1" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti1" runat="server" Text="US$" />
                        <asp:Label ID="p1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>FEBRERO<asp:Label ID="i2" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti2"  CssClass="form-control" required type="number" step="0.01"  runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp2" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc2" runat="server" OnClick="bt_porc2_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica2" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura2" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti2" runat="server" Text="US$" />
                        <asp:Label ID="p2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>MARZO<asp:Label ID="i3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti3"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp3" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc3" runat="server" OnClick="bt_porc3_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica3" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura3" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti3" runat="server" Text="US$" />
                        <asp:Label ID="p3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ABRIL<asp:Label ID="i4" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti4"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp4" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc4" runat="server" OnClick="bt_porc4_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica4" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura4" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti4" runat="server" Text="US$" />
                        <asp:Label ID="p4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>MAYO<asp:Label ID="i5" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti5"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp5" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc5" runat="server" OnClick="bt_porc5_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica5" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura5" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti5" runat="server" Text="US$" />
                        <asp:Label ID="p5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>JUNIO<asp:Label ID="i6" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti6"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp6" runat="server" CssClass="form-control" required="" step="0.01" type="number" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc6" runat="server" OnClick="bt_porc6_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica6" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura6" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti6" runat="server" Text="US$" />
                        <asp:Label ID="p6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>JULIO<asp:Label ID="i7" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti7"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp7" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc7" runat="server" OnClick="bt_porc7_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica7" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura7" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti7" runat="server" Text="US$" />
                        <asp:Label ID="p7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>AGOSTO<asp:Label ID="i8" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti8"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp8" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc8" runat="server" OnClick="bt_porc8_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica8" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura8" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti8" runat="server" Text="US$" />
                        <asp:Label ID="p8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>SETIEMBRE<asp:Label ID="i9" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti9"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp9" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc9" runat="server" OnClick="bt_porc9_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica9" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura9" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti9" runat="server" Text="US$" />
                        <asp:Label ID="p9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>OCTUBRE<asp:Label ID="i10" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti10"  CssClass="form-control"   required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp10" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc10" runat="server" OnClick="bt_porc10_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica10" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura10" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti10" runat="server" Text="US$" />
                        <asp:Label ID="p10" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>NOVIEMBRE<asp:Label ID="i11" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti11"  CssClass="form-control"  required="" step="0.01" type="number" runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp11" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc11" runat="server" OnClick="bt_porc11_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica11" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura11" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti11" runat="server" Text="US$" />
                        <asp:Label ID="p11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>DICIEMBRE<asp:Label ID="i12" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txti12"  CssClass="form-control"  required="" step="0.01" type="number"  runat="server" Width="75px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtp12" runat="server" Width="75px" CssClass="form-control" required="" step="0.01" type="number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bt_porc12" runat="server" OnClick="bt_porc12_Click" Text="Act.%" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="impica12" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="impPiura12" runat="server" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bti12" runat="server" Text="US$" />
                        <asp:Label ID="p12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        <asp:Label ID="LBLMENSAJE" runat="server" ForeColor="#990000"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

            </div>

         <div class="col-md-4">
             PRESUPUESTO GENERAL:
             <div class="table-responsive">
                          <asp:GridView ID="GridView2019" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAnualZonal" GridLines="Horizontal" DataKeyNames="MES,PER,PERIODO"  OnRowDataBound="GridView2019_RowDataBound" OnSelectedIndexChanged="GridView2019_SelectedIndexChanged" ShowFooter="True" Width="100%">
                          <Columns>
                              <asp:TemplateField ShowHeader="False" HeaderText="PERIODO" Visible="False">
                                  <ItemTemplate>
                                      <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("PER") %>' Width="100px" />
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                              <asp:BoundField DataField="PER" HeaderText="PER" ReadOnly="True" SortExpression="PER" Visible="False" />
                              <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                              <asp:BoundField DataField="2017" DataFormatString="{0:0,0.00}" HeaderText="2017" ReadOnly="True" SortExpression="2017">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="2018" DataFormatString="{0:0,0.00}" HeaderText="P 2018" ReadOnly="True" SortExpression="2018" Visible="False">
                              <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="ACTUAL" DataFormatString="{0:0,0.00}" HeaderText="2018" ReadOnly="True" SortExpression="ACTUAL">
                              <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIF" HeaderText="2018-2017" ReadOnly="True" SortExpression="DIF" DataFormatString="{0:0,0.00}" Visible="False" >
                              <ItemStyle Font-Size="X-Small" ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIFPORCENT" DataFormatString="{0:0,0.00}" HeaderText="DIF" ReadOnly="True" SortExpression="DIFPORCENT" Visible="False">
                              <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="DIFANOS" HeaderText="2018-2017" ReadOnly="True" SortExpression="DIFANOS" DataFormatString="{0:0,0.00}" >
                               <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                          
                              </asp:BoundField>
                              <asp:BoundField DataField="%" HeaderText="%" ReadOnly="True" SortExpression="%" Visible="False">
                              <ItemStyle ForeColor="#999999" HorizontalAlign="Right" VerticalAlign="Middle" />
                              </asp:BoundField>
                                <asp:BoundField DataField="DIFANOSPORCENT" HeaderText="DIF. % (2017-2018)" ReadOnly="True" SortExpression="DIFANOSPORCENT" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="%2" ReadOnly="True" SortExpression="%2" >
                        <HeaderStyle Width="10px" />
                        </asp:BoundField>
                          </Columns>
                          <FooterStyle ForeColor="Black" />
                          <HeaderStyle BackColor="WhiteSmoke" Font-Bold="True" ForeColor="Black" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSourceAnualZonal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_anualZonal" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="lblzGeneral" Name="idcliente" PropertyName="Text" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                 </div>
                              <asp:Label ID="lblzGeneral" runat="server" Visible="False">GENERAL</asp:Label>
             <asp:Label ID="lblzIca" runat="server" Visible="False">ICA</asp:Label>
             <asp:Label ID="lblzPiura" runat="server" Visible="False">PIURA</asp:Label>
            </div>



    </div>
    <br />
    <br />

     <div class="row">
			<div class="col-md-12">
                PRESUPUESTO ICA:<asp:GridView ID="Gica" class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" OnRowDataBound="Gica_RowDataBound" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                        <asp:BoundField DataField="PER" HeaderText="PER" ReadOnly="True" SortExpression="PER" Visible="False" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="2017" DataFormatString="{0:0,0.00}" HeaderText="2017" ReadOnly="True" SortExpression="2017">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="2018" DataFormatString="{0:0,0.00}" HeaderText="PRO 2018" ReadOnly="True" SortExpression="2018">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#669999" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ACTUAL" DataFormatString="{0:0,0.00}" HeaderText="2018" ReadOnly="True" SortExpression="ACTUAL">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DIF" DataFormatString="{0:0,0.00}" HeaderText="2018 - PRO2018" ReadOnly="True" SortExpression="DIF">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="X-Small" BackColor="#F2F7F7" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DIFANOS" HeaderText="2018-2017" ReadOnly="True" SortExpression="DIFANOS" DataFormatString="{0:0,0.00}" >
                         <ItemStyle BackColor="#F2F7F7" Font-Size="X-Small" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DIFPORCENT" HeaderText="DIF. % (2018-PRO2018)" ReadOnly="True" SortExpression="DIFPORCENT" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="%" ReadOnly="True" SortExpression="%" DataFormatString="{0:0,0.00}" >
                        <HeaderStyle Width="10px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField DataField="DIFANOSPORCENT" HeaderText="DIF. % (2017-2018)" ReadOnly="True" SortExpression="DIFANOSPORCENT" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="%2" ReadOnly="True" SortExpression="%2" >
                        <HeaderStyle Width="10px" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_anualZonal" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblzIca" Name="idcliente" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
         </div>
    <div class="row">
            <div class="col-md-12">
                PRESUPUESTO PIURA:<asp:GridView ID="Gpiura" class="table-condensed  table-hover table-sm thead-light" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" OnRowDataBound="Gpiura_RowDataBound" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                        <asp:BoundField DataField="PER" HeaderText="PER" ReadOnly="True" SortExpression="PER" Visible="False" />
                        <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                        <asp:BoundField DataField="2017" DataFormatString="{0:0,0.00}" HeaderText="2017" ReadOnly="True" SortExpression="2017">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="2018" DataFormatString="{0:0,0.00}" HeaderText="PRO 2018" ReadOnly="True" SortExpression="2018">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#669999" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ACTUAL" DataFormatString="{0:0,0.00}" HeaderText="2018" ReadOnly="True" SortExpression="ACTUAL">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DIF" DataFormatString="{0:0,0.00}" HeaderText="2018-PRO2018" ReadOnly="True" SortExpression="DIF">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Size="X-Small" BackColor="#F2F7F7" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DIFANOS" HeaderText="2018-2017" ReadOnly="True" SortExpression="DIFANOS" DataFormatString="{0:0,0.00}" >
                         <ItemStyle BackColor="#F2F7F7" Font-Size="X-Small" HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DIFPORCENT" HeaderText="DIF. % (2018-PRO2018)" ReadOnly="True" SortExpression="DIFPORCENT" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="%" ReadOnly="True" SortExpression="%" >
                        <HeaderStyle Width="5px" />
                        </asp:BoundField>
                         <asp:BoundField DataField="DIFANOSPORCENT" HeaderText="DIF. % (2017-2018)" ReadOnly="True" SortExpression="DIFANOSPORCENT" DataFormatString="{0:0,0.00}" >
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="%2" ReadOnly="True" SortExpression="%2" >
                        <HeaderStyle Width="5px" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="WhiteSmoke" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_anualZonal" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblzPiura" Name="idcliente" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
    </div>


    <asp:Panel ID="PanelEstimado" runat="server">
    <div class="form-group row">


        <br />
        <br />
        <br /> 


        <asp:Panel ID="Panel1" runat="server" Visible="False">
            PRESUPUESTO AL:
            <asp:TextBox ID="txtporcent" runat="server" Width="40px">20</asp:TextBox>
            %<asp:LinkButton ID="lbEstimProcent" runat="server" CssClass="btn btn-default" OnClick="lbEstimProcent_Click">CALCULAR</asp:LinkButton>
       
        <div class="table-responsive">
       <table class="table table-bordered table-hover table-sm">
           
            <tr>
                <td class="auto-style6"><asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">ICA</asp:ListItem>
                        <asp:ListItem>PIURA</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3">ENE</td>
                <td class="auto-style3">FEB</td>
                <td class="auto-style3">MAR</td>
                <td class="auto-style3">ABR</td>
                <td class="auto-style3">MAY</td>
                <td class="auto-style3">JUN</td>
                <td class="auto-style3">JUL</td>
                <td class="auto-style3">AGO</td>
                <td class="auto-style3">SET</td>
                <td class="auto-style3">OCT</td>
                <td class="auto-style3">NOV</td>
                <td class="auto-style3">DIC</td>
                <td class="auto-style3">TOTAL</td>
            </tr>
            <tr>
                <td class="auto-style1">% VENTA 2017</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style2">
                    <asp:Label ID="LabelTotallb" runat="server"></asp:Label>
                    %</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblzona1" runat="server" Visible="False"></asp:Label>
                    VENTA <asp:Label ID="lblano" runat="server" Text="2017"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEjeTT" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblzonaproyectado" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblanoNext" runat="server" Visible="False"></asp:Label>
                    PRESUPUESTO</td>
                <td class="text-right">
                    <asp:Label ID="lblpro1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblproTT" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblzonaActual" runat="server" Visible="False"></asp:Label>
                    VENTA <asp:Label ID="lblanoactual" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct1" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct2" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct3" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct4" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct5" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct6" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct7" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct8" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct9" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct10" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct11" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblAct12" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblActTT" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">CUMPLIMIENTO</td>
                <td class="text-right">
                    <asp:Label ID="lblCump1" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump2" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump3" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump4" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump5" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump6" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump7" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump8" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump9" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump10" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump11" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCump12" runat="server"></asp:Label>
                    %</td>
                <td class="text-right">
                    <asp:Label ID="lblCumpTT" runat="server"></asp:Label>
                    %</td>
            </tr>
            <tr>
                <td class="auto-style7">BRECHA</td>
                <td class="text-right">
                    <asp:Label ID="lblBre1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreTT" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">BRECHA ACUM.</td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcumTT" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
            </div>
             </asp:Panel>
    </div>
</asp:Panel>
    <asp:Panel ID="PaneloTROS" runat="server" Visible="False">

    <div class="form-group row">
    
       
                        <div class="panel-heading">
                          
                            <ul class="nav nav-tabs">
                                
                                <li class="active"><a href="#profile" data-toggle="tab">Anual</a>
                                </li>
                                <li><a href="#home" data-toggle="tab">Zonal</a>
                                </li>
                              
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                 <div class="tab-pane fade in active" id="profile">
                                    
                                   <div class="form-group row">

                        <asp:Label ID="lblidVendedorSelecionado" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
            <div class="table-responsive">
                        <asp:GridView ID="gvRemTotalAsesor" runat="server" AutoGenerateColumns="False" Class="table table-condensed table-bordered table-hover" DataSourceID="SqlDataSourcettxVendedor" DataKeyNames="ANO" OnSelectedIndexChanged="gvRemTotalAsesor_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="ANO" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("ANO") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
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
                     
                     <asp:SqlDataSource ID="SqlDataSourcettxVendedor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_totalesVendedor" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblidVendedorSelecionado" Name="idvendedor" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                        <asp:Panel ID="PanelZONAL" runat="server">
                    <div class="table-responsive">
                         <asp:Label ID="lblanofiltro" runat="server" Visible="False"></asp:Label>
                       <asp:GridView ID="gvZonal" runat="server" Class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceZONAL" OnRowDataBound="gvZonal_RowDataBound" ShowFooter="True" DataKeyNames="ZONA" OnSelectedIndexChanged="gvZonal_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="ZONA" ShowHeader="False" Visible="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("ZONA") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                            <HeaderStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TTGENERAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TTGENERAL" DataFormatString="{0:0,0.00}" >
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSourceZONAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="VENTAS_ANOXZONA" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="gvRemTotalAsesor" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
                </asp:Panel>

                       
                        
                        <br />

                       
            </div> 
                                    
                                    
                                </div>
                                <div class="tab-pane fade" id="home">
                                                                      
                                    <asp:Panel ID="pAgrupado" runat="server">
                            <div class="table-responsive">
                            <asp:GridView ID="GridView1" Class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceZonall" DataKeyNames="ANO,ZONA" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="ZONA" Visible="False" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" ForeColor="#006600" Text='<%# Bind("Column1") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                                    <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" Visible="False" />
                                    <asp:BoundField DataField="Column1" HeaderText="ZONA" ReadOnly="True" SortExpression="Column1"  />
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
                                <HeaderStyle BackColor="WhiteSmoke" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceZonall" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_totalesVendedorZONAL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>

                                </asp:Panel>
                                    
                                    
                                    
                                    
                                       </div>
                               
                                
                            </div>
                        </div>
                    

        </div>

        </asp:Panel>

        


    

</asp:Content>
