<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="NotaCredito.aspx.cs" Inherits="biotech.bio.ventas.FactLetra.NotaCredito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="glyphicon glyphicon-edit">&nbsp;</i>NOTA DE CRÉDITO<asp:LinkButton ID="LinkButtonUsuario" runat="server" Visible="False"></asp:LinkButton>
                        </h3>
</div>
         </div>
       
  <div class="row">

<ol class="breadcrumb">
      <li>
      <asp:LinkButton ID="lbPedido" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaPedido.aspx" >Nota de pedido</asp:LinkButton>
      </li>

      <li>
      <asp:LinkButton ID="lbGuias" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/GuiaRemision.aspx" >Guia Remisión</asp:LinkButton>
      </li>
      <li>
      <asp:LinkButton ID="lbFacturas" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/Factura_Det.aspx">Facturación</asp:LinkButton>
      </li>
                                <li>
      <asp:LinkButton ID="lbLetras" runat="server" ForeColor="#006600"  PostBackUrl="~/bio/ventas/FactLetra/Letras.aspx"  >Letras</asp:LinkButton>
      </li>

    <li>
      <asp:LinkButton ID="lbncredito" runat="server" ForeColor="#006600" PostBackUrl="~/bio/ventas/FactLetra/NotaCredito.aspx" >Nota de Crédito</asp:LinkButton>
      </li>
