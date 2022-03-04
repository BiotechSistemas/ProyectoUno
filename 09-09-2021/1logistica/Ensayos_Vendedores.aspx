<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="Ensayos_Vendedores.aspx.cs" Inherits="biotech._1logistica.Ensayos_Vendedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-small;
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <h2>Ensayos por atender:</h2>
        <br />
        <p>
            <asp:GridView ID="GridView1" DataKeyNames="COD"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="font-size: x-small" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                <Columns>
                    <asp:TemplateField HeaderText="COD. ENSAYO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ENSAYO") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="60px" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                     <asp:BoundField DataField="FREGISTRO" HeaderText="F.REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO" >
                    <HeaderStyle Width="270px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fecharequerida" HeaderText="F.REQUERIDA" SortExpression="fecharequerida" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <HeaderStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RazonSocial" HeaderText="RAZON SOCIAL" SortExpression="RazonSocial" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />

                    </asp:BoundField>
                    <asp:BoundField DataField="PLLEGADA" HeaderText="PUNTO LLEDADA" SortExpression="PLLEGADA" >
                    <HeaderStyle Width="250px" />
                    </asp:BoundField>
                   
                   
                    <asp:CheckBoxField DataField="GERENTE" HeaderText="G." SortExpression="GERENTE" >
                    </asp:CheckBoxField>
                    <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVend" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="APROBAR ATENCIÓN" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="OBSERVAR" />
            <asp:Label ID="lblidensayo" runat="server" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style3"></asp:Label>
        </p>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <h2>Ensayos atendidos:<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" PageSize="5" style="font-size: x-small" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="ENSAYO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ENSAYO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO" />
                <asp:BoundField DataField="fecharequerida" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REQUERIDA" SortExpression="fecharequerida">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                 <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                <asp:BoundField DataField="RazonSocial" HeaderText="RAZON SOCIAL" SortExpression="RazonSocial" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" />
                <asp:BoundField DataField="FTERMINO" HeaderText="F. FINALIZACION" SortExpression="FTERMINO" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:CheckBoxField DataField="GERENTE" HeaderText="GERENTE" SortExpression="GERENTE">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVend1" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h2>
        <br />
    </asp:Panel>
    <asp:Panel ID="PanelOBSERVADO" runat="server">
        <h3>Detalle de observacion ensayo:
            <asp:Label ID="lblensayoob" runat="server"></asp:Label>
        </h3>
        <p>Detalle de no atención:
            </p>
        <p>
            <asp:TextBox ID="txtobservacion" runat="server" required TextMode="MultiLine" Width="100%" Height="100px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btRegObservacion" runat="server" OnClick="btRegObservacion_Click" Text="Registrar Observación" />
        </p>
        <br />
    </asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>
