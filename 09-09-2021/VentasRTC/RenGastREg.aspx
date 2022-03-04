<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RenGastREg.aspx.cs" Inherits="biotech.VentasRTC.RenGastREg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- MOTOR DE RENDERIZADO: hacer que IE use el más moderno (o Chrome Frame): h5bp.com/i/378 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="dns-prefetch" href="http://fonts.googleapis.com/">
    
    
    
     <title></title>

    <meta name="description" content="Ingresa a la Bolsa de Trabajo UPC, la plataforma de oportunidades laborales para el desarrollo profesional de la comunidad UPC: Pregrado, EPE, Postgrado y Alumni">
    <meta name="keywords" content="bolsa de trabajo, upc, bolsa de trabajo upc, trabajo upc">
    <!-- OPTTIMIZACIÓN PARA MOVILES: corrige la escala del sitio -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="./archivos/css" rel="stylesheet" type="text/css">
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="./archivos/bootstrap.css">
    <link rel="stylesheet" href="./archivos/bootstrap-responsive.css">
    <link rel="stylesheet" href="./archivos/font-awesome.css">
    <!-- CSS Plugins -->
    <link rel="stylesheet" href="./archivos/datepicker.css">
    <link rel="stylesheet" href="./archivos/chosen.css">
    <!-- MODERNIZR -->
    <script src="./archivos/315456.js.descarga" type="text/javascript" id="hs-script-loader"></script><script id="hs-analytics" src="./archivos/315456.js(1).descarga"></script><script async="" src="./archivos/uwt.js.descarga"></script><script type="text/javascript" async="" src="./archivos/ga.js.descarga"></script><script async="" src="./archivos/gtm.js.descarga"></script><script src="./archivos/modernizr-2.6.2.min.js.descarga"></script>
    <!-- JQUERY: Busca el CDN Google; en caso de estar offline usa la versión local -->
    <script src="./archivos/jquery.min-1.8.3.js.descarga"></script>
    <script>window.jQuery || document.write('<script src="/static/js/libs/jquery-1.8.3.min.js"><\/script>')</script>
    <!-- OTROS SCRIPTS -->
   
     <script src="./archivos/bootstrap.min.js.descarga"></script>
    <script src="./archivos/bootstrap-datepicker.js.descarga"></script>
    <script src="./archivos/form2js.js.descarga"></script>
    <script src="./archivos/jquery.toObject.js.descarga"></script>
    <script src="./archivos/jquery.cookie.js.descarga"></script>
    <script src="./archivos/tiny_mce.js.descarga"></script>
    <script src="./archivos/spin.js.descarga">

    </script><style type="text/css">                                                           .auto-style1 {
                                                               width: 100%;
                                                           }
                                                           .auto-style3 {
                                                               width: 65px;
                                                           }
                                                       </style>
    <script src="./archivos/jquery.spin.js.descarga"></script>
    <script src="./archivos/pagination.js.descarga"></script>
    
    <link rel="stylesheet" href="./archivos/table.css">
    <link rel="stylesheet" type="text/css" href="./archivos/jquery-ui.1.10.1.css">
    <link rel="stylesheet" href="./archivos/jquery.tree.min.css">
  
    
    <script type="text/javascript">
        var language = null;
        var curriculumNumber = null;
        var languagesListado = [];
        var coursesListado = [];
    </script>

    <link rel="stylesheet" href="./archivos/header.css">
    <link rel="stylesheet" href="./archivos/app-site.css">
    <link rel="stylesheet" href="./archivos/app.css">
    <link rel="stylesheet" href="./archivos/app-responsive.css">
    <link rel="stylesheet" href="./archivos/footer.css">
    <link rel="stylesheet" href="./archivos/custom.css">
    <link rel="stylesheet" href="./archivos/impresion-cv.css" media="print">
    <link rel="shortcut icon" href="http://www.biotechcorp.com.pe/webapp/LOGO-BIO.ico">
    


