<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="VentasFact.aspx.cs" Inherits="biotech.VentasRTC.VentasFact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1000px;
        }
        .auto-style2 {
            height: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    FACTURACIÓN
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ol class="breadcrumb">
        <asp:LinkButton ID="lbPrincipal" runat="server" OnClick="lbPrincipal_Click" PostBackUrl="~/VentasRTC/VentasZonal.aspx">Principal (Zonal) </asp:LinkButton>
        <asp:LinkButton ID="lbPresupuesto" runat="server" OnClick="lbPresupuesto_Click">/  Presupuestal</asp:LinkButton>
        <asp:LinkButton ID="lbFacturacion" runat="server" PostBackUrl="~/VentasRTC/VentasFact.aspx" >/  Facturación</asp:LinkButton>

        <%--<asp:LinkButton ID="lbVentPersonales" runat="server" OnClick="lbVentPersonales_Click">/  personal</asp:LinkButton>--%>
        
        <%--<asp:LinkButton ID="lbPedidos" runat="server" OnClick="lbPedidos_Click" >/  Pedidos</asp:LinkButton>
        <asp:LinkButton ID="lbViaticos" runat="server" OnClick="lbViaticos_Click" >/  Viáticos</asp:LinkButton>--%>
</ol>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="lblop" runat="server">20</asp:Label>
        <asp:Label ID="lblcliente" runat="server"></asp:Label>
        <asp:Label ID="lblf1" runat="server"></asp:Label>
        <asp:Label ID="lblf2" runat="server"></asp:Label>
        <asp:Label ID="lblidusuario" runat="server"></asp:Label>
        <asp:Label ID="lblzona" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblvalor" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
    <table class="auto-style1">
        <tr >
            <td WIDTH=50 valign=center class="auto-style2">Fecha:</td>
            <td WIDTH=330 valign=center class="auto-style2">
                <asp:TextBox ID="txtf1" runat="server" TextMode="Date" Width="140px" Height="20px"></asp:TextBox>
                - <asp:TextBox ID="txtf2" runat="server" TextMode="Date" Width="140px" Height="20px"></asp:TextBox>
            </td>
            <td WIDTH=50 valign=center class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="FECHA" Height="30px" OnClick="Button1_Click" Width="100%" />
            </td>
            <td WIDTH=200 class="auto-style2">
                <asp:TextBox ID="txtcliente" runat="server" placeholder="cliente ..." ToolTip="Ingresar cliente" Width="90%" Height="20px"></asp:TextBox>
            </td>
            <td WIDTH=50 class="auto-style2">
                <asp:Button ID="Button2" runat="server" Text="CLIENTE" Height="30px" Width="100%" OnClick="Button2_Click" />
            </td>
            <td WIDTH=200 class="auto-style2" >
                <asp:TextBox ID="txtproducto" runat="server"  placeholder="producto ..."  ToolTip="Ingresar producto" Width="90%" Height="20px"></asp:TextBox>
            </td>
            <td WIDTH=50 class="auto-style2">
                <asp:Button ID="Button3" runat="server" Text="PRODUCTO" Height="30px" Width="100%" OnClick="Button3_Click" />
            </td>
            <td class="auto-style2"></td>
        </tr>
    </table>
    <asp:GridView ID="gvFacturacion" runat="server" AutoGenerateColumns="False" DataKeyNames="IDFACT" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="38">
        <Columns>
            
            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO" />
             <asp:BoundField DataField="IDFACT" HeaderText="IDFACT" ReadOnly="True" SortExpression="IDFACT" Visible="False" />
            <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
            <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
            <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False" />
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
            <asp:BoundField DataField="PRESENT" SortExpression="PRESENT" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="CANTIDAD" HeaderText="CANT" SortExpression="CANTIDAD" >
             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
             </asp:BoundField>
            <asp:BoundField DataField="PVENTA" HeaderText="P.VENTA" SortExpression="PVENTA" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="SUBTT" HeaderText="SUB.TT" ReadOnly="True" SortExpression="SUBTT" DataFormatString="{0:0,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Zona" HeaderText="ZONA" SortExpression="Zona" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ventas_Fact" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="lblvalor" Name="codvendedor" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblf1" DbType="Date" Name="f1" PropertyName="Text" />
            <asp:ControlParameter ControlID="lblf2" DbType="Date" Name="f2" PropertyName="Text" />
            <asp:ControlParameter ControlID="lblcliente" Name="cliente" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
