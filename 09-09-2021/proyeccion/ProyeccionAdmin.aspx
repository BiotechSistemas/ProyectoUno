<%@ Page Title="" Language="C#" MasterPageFile="~/proyeccion/PMproyeccion.Master" AutoEventWireup="true" CodeBehind="ProyeccionAdmin.aspx.cs" Inherits="biotech.proyeccion.ProyeccionAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: x-large;
            text-decoration: underline;
            font-style: italic;
            font-weight: bold;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="54px" ImageUrl="~/images/logobiotech.jpg" Width="112px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">INFORME DETALLADO DE PROYECCIÓN</span></p>
    <p style="text-align: right">
        <span class="auto-style3">Bienvenido 
        <asp:Label ID="lblusuario" runat="server"></asp:Label>
        ,</span>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: x-large">Salir</asp:LinkButton>
    </p>
    <hr />
    <asp:Panel ID="Panel1" runat="server">
        INDICAR MES:&nbsp;
        <asp:DropDownList ID="DropDownListMES" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="mes" DataValueField="idmes" Height="40px" Width="30%" OnSelectedIndexChanged="DropDownListMES_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server">
            REGISTRO DE PRODUCTOS PROYECTADOS<asp:GridView ID="GridViewdetalle" DataKeyNames ="CODPRO" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/seleccionar_318-110360.jpg" >
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" SortExpression="CODPRO" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                    <asp:BoundField DataField="UNID" HeaderText="UNID" ReadOnly="True" SortExpression="UNID" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE TT" HeaderText="IMPORTE TT" ReadOnly="True" SortExpression="IMPORTE TT" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" />
                <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecciondelMes" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownListMES" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="Panel5" runat="server">
                Detalle del producto seleccionado</asp:Panel>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" />
                    <asp:BoundField DataField="idvendedor" HeaderText="VENDEDOR" SortExpression="idvendedor" />
                    <asp:BoundField DataField="razonsocial" HeaderText="CLIENTE" SortExpression="razonsocial" >
                    </asp:BoundField>
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                    </asp:BoundField>
                    <asp:BoundField DataField="cantAtendida" HeaderText="ATENDIDOS" SortExpression="cantAtendida" Visible="False" />
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyeccionventasxproductos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridViewdetalle" Name="codpro" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownListMES" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            PROYECCIÓN ACUMULADA SEGÚN VENDEDOR:<br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <asp:GridView ID="GridView2" runat="server" DataKeyNames ="idvendedor" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="350px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Ver pedidos" />
                    <asp:BoundField DataField="idvendedor" HeaderText="COD VENDEDOR" SortExpression="idvendedor" />
                    <asp:BoundField DataField="IMPORTE TT" HeaderText="IMPORTE TT" ReadOnly="True" SortExpression="IMPORTE TT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_proyecciondelMesVENDEDORES" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownListMES" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        PEDIDOS REGISTRADOS DEL VENDEDOR:&nbsp;
        <asp:Label ID="lblcodvendedor" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" />
                <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" />
                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" />
                <asp:BoundField DataField="LITROS" HeaderText="LITROS" ReadOnly="True" SortExpression="LITROS" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyeccionDetalladaAdmin" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="idvendedor" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMES" Name="idmes" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
    </p>
</asp:Content>
