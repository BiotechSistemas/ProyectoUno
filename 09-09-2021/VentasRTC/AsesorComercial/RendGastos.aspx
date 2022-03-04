<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/AsesorComercial/principal.Master" AutoEventWireup="true" CodeBehind="RendGastos.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.RendGastos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       table {
	width: 100%;
	height: 1px;
    CELLPADDING: 0;
     CELLSPACING:10;
}
       table#space {
  border-collapse: separate;
  border-spacing: 10px 5px;
}
       /*table td
{ padding: 0px;
   margin: 0px;
}*/
        .auto-style1 {
            text-align: left;
        }
       
      
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContenido" runat="server">
    <asp:Panel ID="Panel1"  class="grupo__descripcion" runat="server">
        <h2  class="grupo__titulo">Rendición de gastos:
            <asp:Label ID="lblperidodescrip" runat="server"></asp:Label>
            /<asp:Label ID="lblcodVendedor" runat="server"></asp:Label>
            ID<asp:Label ID="lblidreg" runat="server" ViewStateMode="Disabled"></asp:Label>
            <asp:Label ID="lblmaxid" runat="server"></asp:Label>
            <asp:Label ID="lblidregdetalle" runat="server"></asp:Label>
        </h2>
       <div>
           <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" OnRowDataBound="GridView6_RowDataBound" ShowFooter="True" Width="500px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
               <Columns>
                   <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                   <asp:BoundField DataField="DESCAT" HeaderText="Para cubrir gastos de:" ReadOnly="True" SortExpression="DESCAT">
                   <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                   </asp:BoundField>
                   <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                   <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                   </asp:BoundField>
               </Columns>
               <FooterStyle ForeColor="Black" />
               <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
               <RowStyle BackColor="WhiteSmoke" />
               <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
               <SelectParameters>
                   <asp:ControlParameter ControlID="lblidreg" Name="idrendicion" PropertyName="Text" Type="Int32" />
               </SelectParameters>
           </asp:SqlDataSource>
           <br />
           </div>
           <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style7"></asp:Label>
         
        <br />



        <fieldset style="min-height:100px;">
 <legend align= "left" ><b>A.- Peaje</b> </legend>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Ingresar: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtfecha1" runat="server" placeholder="Fecha Reg." TextMode="Date" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtruc1" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtdescripcion1" runat="server" class="span2" placeholder="Origen - Destino" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmotivo1" runat="server" class="span2" placeholder="Motivo" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtcomprobante1" runat="server" class="span2" placeholder="Nro. comprobante" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtimporte1" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
                    </td>
                </tr>
            </table>
            <div class="auto-style1">
                Detalle de gastos de peaje:
                <asp:Label ID="lblmensaje1" runat="server" CssClass="auto-style6"></asp:Label>
                <br />
                <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound1">
                    <Columns>
                        <asp:CommandField SelectText="X" ShowSelectButton="True">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                        <ItemStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                        <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                        <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                        <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB." SortExpression="COMPROBANTE" >
                        <HeaderStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" >
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" HeaderText="EST.">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                        </asp:ImageField>
                    </Columns>
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </div>

        </fieldset>
        <br />
        <fieldset style="min-height:100px;">
            <legend align= "left"><b class="auto-style8">B.- Combustible</b> </legend>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Ingresar: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtfecha2" runat="server" placeholder="Fecha Reg." TextMode="Date" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtdescripcion2" runat="server" class="span2" placeholder="Origen - Destino" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtkilometrosfact2" runat="server" placeholder="Kms Fact." step="0.001" type="number" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtgalonesfact2" runat="server" placeholder="Galones Fact" step="0.01" type="number" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlbtppago" runat="server" Height="40px" Width="100px">
                            <asp:ListItem Selected="True" Value="CRED">Credito</asp:ListItem>
                            <asp:ListItem Value="CONT">Contado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtcomprobante2" runat="server" class="span2" placeholder="Nro. comprobante" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtimporte2" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button6" runat="server" OnClick="Button2_Click" Text="Registrar" Width="100px" />
                    </td>
                </tr>
            </table>
            <div class="auto-style1">
            Detalle de gastos de Combustible:<asp:Label ID="lblmensaje2" runat="server" CssClass="auto-style6"></asp:Label>
                </div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True" SelectText="X">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                    <ItemStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" HeaderText="Kms FACT" SortExpression="KMFACT" />
                    <asp:BoundField DataField="GALONESFACT" HeaderText="GALONES FACT" SortExpression="GALONESFACT" />
                    <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB." SortExpression="COMPROBANTE" >
                    <HeaderStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" HeaderText="EST.">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>&nbsp;<fieldset style="min-height:100px;">
            <legend align= "left"><b>C. Gastos de alojamiento:</b> </legend>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Ingresar: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtfecha3" runat="server" placeholder="Fecha Reg." TextMode="Date" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtdescripcion3" runat="server" class="span4" placeholder="Descripción" Width="400px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtcomprobante3" runat="server" class="span2" placeholder="Nro. comprobante" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtimporte3" runat="server" class="span1" placeholder="Importe" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Registrar" Width="100px" />
                    </td>
                    <td class="auto-style15">
                        &nbsp;</td>
                </tr>
            </table>
            <div class="auto-style1">
            Detalle de gastos de gastos de alojamiento:
                </div>
            <asp:Label ID="lblmensaje3" runat="server" CssClass="auto-style6"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource3" OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" ShowFooter="True" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True" SelectText="X">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                    <ItemStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                    <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                    <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB." SortExpression="COMPROBANTE" >
                    <HeaderStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" HeaderText="EST.">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle Font-Bold="False" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
        <fieldset style="min-height:100px;">
            <legend align= "left"><b>D. Alimentación:</b> </legend>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Ingresar: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtfecha4" runat="server" placeholder="Fecha Reg." TextMode="Date" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtdescripcion4" runat="server" class="span2" placeholder="Origen - Destino" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmotivo4" runat="server" class="span2" placeholder="Motivo" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtcomprobante4" runat="server" class="span2" placeholder="Nro. comprobante" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtimporte4" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Registrar" Width="100px" />
                    </td>
                </tr>
            </table>
            <div class="auto-style1">
            Detalle de gastos de alimentación:
            <asp:Label ID="lblmensaje4" runat="server" CssClass="auto-style6"></asp:Label>
                </div>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource4" OnRowDataBound="GridView4_RowDataBound" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" ShowFooter="True" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True" SelectText="X">
                    <ControlStyle Height="20px" Width="20px" />
                    <ItemStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                    <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                    <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB." SortExpression="COMPROBANTE" >
                    <HeaderStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" HeaderText="EST.">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle Font-Bold="False" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
        &nbsp;<fieldset style="min-height:100px;">
            <legend align= "left"><b>E. Otros gastos:</b> </legend>
            <table >
                <tr>
                    <td class="auto-style4">Ingresar: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtfecha5" runat="server" placeholder="Fecha Reg." TextMode="Date" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtdescripcion5" runat="server" class="span2" placeholder="Origen - Destino" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmotivo5" runat="server" class="span2" placeholder="Motivo" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtcomprobante5" runat="server" class="span2" placeholder="Nro. comprobante" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtimporte5" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Registrar" Width="100px" />
                    </td>
                </tr>
            </table>
            <div class="auto-style1">
            Detalle de otros gastos:
            <asp:Label ID="lblmensaje5" runat="server" CssClass="auto-style6"></asp:Label>
            </div>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource5" OnRowDataBound="GridView5_RowDataBound" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" ShowFooter="True" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True" SelectText="X">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle BackColor="#990000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                    <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                    <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB." SortExpression="COMPROBANTE" >
                    <HeaderStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    <HeaderStyle Width="50px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" HeaderText="EST.">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="WhiteSmoke" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset><br />
        <br />
        &nbsp;</asp:Panel>
</asp:Content>
