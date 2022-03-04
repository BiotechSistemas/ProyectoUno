<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Ensayos.aspx.cs" Inherits="biotech.bio.ventas.comercial.Desarrollo.Ensayos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ENSAYOS REGISTRADOS</p>
    <div class="table-responsive">
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
                    <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />

                    <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO" >
                    <HeaderStyle Width="300px" />
                    </asp:BoundField>
 <asp:BoundField DataField="FREGISTRO" HeaderText="F.REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fecharequerida" HeaderText="F.REQUERIDA" SortExpression="fecharequerida" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <HeaderStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RazonSocial" HeaderText="RAZON SOCIAL" SortExpression="RazonSocial" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" Visible="False" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" Visible="False" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />

                    </asp:BoundField>
                    <asp:BoundField DataField="PLLEGADA" HeaderText="PUNTO LLEDADA" SortExpression="PLLEGADA" >
                    <HeaderStyle Width="250px" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="GERENTE" HeaderText="G." SortExpression="GERENTE" >
                    </asp:CheckBoxField>
                    <asp:BoundField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/a{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
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
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
