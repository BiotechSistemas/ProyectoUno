<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RendGastosRegistrados.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.RendGastosRegistrados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

  
        .auto-style1 {
            width: 100%;

background: linear-gradient(white, #EFEFEF); /* Standard syntax */
        }
        .auto-style3 {
            width: 100px;
        }
        .auto-style5 {
            color: #006600;
        }
        .auto-style6 {
            font-weight: normal;
            font-size: medium;
            text-align: right;
        }
    
  
.title_section_offer {
    /*border-bottom: solid 5px #83ba3f;*/
    font-weight: bold;
}

   /*border-bottom: solid 3px #83ba3f !important;*/




    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <table class="auto-style1" style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#cc0000', startColorstr='#FFFFFF', gradientType='0'); background-color: #F2F2F2;">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logoicono.png" Width="64px" Height="54px" />
                    </td>
                    <td>
                        <h2><span class="auto-style5">RENDICIÓN DE GASTOS
                        </span>
                        <asp:Label ID="lblperiodo" runat="server"></asp:Label>
                        <asp:Label ID="lblperidodescrip" runat="server" CssClass="auto-style5"></asp:Label>

     
                        </h2>

     
     <asp:Label ID="lblcodVendedor" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="color: #006600">RED. REGISTRADAS</asp:LinkButton>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="color: #006600">PRINCIPAL</asp:LinkButton>
                    </td>
                </tr>
                </table>
            <div id="cuerpo">

        GASTOS:<label class="radio inline"><asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="idrendicion" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="5" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
         </asp:RadioButtonList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgRemReg" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblcodVendedor" Name="idusuario" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>




        <asp:Panel ID="Panel1" runat="server">
&nbsp;&nbsp;<div class="row">
    <div class="offset2">

        <center>
         <div class="control-group">



             <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Width="500px" ShowFooter="True" OnRowDataBound="GridView6_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                     <asp:BoundField DataField="DESCAT" HeaderText="RESUMEN DE GASTOS" ReadOnly="True" SortExpression="DESCAT" >
                     <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>



             <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idrendicion" PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>



             <div>
                 Base Viatico:
                 <asp:Label ID="lblbaseviatico" runat="server"></asp:Label>
                 &nbsp;,&nbsp; Gasto Actual:
                 <asp:Label ID="lblgastototal" runat="server"></asp:Label>
                 &nbsp;,&nbsp;&nbsp; Diferencia:
                 <asp:Label ID="lblviaticodisponible" runat="server"></asp:Label>
                 <asp:Label ID="lblcodvededor2" runat="server" Visible="False"></asp:Label>
             </div>



            </div>
</center>


    </div></div>

           


           <span class="title_section_offer"> 1. GASTOS MOVILIDAD: (peaje, estacionamientos) </span>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="1000px" DataKeyNames="CODDET" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" GridLines="Horizontal" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="CODDET" HeaderText="CODDET" SortExpression="CODDET" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

             <br />

<span class="title_section_offer">2. GASTOS COMBUSTIBLE:</span>

     
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource3" ShowFooter="True" Width="1000px" OnRowDataBound="GridView2_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="CODDET" ReadOnly="True" SortExpression="CODDET" Visible="False" />
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                        <HeaderStyle Width="70px" />
                        </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="Kms FACT." SortExpression="KMFACT" />
                     <asp:BoundField DataField="GALFACT" HeaderText="Galones FACT." SortExpression="GALFACT" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" />
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>



</div>
          

<span class="title_section_offer">3. GASTOS ALIMENTACIÓN:</span>

             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource4" ShowFooter="True" Width="1000px" OnRowDataBound="GridView3_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="CODDET" ReadOnly="True" SortExpression="CODDET" Visible="False" />
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="NCOMPROBANTE" SortExpression="NCOMPROBANTE" />
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>




          <span class="title_section_offer">4. GASTOS REPRESENTACIÓN:</span>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource5" ShowFooter="True" Width="1000px" OnRowDataBound="GridView4_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="CODDET" ReadOnly="True" SortExpression="CODDET" Visible="False" />
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <HeaderStyle Width="70px" />
                    </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" />
                     <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                    <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>



            <span class="title_section_offer">5. GASTOS PASAJES:</span>
          
             <asp:GridView ID="GridView77" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource77" OnRowDataBound="GridView77_RowDataBound" ShowFooter="True" Width="1000px" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="CODDET" ReadOnly="True" SortExpression="CODDET" Visible="False" />
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" />
                     <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                     <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="20px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource77" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="7" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>




    <span class="title_section_offer">6. GASTOS ALOJAMIENTO:</span>
   
             <asp:GridView ID="GridView66" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource66" OnRowDataBound="GridView66_RowDataBound" ShowFooter="True" Width="1000px" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="CODDET" ReadOnly="True" SortExpression="CODDET" Visible="False" />
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" />
                     <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                     <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="20px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>

       
    <span class="title_section_offer">7. OTROS GASTOS:</span>
  
             <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource6" OnRowDataBound="GridView5_RowDataBound" ShowFooter="True" Width="1000px" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="CODDET" ReadOnly="True" SortExpression="CODDET" Visible="False" />
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="NCOMPROBANTE" SortExpression="NCOMPROBANTE" />
                     <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                     <HeaderStyle Width="60px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" Visible="False" />
                     <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="20px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
                 </Columns>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>


    </asp:Panel>


    </div>
    </form>
</body>
</html>
