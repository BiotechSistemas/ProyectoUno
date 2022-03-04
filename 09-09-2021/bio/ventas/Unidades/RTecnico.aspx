<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RTecnico.aspx.cs" Inherits="biotech.bio.ventas.Unidades.RTecnico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
			<h2><i class="fa fa-paste"></i> RESUMEN GV. POR UNIDADES:
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>

     <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Principal</asp:LinkButton>
                        </li>
                         <li>
                        <asp:LinkButton ID="lbtnCargos" runat="server" PostBackUrl="~/bio/ventas/Unidades/CargosUnidades.aspx">Cargos/Recepción</asp:LinkButton>
                        </li>

                       <li>
                        <asp:LinkButton ID="lbtnrtecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/RTecnico.aspx" >R.Técnico</asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen GV. General</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtnResumenAsesor" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumUnidades.aspx">Resumen GV. por unidades</asp:LinkButton>
                        </li>
                        
                        
                    </ol>
            </div>

    <asp:Panel ID="Panel30" runat="server">
        <asp:Panel ID="Panel31" runat="server" Visible="False">
            <asp:Label ID="lblano3" runat="server"></asp:Label>
            <asp:Label ID="lbl3idUnidad" runat="server"></asp:Label>
        </asp:Panel>
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">AÑO:</td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="rbtn3Anual" runat="server" DataSourceID="SqlDataSource1" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="200px">
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl3Unidad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceunidades" DataTextField="PLACA" DataValueField="IdEquipo" Height="30px" OnSelectedIndexChanged="ddl3Unidad_SelectedIndexChanged" Width="100%">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btn3Generar" runat="server" OnClick="btn3Generar_Click" Text="POR UNIDAD" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ano_gv" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceunidades" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="gvRemmes" runat="server" class="table table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceunidad" OnSelectedIndexChanged="gvRemmes_SelectedIndexChanged" OnRowDataBound="gvRemmes_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" ReadOnly="True" />
                <asp:BoundField DataField="IDMES" HeaderText="IDMES" SortExpression="IDMES" ReadOnly="True" />
                <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" ReadOnly="True" />
                <asp:BoundField DataField="IMPTT2" HeaderText="IMPTT2" SortExpression="IMPTT2" ReadOnly="True" />
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceunidad" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_tec_mensual" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblano3" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lbl3idUnidad" Name="idunidad" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>

</asp:Content>
