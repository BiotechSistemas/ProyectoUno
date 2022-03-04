<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="ComprasCotizacion.aspx.cs" Inherits="biotech.VentasRTC.ComprasCotizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
   COMPRAS - REGISTRO DE COTIZACIÓN
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="60px" />
    <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="NUEVA COTIZACIÓN" Height="40px" Width="300px" /><br /><br />

    <span class="title_section_offer">Cotizaciones registradas</span><asp:Label ID="lblcodRTC" runat="server" Visible="False"></asp:Label>

        &nbsp;&nbsp;<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;ZONA:
    <asp:Label ID="lblzona" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;

            
            <div class="title_section_offer_fake">
        </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCotizacion" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="idCotizacion" HeaderText="idCotizacion" ReadOnly="True" SortExpression="idCotizacion" Visible="False" />
            <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION" />
            <asp:BoundField DataField="SOLICITA" HeaderText="SOLICITA" SortExpression="SOLICITA" />
            <asp:BoundField DataField="AUTORIZA" HeaderText="AUTORIZA" SortExpression="AUTORIZA" />
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
            <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
            <asp:BoundField DataField="FCOTIZACION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.COTIZA" SortExpression="FCOTIZACION" />
            <asp:BoundField DataField="FEXPIRA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EXPIRA" SortExpression="FEXPIRA" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
             <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/apro{0}.png" HeaderText="ESTADO">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="22px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
        </Columns>
        <EmptyDataTemplate>
            No registra cotización...
        </EmptyDataTemplate>
        <HeaderStyle BackColor="WhiteSmoke" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasCot_ListarzonaVendedor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblzona" Name="zona" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
      Aprobada:<asp:Image ID="Image2" runat="server" Height="15px" ImageUrl="~/images/apro1.png" Width="15px" />
&nbsp;, Observada:
            <asp:Image ID="Image3" runat="server" Height="15px" ImageUrl="~/images/apro55.png" Width="15px" />
            , Rechazada:
            <asp:Image ID="Image4" runat="server" Height="15px" ImageUrl="~/images/apro2.png" Width="15px" />
            , Compra realizada:
            <asp:Image ID="Image5" runat="server" Height="15px" ImageUrl="~/images/apro3.png" Width="15px" />
    <br />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
