<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="EnsayoVendedor.aspx.cs" Inherits="biotech.VentasRTC.EnsayoVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    SOLICITUD DE ENSAYOS&nbsp;&nbsp;&nbsp;&nbsp;

            &nbsp; 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="NUEVA SOLICITUD" Height="40px" Width="300px" /><br /><br />

    <span class="title_section_offer">Ensayos registrados</span><asp:Label ID="lblcodRTC" runat="server" Visible="False"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            <div class="title_section_offer_fake">
        </div>
            <asp:GridView ID="GridViewDetalleensayos" DataKeyNames="COD"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="ENSAYO" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("ENSAYO") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="60px" />
                        <ItemStyle BackColor="#E6E6E6" Font-Bold="True" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="ENSAYO" Visible="False" />
                    <asp:BoundField DataField="OBJETIVO" HeaderText="OBJETIVO" SortExpression="OBJETIVO" />
                    <asp:BoundField DataField="fecharequerida" HeaderText="F. REQUERIDA" SortExpression="fecharequerida" DataFormatString="{0:dd/MM/yyyy}" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                    <asp:BoundField DataField="RazonSocial" HeaderText="RazonSocial" SortExpression="RazonSocial" />
                    <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                    <asp:BoundField DataField="cantidad" HeaderText="CANT" SortExpression="cantidad" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="GERENTE" HeaderText="GERENTE" SortExpression="GERENTE" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CheckBoxField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#83BA3F" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            


    <div class="row">
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="EnsayoVendEstado" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblcodRTC" DefaultValue="" Name="idvendedor" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <hidden id="save" data-url="/board_admin/offers/edit/validityDate/">
        Usuario,

    <asp:LinkButton ID="LinkButtonusuario" runat="server" OnClick="LinkButtonusuario_Click"></asp:LinkButton>
&nbsp;</hidden>
</asp:Content>
