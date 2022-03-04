<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RegViaticosRegistrados.aspx.cs" Inherits="biotech.bio.ventas.rrhh.RegViaticosRegistrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 63px;
        }
        .auto-style2 {
            width: 63px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><i class="fa fa-stack-overflow"></i> REND. DE GASTOS <small>
        <asp:Label ID="lblperiodo" runat="server"></asp:Label>
                        <asp:Label ID="LBLANO" runat="server"></asp:Label>
         <asp:Label ID="lblcodvendedor" runat="server" Visible="False"></asp:Label></small>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                    </h1>
                </div>
                <!-- /.col-lg-12 -->
    </div>

    <asp:Panel ID="Panelnuevo" runat="server">


    <div class="row">
        <ol class="breadcrumb">
            <li ><asp:LinkButton ID="lbViatPrincipal" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticosRegistrados.aspx">viáticos registrados</asp:LinkButton></li>
  <li ><asp:LinkButton ID="lbViatRegistrar" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticos.aspx">Registrar viáticos</asp:LinkButton></li>
            <li ><asp:LinkButton ID="lbViatProveedores" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticosProveedores.aspx">Proveedores Viáticos</asp:LinkButton></li>
  
</ol>
        </div>
    
       
         <table class="nav-justified">
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style3">
                     <asp:SqlDataSource ID="SqlDataSourcePersonales" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_trabEspecificos" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblcodvendedor" Name="usu" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:RadioButtonList ID="rbPersonales" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcePersonales" DataTextField="PERSONAL" DataValueField="CODTRAB" OnSelectedIndexChanged="rbPersonales_SelectedIndexChanged1">
                     </asp:RadioButtonList>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">AÑO:</td>
                 <td class="auto-style3">:</td>
                 <td class="auto-style3">
                     <asp:RadioButtonList ID="rblano" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceano" DataTextField="idano" DataValueField="idano" OnSelectedIndexChanged="rblano_SelectedIndexChanged" RepeatDirection="Horizontal">
                     </asp:RadioButtonList>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">PERIODO</td>
                 <td>:</td>
                 <td>
                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CellPadding="20" CellSpacing="10" DataSourceID="SqlDataSource1" DataTextField="mes" DataValueField="idrendicion" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="12" RepeatDirection="Horizontal" Width="100%">
                     </asp:RadioButtonList>
                 </td>
             </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct idano from tb_rdRendicionGastos"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgRemReg" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblcodvededor2" Name="idusuario" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="rblano" Name="ano" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
          
</div><!-- / .control-group -->

        
        </asp:Panel>



    <div class="row">
        
          <asp:GridView ID="gvresumen" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Width="500px" ShowFooter="True" OnRowDataBound="gvresumen_RowDataBound" GridLines="Horizontal">
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
                 <FooterStyle BackColor="#F2F2F2" />
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>



             <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idrendicion" PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
        Base Viatico:
                 <asp:Label ID="lblbaseviatico" runat="server"></asp:Label>
                 &nbsp;,&nbsp; Gasto Actual:
                 <asp:Label ID="lblgastototal" runat="server"></asp:Label>
                 &nbsp;,&nbsp;&nbsp; Diferencia:
                 <asp:Label ID="lblviaticodisponible" runat="server"></asp:Label>
                 <asp:Label ID="lblcodvededor2" runat="server" Visible="False"></asp:Label>
    </div>

    <div class="row">
       <h4 class="text-success"> 1. Movilidad <small>(peaje,estacionamientos)</small></h4>

       <div class="offset2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" DataKeyNames="CODDET" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" GridLines="Horizontal" Font-Size="X-Small">
            <Columns>
                <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                <HeaderStyle Width="110px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
            <EmptyDataTemplate>
                No se registraron gastos...!
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       </div>
   </div>
    <div class="row">
      <h4 class="text-success">2. Combustible:</h4>

       <div class="offset2">
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource3" ShowFooter="True" Width="100%" OnRowDataBound="GridView2_RowDataBound" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                        <HeaderStyle Width="110px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
       </div>
   </div>

    <div class="row">
       <h4 class="text-success"> 3. Alimentación:</h4>

       <div class="offset2">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource4" ShowFooter="True" Width="100%" OnRowDataBound="GridView3_RowDataBound" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                      <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="110px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>


       </div>
   </div>

    <div class="row">
        <h4 class="text-success">4. Representación:</h4>

       <div class="offset2">
           <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource5" ShowFooter="True" Width="100%" OnRowDataBound="GridView4_RowDataBound" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <HeaderStyle Width="110px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>

       </div>
   </div>

    <div class="row">
        <h4 class="text-success">5. Pasajes:</h4>

       <div class="offset2">
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource77" OnRowDataBound="GridView7_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                      <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="110px" HorizontalAlign="Center" VerticalAlign="Middle" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource77" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="7" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
       </div>
   </div>

    <div class="row">
        <h4 class="text-success">6. Alojamientos:</h4>
        

       <div class="offset2">
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource66" OnRowDataBound="GridView6_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                      <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="110px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
       </div>
   </div>

    <div class="row">
      <h4 class="text-success">7. Otros gastos:</h4>

       <div class="offset2">
           <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource6" OnRowDataBound="GridView5_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                      <asp:BoundField DataField="CODDET" HeaderText="CODDET" SortExpression="CODDET" ReadOnly="True" >
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="110px" HorizontalAlign="Center" VerticalAlign="Middle" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
       </div>
   </div>

     <div class="row">
      <h4 class="text-success">8. Gastos por viajes:<small>(pasajes,alojamiento,alimentación,otros)</small></h4>

       <div class="offset2">
           <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource8" OnRowDataBound="GridView19_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal" Font-Size="X-Small">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="110px" HorizontalAlign="Center" VerticalAlign="Middle" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#CCCCCC" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="19" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
       </div>
    </div>

     <div class="row">
      <h4 class="text-success">9. Gastos unidad vehicular:<small>(Lavado, reparación, compra,...)</small></h4>
           <asp:GridView ID="gvGastosUnidadVehicular" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource9" Font-Size="X-Small" GridLines="Horizontal" Width="100%" OnRowDataBound="gvGastosUnidadVehicular_RowDataBound" ShowFooter="True">
               <Columns>
                   <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                   <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                   <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG">
                   <HeaderStyle Width="80px" />
                   </asp:BoundField>
                   <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                   <HeaderStyle Width="90px" />
                   </asp:BoundField>
                   <asp:BoundField DataField="MOTIVO" HeaderText="MOT" SortExpression="MOTIVO">
                   <HeaderStyle Width="80px" />
                   </asp:BoundField>
                   <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                   <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                   <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                   <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N°COMPROB" SortExpression="NCOMPROBANTE" />
                   <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                   <HeaderStyle Width="100px" />
                   </asp:BoundField>
                   <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" Visible="False" />
                   <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                   <HeaderStyle Width="20px" />
                   </asp:CheckBoxField>
                   <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" SortExpression="TIPODOC" Visible="False" />
               </Columns>
               <HeaderStyle BackColor="#CCCCCC" />
         </asp:GridView>


             <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="20" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>


       <div class="offset2">
        </div>
     </div>

</asp:Content>
