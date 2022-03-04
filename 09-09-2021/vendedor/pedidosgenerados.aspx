<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2/paginapresentable.Master" AutoEventWireup="true" CodeBehind="pedidosgenerados.aspx.cs" Inherits="biotech.vendedor.pedidosgenerados" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Ordenes realizadas</p>
    <p>
        Indicar mes:
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
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
        <asp:Label ID="lblcodvendedor" runat="server" Visible="False"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <div>

            <div>
                <div id="derecha">
                    TOTAL VENTAS<br />
                    <asp:Label ID="lblsumatoria" runat="server" Font-Size="XX-Large"></asp:Label>
                    <br />
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </div>
            </div>
            <div>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        <asp:BoundField DataField="TTACUM" HeaderText="TTACUM" ReadOnly="True" SortExpression="TTACUM" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ordenVentaMesAnoACUMULADOVENDEDOR" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="lblcodvendedor" Name="codvendedor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idcotizacion" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="idcotizacion" HeaderText="idcotizacion" ReadOnly="True" SortExpression="idcotizacion" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="idvendedor" HeaderText="idvendedor" SortExpression="idvendedor" />
                <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" />
                <asp:BoundField DataField="razonsocial" HeaderText="razonsocial" SortExpression="razonsocial" />
                <asp:BoundField DataField="autorizacion" HeaderText="autorizacion" SortExpression="autorizacion" />
                <asp:BoundField DataField="Condiconpago" HeaderText="Condiconpago" SortExpression="Condiconpago" />
                <asp:BoundField DataField="FechaEntrega" HeaderText="FechaEntrega" SortExpression="FechaEntrega" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Lugarentrega" HeaderText="Lugarentrega" SortExpression="Lugarentrega" />
                <asp:BoundField DataField="atendido" HeaderText="atendido" SortExpression="atendido" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_odenVentaMesAnoxCLIENTE" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="lblcodvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </asp:Panel>
    <p>
    </p>

</asp:Content>