</ol>    

             </div>
    
    <div class="row">


        <table align="center" __designer:mapid="3a">
            <tr __designer:mapid="3b">
                <td class="auto-style13" __designer:mapid="3c">&nbsp;</td>
                <td class="auto-style5" __designer:mapid="3d">
                    <asp:TextBox ID="txtnotadecredito" runat="server" Height="30px" TabIndex="1" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style2" __designer:mapid="3f">DOCUMENTO
                    <br __designer:mapid="40" />
                    QUE MODIFICA:</td>
                <td style="text-align: left" __designer:mapid="41">
                    <asp:TextBox ID="txtserie" runat="server" CssClass="auto-style4" Height="30px" TabIndex="2" Width="50px"></asp:TextBox>
                    &nbsp;<strong __designer:mapid="43"><span class="auto-style2" __designer:mapid="44">-</span></strong>
                    <asp:TextBox ID="txtnumfac" runat="server" CssClass="auto-style4" Height="30px" TabIndex="3" Width="100px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" TabIndex="4" Text="BUSCAR" />
                </td>
                <td __designer:mapid="47">
                    <asp:Label ID="lblidNotacred" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblgrupo" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblserie" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr _="" __designer:mapid="48">
                <td class="auto-style13" __designer:mapid="49">&nbsp;</td>
                <td class="auto-style8" __designer:mapid="4a">Nº NOTA CREDITO</td>
                <td class="auto-style8" __designer:mapid="4b">&nbsp;</td>
                <td class="auto-style8" style="text-align: left" __designer:mapid="4c">&nbsp;</td>
                <td class="auto-style8" style="font-size: x-small" __designer:mapid="4d">&nbsp;</td>
            </tr>
            <tr __designer:mapid="4e">
                <td class="auto-style13" __designer:mapid="4f">&nbsp;</td>
                <td class="auto-style5" __designer:mapid="50">
                    <asp:TextBox ID="txtfechaa" runat="server" Height="30px" Width="140px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style6" __designer:mapid="52">
                    <asp:TextBox ID="txtfactura" runat="server" Height="30px" ReadOnly="True" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style7" __designer:mapid="54">
                    <asp:TextBox ID="txtcliente" runat="server" Height="30px" ReadOnly="True" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td __designer:mapid="56">
                    <asp:TextBox ID="txtmonto" runat="server" Height="30px" ReadOnly="True" Width="120px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="58">
                <td class="auto-style14" style="font-size: x-small" __designer:mapid="59">&nbsp;</td>
                <td class="auto-style8" style="font-size: x-small" __designer:mapid="5a">FECHA(dd/mm/aaaa)</td>
                <td class="auto-style8" __designer:mapid="5b">FACTURA</td>
                <td class="auto-style8" style="text-align: left" __designer:mapid="5c">CLIENTE</td>
                <td class="auto-style8" style="text-align: left; font-size: x-small; color: #808080;" __designer:mapid="5d">MONTO:
                    <asp:Label ID="lblmoneda" runat="server" style="color: #000000"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="5f">
                <td class="auto-style13" __designer:mapid="60">&nbsp;</td>
                <td __designer:mapid="61">Fecha Emisión:<br __designer:mapid="62" />
                    <asp:TextBox ID="txtfechamodfica" runat="server" TabIndex="5" TextMode="Date" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style6" __designer:mapid="64">Importe:<br __designer:mapid="65" />
                    <asp:TextBox ID="txtimportedevol" runat="server" Height="30px" step="0.01" TabIndex="6" type="number"></asp:TextBox>
                </td>
                <td colspan="2" __designer:mapid="67">Asunto:<br __designer:mapid="68" />
                    <asp:TextBox ID="txtmotivo" runat="server" TabIndex="7" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="6a">
                <td class="auto-style13" __designer:mapid="6b">&nbsp;</td>
                <td class="auto-style5" colspan="2" __designer:mapid="6c">
                    <asp:Button ID="btnuevo" runat="server" Height="40px" OnClick="Button3_Click" Text="NUEVO" Width="100%" />
                </td>
                <td colspan="2" __designer:mapid="6e">
                    <asp:Button ID="btregistrar" runat="server" Height="40px" OnClick="btregistrar_Click" TabIndex="8" Text="REGISTRAR" Width="100%" />
                </td>
            </tr>
            <tr __designer:mapid="70">
                <td class="auto-style13" __designer:mapid="71">&nbsp;</td>
                <td class="auto-style5" colspan="4" __designer:mapid="72">
                    <asp:Label ID="lblmensaje" runat="server" style="color: #990000"></asp:Label>
                    <asp:Label ID="lblidfactura" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblnotadecredito" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>


    </div>
      

    <div class="row">



        <asp:Panel ID="Panel2" runat="server">
            <p class="auto-style9">
                <strong>NOTAS DE CREDITOS REGISTRADAS:</strong></p>
            <center>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idnodcred" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="idnodcred" HeaderText="COD" ReadOnly="True" SortExpression="idnodcred" Visible="False" />
                        <asp:BoundField DataField="notacredito" HeaderText="NOTA CRED" ReadOnly="True" SortExpression="notacredito" />
                        <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="fecha" />
                        <asp:BoundField DataField="idfactura" HeaderText="idfactura" ReadOnly="True" SortExpression="idfactura" Visible="False" />
                        <asp:BoundField DataField="factura" HeaderText="FACTURA" ReadOnly="True" SortExpression="factura" />
                        <asp:BoundField DataField="motivo" HeaderText="MOTIVO" SortExpression="motivo" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [NotaCredito] WHERE [idnodcred] = @idnodcred" InsertCommand="INSERT INTO [NotaCredito] ([idnodcred], [notacredito], [fecha], [idfactura], [factura], [motivo]) VALUES (@idnodcred, @notacredito, @fecha, @idfactura, @factura, @motivo)" SelectCommand="SELECT [idnodcred],concat(grupo,'-',serie) as [notacredito], [fecha], [idfactura], [factura], [motivo] FROM [NotaCredito] ORDER BY [idnodcred] DESC" UpdateCommand="UPDATE [NotaCredito] SET [notacredito] = @notacredito, [fecha] = @fecha, [idfactura] = @idfactura, [factura] = @factura, [motivo] = @motivo WHERE [idnodcred] = @idnodcred">
                    <DeleteParameters>
                        <asp:Parameter Name="idnodcred" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="idnodcred" Type="Int32" />
                        <asp:Parameter Name="notacredito" Type="String" />
                        <asp:Parameter DbType="Date" Name="fecha" />
                        <asp:Parameter Name="idfactura" Type="Int32" />
                        <asp:Parameter Name="factura" Type="String" />
                        <asp:Parameter Name="motivo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="notacredito" Type="String" />
                        <asp:Parameter DbType="Date" Name="fecha" />
                        <asp:Parameter Name="idfactura" Type="Int32" />
                        <asp:Parameter Name="factura" Type="String" />
                        <asp:Parameter Name="motivo" Type="String" />
                        <asp:Parameter Name="idnodcred" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </center>
        </asp:Panel>



    </div>
</asp:Content>
