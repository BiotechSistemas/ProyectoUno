<%@ Page Title="" Language="C#" MasterPageFile="~/styloprofesional/Site1.Master" AutoEventWireup="true" CodeBehind="pedidosrealizados.aspx.cs" Inherits="biotech.vendedor.pedidosrealizados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
     #contenedor {
            padding:10px;
            overflow:hidden;

        }
        #medio {
            float:initial;
            padding:10px;
            margin:10px;
        }
        #izquierda {
             float:left;
            padding:10px;
            margin:10px;
        }
        #derecha {
            float:left;
            padding:10px;
            margin:10px;
        }
    </style>

    <h2>
        VENTAS REALIZADAS</h2>

 


<div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">VENTAS REALIZADAS</div>
					<div class="chart">
                       
                        <asp:Panel ID="Panel1" runat="server">
        INDICAR MES:
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="43px" Width="140px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="1">Enero</asp:ListItem>
            <asp:ListItem Value="2">Febrero</asp:ListItem>
            <asp:ListItem Value="3">Marzo</asp:ListItem>
            <asp:ListItem Value="4">Abril</asp:ListItem>
            <asp:ListItem Value="5">Mayo</asp:ListItem>
            <asp:ListItem Value="6">Junio</asp:ListItem>
            <asp:ListItem Value="7">Julio</asp:ListItem>
            <asp:ListItem Value="8">Agosto</asp:ListItem>
            <asp:ListItem Value="9">Setiembre</asp:ListItem>
            <asp:ListItem Value="10">Octubre</asp:ListItem>
            <asp:ListItem Value="11">Noviembre</asp:ListItem>
            <asp:ListItem Value="12">Diciembre</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        

          <div id="contenedor">
             <div id="derecha">





                 TOTAL VENTAS<br />
                 <asp:Label ID="lblsumatoria" runat="server" Font-Size="XX-Large"></asp:Label>
                 <br />
                 <asp:Label ID="lblmensaje" runat="server"></asp:Label>





             </div>




              <div id="izquierda">




        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="296px" OnRowDataBound="GridView2_RowDataBound">
            <Columns>
                <asp:BoundField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                <asp:BoundField DataField="TTACUM" HeaderText="TT. ACUMULADO" ReadOnly="True" SortExpression="TTACUM" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ordenVentaMesAnoACUMULADO" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

                 </div>
              </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idcotizacion" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="idcotizacion" HeaderText="idcotizacion" ReadOnly="True" SortExpression="idcotizacion" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="idvendedor" HeaderText="idvendedor" SortExpression="idvendedor" />
                <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" />
                <asp:BoundField DataField="razonsocial" HeaderText="razonsocial" SortExpression="razonsocial" />
                <asp:BoundField DataField="autorizacion" HeaderText="autorizacion" SortExpression="autorizacion" />
                <asp:BoundField DataField="Condiconpago" HeaderText="Condiconpago" SortExpression="Condiconpago" />
                <asp:BoundField DataField="FechaEntrega" HeaderText="FechaEntrega" SortExpression="FechaEntrega" />
                <asp:BoundField DataField="Lugarentrega" HeaderText="Lugarentrega" SortExpression="Lugarentrega" />
                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_odenVentaMesAno" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
        <br />
        <br />
    </asp:Panel>



                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
				</div>
</div>
    </div>

    

</asp:Content>