</head>
<body>

    
    <div id="wrapper" class="container">
        <div class="general_container">
            <%-- <div class="head-company">fsdfdfs</div>--%>
    

    <div class="section company">
        <div class="head clearfix">
            
               &nbsp;&nbsp; <h3 class="title pull-left">&nbsp;&nbsp;&nbsp;&nbsp;Rendición de gastos:&nbsp;&nbsp; <asp:Label ID="lblperiodo" runat="server"></asp:Label>&nbsp;<asp:Label ID="lblano" runat="server"></asp:Label>
                   &nbsp;</h3>
           
        
            <span class="logo-offer-container">
                <img src="archivos/logo.png" width="146" height="146" class="pull-right logo_offer">
               
            </span>
        

       
            
        </div>
        <div class="form-container">
            
        
        

    <form  id="form2" runat="server"  class="form-horizontal">

         <fieldset>

    <div >
         &nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">&nbsp;&nbsp;&nbsp;PRINCIPAL</asp:LinkButton>
         &nbsp;&nbsp; MES/AÑO<asp:Label ID="lblidUnidadEquipo" runat="server"></asp:Label>
         <br />
    
        <asp:Panel ID="Panelnuevo" runat="server">


    <div class="row">
   <div class="offset1">
         <div class="control-group">
        
    
       
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style3">AÑO</td>
                     <td>:</td>
                     <td>
                         <asp:RadioButtonList ID="rblAno" runat="server"  CssClass="radio" AutoPostBack="True" DataSourceID="SqlDataSourceANO" DataTextField="idano" DataValueField="idano" OnSelectedIndexChanged="rblAno_SelectedIndexChanged" RepeatDirection="Horizontal" Width="300px">
                         </asp:RadioButtonList>
                         <asp:SqlDataSource ID="SqlDataSourceANO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct idano from tb_rdRendicionGastos"></asp:SqlDataSource>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3">PERIODO</td>
                     <td>:</td>
                     <td>
                         <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio" runat="server" AutoPostBack="True" CellPadding="1" CellSpacing="1" DataSourceID="SqlDataSource1" DataTextField="MES" DataValueField="idrendicion" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="12" RepeatDirection="Horizontal" Width="100%">
                         </asp:RadioButtonList>
                     </td>
                 </tr>
             </table>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgRemReg" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblcodVendedor" Name="idusuario" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="rblAno" Name="ano" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

       </div>
       </div>
        </div>
        </asp:Panel>





    </div>
       

    <div >




        <asp:Panel ID="Panel1" runat="server">
&nbsp;&nbsp;
            <span class="title_section_offer">&nbsp;&nbsp;LIQUIDACIÓN DE GASTOS</span>
            &nbsp;<div class="title_section_offer_fake"></div>
    <div class="row">
    <div class="offset2">

        <center>
         <div class="control-group">



             <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Width="60%" ShowFooter="True" OnRowDataBound="GridView6_RowDataBound" GridLines="Horizontal">
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



             <br />
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


<span class="title_section_offer">&nbsp;&nbsp;1. GASTOS MOVILIDAD: (peaje, estacionamientos)</span>
&nbsp;&nbsp;
    &nbsp;<div class="title_section_offer_fake"></div>
   
<center>
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" DataKeyNames="CODDET" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
                <HeaderStyle Width="70px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                <HeaderStyle Width="80px" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION" >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" >
                <HeaderStyle Width="120px" />
                </asp:BoundField>
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

             <br />

    </center>
   


<span class="title_section_offer">&nbsp;&nbsp;2. GASTOS COMBUSTIBLE:</span>
&nbsp;&nbsp;
    &nbsp;<div class="title_section_offer_fake"></div>
   
        <center>
         <div class="control-group">

             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource3" ShowFooter="True" Width="100%" OnRowDataBound="GridView2_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                        <HeaderStyle Width="80px" />
                        </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION" >
                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="Kms FACT." SortExpression="KMFACT" />
                     <asp:BoundField DataField="GALFACT" HeaderText="Galones FACT." SortExpression="GALFACT" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" >
                     <HeaderStyle Width="120px" />
                     </asp:BoundField>
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
            </center>

<span class="title_section_offer">&nbsp;&nbsp;3. GASTOS ALIMENTACIÓN:</span>
&nbsp;&nbsp;
    &nbsp;<div class="title_section_offer_fake"></div>
  
        <center>
         <div class="control-group">



             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource4" ShowFooter="True" Width="100%" OnRowDataBound="GridView3_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="80px" />
            </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION" >
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="Nº COMPROBANTE" SortExpression="NCOMPROBANTE" >
                     <HeaderStyle Width="120px" />
                     </asp:BoundField>
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
            </center>
           

          <span class="title_section_offer">&nbsp;&nbsp;4. GASTOS REPRESENTACIÓN:</span>
&nbsp;&nbsp;
    &nbsp;<div class="title_section_offer_fake"></div>
   
        <center>
         <div class="control-group">



             <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource5" ShowFooter="True" Width="100%" OnRowDataBound="GridView4_RowDataBound" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
                     <HeaderStyle Width="70px" />
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <HeaderStyle Width="80px" />
                    </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION" />
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" >
                     <HeaderStyle Width="120px" />
                     </asp:BoundField>
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
            </center>
         
           
            <span class="title_section_offer">&nbsp;&nbsp;5. GASTOS PASAJES:</span>
            <div class="title_section_offer_fake"></div>
    
        <center>
         <div class="control-group">



             <asp:GridView ID="GridView77" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource77" OnRowDataBound="GridView77_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal">
                 <Columns>
                      <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                     <HeaderStyle Width="70px" />
                      <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="80px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION">
                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" >
                      <HeaderStyle Width="120px" />
                      </asp:BoundField>
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
            </center>
           



    <span class="title_section_offer">&nbsp;&nbsp;6. GASTOS ALOJAMIENTO:</span>
    <div class="title_section_offer_fake"></div>
    
        <center>
         <div class="control-group">

             <asp:GridView ID="GridView66" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource66" OnRowDataBound="GridView66_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="80px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION" />
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROBANTE" SortExpression="NCOMPROBANTE" >
                     <HeaderStyle Width="120px" />
                     </asp:BoundField>
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
             <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>

             </div>
            </center>
     

   

            <span class="title_section_offer">&nbsp;&nbsp;7. GASTOS POR VIAJES :(Pasajes,alojamiento,alimentación,otros)</span>
    <div class="title_section_offer_fake"></div>

        <center>
         <div class="control-group">
             
             <asp:GridView ID="GridView9" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource8" DataKeyNames="CODDET" ShowFooter="True" Width="100%" OnRowDataBound="GridView9_RowDataBound" GridLines="Horizontal">
        <Columns>
             <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" >
            </asp:BoundField>
            <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
             <HeaderStyle Width="70px" />
             <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
             <HeaderStyle Width="80px" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
             <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" >
            </asp:BoundField>
            <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N°COMPROB" SortExpression="NCOMPROBANTE" >
             <HeaderStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" >
             <HeaderStyle Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" Visible="False" />
           
            <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="20px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>


            <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" SortExpression="TIPODOC" Visible="False" />
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
            </center>
      

              <span class="title_section_offer">&nbsp;&nbsp;8. GASTOS UNIDAD VEHICULAR: (Lavado,compra y otros)</span>
    <div class="title_section_offer_fake"></div>
  
        <center>
         <div class="control-group">


             <asp:GridView ID="GridView20" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource9" DataKeyNames="CODDET" ShowFooter="True" Width="100%" OnRowDataBound="GridView20_RowDataBound" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" >
            </asp:BoundField>
            <asp:BoundField DataField="FECHAREG" HeaderText="FECHA" SortExpression="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="80px" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
            </asp:BoundField>
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
            <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
             <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N°COMPROB" SortExpression="NCOMPROBANTE" >
            <HeaderStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
            <HeaderStyle Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" ReadOnly="True" Visible="False" />
             <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png">
                         <ControlStyle Height="20px" Width="20px" />
                         <HeaderStyle Width="20px" />
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:ImageField>
            <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" SortExpression="TIPODOC" Visible="False" />
        </Columns>
                 <EmptyDataTemplate>
                     No se registraron gastos...!
                 </EmptyDataTemplate>
        <HeaderStyle BackColor="#CCCCCC" />
    </asp:GridView>
   <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="idRG" PropertyName="SelectedValue" Type="Int32" />
                     <asp:Parameter DefaultValue="20" Name="idcategoria" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
                          </div>
            </center>
      

             <span class="title_section_offer">&nbsp;&nbsp;9. OTROS GASTOS:</span>
    <div class="title_section_offer_fake"></div>
   
        <center>
         <div class="control-group">

             <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource6" OnRowDataBound="GridView5_RowDataBound" ShowFooter="True" Width="100%" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="CODDET" HeaderText="COD" SortExpression="CODDET" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                     <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                     <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHAREG" >
                     <HeaderStyle Width="70px" />
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                     <HeaderStyle Width="80px" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION">
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                     <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                     <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" SortExpression="GALFACT" Visible="False" />
                     <asp:BoundField DataField="NCOMPROBANTE" HeaderText="Nº COMPROBANTE" SortExpression="NCOMPROBANTE" >
                     <HeaderStyle Width="120px" />
                     </asp:BoundField>
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
            </center>
    
    </asp:Panel>





    </div>
         </fieldset>
<%--___________________________--%>

        


        
        </div>
                        </div>
                    <div class="form-actions">

                    
                        <hidden id="save" data-url="/board_admin/offers/edit/validityDate/">Usuario, </hidden>
                        <asp:Label ID="lblcodvendedor" runat="server" Visible="False"></asp:Label>
    
                        <asp:LinkButton ID="LinkButtoncodusuario" runat="server"></asp:LinkButton>
              </div>
            
        </div>
        <!-- /.form-container -->
    </div>


    </form>


   

</body>
</html>
